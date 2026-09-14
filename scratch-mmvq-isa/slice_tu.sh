#!/bin/sh
# Faithful method (no source copy): compile the REAL mmvq.cu to amdgcn ISA and
# slice out just the 4 target kernels. Use this to cross-check the probe.
# Usage: ./slice_tu.sh <arch>   (e.g. ./slice_tu.sh gfx942)
set -e
arch="${1:-gfx942}"
SRC=../ggml/src/ggml-cuda/mmvq.cu
full=mmvq_full.$arch.s

hipcc -O3 --offload-arch=$arch -DGGML_USE_HIP \
  -I../ggml/src/ggml-cuda -I../ggml/src -I../ggml/include \
  --cuda-device-only -S "$SRC" -o "$full" 2>/dev/null

for t in 12 14; do
  for f in 0 1; do
    sym=$(grep -oE "_ZL13mul_mat_vec_qIL9ggml_type${t}ELi1ELb${f}ELb0ELb0EE[A-Za-z0-9_]*" "$full" | head -1)
    lbl=$([ $f = 1 ] && echo fusion || echo plain)
    dst=kernel.$arch.type$t.$lbl.s
    awk -v s="$sym" '
      $0 ~ ("\\.type[ \t]+" s ",")      {p=1}
      p                                  {print}
      p && $0 ~ ("\\.size[ \t]+" s ",")  {exit}
    ' "$full" > "$dst"
    printf '%-9s type%-2s %-7s -> %s (%s lines)\n' "$arch" "$t" "$lbl" "$dst" "$(wc -l < "$dst")"
  done
done
