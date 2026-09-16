# Plan: a deep, persistent mmvq pipeline for Q4_K (RDNA4), with and without fusion

Status: **implemented and locally validated.** Gate 1 (correctness, gfx942) and Gate 2
(gfx1201 ISA audit) both pass; Gate 3 (RDNA4 benchmark) is pending hardware -- see §6/§8.

A persistent workgroup owns a tile of `dst` and strides forward through the row space.
The tile height equals the number of waves in the workgroup, so **each wave owns one
output row** — which removes the cross-wave reduction entirely. Restricted to
`ggml_type == GGML_TYPE_Q4_K` and `ncols_dst == 1` (token generation).

---

## 0. What this is actually attacking

Not bandwidth. The target device peaks at **644 GB/s** and the best measured Q4_K mmvq
is ~554 GB/s (86%), so there is only single-digit headroom against DRAM.

The target is the **per-workgroup fixed cost**, per `COOP3_Analysis.txt` §1. Two shapes
with identical 17.69 MB of weight traffic differ by 14.5%:

```
MUL_MAT q4_K m=6144 n=1 k=5120   6144 workgroups, 20 blocks/row   36.19 us
MUL_MAT q4_K m=5120 n=1 k=6144   5120 workgroups, 24 blocks/row   31.60 us
```

At `rows_per_cuda_block == 1` the 191-instruction prologue and 406-instruction epilogue
are paid `nrows_x` times — 17408 times for the Qwen3.5-27B `ffn_gate|up`. Only 33% of
issued instructions are in the dot loop. Success is measured as µs/byte on
`m=6144,k=5120` approaching `m=5120,k=6144`, not as an absolute GB/s record.

Secondary targets, both of which this design also removes:
- the ragged block-loop tail (§3: 20 blocks against `blocks_per_iter=16` leaves 37.5% of
  loop slots idle on the second pass),
- the `s_wait_loadcnt 0x0` drains caused by predicated staging loads, and the zero
  prefetch distance of the load-and-store-in-one-iteration pipeline (§3.2).

---

## 1. Matrix operation

```
dst = Y Wᵀ
src0 = vx = quantized weights W  (ne00 = K columns, ne01 = N rows)  block_q4_K, 144 B
src1 = vy = activations Y        (ne10 = K,         ne11 = 1)       block_q8_1,  36 B
```

| tensor | unit | extent (Qwen3.5-27B `ffn_gate\|up`) | stride |
|---|---|---|---|
| `W` (`vx`) | `block_q4_K`, 144 B | 17408 rows × 20 blocks | `stride_row_x = s01 = 20` blocks = 2880 B |
| `gate` | `block_q4_K`, 144 B | identical to `W` | asserted `ggml_are_same_stride(fusion->gate, src0)` |
| `y` (`vy`) | `block_q8_1`, 36 B | 160 blocks = 5760 B | `stride_col_y = ne10_padded/QK8_1 = 160` |
| `dst` | `float` | 17408 | `stride_col_dst`, `stride_channel_dst` |

ggml is uniformly dim-0-contiguous (`nb[0] == ggml_type_size`); the contraction index K
is the contiguous axis on both operands.

---

## 2. Tiling

### 2.1 Workgroup → dst (the anchor)

`dst` is 1-D of length `nrows_x` per (channel, sample). Partition it into `nwarps`-float
tiles; a workgroup owns a strided subset of tiles.

```
dst   0        8       16              8t              8(t+G)        nrows_x
      |--------|--------|--- ... ------|------ ... ----|---- ... ----|
      [ tile 0 ][tile 1 ]              [ tile t ]      [tile t+G ]
        WG 0      WG 1      ...         WG t%G           same WG
```

### 2.2 Workgroup → W

Wave `w` owns row `nwarps*t + w`. Because `stride_row_x == blocks_per_row_x` for a
contiguous `src0`, rows `8t..8t+7` happen to form one contiguous 23,040 B slab — but this
is **descriptive only**. The kernel indexes `vx + (kbx_offset + r*stride_row_x + kbx)`
regardless, so a non-contiguous `src0` is still correct. No assert required.

```
W      k-block ->   0    1    2    3   ...  18   19
                  +-----------------------------------+
row 8t+0  wave 0  |  .    .    .    .         .    .  |  2880 B
row 8t+1  wave 1  |  .    .    .    .         .    .  |
row 8t+2  wave 2  |                                   |
  ...             |     tile t = 23,040 B contiguous  |
row 8t+7  wave 7  |  .    .    .    .         .    .  |
                  +-----------------------------------+
                     ^^^^^^^^^
                     iteration it, gfx1201 (wave32):
                       lanes  0-15 -> block bpi*it + 0
                       lanes 16-31 -> block bpi*it + 1
```

`bpi = blocks_per_iter_per_wave = warp_size / lanes_per_block`, where
`lanes_per_block = qi/vdr = 16` for Q4_K. **This is 2 on gfx1201 and 4 on gfx942
(wave64). It must never be written as a literal.**

| | gfx1201 (target) | gfx942 (dev) |
|---|---|---|
| `warp_size` | 32 | 64 |
| `bpi` | 2 | 4 |
| `n_iter` at K=5120 | 10 | 5 |
| `n_groups = nwarps*ws/16` | 16 | 32 |

### 2.3 Workgroup → y

`y` is indexed by `k` and by `(channel, sample, column)` — never by row. Channel and
sample live in `blockIdx.y/z` and the persistent loop varies only rows, therefore:

> **`y` is loop-invariant across the whole persistent loop.**

This is what makes `y`-in-LDS worth doing, and it is also why channels and samples
**must not** be folded into the persistent loop — doing so would force a re-stage.

Note the cost this mapping introduces: all `nwarps` waves read *identical* `y` bytes on
every iteration (unlike today's kernel, where the waves cover disjoint k-blocks of one
row). That is an 8× redundancy which `stage_y` exists to remove.

---

## 3. Kernel

```cpp
template <bool has_fusion, int prefetch, bool stage_y>
__global__ void mul_mat_vec_q_rdna4(...);
```

A genuine fork of `mul_mat_vec_q`, not a template specialization of it.
`mul_mat_vec_q` and its existing staged path (the `use_lds_stage` block in `mul_mat_vec_q`) are left untouched, so
three Q4_K paths coexist: per-lane loop, existing staged, and this one.

Because `ncols_dst == 1` and `rows_per_cuda_block == 1` are fixed, `small_k`,
`halve_iters`, the `tmp[ncols_dst][rows]` arrays, `tmp_shared`, and the `__syncthreads()`
in the reduction all disappear. `tmp` collapses to a single float per wave.

The bias/scale/GLU epilogue (`mmvq_apply_fusion`) is factored out into a shared
`__forceinline__` helper used by both kernels, so the SWIGLU / GEGLU / SWIGLU_OAI /
SWIGLU_CLAMP switch lives in one place.

### 3.1 Loop structure

```
stage y into LDS (if stage_y);  __syncthreads()          // once per WG, cross-wave
for (t = blockIdx.x; t < ntiles; t += gridDim.x) {       // persistent, rows only
    row = min(nwarps*t + threadIdx.y, nrows_x - 1)       // clamp, never predicate loads
    load bias / gate_bias for row
    acc = 0
    prologue: LDS buffer 0 <- iteration 0;  q[j] <- iteration R-j   (j = 0..R-1)
    for (it = 0; it < n_full; ++it)   { branch-free body }
    if (rem)                          { peeled predicated tail body }
    acc = warp_reduce_sum(acc)
    if (lane == 0 && nwarps*t + threadIdx.y < nrows_x)
        dst[row] = apply_fusion(acc, acc_gate, ...)
}
```

Per-wave K-tail is handled by **peeling**, not by a divisibility gate, so all K values
are supported while the steady-state body stays branch-free.

### 3.2 Staging

Every staged byte must round-trip `global_load_b128` → VGPR → `ds_store_b128`.
**gfx1201 has no VMEM→LDS path** — `__builtin_amdgcn_global_load_lds` fails with
`needs target feature vmem-to-lds-load-insts`, and `cp-async.cuh` is PTX/NVIDIA-only.
So depth is bought in VGPRs; there is no async alternative. (gfx942 does support the
builtin, but only at ≤4 B — do not introduce an arch-divergent staging path for it.)

Two things had to be right here, and only the first was obvious.

**Clamp the load address rather than predicating it.** `COOP3_Analysis.txt` §2 traced
the earlier regression to `if (loader && kbx < blocks_per_row_x)`: the exec-masked branch
stops the compiler tracking `loadcnt`, fragmenting the loop into ~8 basic blocks with
four full `s_wait_loadcnt 0x0` drains per iteration.

```cpp
kbx_ld = min(it_load*bpi + gl, blocks_per_row_x - 1);   // clamped, unconditional
q      = quad_ptr[min(l, b128_per_block - 1)];          // clamped, unconditional
if (loader) stage[buf][g][l] = q;                       // store may stay predicated
```

**Hold the prefetch distance in registers, not in LDS buffers.** The first Gate 2 audit
found the obvious formulation does not pipeline at all: loading a quad at the top of the
loop body and storing it at the bottom of the *same* body leaves **zero** prefetch
distance, no matter how many LDS buffers exist. The measured ISA was identical at depth
2, 3 and 4 — one `global_load_b128`, drained with `s_wait_loadcnt 0x0` in-iteration —
with only the prologue differing.

The fix is a compile-time shift register. The store consumes the *oldest* quad, issued
`R` iterations earlier, which is the only one of the `R` outstanding loads that must have
landed — and that is what lets the compiler emit a counted wait:

```cpp
mmvq_i32x4 q[prefetch];                 // q[j] = load issued at iteration it-1-j
mmvq_lds_wait();
dot(x_stage[it & 1]);
if (loader) store(x_stage[(it+1) & 1], q[prefetch-1]);   // oldest -> s_wait_loadcnt R-1
#pragma unroll
for (r = prefetch-1; r > 0; --r) q[r] = q[r-1];          // pure register renaming
q[0] = load_quad(it + prefetch + 1);
```

A shift register, **not** `q[it % R]` — a runtime index into a register array does not
stay in registers, it spills to scratch.

LDS therefore needs only **two** buffers, the minimum for the write-after-read between
consecutive iterations. Working backwards from "the store at iteration `it` writes
iteration `it+1`", the load issued at iteration `u` is for iteration `u+R+1`, which is
what the prologue priming above encodes.

`y` is copied with **`b32`**, not `b128`: `block_q8_1` is 36 B (4 B `ds` + 32 B `qs`), so
only 4-byte aligned, and the row base `vy + (sample*stride_sample_y +
channel*stride_channel_y)*36` is 16-aligned only when that block offset is a multiple of
4. 1440 dwords over 256 threads = 6 strided passes, paid once per WG against ~34 tiles.

Unlike `x_stage`, every wave reads *all* of `y`, so that staging needs a real
`__syncthreads()` — the only one in the kernel — rather than the wave-scoped
`mmvq_rdna4_lds_wait()`.

LDS bank behaviour for `y_lds` is clean: lane `l` reads
`y_lds + 36*(2*(l/4) + i) + 4 + 4*(l%4)`, giving banks `{1,2,3,4} {19,20,21,22}
{5,6,7,8} {23,24,25,26}` across a group's 16 lanes — all distinct, with only a 2-way
overlap against the second group in a wave32.

---

## 4. Budgets

RDNA4: 2 SIMDs/CU, max 32 waves/CU, 64 KB LDS/CU. At `nwarps = 8` (256 threads) the
workgroup is wave-limited to **4 WG/CU**, giving an LDS budget of **16384 B/WG** to hold
full occupancy.

**LDS does not scale with pipeline depth.** The kernel uses exactly two staging buffers
-- the minimum that keeps the write-after-read between consecutive iterations safe --
and holds all prefetch distance in registers instead (§3.2). So:

```
lds_stage = 2 * n_groups * 144 * (fused ? 2 : 1)     // 4608 unfused, 9216 fused
y_bytes   = (ncols_x/32) * 36                        // 5760 at K=5120
```

| shape | lds_stage | + y | total | fits 16384 |
|---|---|---|---|---|
| unfused, K=5120 | 4608 | 5760 | 10368 | ✓ |
| unfused, K=6144 | 4608 | 6912 | 11520 | ✓ |
| fused, K=5120 | 9216 | 5760 | 14976 | ✓ |
| unfused, K=17408 (`ffn_down`) | 4608 | 19584 | 4608 (`stage_y=false`) | ✓ |

**Depth is bounded by registers instead.** Each prefetch slot costs 4 VGPRs per staged
tensor. Gate 2 measured the kernel at 48-68 VGPRs against the ~96 that still allows 16
waves/SIMD in wave32, so fused (two tensors) gets `prefetch = 2` and unfused gets 3.

LDS is allocated dynamically through the existing `nbytes_shared` launch parameter
(previously always `0`).

`nsm` is already cached -- `ggml_cuda_info().devices[id].nsm` is populated once at init
(`ggml-cuda.cu:308-321`). No additional static is needed.

---

## 5. Host dispatch

```
take_path = table_id == MMVQ_PARAMETERS_RDNA4
         && type == GGML_TYPE_Q4_K
         && ncols_dst == 1
         && ntiles >= 2 * grid.x

target  = PERSIST_MULT * nsm                              // PERSIST_MULT swept in {1,2,4}
grid.x  = min(max(ceil(target / (nchannels_dst*nsamples_dst)), 1), ntiles)

stage_y  = (lds_stage + y_bytes <= 16384)                 // env-overridable
prefetch = fused ? 2 : 3                                  // VGPR-bound, see §4
```

Dividing the budget by `nchannels_dst*nsamples_dst` keeps the resident set constant for
MoE token-gen (`has_ids && ncols_dst == 1` reaches this kernel; only
`has_ids && ncols_dst > 1` is diverted to `mul_mat_vec_q_moe` in `mul_mat_vec_q_switch_ncols_dst`).

`stage_y` is a **template parameter with a runtime-selected instantiation** -- both are
compiled and the host picks based on fit. A shape whose `y` is too large still gets the
persistent loop and the row-per-wave mapping; only the `y` staging is dropped. Falling
back is otherwise cheap: dispatching to `mul_mat_vec_q` picks up its own staged/per-lane
decision automatically.

`fused_rt` deliberately tests `fusion.gate` rather than reusing the "any fusion arg"
test behind the `has_fusion` template parameter: the kernel places `y_lds` at
`x_stage + (fused ? 2*n_buf : n_buf)`, so a mismatch corrupts the staging buffers
silently rather than failing loudly.

`GGML_CUDA_MMVQ_RDNA4_STAGE_Y=0` forces staging off for the hardware A/B; forcing it on
never exceeds the budget.

### 5.1 Resulting coverage, Qwen3.5-27B `bs=1` (nsm=64, PERSIST_MULT=4)

| shape | nrows × K | ntiles | verdict | LDS |
|---|---|---|---|---|
| `ffn_gate\|up` fused | 17408 × 5120 | 2176 | persistent, `stage_y`, `prefetch=2` | 14976 |
| `attn_qkv` | 10240 × 5120 | 1280 | persistent, `stage_y`, `prefetch=3` | 10368 |
| `attn_q` | 12288 × 5120 | 1536 | persistent, `stage_y`, `prefetch=3` | 10368 |
| `attn_gate` | 6144 × 5120 | 768 | persistent, `stage_y`, `prefetch=3` | 10368 |
| `attn_output` / `ssm_out` | 5120 × 6144 | 640 | persistent, `stage_y`, `prefetch=3` | 11520 |
| `ffn_down` | 5120 × **17408** | 640 | persistent, **`stage_y=false`**, `prefetch=3` | 4608 |
| `attn_k` / `attn_v` | 1024 × 5120 | 128 | falls back (`ntiles < 2*grid.x`) | — |
| `ssm_alpha` / `ssm_beta` | 48 × 5120 | 6 | falls back | — |

---

## 6. Validation status

No RDNA4 hardware is available locally (dev box is gfx942 / MI300X), so **nothing
measured here transfers**. Local work establishes correctness and static properties of
the gfx1201 binary only.

### Gate 1 — correctness on gfx942: **PASSED**

Relax the runtime `table_id` check to admit `MMVQ_PARAMETERS_GCN` (gfx942 maps there).
No preprocessor surgery is needed: the kernel is guarded on `GGML_USE_HIP`, and
`mmvq_rdna4_lds_wait()` falls back to `__threadfence_block()` where `s_wait_dscnt` has
no encoding.

Two dev-box-only adjustments are needed to actually reach the kernel, and **both are
easy to forget, which silently makes the run prove nothing**:

* `PERSIST_MULT` -- gfx942 has **304 CUs** vs RDNA4's 64, so the default target of
  `4*304 = 1216` makes the min-work gate demand `nrows >= 19456` and every test shape
  declines. Set `PERSIST_MULT = 1`.
* `LDS_BUDGET` -- wave64 doubles `n_groups`, so fused `lds_stage` is 18432 and exceeds
  the RDNA4 budget. Set it to 32768.

**Always add a one-shot `fprintf` of the selected config and confirm it fires.** The
first Gate 1 attempt "passed" with the kernel never dispatching.

Result: MUL_MAT 1260/1305, MUL_MAT_VEC_FUSION 1060/1269, every failure `nvfp4`
(pre-existing) and identical to baseline, with fused/unfused, `stage_y` on/off, the
peeled K tail and the row tail all confirmed dispatching under wave64 (`bpi = 4`).

### Gate 2 — gfx1201 ISA audit: **PASSED, after one redesign**

* **Waitcnt.** The first audit found the pipeline was not pipelining at all: one
  `global_load_b128` in the steady-state loop, drained with `s_wait_loadcnt 0x0` in the
  same iteration, *identically at depth 2, 3 and 4*. Fixed by the register shift
  register (§3.2); the loop now shows counted `s_wait_loadcnt 0x2` / `0x1`.
* **Resources.** 48-68 VGPRs, 32-47 SGPRs, 16 waves/SIMD. LDS reports 0 (dynamic).
* **`y_lds` address space.** Zero `flat_load` in any instantiation; the q8 reads compile
  to `ds_read`, so inference works.
* **`fused` branch.** A wave-uniform scalar branch (`s_cbranch_vccnz`, no
  `s_and_saveexec`), adding no drains.

### Gate 3 — RDNA4 benchmark: **NOT RUN** (no hardware)

Protocol in §8.

---

## 7. Open risks

1. **A `s_wait_loadcnt 0x0` still remains in the steady-state loop**, alongside the
   counted waits, because the `ds_store` is still under `if (loader)`. The original
   contingency -- pad each staged block from 9 to 10 quads so lanes 9-15 have a harmless
   slot and the store becomes unconditional -- is still available and is now *cheaper*
   than when it was first costed, since LDS no longer scales with depth: fused would go
   from 14976 to 16000 B, still inside budget. Worth trying if Gate 3 disappoints.

2. **The fused instantiation showed no counted waits** in the post-fix audit (only
   `0x0`), unlike unfused. `prefetch = 2` gives it less distance, and it stages two
   tensors. Re-audit and consider whether the VGPR budget actually allows `prefetch = 3`
   fused.

3. **`stage_y` may trade a VMEM bottleneck for an LDS-port one.** Staging `y` roughly
   doubles LDS bytes per `vec_dot` (~20 B to ~44 B per lane), putting LDS at ~11 clk
   against ~10 clk of VALU issue per wave-dot once both SIMDs are counted. Unresolvable
   without hardware, hence the env-var A/B.

4. **Headroom is small if the 86% figure is genuinely DRAM-bound.** The justification
   rests on the fixed-cost evidence in §0, not on bandwidth.

---

## 8. RDNA4 benchmark protocol (Gate 3)

Run on the RDNA4 machine; none of it can be done on the dev box.

1. **`PERSIST_MULT` sweep over {1, 2, 4}.** At 8 waves/WG the GPU is wave-limited to
   4 WG/CU, so `PERSIST_MULT = 1` -- one workgroup per CU, as the plan originally
   proposed -- runs at 25% occupancy against a kernel whose stalls are 92.7% memory.
   `4` keeps 32 waves/CU while still giving ~8.5 tiles/WG at `nrows_x = 17408`.

2. **`stage_y` A/B** via `GGML_CUDA_MMVQ_RDNA4_STAGE_Y=0/1`, on a fused shape
   (`ffn_gate|up` 17408x5120) and an unfused one (`attn_qkv` 10240x5120). This is the
   only way to settle risk 3.

3. **Primary metric is µs/byte, not absolute GB/s.** The device peaks at 644 GB/s and
   the current kernel already reaches ~554 (86%), so bandwidth headroom is single digit.
   Measure whether `m=6144,k=5120` approaches `m=5120,k=6144` -- currently 36.19 µs vs
   31.60 µs on identical 17.69 MB, a 14.5% gap that is fixed cost, not bandwidth.

4. **Confirm actual DRAM bytes** against the 17.69 MB compulsory figure via `rocprof`
   `FETCH_SIZE` / `TCC_EA_RDREQ`, fused and unfused. If they match, the 86% is genuinely
   DRAM-bound and further pipeline work has little headroom (risk 4).

5. **Re-run the PC-sampling stall breakdown** and compare against
   `cooperative_double_buffer_stall_breakdown.txt` (VMEM load wait 49.0%, VMEM+LDS wait
   43.7%). Expect the prologue `ds_store` hotspot -- 39.4% of all stalls --
   to move or shrink.

6. **Try the padded-slot store (risk 1) and `prefetch=3` fused (risk 2)** if the
   headline numbers disappoint.
