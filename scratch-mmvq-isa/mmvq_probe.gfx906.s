	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.amdhsa_code_object_version 6
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx8 s[12:19], s[4:5], 0x0
	s_load_dwordx4 s[28:31], s[4:5], 0x20
	s_load_dwordx4 s[0:3], s[4:5], 0x50
	s_load_dwordx4 s[20:23], s[4:5], 0x78
	s_mov_b32 s34, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b64 s[10:11], -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_mov_b64 s[24:25], 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:
	s_mov_b32 s35, 0
	s_lshl_b64 s[26:27], s[34:35], 2
	s_add_u32 s16, s16, s26
	s_addc_u32 s17, s17, s27
	s_load_dword s9, s[16:17], 0x0
	s_load_dword s33, s[4:5], 0x60
	s_load_dword s35, s[4:5], 0x88
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB0_3
.LBB0_2:
	s_load_dwordx2 s[16:17], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s7, s16, s34
	s_add_i32 s7, s34, s7
	s_lshr_b32 s9, s7, s17
.LBB0_3:
	s_andn2_b64 vcc, exec, s[10:11]
	s_cbranch_vccnz .LBB0_6
; %bb.4:
	s_mul_hi_u32 s1, s1, s34
	s_add_i32 s1, s34, s1
	s_lshr_b32 s1, s1, s2
	s_mul_i32 s1, s1, s3
	s_sub_i32 s1, s34, s1
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s7, s9
	s_branch .LBB0_7
.LBB0_5:
                                        ; implicit-def: $sgpr9
	s_load_dword s33, s[4:5], 0x60
	s_load_dword s35, s[4:5], 0x88
	s_branch .LBB0_2
.LBB0_6:
	s_mov_b32 s7, s34
	s_mov_b32 s1, s34
.LBB0_7:
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[24:27], s[4:5], 0x90
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v2, v0, v1
	s_cselect_b64 s[36:37], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v2
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_12
; %bb.8:
	v_mov_b32_e32 v6, 0
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s10, s7, s22
	v_mov_b32_e32 v7, 0
	s_cbranch_scc1 .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s26, s8
	s_mov_b32 s39, 0
	s_lshl_b64 s[40:41], s[38:39], 2
	s_add_u32 s7, s18, s40
	s_mov_b32 s11, s39
	s_addc_u32 s27, s19, s41
	s_lshl_b64 s[18:19], s[10:11], 2
	s_add_u32 s11, s7, s18
	s_addc_u32 s27, s27, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s11, s18
	s_addc_u32 s19, s27, s19
	v_lshlrev_b32_e32 v2, 2, v0
	global_load_dword v7, v2, s[18:19]
.LBB0_10:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[36:37]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s8
	s_mov_b32 s19, 0
	s_lshl_b64 s[38:39], s[18:19], 2
	s_add_u32 s7, s30, s38
	s_mov_b32 s11, s19
	s_addc_u32 s18, s31, s39
	s_lshl_b64 s[10:11], s[10:11], 2
	s_add_u32 s19, s7, s10
	s_addc_u32 s18, s18, s11
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[10:11], s[6:7], 2
	s_add_u32 s10, s19, s10
	s_addc_u32 s11, s18, s11
	v_lshlrev_b32_e32 v2, 2, v0
	global_load_dword v6, v2, s[10:11]
.LBB0_12:
	s_or_b64 exec, exec, s[2:3]
	v_lshl_add_u32 v2, v1, 6, v0
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v11, 4, v2
	v_cmp_gt_u32_e32 vcc, s7, v11
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v10, 0, 1, s[36:37]
	v_mov_b32_e32 v8, 0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB0_18
; %bb.13:
	s_mul_hi_u32 s0, s23, s8
	s_add_i32 s0, s8, s0
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s0, s35
	s_mul_i32 s33, s33, s6
	s_mul_i32 s0, s0, s24
	v_lshlrev_b32_e32 v3, 1, v0
	s_mul_i32 s9, s9, s20
	v_and_b32_e32 v4, 30, v3
	s_add_i32 s0, s0, s33
	v_bfe_u32 v3, v3, 3, 2
	s_mul_i32 s11, s1, s21
	s_add_i32 s9, s9, s0
	v_lshlrev_b32_e32 v12, 5, v3
	v_and_b32_e32 v3, 3, v0
	v_bfe_u32 v8, v4, 3, 1
	v_cmp_lt_u32_e64 s[0:1], 15, v4
	v_lshrrev_b32_e32 v4, 4, v2
	v_bfe_u32 v2, v0, 2, 2
	v_lshlrev_b32_e32 v13, 2, v3
	v_mul_hi_u32_u24_e32 v3, 0x48, v2
	v_mul_u32_u24_e32 v2, 0x48, v2
	s_movk_i32 s2, 0x120
	s_mul_i32 s10, s25, s8
	v_mad_u64_u32 v[2:3], s[2:3], v4, s2, v[2:3]
	s_mul_hi_u32 s3, s10, 36
	s_mul_i32 s10, s10, 36
	s_add_u32 s10, s14, s10
	s_mul_hi_u32 s2, s11, 36
	s_mul_i32 s11, s11, 36
	s_addc_u32 s3, s15, s3
	s_add_u32 s10, s10, s11
	s_addc_u32 s2, s3, s2
	v_mov_b32_e32 v4, s2
	v_add_co_u32_e32 v2, vcc, s10, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_add_co_u32_e32 v2, vcc, 36, v2
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v9, 0
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_mov_b64 s[14:15], 0
	s_movk_i32 s20, 0x90
	v_mov_b32_e32 v5, s13
	s_mov_b32 s12, 0x1010101
	v_lshlrev_b32_e32 v14, 1, v8
	v_cmp_ne_u32_e64 s[2:3], 1, v10
	v_mov_b32_e32 v8, 0
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	s_waitcnt vmcnt(2)
	v_lshrrev_b16_e32 v29, 2, v28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16_e32 v30, 4, v27
	v_and_b32_e32 v29, 0x3030, v29
	v_and_b32_e32 v30, 0xf0f, v30
	v_or_b32_e32 v29, v30, v29
	v_and_b32_e32 v28, 0x3f3f, v28
	v_cndmask_b32_e64 v28, v28, v29, s[0:1]
	v_lshrrev_b16_e32 v29, 2, v25
	v_and_b32_e32 v27, 0xf0f, v27
	v_and_b32_e32 v29, 0x3030, v29
	v_or_b32_e32 v27, v27, v29
	v_and_b32_e32 v25, 0x3f3f, v25
	v_cndmask_b32_e64 v25, v25, v27, s[0:1]
	v_and_b32_e32 v27, 0xf0f0f0f, v24
	v_lshrrev_b32_e32 v24, 4, v24
	v_and_b32_e32 v29, 0xf0f0f0f, v23
	v_and_b32_e32 v24, 0xf0f0f0f, v24
	v_lshrrev_b32_e32 v23, 4, v23
	v_dot4_i32_i8 v20, v27, v20, 0
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_dot4_i32_i8 v16, v24, v16, 0
	v_dot4_i32_i8 v20, v29, v21, v20
	v_and_b32_e32 v21, 63, v28
	v_dot4_i32_i8 v16, v23, v17, v16
	v_pk_lshrrev_b16 v17, 8, v25 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b32_e32 v21, 0xffff, v21
	v_lshrrev_b32_e32 v17, 16, v17
	v_and_b32_e32 v23, 63, v25
	v_mul_lo_u32 v21, v26, v21
	v_mul_lo_u32 v20, v20, v23
	v_mul_lo_u32 v16, v16, v17
	v_lshrrev_b16_e32 v17, 8, v28
	v_mul_lo_u32 v17, v22, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_fma_f32 v20, v19, v20, 0
	v_fma_f32 v19, v19, v21, 0
	v_fmac_f32_e32 v20, v18, v16
	v_fmac_f32_e32 v19, v18, v17
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v16, v15, v19, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_add_u32_e32 v11, 8, v11
	v_fma_mix_f32 v15, v20, v15, -v16 op_sel_hi:[0,1,0]
	v_add_co_u32_e32 v2, vcc, 0x900, v2
	v_cmp_le_u32_e64 s[10:11], s7, v11
	v_add_f32_e32 v9, v9, v15
	s_or_b64 s[14:15], s[10:11], s[14:15]
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB0_17
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v29, s9, v11
	v_mad_i64_i32 v[18:19], s[10:11], v29, s20, v[4:5]
	v_add_co_u32_e32 v30, vcc, v2, v13
	v_addc_co_u32_e32 v31, vcc, 0, v3, vcc
	v_add_co_u32_e32 v15, vcc, v18, v12
	v_addc_co_u32_e32 v16, vcc, 0, v19, vcc
	v_add_co_u32_e32 v32, vcc, v15, v13
	v_addc_co_u32_e32 v33, vcc, 0, v16, vcc
	v_add_co_u32_e32 v34, vcc, v18, v14
	v_addc_co_u32_e32 v35, vcc, 0, v19, vcc
	global_load_dword v22, v[2:3], off
	global_load_dword v20, v[30:31], off offset:-32
	global_load_dword v21, v[30:31], off offset:-16
	global_load_dword v16, v[30:31], off offset:4
	global_load_dword v17, v[30:31], off offset:20
	global_load_dword v36, v[2:3], off offset:-36
	global_load_dword v24, v[32:33], off offset:16
	global_load_dword v23, v[32:33], off offset:32
	global_load_ushort v25, v[34:35], off offset:4
	global_load_ushort v28, v[34:35], off offset:8
	global_load_ushort v27, v[34:35], off offset:12
	global_load_dword v15, v[18:19], off
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt vmcnt(11)
	v_cvt_f32_f16_e32 v18, v22
	s_waitcnt vmcnt(10)
	v_dot4_i32_i8 v19, s12, v20, 0
	s_waitcnt vmcnt(9)
	v_dot4_i32_i8 v26, s12, v21, v19
	s_waitcnt vmcnt(8)
	v_dot4_i32_i8 v22, s12, v16, 0
	s_waitcnt vmcnt(7)
	v_dot4_i32_i8 v22, s12, v17, v22
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v19, v36
	s_cbranch_vccnz .LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	v_mov_b32_e32 v31, s29
	v_mov_b32_e32 v30, s28
	v_mad_i64_i32 v[29:30], s[10:11], v29, s20, v[30:31]
	v_add_co_u32_e32 v31, vcc, v29, v14
	v_addc_co_u32_e32 v32, vcc, 0, v30, vcc
	global_load_ushort v34, v[31:32], off offset:8
	global_load_ushort v36, v[31:32], off offset:4
	global_load_ushort v37, v[31:32], off offset:12
	v_add_co_u32_e32 v33, vcc, v29, v12
	v_addc_co_u32_e32 v35, vcc, 0, v30, vcc
	v_add_co_u32_e32 v31, vcc, v33, v13
	v_addc_co_u32_e32 v32, vcc, 0, v35, vcc
	global_load_dword v33, v[31:32], off offset:16
	global_load_dword v35, v[31:32], off offset:32
	global_load_dword v38, v[29:30], off
	s_waitcnt vmcnt(4)
	v_lshrrev_b16_e32 v31, 2, v36
	v_lshrrev_b16_e32 v29, 2, v34
	v_and_b32_e32 v30, 0x3f3f, v34
	s_waitcnt vmcnt(3)
	v_lshrrev_b16_e32 v34, 4, v37
	v_and_b32_e32 v32, 0x3f3f, v36
	v_and_b32_e32 v36, 0xf0f, v37
	v_and_b32_e32 v29, 0x3030, v29
	v_and_b32_e32 v31, 0x3030, v31
	v_and_b32_e32 v34, 0xf0f, v34
	v_or_b32_e32 v31, v36, v31
	v_or_b32_e32 v29, v34, v29
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v37, 0xf0f0f0f, v33
	v_cndmask_b32_e64 v31, v32, v31, s[0:1]
	v_cndmask_b32_e64 v29, v30, v29, s[0:1]
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v39, 0xf0f0f0f, v35
	v_lshrrev_b32_e32 v33, 4, v33
	v_dot4_i32_i8 v36, v37, v20, 0
	v_and_b32_e32 v30, 63, v31
	v_and_b32_e32 v34, 63, v29
	v_lshrrev_b32_e32 v35, 4, v35
	v_and_b32_e32 v33, 0xf0f0f0f, v33
	v_dot4_i32_i8 v32, v39, v21, v36
	v_and_b32_e32 v30, 0xffff, v30
	v_and_b32_e32 v34, 0xffff, v34
	v_and_b32_e32 v35, 0xf0f0f0f, v35
	v_dot4_i32_i8 v33, v33, v16, 0
	v_lshrrev_b16_e32 v29, 8, v29
	v_mul_lo_u32 v30, v32, v30
	v_mul_lo_u32 v32, v26, v34
	v_dot4_i32_i8 v33, v35, v17, v33
	v_lshrrev_b16_e32 v31, 8, v31
	v_mul_lo_u32 v29, v22, v29
	v_mul_lo_u32 v31, v33, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_fma_f32 v32, v19, v32, 0
	v_fma_f32 v30, v19, v30, 0
	v_fmac_f32_e32 v32, v18, v29
	v_fmac_f32_e32 v30, v18, v31
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v29, v38, v32, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v29, v30, v38, -v29 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v29
	s_branch .LBB0_14
.LBB0_17:
	s_or_b64 exec, exec, s[14:15]
.LBB0_18:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[0:1], 0, v1
	v_cmp_ne_u32_e32 vcc, 0, v1
	v_lshlrev_b32_e32 v3, 2, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_22
; %bb.19:
	v_lshlrev_b32_e32 v1, 8, v1
	s_movk_i32 s7, 0xff00
	v_add3_u32 v1, v1, v3, s7
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB0_21
; %bb.20:
	ds_write_b32 v1, v8 offset:256
.LBB0_21:
	ds_write_b32 v1, v9
.LBB0_22:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB0_56
; %bb.23:
	ds_read_b32 v2, v3
	v_cmp_ne_u32_e64 s[0:1], 1, v10
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_25
; %bb.24:
	ds_read_b32 v1, v3 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v8, v1
.LBB0_25:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	v_mbcnt_hi_u32_b32 v3, -1, v1
	v_and_b32_e32 v1, 64, v3
	v_add_u32_e32 v4, 64, v1
	v_xor_b32_e32 v1, 32, v3
	v_cmp_lt_u32_e32 vcc, v1, v4
	v_cndmask_b32_e32 v1, v3, v1, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v9, v2
	ds_bpermute_b32 v9, v1, v5
	v_xor_b32_e32 v2, 16, v3
	v_cmp_lt_u32_e32 vcc, v2, v4
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v9, v5, v9
	ds_bpermute_b32 v10, v2, v9
	v_xor_b32_e32 v5, 8, v3
	v_cmp_lt_u32_e32 vcc, v5, v4
	v_cndmask_b32_e32 v5, v3, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v10, v9, v10
	ds_bpermute_b32 v11, v5, v10
	v_xor_b32_e32 v9, 4, v3
	v_cmp_lt_u32_e32 vcc, v9, v4
	v_cndmask_b32_e32 v9, v3, v9, vcc
	v_lshlrev_b32_e32 v9, 2, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v11, v10, v11
	ds_bpermute_b32 v12, v9, v11
	v_xor_b32_e32 v10, 2, v3
	v_cmp_lt_u32_e32 vcc, v10, v4
	v_cndmask_b32_e32 v10, v3, v10, vcc
	v_lshlrev_b32_e32 v10, 2, v10
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v12, v11, v12
	ds_bpermute_b32 v13, v10, v12
	v_xor_b32_e32 v11, 1, v3
	v_cmp_lt_u32_e32 vcc, v11, v4
	v_cndmask_b32_e32 v3, v3, v11, vcc
	v_lshlrev_b32_e32 v11, 2, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v12, v13
	ds_bpermute_b32 v4, v11, v3
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_27
; %bb.26:
	ds_bpermute_b32 v1, v1, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v8, v1
	ds_bpermute_b32 v2, v2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v5, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v9, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v10, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v11, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v1, v2
.LBB0_27:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB0_56
; %bb.28:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v3, v4
	s_and_b64 vcc, exec, s[0:1]
	v_add_f32_e32 v0, v7, v0
	s_cbranch_vccnz .LBB0_55
; %bb.29:
	v_add_f32_e32 v1, v6, v8
	s_cmp_lt_i32 s16, 3
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB0_33
; %bb.30:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB0_34
; %bb.31:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB0_35
; %bb.32:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s17, s17
	v_min_f32_e32 v2, v2, v3
	s_mov_b32 s2, 0xbfb8aa3b
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_fma_f32 v5, v2, s2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmac_f32_e32 v5, 0xb2a5705f, v2
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s2, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s2, v2
	s_mov_b32 s2, 0xc2b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v4, v5, v4, vcc
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, s[2:3], v4, v4, v2
	v_div_scale_f32 v6, vcc, v2, v4, v2
	s_mov_b64 s[2:3], 0
	v_rcp_f32_e32 v7, v5
	v_fma_f32 v8, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v8, v7
	v_mul_f32_e32 v8, v6, v7
	v_fma_f32 v9, -v5, v8, v6
	v_fmac_f32_e32 v8, v9, v7
	v_fma_f32 v5, -v5, v8, v6
	v_div_fmas_f32 v5, v5, v7, v8
	v_max_f32_e32 v6, v0, v0
	v_max_f32_e64 v7, -s17, -s17
	v_min_f32_e32 v3, v6, v3
	v_max_f32_e32 v3, v3, v7
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB0_36
.LBB0_33:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_41
	s_branch .LBB0_46
.LBB0_34:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_37
	s_branch .LBB0_39
.LBB0_35:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
.LBB0_36:
	s_branch .LBB0_39
.LBB0_37:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB0_40
; %bb.38:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	s_mov_b32 s2, 0x3fb8aa3b
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmac_f32_e32 v5, 0x32a5705f, v3
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s2, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	s_mov_b32 s2, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, s[2:3], v3, v3, v2
	v_div_scale_f32 v5, vcc, v2, v3, v2
	s_mov_b64 s[2:3], 0
	v_rcp_f32_e32 v6, v4
	v_fma_f32 v7, -v4, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_mul_f32_e32 v7, v5, v6
	v_fma_f32 v8, -v4, v7, v5
	v_fmac_f32_e32 v7, v8, v6
	v_fma_f32 v4, -v4, v7, v5
	v_div_fmas_f32 v4, v4, v6, v7
	v_max_f32_e32 v5, v0, v0
	v_min_f32_e32 v5, 0x40e00000, v5
	v_max_f32_e32 v5, 0xc0e00000, v5
	v_add_f32_e32 v5, 1.0, v5
	v_div_fixup_f32 v2, v4, v3, v2
	v_mul_f32_e32 v2, v5, v2
.LBB0_39:
	s_branch .LBB0_46
.LBB0_40:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_46
.LBB0_41:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB0_43
; %bb.42:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	s_mov_b32 s0, 0xbfb8aa3b
	v_rndne_f32_e32 v3, v2
	v_sub_f32_e32 v4, v2, v3
	v_fma_f32 v2, v1, s0, -v2
	v_fmac_f32_e32 v2, 0xb2a5705f, v1
	v_add_f32_e32 v2, v4, v2
	v_exp_f32_e32 v2, v2
	v_cvt_i32_f32_e32 v3, v3
	s_mov_b32 s0, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s0, v1
	s_mov_b32 s0, 0xc2b17218
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_mov_b32_e32 v3, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s0, v1
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, s[0:1], v2, v2, v1
	v_div_scale_f32 v4, vcc, v1, v2, v1
	s_mov_b64 s[0:1], 0
	v_rcp_f32_e32 v5, v3
	v_fma_f32 v6, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v4, v5
	v_fma_f32 v7, -v3, v6, v4
	v_fmac_f32_e32 v6, v7, v5
	v_fma_f32 v3, -v3, v6, v4
	v_div_fmas_f32 v3, v3, v5, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB0_44
.LBB0_43:
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr2
.LBB0_44:
	s_andn2_b64 vcc, exec, s[0:1]
	s_mov_b64 s[0:1], 0
	s_cbranch_vccnz .LBB0_46
; %bb.45:
	s_cmp_lg_u32 s16, 1
	s_mov_b64 s[0:1], -1
	s_cselect_b64 s[2:3], -1, 0
.LBB0_46:
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz .LBB0_48
; %bb.47:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[0:1], 0
.LBB0_48:
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_54
; %bb.49:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s0, 0x3f200000
	v_cmp_nlt_f32_e64 s[0:1], |v2|, s0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
	s_cbranch_execz .LBB0_51
; %bb.50:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	s_mov_b32 s2, 0x3fb8aa3b
	v_rndne_f32_e32 v5, v4
	v_sub_f32_e32 v6, v4, v5
	v_fma_f32 v4, v3, s2, -v4
	v_fmac_f32_e32 v4, 0x32a5705f, v3
	v_add_f32_e32 v4, v6, v4
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	s_mov_b32 s2, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	s_mov_b32 s2, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB0_51:
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execz .LBB0_53
; %bb.52:
	v_mul_f32_e32 v3, v2, v2
	v_mov_b32_e32 v4, 0x3ca908c9
	v_fmac_f32_e32 v4, 0xbbbac73d, v3
	v_mov_b32_e32 v5, 0xbd5c1c4e
	v_fmac_f32_e32 v5, v3, v4
	v_mov_b32_e32 v4, 0x3e088382
	v_fmac_f32_e32 v4, v3, v5
	v_mov_b32_e32 v5, 0xbeaaaa99
	v_fmac_f32_e32 v5, v3, v4
	v_mul_f32_e64 v4, |v2|, v5
	v_fma_f32 v3, v3, v4, |v2|
.LBB0_53:
	s_or_b64 exec, exec, s[0:1]
	s_brev_b32 s0, -2
	v_bfi_b32 v2, s0, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_54:
	v_mov_b32_e32 v0, v2
.LBB0_55:
	s_load_dwordx2 s[0:1], s[4:5], 0x48
	s_mul_i32 s3, s22, s34
	s_mul_i32 s2, s26, s8
	s_add_i32 s3, s3, s6
	s_add_i32 s2, s3, s2
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB0_56:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 512
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 40
		.amdhsa_next_free_sgpr 42
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end0:
	.size	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end0-_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
                                        ; -- End function
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 40
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 42
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3256
; TotalNumSgprs: 46
; NumVgprs: 40
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 40
; Occupancy: 6
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[12:13], s[4:5], 0x10
	s_load_dwordx4 s[0:3], s[4:5], 0x50
	s_mov_b32 s10, s7
	s_mov_b64 s[18:19], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[12:13], 0
	s_cselect_b64 s[16:17], -1, 0
	s_cmp_eq_u64 s[12:13], 0
	s_cbranch_scc1 .LBB1_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[14:15], s[10:11], 2
	s_add_u32 s12, s12, s14
	s_addc_u32 s13, s13, s15
	s_load_dword s9, s[12:13], 0x0
	s_nop 0
	s_load_dwordx4 s[12:15], s[4:5], 0x78
	s_load_dword s11, s[4:5], 0x60
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB1_3
.LBB1_2:
	s_load_dwordx2 s[18:19], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s7, s18, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s9, s7, s19
.LBB1_3:
	s_load_dword s26, s[4:5], 0x88
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz .LBB1_6
; %bb.4:
	s_mul_hi_u32 s1, s1, s10
	s_add_i32 s1, s10, s1
	s_lshr_b32 s1, s1, s2
	s_mul_i32 s1, s1, s3
	s_sub_i32 s1, s10, s1
	s_branch .LBB1_7
.LBB1_5:
                                        ; implicit-def: $sgpr9
	s_load_dwordx4 s[12:15], s[4:5], 0x78
	s_load_dword s11, s[4:5], 0x60
	s_branch .LBB1_2
.LBB1_6:
	s_mov_b32 s1, s10
.LBB1_7:
	s_load_dwordx4 s[16:19], s[4:5], 0x90
	v_lshl_add_u32 v2, v1, 6, v0
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v7, 4, v2
	v_cmp_gt_u32_e32 vcc, s7, v7
	v_mov_b32_e32 v6, 0
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB1_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s15, s8
	s_add_i32 s0, s8, s0
	s_lshr_b32 s0, s0, s26
	s_mul_i32 s11, s11, s6
	s_mul_i32 s0, s0, s16
	v_lshlrev_b32_e32 v3, 1, v0
	s_load_dwordx4 s[20:23], s[4:5], 0x0
	s_mul_i32 s9, s9, s12
	v_and_b32_e32 v4, 30, v3
	s_add_i32 s0, s0, s11
	v_bfe_u32 v3, v3, 3, 2
	s_mul_i32 s13, s1, s13
	s_add_i32 s9, s9, s0
	v_lshlrev_b32_e32 v8, 5, v3
	v_and_b32_e32 v3, 3, v0
	v_bfe_u32 v5, v4, 3, 1
	v_cmp_lt_u32_e64 s[0:1], 15, v4
	v_lshrrev_b32_e32 v4, 4, v2
	v_bfe_u32 v2, v0, 2, 2
	v_lshlrev_b32_e32 v9, 2, v3
	v_mul_hi_u32_u24_e32 v3, 0x48, v2
	v_mul_u32_u24_e32 v2, 0x48, v2
	s_movk_i32 s2, 0x120
	s_mul_i32 s12, s17, s8
	v_mad_u64_u32 v[2:3], s[2:3], v4, s2, v[2:3]
	s_mul_hi_u32 s3, s12, 36
	s_mul_i32 s12, s12, 36
	s_waitcnt lgkmcnt(0)
	s_add_u32 s11, s22, s12
	s_mul_hi_u32 s2, s13, 36
	s_mul_i32 s13, s13, 36
	s_addc_u32 s3, s23, s3
	s_add_u32 s11, s11, s13
	s_addc_u32 s2, s3, s2
	v_mov_b32_e32 v4, s2
	v_add_co_u32_e32 v2, vcc, s11, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_add_co_u32_e32 v2, vcc, 36, v2
	v_lshlrev_b32_e32 v10, 1, v5
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v6, 0
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_mov_b64 s[12:13], 0
	s_movk_i32 s11, 0x90
	s_mov_b32 s15, 0x1010101
	v_mov_b32_e32 v5, s21
.LBB1_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v13, s9, v7
	v_mad_i64_i32 v[13:14], s[2:3], v13, s11, v[4:5]
	v_add_co_u32_e32 v11, vcc, v2, v9
	v_addc_co_u32_e32 v12, vcc, 0, v3, vcc
	v_add_co_u32_e32 v17, vcc, v13, v8
	v_addc_co_u32_e32 v18, vcc, 0, v14, vcc
	global_load_dword v19, v[11:12], off offset:-32
	global_load_dword v20, v[11:12], off offset:-16
	global_load_dword v21, v[11:12], off offset:4
	v_add_co_u32_e32 v15, vcc, v13, v10
	v_addc_co_u32_e32 v16, vcc, 0, v14, vcc
	v_add_co_u32_e32 v17, vcc, v17, v9
	v_addc_co_u32_e32 v18, vcc, 0, v18, vcc
	global_load_ushort v22, v[15:16], off offset:8
	global_load_ushort v23, v[15:16], off offset:12
	global_load_dword v24, v[17:18], off offset:16
	global_load_dword v25, v[17:18], off offset:32
	global_load_ushort v26, v[15:16], off offset:4
	global_load_dword v27, v[11:12], off offset:20
	global_load_dword v28, v[2:3], off
	global_load_dword v29, v[2:3], off offset:-36
	global_load_dword v30, v[13:14], off
	v_add_u32_e32 v7, 8, v7
	v_add_co_u32_e32 v2, vcc, 0x900, v2
	v_cmp_le_u32_e64 s[2:3], s7, v7
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_or_b64 s[12:13], s[2:3], s[12:13]
	s_waitcnt vmcnt(11)
	v_dot4_i32_i8 v11, s15, v19, 0
	s_waitcnt vmcnt(10)
	v_dot4_i32_i8 v11, s15, v20, v11
	s_waitcnt vmcnt(9)
	v_dot4_i32_i8 v12, s15, v21, 0
	s_waitcnt vmcnt(8)
	v_and_b32_e32 v17, 0x3f3f, v22
	s_waitcnt vmcnt(7)
	v_lshrrev_b16_e32 v15, 4, v23
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v13, 0xf0f0f0f, v24
	v_dot4_i32_i8 v13, v13, v19, 0
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v14, 0xf0f0f0f, v25
	v_dot4_i32_i8 v13, v14, v20, v13
	v_lshrrev_b16_e32 v14, 2, v22
	v_and_b32_e32 v14, 0x3030, v14
	v_and_b32_e32 v15, 0xf0f, v15
	v_or_b32_e32 v14, v15, v14
	s_waitcnt vmcnt(4)
	v_lshrrev_b16_e32 v15, 2, v26
	v_and_b32_e32 v16, 0xf0f, v23
	v_and_b32_e32 v15, 0x3030, v15
	v_cndmask_b32_e64 v14, v17, v14, s[0:1]
	v_and_b32_e32 v18, 0x3f3f, v26
	v_lshrrev_b32_e32 v19, 4, v24
	v_or_b32_e32 v15, v16, v15
	v_and_b32_e32 v17, 63, v14
	v_lshrrev_b32_e32 v20, 4, v25
	v_and_b32_e32 v19, 0xf0f0f0f, v19
	v_cndmask_b32_e64 v15, v18, v15, s[0:1]
	v_and_b32_e32 v17, 0xffff, v17
	s_waitcnt vmcnt(3)
	v_dot4_i32_i8 v12, s15, v27, v12
	v_and_b32_e32 v20, 0xf0f0f0f, v20
	v_dot4_i32_i8 v16, v19, v21, 0
	v_lshrrev_b16_e32 v14, 8, v14
	v_pk_lshrrev_b16 v18, 8, v15 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b32_e32 v15, 63, v15
	v_mul_lo_u32 v11, v11, v17
	v_dot4_i32_i8 v16, v20, v27, v16
	v_mul_lo_u32 v12, v12, v14
	v_lshrrev_b32_e32 v14, 16, v18
	v_mul_lo_u32 v13, v13, v15
	v_mul_lo_u32 v14, v16, v14
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	s_waitcnt vmcnt(1)
	v_fma_mix_f32 v11, v29, v11, 0 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v11, v28, v12, v11 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v13, v29, v13, 0 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v13, v28, v14, v13 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v11, v30, v11, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v11, v13, v30, -v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v11
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execnz .LBB1_9
; %bb.10:
	s_or_b64 exec, exec, s[12:13]
.LBB1_11:
	s_or_b64 exec, exec, s[24:25]
	v_cmp_eq_u32_e32 vcc, 0, v1
	v_cmp_ne_u32_e64 s[0:1], 0, v1
	v_lshlrev_b32_e32 v2, 2, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
; %bb.12:
	v_lshlrev_b32_e32 v1, 8, v1
	s_movk_i32 s0, 0xff00
	v_add3_u32 v1, v1, v2, s0
	ds_write_b32 v1, v6
; %bb.13:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_16
; %bb.14:
	ds_read_b32 v1, v2
	v_mbcnt_lo_u32_b32 v2, -1, 0
	v_mbcnt_hi_u32_b32 v2, -1, v2
	v_and_b32_e32 v3, 64, v2
	v_add_u32_e32 v3, 64, v3
	v_xor_b32_e32 v4, 32, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v6, v1
	ds_bpermute_b32 v4, v4, v1
	v_xor_b32_e32 v5, 16, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 8, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 2, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 1, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v2, v2, v5, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v2, v2, v1
	s_mov_b32 s1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB1_16
; %bb.15:
	s_load_dwordx2 s[2:3], s[4:5], 0x48
	s_mul_i32 s0, s14, s10
	s_add_i32 s0, s0, s6
	s_mul_i32 s4, s18, s8
	s_add_i32 s0, s0, s4
	s_lshl_b64 s[0:1], s[0:1], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s2, s0
	v_add_f32_e32 v0, v1, v2
	s_addc_u32 s1, s3, s1
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB1_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 256
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 31
		.amdhsa_next_free_sgpr 27
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end1:
	.size	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end1-_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
                                        ; -- End function
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 31
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 27
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1360
; TotalNumSgprs: 31
; NumVgprs: 31
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 31
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx8 s[12:19], s[4:5], 0x0
	s_load_dwordx4 s[28:31], s[4:5], 0x20
	s_load_dwordx4 s[0:3], s[4:5], 0x50
	s_load_dwordx4 s[20:23], s[4:5], 0x78
	s_mov_b32 s10, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b64 s[24:25], -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_mov_b64 s[26:27], 0
	s_cbranch_scc1 .LBB2_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[34:35], s[10:11], 2
	s_add_u32 s16, s16, s34
	s_addc_u32 s17, s17, s35
	s_load_dword s9, s[16:17], 0x0
	s_load_dword s11, s[4:5], 0x60
	s_load_dword s33, s[4:5], 0x88
	s_andn2_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB2_3
.LBB2_2:
	s_load_dwordx2 s[16:17], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s7, s16, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s9, s7, s17
.LBB2_3:
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB2_6
; %bb.4:
	s_mul_hi_u32 s1, s1, s10
	s_add_i32 s1, s10, s1
	s_lshr_b32 s1, s1, s2
	s_mul_i32 s1, s1, s3
	s_sub_i32 s1, s10, s1
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s7, s9
	s_branch .LBB2_7
.LBB2_5:
                                        ; implicit-def: $sgpr9
	s_load_dword s11, s[4:5], 0x60
	s_load_dword s33, s[4:5], 0x88
	s_branch .LBB2_2
.LBB2_6:
	s_mov_b32 s7, s10
	s_mov_b32 s1, s10
.LBB2_7:
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[24:27], s[4:5], 0x90
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v2, v0, v1
	s_cselect_b64 s[34:35], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v2
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB2_12
; %bb.8:
	v_mov_b32_e32 v6, 0
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s7, s22
	v_mov_b32_e32 v7, 0
	s_cbranch_scc1 .LBB2_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s26, s8
	s_mov_b32 s39, 0
	s_lshl_b64 s[40:41], s[38:39], 2
	s_add_u32 s7, s18, s40
	s_mov_b32 s37, s39
	s_addc_u32 s27, s19, s41
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s37, s7, s18
	s_addc_u32 s27, s27, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s37, s18
	s_addc_u32 s19, s27, s19
	v_lshlrev_b32_e32 v2, 2, v0
	global_load_dword v7, v2, s[18:19]
.LBB2_10:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[34:35]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB2_12
; %bb.11:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s8
	s_mov_b32 s19, 0
	s_lshl_b64 s[38:39], s[18:19], 2
	s_add_u32 s7, s30, s38
	s_mov_b32 s37, s19
	s_addc_u32 s27, s31, s39
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s30, s7, s18
	s_addc_u32 s27, s27, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s30, s18
	s_addc_u32 s19, s27, s19
	v_lshlrev_b32_e32 v2, 2, v0
	global_load_dword v6, v2, s[18:19]
.LBB2_12:
	s_or_b64 exec, exec, s[2:3]
	v_lshl_add_u32 v2, v1, 6, v0
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v11, 5, v2
	v_cmp_gt_u32_e32 vcc, s7, v11
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v10, 0, 1, s[34:35]
	v_mov_b32_e32 v8, 0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB2_18
; %bb.13:
	s_mul_hi_u32 s0, s23, s8
	s_add_i32 s0, s8, s0
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s0, s33
	s_mul_i32 s11, s11, s6
	s_mul_i32 s0, s0, s24
	s_mul_i32 s9, s9, s20
	s_mul_i32 s1, s1, s21
	s_add_i32 s0, s0, s11
	v_and_b32_e32 v3, 31, v0
	s_add_i32 s9, s9, s0
	s_mul_hi_u32 s0, s1, 36
	s_mul_i32 s1, s1, 36
	v_lshlrev_b32_e32 v15, 1, v3
	v_lshrrev_b32_e32 v13, 5, v2
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v3, s0
	s_movk_i32 s0, 0x120
	v_mad_u64_u32 v[2:3], s[0:1], v13, s0, v[2:3]
	s_mul_i32 s2, s25, s8
	v_and_b32_e32 v5, 15, v0
	v_mad_u64_u32 v[2:3], s[0:1], s2, 36, v[2:3]
	v_bfe_u32 v4, v0, 4, 1
	v_lshrrev_b16_e32 v8, 3, v5
	v_lshl_or_b32 v14, v4, 2, v8
	v_mad_u64_u32 v[2:3], s[0:1], v14, 36, v[2:3]
	v_lshlrev_b32_e32 v4, 3, v4
	v_and_b32_e32 v16, 7, v0
	v_lshrrev_b16_e32 v5, 2, v5
	v_or_b32_e32 v12, v4, v16
	v_or_b32_e32 v13, v4, v5
	v_mov_b32_e32 v4, s15
	v_add_co_u32_e32 v2, vcc, s14, v2
	v_lshlrev_b32_e32 v17, 1, v12
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v12, 1, v8
	v_lshlrev_b32_e32 v14, 2, v16
	s_mov_b64 s[14:15], 0
	s_movk_i32 s11, 0xd2
	v_mov_b32_e32 v5, s13
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v16, 1, v17
	s_mov_b32 s12, 0x30303030
	s_movk_i32 s13, 0x3f00
	s_movk_i32 s20, 0xe000
	v_cmp_ne_u32_e64 s[0:1], 1, v10
	v_mov_b32_e32 v17, 8
	v_mov_b32_e32 v8, 0
	s_branch .LBB2_15
.LBB2_14:                               ;   in Loop: Header=BB2_15 Depth=1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v25, v12, v25
	v_and_b32_e32 v27, 0xf0f0f0f, v23
	v_lshlrev_b32_e32 v28, 4, v25
	v_and_or_b32 v27, v28, s12, v27
	v_lshlrev_b16_e32 v29, 8, v27
	v_and_b32_e32 v28, 0x3f00, v27
	v_add_u16_e32 v29, 0xe000, v29
	v_or_b32_sdwa v28, v28, v29 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v29, v27, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v27, v17, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v27, 0xe000, v27
	v_or_b32_sdwa v27, v29, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v28, 0xe000, v28
	v_add_u16_sdwa v27, v27, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_lshrrev_b32_e32 v23, 4, v23
	v_or_b32_e32 v27, v28, v27
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	s_waitcnt vmcnt(1)
	v_bfe_i32 v26, v26, 0, 8
	v_dot4_i32_i8 v22, v27, v22, 0
	v_and_or_b32 v23, v25, s12, v23
	v_mul_lo_u32 v22, v22, v26
	v_lshlrev_b16_e32 v26, 8, v23
	v_and_b32_e32 v25, 0x3f00, v23
	v_add_u16_e32 v26, 0xe000, v26
	v_or_b32_sdwa v25, v25, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v26, v23, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v23, v17, v23 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v23, 0xe000, v23
	v_or_b32_sdwa v23, v26, v23 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v25, 0xe000, v25
	v_add_u16_sdwa v23, v23, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v23, v25, v23
	s_waitcnt vmcnt(0)
	v_bfe_i32 v24, v24, 0, 8
	v_dot4_i32_i8 v18, v23, v18, 0
	v_mul_lo_u32 v18, v18, v24
	v_cvt_f32_i32_e32 v22, v22
	v_add_u32_e32 v11, 4, v11
	v_add_co_u32_e32 v2, vcc, 0x480, v2
	v_cvt_f32_i32_e32 v18, v18
	v_fma_f32 v21, v21, v22, 0
	v_cmp_le_u32_e64 s[2:3], s7, v11
	s_or_b64 s[14:15], s[2:3], s[14:15]
	v_fmac_f32_e32 v21, v20, v18
	v_fma_mix_f32 v9, v21, v19, v9 op_sel_hi:[0,1,0]
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB2_17
.LBB2_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v27, s9, v11
	v_mad_i64_i32 v[20:21], s[2:3], v27, s11, v[4:5]
	v_add_co_u32_e32 v28, vcc, v20, v15
	v_addc_co_u32_e32 v29, vcc, 0, v21, vcc
	v_add_co_u32_e32 v30, vcc, v20, v16
	v_addc_co_u32_e32 v31, vcc, 0, v21, vcc
	v_add_co_u32_e32 v23, vcc, v2, v14
	v_addc_co_u32_e32 v24, vcc, 0, v3, vcc
	global_load_dword v22, v[23:24], off offset:4
	global_load_dword v18, v[23:24], off offset:76
	global_load_dword v34, v[2:3], off
	global_load_dword v35, v[2:3], off offset:72
	v_add_co_u32_e32 v32, vcc, v20, v13
	v_addc_co_u32_e32 v33, vcc, 0, v21, vcc
	global_load_dword v23, v[28:29], off
	global_load_dword v25, v[30:31], off offset:128
	global_load_ushort v19, v[20:21], off offset:208
	global_load_ubyte v26, v[32:33], off offset:192
	global_load_ubyte v24, v[32:33], off offset:196
	s_and_b64 vcc, exec, s[0:1]
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v21, v34
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v20, v35
	s_cbranch_vccnz .LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	v_mov_b32_e32 v28, s28
	v_mov_b32_e32 v29, s29
	v_mad_i64_i32 v[27:28], s[2:3], v27, s11, v[28:29]
	v_add_co_u32_e32 v29, vcc, v27, v16
	v_addc_co_u32_e32 v30, vcc, 0, v28, vcc
	v_add_co_u32_e32 v31, vcc, v27, v15
	v_addc_co_u32_e32 v32, vcc, 0, v28, vcc
	global_load_dword v33, v[29:30], off offset:128
	global_load_dword v34, v[31:32], off
	v_add_co_u32_e32 v29, vcc, v27, v13
	v_addc_co_u32_e32 v30, vcc, 0, v28, vcc
	global_load_sbyte v31, v[29:30], off offset:192
	global_load_sbyte v32, v[29:30], off offset:196
	global_load_ushort v35, v[27:28], off offset:208
	s_waitcnt vmcnt(4)
	v_ashrrev_i32_e32 v27, v12, v33
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v28, 0xf0f0f0f, v34
	v_lshrrev_b32_e32 v29, 4, v34
	v_lshlrev_b32_e32 v30, 4, v27
	v_and_b32_e32 v29, 0xf0f0f0f, v29
	v_and_or_b32 v28, v30, s12, v28
	v_and_or_b32 v27, v27, s12, v29
	v_and_b32_e32 v29, 0x3f00, v28
	v_lshlrev_b16_e32 v30, 8, v28
	v_and_b32_sdwa v33, v28, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v28, v17, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_and_b32_e32 v34, 0x3f00, v27
	v_lshlrev_b16_e32 v36, 8, v27
	v_and_b32_sdwa v37, v27, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v27, v17, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v30, 0xe000, v30
	v_add_u16_e32 v28, 0xe000, v28
	v_add_u16_e32 v36, 0xe000, v36
	v_add_u16_e32 v27, 0xe000, v27
	v_or_b32_sdwa v29, v29, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v28, v33, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v30, v34, v36 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v27, v37, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v29, 0xe000, v29
	v_add_u16_sdwa v28, v28, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v30, 0xe000, v30
	v_add_u16_sdwa v27, v27, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v28, v29, v28
	v_or_b32_e32 v27, v30, v27
	v_dot4_i32_i8 v28, v28, v22, 0
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v28, v28, v31
	v_dot4_i32_i8 v27, v27, v18, 0
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v27, v27, v32
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_fma_f32 v28, v21, v28, 0
	v_fmac_f32_e32 v28, v20, v27
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v8, v28, v35, v8 op_sel_hi:[0,1,0]
	s_branch .LBB2_14
.LBB2_17:
	s_or_b64 exec, exec, s[14:15]
.LBB2_18:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[0:1], 0, v1
	v_cmp_ne_u32_e32 vcc, 0, v1
	v_lshlrev_b32_e32 v3, 2, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB2_22
; %bb.19:
	v_lshlrev_b32_e32 v1, 8, v1
	s_movk_i32 s7, 0xff00
	v_add3_u32 v1, v1, v3, s7
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB2_21
; %bb.20:
	ds_write_b32 v1, v8 offset:256
.LBB2_21:
	ds_write_b32 v1, v9
.LBB2_22:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB2_56
; %bb.23:
	ds_read_b32 v2, v3
	v_cmp_ne_u32_e64 s[0:1], 1, v10
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_25
; %bb.24:
	ds_read_b32 v1, v3 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v8, v1
.LBB2_25:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	v_mbcnt_hi_u32_b32 v3, -1, v1
	v_and_b32_e32 v1, 64, v3
	v_add_u32_e32 v4, 64, v1
	v_xor_b32_e32 v1, 32, v3
	v_cmp_lt_u32_e32 vcc, v1, v4
	v_cndmask_b32_e32 v1, v3, v1, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v9, v2
	ds_bpermute_b32 v9, v1, v5
	v_xor_b32_e32 v2, 16, v3
	v_cmp_lt_u32_e32 vcc, v2, v4
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v9, v5, v9
	ds_bpermute_b32 v10, v2, v9
	v_xor_b32_e32 v5, 8, v3
	v_cmp_lt_u32_e32 vcc, v5, v4
	v_cndmask_b32_e32 v5, v3, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v10, v9, v10
	ds_bpermute_b32 v11, v5, v10
	v_xor_b32_e32 v9, 4, v3
	v_cmp_lt_u32_e32 vcc, v9, v4
	v_cndmask_b32_e32 v9, v3, v9, vcc
	v_lshlrev_b32_e32 v9, 2, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v11, v10, v11
	ds_bpermute_b32 v12, v9, v11
	v_xor_b32_e32 v10, 2, v3
	v_cmp_lt_u32_e32 vcc, v10, v4
	v_cndmask_b32_e32 v10, v3, v10, vcc
	v_lshlrev_b32_e32 v10, 2, v10
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v12, v11, v12
	ds_bpermute_b32 v13, v10, v12
	v_xor_b32_e32 v11, 1, v3
	v_cmp_lt_u32_e32 vcc, v11, v4
	v_cndmask_b32_e32 v3, v3, v11, vcc
	v_lshlrev_b32_e32 v11, 2, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v12, v13
	ds_bpermute_b32 v4, v11, v3
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_27
; %bb.26:
	ds_bpermute_b32 v1, v1, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v8, v1
	ds_bpermute_b32 v2, v2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v5, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v9, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v10, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v2
	ds_bpermute_b32 v2, v11, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v1, v2
.LBB2_27:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB2_56
; %bb.28:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v3, v4
	s_and_b64 vcc, exec, s[0:1]
	v_add_f32_e32 v0, v7, v0
	s_cbranch_vccnz .LBB2_55
; %bb.29:
	v_add_f32_e32 v1, v6, v8
	s_cmp_lt_i32 s16, 3
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB2_33
; %bb.30:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB2_34
; %bb.31:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB2_35
; %bb.32:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s17, s17
	v_min_f32_e32 v2, v2, v3
	s_mov_b32 s2, 0xbfb8aa3b
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_fma_f32 v5, v2, s2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmac_f32_e32 v5, 0xb2a5705f, v2
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s2, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s2, v2
	s_mov_b32 s2, 0xc2b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v4, v5, v4, vcc
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, s[2:3], v4, v4, v2
	v_div_scale_f32 v6, vcc, v2, v4, v2
	s_mov_b64 s[2:3], 0
	v_rcp_f32_e32 v7, v5
	v_fma_f32 v8, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v8, v7
	v_mul_f32_e32 v8, v6, v7
	v_fma_f32 v9, -v5, v8, v6
	v_fmac_f32_e32 v8, v9, v7
	v_fma_f32 v5, -v5, v8, v6
	v_div_fmas_f32 v5, v5, v7, v8
	v_max_f32_e32 v6, v0, v0
	v_max_f32_e64 v7, -s17, -s17
	v_min_f32_e32 v3, v6, v3
	v_max_f32_e32 v3, v3, v7
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB2_36
.LBB2_33:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_41
	s_branch .LBB2_46
.LBB2_34:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_37
	s_branch .LBB2_39
.LBB2_35:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
.LBB2_36:
	s_branch .LBB2_39
.LBB2_37:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB2_40
; %bb.38:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	s_mov_b32 s2, 0x3fb8aa3b
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmac_f32_e32 v5, 0x32a5705f, v3
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s2, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	s_mov_b32 s2, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, s[2:3], v3, v3, v2
	v_div_scale_f32 v5, vcc, v2, v3, v2
	s_mov_b64 s[2:3], 0
	v_rcp_f32_e32 v6, v4
	v_fma_f32 v7, -v4, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_mul_f32_e32 v7, v5, v6
	v_fma_f32 v8, -v4, v7, v5
	v_fmac_f32_e32 v7, v8, v6
	v_fma_f32 v4, -v4, v7, v5
	v_div_fmas_f32 v4, v4, v6, v7
	v_max_f32_e32 v5, v0, v0
	v_min_f32_e32 v5, 0x40e00000, v5
	v_max_f32_e32 v5, 0xc0e00000, v5
	v_add_f32_e32 v5, 1.0, v5
	v_div_fixup_f32 v2, v4, v3, v2
	v_mul_f32_e32 v2, v5, v2
.LBB2_39:
	s_branch .LBB2_46
.LBB2_40:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_46
.LBB2_41:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB2_43
; %bb.42:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	s_mov_b32 s0, 0xbfb8aa3b
	v_rndne_f32_e32 v3, v2
	v_sub_f32_e32 v4, v2, v3
	v_fma_f32 v2, v1, s0, -v2
	v_fmac_f32_e32 v2, 0xb2a5705f, v1
	v_add_f32_e32 v2, v4, v2
	v_exp_f32_e32 v2, v2
	v_cvt_i32_f32_e32 v3, v3
	s_mov_b32 s0, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s0, v1
	s_mov_b32 s0, 0xc2b17218
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_mov_b32_e32 v3, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s0, v1
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, s[0:1], v2, v2, v1
	v_div_scale_f32 v4, vcc, v1, v2, v1
	s_mov_b64 s[0:1], 0
	v_rcp_f32_e32 v5, v3
	v_fma_f32 v6, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v4, v5
	v_fma_f32 v7, -v3, v6, v4
	v_fmac_f32_e32 v6, v7, v5
	v_fma_f32 v3, -v3, v6, v4
	v_div_fmas_f32 v3, v3, v5, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB2_44
.LBB2_43:
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr2
.LBB2_44:
	s_andn2_b64 vcc, exec, s[0:1]
	s_mov_b64 s[0:1], 0
	s_cbranch_vccnz .LBB2_46
; %bb.45:
	s_cmp_lg_u32 s16, 1
	s_mov_b64 s[0:1], -1
	s_cselect_b64 s[2:3], -1, 0
.LBB2_46:
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz .LBB2_48
; %bb.47:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[0:1], 0
.LBB2_48:
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_54
; %bb.49:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s0, 0x3f200000
	v_cmp_nlt_f32_e64 s[0:1], |v2|, s0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
	s_cbranch_execz .LBB2_51
; %bb.50:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	s_mov_b32 s2, 0x3fb8aa3b
	v_rndne_f32_e32 v5, v4
	v_sub_f32_e32 v6, v4, v5
	v_fma_f32 v4, v3, s2, -v4
	v_fmac_f32_e32 v4, 0x32a5705f, v3
	v_add_f32_e32 v4, v6, v4
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	s_mov_b32 s2, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	s_mov_b32 s2, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB2_51:
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execz .LBB2_53
; %bb.52:
	v_mul_f32_e32 v3, v2, v2
	v_mov_b32_e32 v4, 0x3ca908c9
	v_fmac_f32_e32 v4, 0xbbbac73d, v3
	v_mov_b32_e32 v5, 0xbd5c1c4e
	v_fmac_f32_e32 v5, v3, v4
	v_mov_b32_e32 v4, 0x3e088382
	v_fmac_f32_e32 v4, v3, v5
	v_mov_b32_e32 v5, 0xbeaaaa99
	v_fmac_f32_e32 v5, v3, v4
	v_mul_f32_e64 v4, |v2|, v5
	v_fma_f32 v3, v3, v4, |v2|
.LBB2_53:
	s_or_b64 exec, exec, s[0:1]
	s_brev_b32 s0, -2
	v_bfi_b32 v2, s0, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_54:
	v_mov_b32_e32 v0, v2
.LBB2_55:
	s_load_dwordx2 s[0:1], s[4:5], 0x48
	s_mul_i32 s3, s22, s10
	s_mul_i32 s2, s26, s8
	s_add_i32 s3, s3, s6
	s_add_i32 s2, s3, s2
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB2_56:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 512
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 38
		.amdhsa_next_free_sgpr 42
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end2:
	.size	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end2-_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
                                        ; -- End function
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 38
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 42
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3164
; TotalNumSgprs: 46
; NumVgprs: 38
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 38
; Occupancy: 6
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	s_load_dwordx4 s[16:19], s[4:5], 0x50
	s_mov_b32 s10, s7
	s_mov_b64 s[14:15], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[0:1], 0
	s_cselect_b64 s[12:13], -1, 0
	s_cmp_eq_u64 s[0:1], 0
	s_cbranch_scc1 .LBB3_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[2:3], s[10:11], 2
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	s_load_dword s9, s[0:1], 0x0
	s_nop 0
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s11, s[4:5], 0x60
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccnz .LBB3_3
.LBB3_2:
	s_load_dwordx2 s[14:15], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s7, s14, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s9, s7, s15
.LBB3_3:
	s_load_dword s22, s[4:5], 0x88
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_6
; %bb.4:
	s_mul_hi_u32 s7, s17, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s7, s7, s18
	s_mul_i32 s7, s7, s19
	s_sub_i32 s23, s10, s7
	s_branch .LBB3_7
.LBB3_5:
                                        ; implicit-def: $sgpr9
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s11, s[4:5], 0x60
	s_branch .LBB3_2
.LBB3_6:
	s_mov_b32 s23, s10
.LBB3_7:
	s_load_dwordx4 s[12:15], s[4:5], 0x90
	v_lshl_add_u32 v2, v1, 6, v0
	s_lshr_b32 s7, s16, 8
	v_lshrrev_b32_e32 v7, 5, v2
	v_cmp_gt_u32_e32 vcc, s7, v7
	v_mov_b32_e32 v6, 0
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB3_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s3, s8
	s_add_i32 s3, s8, s3
	s_lshr_b32 s3, s3, s22
	s_mul_i32 s11, s11, s6
	s_mul_i32 s3, s3, s12
	s_mul_i32 s0, s9, s0
	s_mul_i32 s1, s23, s1
	s_add_i32 s3, s3, s11
	v_and_b32_e32 v3, 31, v0
	s_add_i32 s3, s0, s3
	s_mul_hi_u32 s0, s1, 36
	s_mul_i32 s1, s1, 36
	v_lshlrev_b32_e32 v11, 1, v3
	v_lshrrev_b32_e32 v13, 5, v2
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v3, s0
	s_movk_i32 s0, 0x120
	v_mad_u64_u32 v[2:3], s[0:1], v13, s0, v[2:3]
	s_mul_i32 s9, s13, s8
	v_and_b32_e32 v5, 15, v0
	v_mad_u64_u32 v[2:3], s[0:1], s9, 36, v[2:3]
	v_bfe_u32 v4, v0, 4, 1
	v_lshrrev_b16_e32 v8, 3, v5
	s_load_dwordx4 s[16:19], s[4:5], 0x0
	v_lshl_or_b32 v10, v4, 2, v8
	v_mad_u64_u32 v[2:3], s[0:1], v10, 36, v[2:3]
	v_lshlrev_b32_e32 v4, 3, v4
	v_and_b32_e32 v12, 7, v0
	v_or_b32_e32 v9, v4, v12
	v_lshrrev_b16_e32 v5, 2, v5
	v_lshlrev_b32_e32 v13, 1, v9
	v_or_b32_e32 v9, v4, v5
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s19
	v_add_co_u32_e32 v2, vcc, s18, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_mov_b32_e32 v4, s16
	v_mov_b32_e32 v6, 0
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v10, 2, v12
	s_mov_b64 s[0:1], 0
	s_movk_i32 s9, 0xd2
	v_mov_b32_e32 v5, s17
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v12, 1, v13
	s_mov_b32 s11, 0x30303030
	s_movk_i32 s12, 0x3f00
	s_movk_i32 s13, 0xe000
	v_mov_b32_e32 v13, 8
.LBB3_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, s3, v7
	v_mad_i64_i32 v[16:17], s[16:17], v16, s9, v[4:5]
	v_add_co_u32_e32 v14, vcc, v2, v10
	v_addc_co_u32_e32 v15, vcc, 0, v3, vcc
	v_add_co_u32_e32 v18, vcc, v16, v11
	v_addc_co_u32_e32 v19, vcc, 0, v17, vcc
	v_add_co_u32_e32 v20, vcc, v16, v12
	v_addc_co_u32_e32 v21, vcc, 0, v17, vcc
	global_load_dword v22, v[20:21], off offset:128
	global_load_dword v23, v[18:19], off
	global_load_dword v24, v[14:15], off offset:4
	global_load_dword v25, v[14:15], off offset:76
	v_add_co_u32_e32 v14, vcc, v16, v9
	v_addc_co_u32_e32 v15, vcc, 0, v17, vcc
	global_load_sbyte v18, v[14:15], off offset:192
	global_load_sbyte v19, v[14:15], off offset:196
	global_load_dword v20, v[2:3], off
	global_load_dword v21, v[2:3], off offset:72
	global_load_ushort v26, v[16:17], off offset:208
	v_add_co_u32_e32 v2, vcc, 0x480, v2
	v_add_u32_e32 v7, 4, v7
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_cmp_le_u32_e32 vcc, s7, v7
	s_or_b64 s[0:1], vcc, s[0:1]
	s_waitcnt vmcnt(8)
	v_ashrrev_i32_e32 v14, v8, v22
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v15, 0xf0f0f0f, v23
	v_lshrrev_b32_e32 v16, 4, v23
	v_lshlrev_b32_e32 v17, 4, v14
	v_and_b32_e32 v16, 0xf0f0f0f, v16
	v_and_or_b32 v15, v17, s11, v15
	v_and_or_b32 v14, v14, s11, v16
	v_lshlrev_b16_e32 v16, 8, v15
	v_and_b32_e32 v17, 0x3f00, v15
	v_and_b32_sdwa v22, v15, s12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v15, v13, v15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v16, 0xe000, v16
	v_or_b32_sdwa v16, v17, v16 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_lshlrev_b16_e32 v17, 8, v14
	v_add_u16_e32 v15, 0xe000, v15
	v_or_b32_sdwa v15, v22, v15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_e32 v22, 0x3f00, v14
	v_add_u16_e32 v17, 0xe000, v17
	v_or_b32_sdwa v17, v22, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v22, v14, s12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v14, v13, v14 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v14, 0xe000, v14
	v_or_b32_sdwa v14, v22, v14 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v16, 0xe000, v16
	v_add_u16_sdwa v15, v15, s13 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v17, 0xe000, v17
	v_add_u16_sdwa v14, v14, s13 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v15, v16, v15
	v_or_b32_e32 v14, v17, v14
	s_waitcnt vmcnt(6)
	v_dot4_i32_i8 v15, v15, v24, 0
	s_waitcnt vmcnt(5)
	v_dot4_i32_i8 v14, v14, v25, 0
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v15, v15, v18
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v14, v14, v19
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	s_waitcnt vmcnt(2)
	v_fma_mix_f32 v15, v20, v15, 0 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(1)
	v_fma_mix_f32 v14, v21, v14, v15 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v6, v14, v26, v6 op_sel_hi:[0,1,0]
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB3_9
; %bb.10:
	s_or_b64 exec, exec, s[0:1]
.LBB3_11:
	s_or_b64 exec, exec, s[20:21]
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_ne_u32_e64 s[0:1], 0, v1
	v_lshlrev_b32_e32 v2, 2, v0
	s_and_saveexec_b64 s[12:13], s[0:1]
; %bb.12:
	v_lshlrev_b32_e32 v1, 8, v1
	s_movk_i32 s0, 0xff00
	v_add3_u32 v1, v1, v2, s0
	ds_write_b32 v1, v6
; %bb.13:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB3_16
; %bb.14:
	ds_read_b32 v1, v2
	v_mbcnt_lo_u32_b32 v2, -1, 0
	v_mbcnt_hi_u32_b32 v2, -1, v2
	v_and_b32_e32 v3, 64, v2
	v_add_u32_e32 v3, 64, v3
	v_xor_b32_e32 v4, 32, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v6, v1
	ds_bpermute_b32 v4, v4, v1
	v_xor_b32_e32 v5, 16, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 8, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 2, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v4, v5, v1
	v_xor_b32_e32 v5, 1, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v2, v2, v5, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v4
	ds_bpermute_b32 v2, v2, v1
	s_mov_b32 s1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB3_16
; %bb.15:
	s_load_dwordx2 s[4:5], s[4:5], 0x48
	s_mul_i32 s0, s2, s10
	s_add_i32 s0, s0, s6
	s_mul_i32 s2, s14, s8
	s_add_i32 s0, s0, s2
	s_lshl_b64 s[0:1], s[0:1], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s4, s0
	v_add_f32_e32 v0, v1, v2
	s_addc_u32 s1, s5, s1
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB3_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 256
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 27
		.amdhsa_next_free_sgpr 24
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end3:
	.size	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end3-_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
                                        ; -- End function
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 27
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 24
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1280
; TotalNumSgprs: 28
; NumVgprs: 27
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 27
; Occupancy: 9
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.section	.AMDGPU.csdata,"",@progbits
	.type	__hip_cuid_d94d19489117ec32,@object ; @__hip_cuid_d94d19489117ec32
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_d94d19489117ec32
__hip_cuid_d94d19489117ec32:
	.byte	0                               ; 0x0
	.size	__hip_cuid_d94d19489117ec32, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_d94d19489117ec32
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           48
        .value_kind:     by_value
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           12
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           12
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           12
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
    .gfx1250_revision: B0
    .group_segment_fixed_size: 512
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     40
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           48
        .value_kind:     by_value
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           12
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           12
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           12
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
    .gfx1250_revision: B0
    .group_segment_fixed_size: 256
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     31
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           48
        .value_kind:     by_value
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           12
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           12
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           12
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
    .gfx1250_revision: B0
    .group_segment_fixed_size: 512
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     38
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           48
        .value_kind:     by_value
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           12
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           12
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           12
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
    .gfx1250_revision: B0
    .group_segment_fixed_size: 256
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     27
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
