	.amdgcn_target "amdgcn-amd-amdhsa--gfx1030"
	.amdhsa_code_object_version 6
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_clause 0x3
	s_load_dwordx8 s[12:19], s[4:5], 0x0
	s_load_dwordx4 s[24:27], s[4:5], 0x20
	s_load_dwordx4 s[28:31], s[4:5], 0x50
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_mov_b32 s10, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b32 s7, -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[20:21], s[10:11], 2
	s_add_u32 s16, s16, s20
	s_addc_u32 s17, s17, s21
	s_load_dword s33, s[16:17], 0x0
	s_clause 0x1
	s_load_dword s35, s[4:5], 0x60
	s_load_dword s34, s[4:5], 0x88
	s_cbranch_execnz .LBB0_3
.LBB0_2:
	s_load_dwordx2 s[16:17], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s9, s16, s10
	s_add_i32 s9, s10, s9
	s_lshr_b32 s33, s9, s17
.LBB0_3:
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_6
; %bb.4:
	s_mul_hi_u32 s7, s29, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s7, s7, s30
	s_mul_i32 s7, s7, s31
	s_sub_i32 s29, s10, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s7, s33
	s_branch .LBB0_7
.LBB0_5:
                                        ; implicit-def: $sgpr33
	s_clause 0x1
	s_load_dword s35, s[4:5], 0x60
	s_load_dword s34, s[4:5], 0x88
	s_branch .LBB0_2
.LBB0_6:
	s_mov_b32 s7, s10
	s_mov_b32 s29, s10
.LBB0_7:
	s_clause 0x1
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[20:23], s[4:5], 0x90
	v_or_b32_e32 v2, v0, v1
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v4, 0
	s_cmp_lg_u64 s[24:25], 0
	s_mov_b32 s11, exec_lo
	s_cselect_b32 s9, -1, 0
	v_cmpx_eq_u32_e32 0, v2
	s_cbranch_execz .LBB0_12
; %bb.8:
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s30, s7, s2
	s_cbranch_scc1 .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s22, s8
	s_mov_b32 s37, 0
	v_lshlrev_b32_e32 v2, 2, v0
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s31, s37
	s_add_u32 s7, s18, s38
	s_addc_u32 s23, s19, s39
	s_lshl_b64 s[18:19], s[30:31], 2
	s_add_u32 s31, s7, s18
	s_addc_u32 s23, s23, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s31, s18
	s_addc_u32 s19, s23, s19
	global_load_dword v5, v2, s[18:19]
.LBB0_10:
	s_cmp_lg_u64 s[26:27], 0
	s_cselect_b32 s7, -1, 0
	s_and_b32 s7, s7, s9
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s22, s8
	s_mov_b32 s19, 0
	v_lshlrev_b32_e32 v2, 2, v0
	s_lshl_b64 s[36:37], s[18:19], 2
	s_mov_b32 s31, s19
	s_add_u32 s7, s26, s36
	s_addc_u32 s23, s27, s37
	s_lshl_b64 s[18:19], s[30:31], 2
	s_add_u32 s26, s7, s18
	s_addc_u32 s23, s23, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s26, s18
	s_addc_u32 s19, s23, s19
	global_load_dword v4, v2, s[18:19]
.LBB0_12:
	s_or_b32 exec_lo, exec_lo, s11
	v_lshl_or_b32 v2, v1, 5, v0
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v6, 0, 1, s9
	v_mov_b32_e32 v7, 0
	s_lshr_b32 s7, s28, 8
	v_lshrrev_b32_e32 v9, 4, v2
	s_mov_b32 s11, exec_lo
	v_cmpx_gt_u32_e64 s7, v9
	s_cbranch_execz .LBB0_18
; %bb.13:
	v_lshlrev_b32_e32 v3, 1, v0
	v_bfe_u32 v8, v0, 2, 2
	s_mul_hi_u32 s3, s3, s8
	v_lshrrev_b32_e32 v13, 4, v2
	s_add_i32 s3, s8, s3
	v_bfe_u32 v7, v3, 3, 2
	v_and_b32_e32 v12, 30, v3
	v_mul_hi_u32_u24_e32 v3, 0x48, v8
	v_mul_u32_u24_e32 v2, 0x48, v8
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s3, s34
	s_mul_i32 s35, s35, s6
	s_mul_i32 s3, s3, s20
	s_mul_i32 s18, s21, s8
	v_mad_u64_u32 v[2:3], null, 0x120, v13, v[2:3]
	s_mul_i32 s0, s33, s0
	s_add_i32 s3, s3, s35
	s_mul_i32 s1, s29, s1
	s_mul_i32 s19, s18, 36
	s_add_i32 s3, s0, s3
	s_mul_hi_u32 s18, s18, 36
	s_mul_hi_u32 s0, s1, 36
	s_mul_i32 s1, s1, 36
	s_add_u32 s14, s14, s19
	v_lshlrev_b32_e32 v10, 5, v7
	v_and_b32_e32 v7, 3, v0
	s_addc_u32 s15, s15, s18
	s_add_u32 s1, s14, s1
	s_addc_u32 s0, s15, s0
	v_add_co_u32 v2, vcc_lo, s1, v2
	v_lshlrev_b32_e32 v11, 2, v7
	v_bfe_u32 v7, v12, 3, 1
	v_add_co_ci_u32_e64 v3, null, s0, v3, vcc_lo
	v_add_co_u32 v2, vcc_lo, v2, 36
	v_mov_b32_e32 v8, 0
	v_cmp_lt_u32_e64 s0, 15, v12
	v_add_co_ci_u32_e64 v3, null, 0, v3, vcc_lo
	v_lshlrev_b32_e32 v12, 1, v7
	v_mov_b32_e32 v13, 0xffff
	v_mov_b32_e32 v7, 0
	s_mov_b32 s14, 0
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v28, 2, v27
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v29, 4, v26
	v_and_b32_e32 v27, 0x3f3f, v27
	v_lshrrev_b16 v30, 2, v25
	v_and_b32_e32 v26, 0xf0f, v26
	v_and_b32_e32 v28, 0x3030, v28
	v_and_b32_e32 v29, 0xf0f, v29
	v_and_b32_e32 v31, 0xf0f0f0f, v24
	v_and_b32_e32 v30, 0x3030, v30
	v_mov_b32_e32 v32, 0
	v_and_b32_e32 v25, 0x3f3f, v25
	v_or_b32_e32 v28, v29, v28
	v_lshrrev_b32_e32 v24, 4, v24
	v_or_b32_e32 v26, v26, v30
	v_dot4c_i32_i8 v32, v31, v20
	v_and_b32_e32 v29, 0xf0f0f0f, v23
	v_cndmask_b32_e64 v27, v27, v28, s0
	v_lshrrev_b32_e32 v23, 4, v23
	v_mov_b32_e32 v28, 0
	v_and_b32_e32 v24, 0xf0f0f0f, v24
	v_cndmask_b32_e64 v25, v25, v26, s0
	v_and_b32_e32 v20, 63, v27
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_dot4c_i32_i8 v32, v29, v22
	v_dot4c_i32_i8 v28, v24, v16
	v_pk_lshrrev_b16 v16, 8, v25 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b32_e32 v20, 0xffff, v20
	v_and_b32_e32 v22, 63, v25
	v_and_b32_sdwa v24, v13, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_dot4c_i32_i8 v28, v23, v15
	v_lshrrev_b32_e32 v15, 16, v16
	v_mul_lo_u32 v17, v17, v20
	v_mul_lo_u32 v16, v32, v22
	v_mul_lo_u32 v18, v18, v24
	v_add_nc_u32_e32 v9, 2, v9
	v_mul_lo_u32 v15, v28, v15
	v_add_co_u32 v2, s1, 0x240, v2
	v_add_co_ci_u32_e64 v3, null, 0, v3, s1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v15, v15
	v_cmp_le_u32_e32 vcc_lo, s7, v9
	v_fma_f32 v17, v21, v17, 0
	v_fma_f32 v16, v21, v16, 0
	s_or_b32 s14, vcc_lo, s14
	v_fmac_f32_e32 v17, v19, v18
	v_fmac_f32_e32 v16, v19, v15
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v15, v14, v17, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v14, v16, v14, -v15 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v14
	s_andn2_b32 exec_lo, exec_lo, s14
	s_cbranch_execz .LBB0_17
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v28, s3, v9
	v_add_co_u32 v14, vcc_lo, v2, v11
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_mad_i64_i32 v[17:18], null, 0x90, v28, s[12:13]
	s_clause 0x1
	global_load_dword v20, v[14:15], off offset:-32
	global_load_dword v16, v[14:15], off offset:4
	v_add_co_u32 v19, vcc_lo, v17, v10
	v_add_co_ci_u32_e64 v21, null, 0, v18, vcc_lo
	v_add_co_u32 v25, vcc_lo, v19, v11
	v_add_co_ci_u32_e64 v26, null, 0, v21, vcc_lo
	v_add_co_u32 v29, vcc_lo, v17, v12
	v_add_co_ci_u32_e64 v30, null, 0, v18, vcc_lo
	s_clause 0x3
	global_load_dword v22, v[14:15], off offset:-16
	global_load_dword v19, v[2:3], off
	global_load_dword v15, v[14:15], off offset:20
	global_load_dword v21, v[2:3], off offset:-36
	s_clause 0x5
	global_load_dword v24, v[25:26], off offset:16
	global_load_dword v23, v[25:26], off offset:32
	global_load_ushort v25, v[29:30], off offset:4
	global_load_ushort v27, v[29:30], off offset:8
	global_load_ushort v26, v[29:30], off offset:12
	global_load_dword v14, v[17:18], off
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v18, 0
	s_andn2_b32 vcc_lo, exec_lo, s9
	s_waitcnt vmcnt(11)
	v_dot4c_i32_i8 v17, 0x1010101, v20
	s_waitcnt vmcnt(10)
	v_dot4c_i32_i8 v18, 0x1010101, v16
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8 v17, 0x1010101, v22
	s_waitcnt vmcnt(8)
	v_cvt_f32_f16_e32 v19, v19
	s_waitcnt vmcnt(7)
	v_dot4c_i32_i8 v18, 0x1010101, v15
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v21, v21
	s_cbranch_vccnz .LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	v_mad_i64_i32 v[28:29], null, 0x90, v28, s[24:25]
	v_mov_b32_e32 v37, 0
	v_add_co_u32 v32, vcc_lo, v28, v10
	v_add_co_ci_u32_e64 v33, null, 0, v29, vcc_lo
	v_add_co_u32 v30, vcc_lo, v28, v12
	v_add_co_ci_u32_e64 v31, null, 0, v29, vcc_lo
	v_add_co_u32 v32, vcc_lo, v32, v11
	v_add_co_ci_u32_e64 v33, null, 0, v33, vcc_lo
	s_clause 0x5
	global_load_ushort v34, v[30:31], off offset:8
	global_load_dword v35, v[32:33], off offset:32
	global_load_ushort v36, v[30:31], off offset:12
	global_load_ushort v30, v[30:31], off offset:4
	global_load_dword v31, v[32:33], off offset:16
	global_load_dword v28, v[28:29], off
	s_waitcnt vmcnt(5)
	v_lshrrev_b16 v29, 2, v34
	v_and_b32_e32 v34, 0x3f3f, v34
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v32, 4, v36
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v33, 2, v30
	v_and_b32_e32 v36, 0xf0f, v36
	v_and_b32_e32 v29, 0x3030, v29
	v_and_b32_e32 v30, 0x3f3f, v30
	v_and_b32_e32 v32, 0xf0f, v32
	v_and_b32_e32 v33, 0x3030, v33
	v_or_b32_e32 v29, v32, v29
	v_or_b32_e32 v33, v36, v33
	v_mov_b32_e32 v32, 0
	v_and_b32_e32 v36, 0xf0f0f0f, v35
	v_lshrrev_b32_e32 v35, 4, v35
	v_cndmask_b32_e64 v29, v34, v29, s0
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v34, 0xf0f0f0f, v31
	v_lshrrev_b32_e32 v31, 4, v31
	v_cndmask_b32_e64 v30, v30, v33, s0
	v_and_b32_e32 v35, 0xf0f0f0f, v35
	v_and_b32_e32 v33, 63, v29
	v_dot4c_i32_i8 v32, v34, v20
	v_and_b32_e32 v31, 0xf0f0f0f, v31
	v_and_b32_e32 v34, 63, v30
	v_and_b32_sdwa v29, v13, v29 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_e32 v33, 0xffff, v33
	v_dot4c_i32_i8 v32, v36, v22
	v_dot4c_i32_i8 v37, v31, v16
	v_and_b32_e32 v31, 0xffff, v34
	v_and_b32_sdwa v30, v13, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_mul_lo_u32 v33, v17, v33
	v_mul_lo_u32 v29, v18, v29
	v_dot4c_i32_i8 v37, v35, v15
	v_mul_lo_u32 v31, v32, v31
	v_mul_lo_u32 v30, v37, v30
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_fma_f32 v32, v21, v32, 0
	v_cvt_f32_i32_e32 v30, v30
	v_fma_f32 v31, v21, v31, 0
	v_fmac_f32_e32 v32, v19, v29
	v_fmac_f32_e32 v31, v19, v30
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v29, v28, v32, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v28, v31, v28, -v29 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v28
	s_branch .LBB0_14
.LBB0_17:
	s_or_b32 exec_lo, exec_lo, s14
.LBB0_18:
	s_or_b32 exec_lo, exec_lo, s11
	v_cmp_eq_u32_e64 s0, 0, v1
	s_mov_b32 s1, exec_lo
	v_cmpx_ne_u32_e32 0, v1
	s_cbranch_execz .LBB0_22
; %bb.19:
	v_lshlrev_b32_e32 v2, 2, v0
	s_and_b32 vcc_lo, exec_lo, s9
	v_lshl_or_b32 v1, v1, 7, v2
	v_add_nc_u32_e32 v1, 0xffffff80, v1
	s_cbranch_vccz .LBB0_21
; %bb.20:
	ds_write_b32 v1, v7 offset:128
.LBB0_21:
	ds_write_b32 v1, v8
.LBB0_22:
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s1, s0
	s_cbranch_execz .LBB0_54
; %bb.23:
	v_mbcnt_lo_u32_b32 v2, -1, 0
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v9, 8, v2
	v_cmp_gt_u32_e32 vcc_lo, 32, v1
	v_cndmask_b32_e32 v1, v2, v1, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v9
	v_lshlrev_b32_e32 v1, 2, v1
	v_cndmask_b32_e32 v9, v2, v9, vcc_lo
	ds_bpermute_b32 v3, v1, v8
	v_lshlrev_b32_e32 v9, 2, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v8, v3
	v_xor_b32_e32 v8, 4, v2
	ds_bpermute_b32 v10, v9, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v8
	v_cndmask_b32_e32 v8, v2, v8, vcc_lo
	v_lshlrev_b32_e32 v8, 2, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v10
	v_xor_b32_e32 v10, 2, v2
	ds_bpermute_b32 v11, v8, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	v_cndmask_b32_e32 v10, v2, v10, vcc_lo
	v_lshlrev_b32_e32 v10, 2, v10
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v11
	v_xor_b32_e32 v11, 1, v2
	ds_bpermute_b32 v12, v10, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	v_cndmask_b32_e32 v2, v2, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v6
	v_lshlrev_b32_e32 v11, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v3, v12
	ds_bpermute_b32 v3, v11, v2
	s_cbranch_vccnz .LBB0_25
; %bb.24:
	ds_bpermute_b32 v1, v1, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v7, v1
	ds_bpermute_b32 v7, v9, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v8, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v10, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v11, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v1, v7
.LBB0_25:
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB0_54
; %bb.26:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	v_cmp_ne_u32_e32 vcc_lo, 1, v6
	v_add_f32_e32 v0, v5, v0
	s_cbranch_vccnz .LBB0_53
; %bb.27:
	v_add_f32_e32 v1, v4, v7
	s_cmp_lt_i32 s16, 3
	s_mov_b32 s0, 0
	s_cbranch_scc1 .LBB0_31
; %bb.28:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB0_32
; %bb.29:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB0_33
; %bb.30:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s17, s17
	s_mov_b32 s1, 0
	v_min_f32_e32 v2, v2, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v2
	v_fma_f32 v5, 0xbfb8aa3b, v2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v2, 0xb2a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, null, v4, v4, v2
	v_rcp_f32_e32 v6, v5
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	v_fmac_f32_e32 v8, v9, v6
	v_max_f32_e32 v9, v0, v0
	v_fma_f32 v5, -v5, v8, v7
	v_min_f32_e32 v3, v9, v3
	v_max_f32_e64 v7, -s17, -s17
	v_div_fmas_f32 v5, v5, v6, v8
	v_max_f32_e32 v3, v3, v7
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB0_34
.LBB0_31:
	s_mov_b32 s1, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_39
	s_branch .LBB0_44
.LBB0_32:
	s_mov_b32 s1, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_35
	s_branch .LBB0_37
.LBB0_33:
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr2
.LBB0_34:
	s_branch .LBB0_37
.LBB0_35:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB0_38
; %bb.36:
	v_max_f32_e32 v2, v1, v1
	s_mov_b32 s1, 0
	v_min_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_fma_f32 v5, 0x3fb8aa3b, v3, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v3, 0x32a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	v_rcp_f32_e32 v5, v4
	v_fma_f32 v6, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	v_max_f32_e32 v8, v0, v0
	v_fma_f32 v4, -v4, v6, v7
	v_min_f32_e32 v7, 0x40e00000, v8
	v_div_fmas_f32 v4, v4, v5, v6
	v_max_f32_e32 v5, 0xc0e00000, v7
	v_div_fixup_f32 v2, v4, v3, v2
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB0_37:
	s_branch .LBB0_44
.LBB0_38:
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_44
.LBB0_39:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB0_41
; %bb.40:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v1
	v_rndne_f32_e32 v3, v2
	v_fma_f32 v4, 0xbfb8aa3b, v1, -v2
	v_sub_f32_e32 v2, v2, v3
	v_fmamk_f32 v4, v1, 0xb2a5705f, v4
	v_cvt_i32_f32_e32 v3, v3
	v_add_f32_e32 v2, v2, v4
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB0_42
.LBB0_41:
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr2
.LBB0_42:
	s_andn2_b32 vcc_lo, exec_lo, s0
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_44
; %bb.43:
	s_cmp_lg_u32 s16, 1
	s_mov_b32 s0, -1
	s_cselect_b32 s1, -1, 0
.LBB0_44:
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccz .LBB0_46
; %bb.45:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s0, 0
.LBB0_46:
	s_andn2_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_52
; %bb.47:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	v_cmp_ngt_f32_e64 s0, 0x3f200000, |v2|
	s_and_saveexec_b32 s1, s0
	s_xor_b32 s0, exec_lo, s1
	s_cbranch_execz .LBB0_49
; %bb.48:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_rndne_f32_e32 v5, v4
	v_fma_f32 v6, 0x3fb8aa3b, v3, -v4
	v_sub_f32_e32 v4, v4, v5
	v_fmamk_f32 v6, v3, 0x32a5705f, v6
	v_cvt_i32_f32_e32 v5, v5
	v_add_f32_e32 v4, v4, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB0_49:
	s_andn2_saveexec_b32 s0, s0
	s_cbranch_execz .LBB0_51
; %bb.50:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s1, 0xbbbac73d
	v_fmaak_f32 v4, s1, v3, 0x3ca908c9
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
.LBB0_51:
	s_or_b32 exec_lo, exec_lo, s0
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_52:
	v_mov_b32_e32 v0, v2
.LBB0_53:
	s_load_dwordx2 s[0:1], s[4:5], 0x48
	s_mul_i32 s2, s2, s10
	s_mul_i32 s3, s22, s8
	s_add_i32 s2, s2, s6
	v_mov_b32_e32 v1, 0
	s_add_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_dword v1, v0, s[0:1]
.LBB0_54:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 38
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 38
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 40
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3172
; TotalNumSgprs: 42
; NumVgprs: 38
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 38
; Occupancy: 16
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
	s_clause 0x1
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	s_load_dwordx4 s[16:19], s[4:5], 0x50
	s_mov_b32 s10, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[0:1], 0
	s_cselect_b32 s7, -1, 0
	s_cmp_eq_u64 s[0:1], 0
	s_cbranch_scc1 .LBB1_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[2:3], s[10:11], 2
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	s_load_dword s20, s[0:1], 0x0
	s_clause 0x1
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s21, s[4:5], 0x60
	s_cbranch_execnz .LBB1_3
.LBB1_2:
	s_load_dwordx2 s[12:13], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s9, s12, s10
	s_add_i32 s9, s10, s9
	s_lshr_b32 s20, s9, s13
.LBB1_3:
	s_load_dword s11, s[4:5], 0x88
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB1_6
; %bb.4:
	s_mul_hi_u32 s7, s17, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s7, s7, s18
	s_mul_i32 s7, s7, s19
	s_sub_i32 s22, s10, s7
	s_branch .LBB1_7
.LBB1_5:
                                        ; implicit-def: $sgpr20
	s_clause 0x1
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s21, s[4:5], 0x60
	s_branch .LBB1_2
.LBB1_6:
	s_mov_b32 s22, s10
.LBB1_7:
	s_load_dwordx4 s[12:15], s[4:5], 0x90
	v_lshl_or_b32 v2, v1, 5, v0
	v_mov_b32_e32 v4, 0
	s_lshr_b32 s9, s16, 8
	s_mov_b32 s7, exec_lo
	v_lshrrev_b32_e32 v5, 4, v2
	v_cmpx_gt_u32_e64 s9, v5
	s_cbranch_execz .LBB1_11
; %bb.8:
	s_load_dwordx4 s[16:19], s[4:5], 0x0
	v_lshlrev_b32_e32 v3, 1, v0
	v_bfe_u32 v7, v0, 2, 2
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s3, s8
	v_lshrrev_b32_e32 v10, 4, v2
	s_add_i32 s3, s8, s3
	v_bfe_u32 v4, v3, 3, 2
	v_and_b32_e32 v8, 30, v3
	v_mul_hi_u32_u24_e32 v3, 0x48, v7
	v_mul_u32_u24_e32 v2, 0x48, v7
	s_lshr_b32 s3, s3, s11
	s_mul_i32 s21, s21, s6
	s_mul_i32 s3, s3, s12
	s_mul_i32 s11, s13, s8
	v_mad_u64_u32 v[2:3], null, 0x120, v10, v[2:3]
	s_mul_i32 s0, s20, s0
	s_add_i32 s3, s3, s21
	s_mul_i32 s1, s22, s1
	s_mul_i32 s12, s11, 36
	s_add_i32 s3, s0, s3
	s_mul_hi_u32 s11, s11, 36
	s_mul_hi_u32 s0, s1, 36
	s_mul_i32 s1, s1, 36
	s_add_u32 s12, s18, s12
	v_and_b32_e32 v9, 3, v0
	s_addc_u32 s11, s19, s11
	s_add_u32 s1, s12, s1
	s_addc_u32 s0, s11, s0
	v_add_co_u32 v2, vcc_lo, s1, v2
	v_lshlrev_b32_e32 v7, 2, v9
	v_bfe_u32 v9, v8, 3, 1
	v_add_co_ci_u32_e64 v3, null, s0, v3, vcc_lo
	v_add_co_u32 v2, s0, v2, 36
	v_lshlrev_b32_e32 v6, 5, v4
	v_mov_b32_e32 v4, 0
	v_cmp_lt_u32_e32 vcc_lo, 15, v8
	v_add_co_ci_u32_e64 v3, null, 0, v3, s0
	v_lshlrev_b32_e32 v8, 1, v9
	v_mov_b32_e32 v9, 0xffff
	s_mov_b32 s11, 0
.LBB1_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v12, s3, v5
	v_add_co_u32 v10, s0, v2, v7
	v_add_co_ci_u32_e64 v11, null, 0, v3, s0
	v_mad_i64_i32 v[12:13], null, 0x90, v12, s[16:17]
	s_clause 0x4
	global_load_dword v20, v[10:11], off offset:-32
	global_load_dword v21, v[10:11], off offset:-16
	global_load_dword v22, v[10:11], off offset:4
	global_load_dword v18, v[2:3], off offset:-36
	global_load_dword v19, v[2:3], off
	v_mov_b32_e32 v25, 0
	v_add_nc_u32_e32 v5, 2, v5
	v_add_co_u32 v2, s1, 0x240, v2
	v_add_co_u32 v16, s0, v12, v6
	v_add_co_ci_u32_e64 v17, null, 0, v13, s0
	v_add_co_u32 v14, s0, v12, v8
	v_add_co_ci_u32_e64 v15, null, 0, v13, s0
	v_add_co_u32 v16, s0, v16, v7
	v_add_co_ci_u32_e64 v17, null, 0, v17, s0
	s_clause 0x4
	global_load_dword v23, v[16:17], off offset:16
	global_load_dword v16, v[16:17], off offset:32
	global_load_ushort v17, v[14:15], off offset:4
	global_load_ushort v24, v[14:15], off offset:8
	global_load_ushort v14, v[14:15], off offset:12
	global_load_dword v10, v[10:11], off offset:20
	global_load_dword v11, v[12:13], off
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_cmp_le_u32_e64 s0, s9, v5
	v_add_co_ci_u32_e64 v3, null, 0, v3, s1
	s_or_b32 s11, s0, s11
	s_waitcnt vmcnt(11)
	v_dot4c_i32_i8 v12, 0x1010101, v20
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8 v13, 0x1010101, v22
	v_dot4c_i32_i8 v12, 0x1010101, v21
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v29, 0xf0f0f0f, v23
	v_lshrrev_b32_e32 v23, 4, v23
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v28, 2, v17
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v26, 2, v24
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v27, 4, v14
	v_and_b32_e32 v24, 0x3f3f, v24
	v_and_b32_e32 v30, 0xf0f0f0f, v16
	v_lshrrev_b32_e32 v16, 4, v16
	v_and_b32_e32 v26, 0x3030, v26
	v_and_b32_e32 v27, 0xf0f, v27
	v_dot4c_i32_i8 v15, v29, v20
	v_and_b32_e32 v20, 0xf0f0f0f, v23
	v_and_b32_e32 v14, 0xf0f, v14
	v_and_b32_e32 v28, 0x3030, v28
	v_or_b32_e32 v23, v27, v26
	v_and_b32_e32 v16, 0xf0f0f0f, v16
	v_dot4c_i32_i8 v25, v20, v22
	s_waitcnt vmcnt(1)
	v_dot4c_i32_i8 v13, 0x1010101, v10
	v_and_b32_e32 v17, 0x3f3f, v17
	v_cndmask_b32_e32 v20, v24, v23, vcc_lo
	v_or_b32_e32 v14, v14, v28
	v_dot4c_i32_i8 v25, v16, v10
	v_dot4c_i32_i8 v15, v30, v21
	v_and_b32_e32 v10, 63, v20
	v_cndmask_b32_e32 v14, v17, v14, vcc_lo
	v_and_b32_sdwa v17, v9, v20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_e32 v10, 0xffff, v10
	v_pk_lshrrev_b16 v16, 8, v14 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b32_e32 v14, 63, v14
	v_mul_lo_u32 v13, v13, v17
	v_mul_lo_u32 v10, v12, v10
	v_lshrrev_b32_e32 v16, 16, v16
	v_mul_lo_u32 v12, v15, v14
	v_mul_lo_u32 v14, v25, v16
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_fma_mix_f32 v10, v18, v10, 0 op_sel_hi:[1,0,0]
	v_cvt_f32_i32_e32 v14, v14
	v_fma_mix_f32 v12, v18, v12, 0 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v10, v19, v13, v10 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v12, v19, v14, v12 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v10, v11, v10, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v10, v12, v11, -v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v10
	s_andn2_b32 exec_lo, exec_lo, s11
	s_cbranch_execnz .LBB1_9
; %bb.10:
	s_or_b32 exec_lo, exec_lo, s11
.LBB1_11:
	s_or_b32 exec_lo, exec_lo, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s1, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cmpx_ne_u32_e32 0, v1
	s_cbranch_execz .LBB1_13
; %bb.12:
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshl_or_b32 v1, v1, 7, v2
	v_add_nc_u32_e32 v1, 0xffffff80, v1
	ds_write_b32 v1, v4
.LBB1_13:
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s0, vcc_lo
	s_cbranch_execz .LBB1_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	s_mov_b32 s1, 0
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 8, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v2
	v_cndmask_b32_e32 v2, v1, v2, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v3
	v_lshlrev_b32_e32 v2, 2, v2
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	ds_bpermute_b32 v2, v2, v4
	v_lshlrev_b32_e32 v3, 2, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v4, v2
	v_xor_b32_e32 v4, 4, v1
	ds_bpermute_b32 v3, v3, v2
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v2, v3
	ds_bpermute_b32 v3, v4, v2
	v_xor_b32_e32 v4, 2, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v2, v3
	ds_bpermute_b32 v3, v4, v2
	v_xor_b32_e32 v4, 1, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v1, v1, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_lshlrev_b32_e32 v4, 2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v2, v3
	ds_bpermute_b32 v2, v4, v1
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB1_16
; %bb.15:
	s_load_dwordx2 s[4:5], s[4:5], 0x48
	s_mul_i32 s0, s2, s10
	s_mul_i32 s2, s14, s8
	s_add_i32 s0, s0, s6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v1, v2
	s_add_i32 s0, s0, s2
	v_mov_b32_e32 v1, 0
	s_lshl_b64 s[0:1], s[0:1], 2
	s_add_u32 s0, s4, s0
	s_addc_u32 s1, s5, s1
	global_store_dword v1, v0, s[0:1]
.LBB1_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 128
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
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 31
		.amdhsa_next_free_sgpr 23
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 23
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1348
; TotalNumSgprs: 25
; NumVgprs: 31
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 128 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 25
; NumVGPRsForWavesPerEU: 31
; Occupancy: 16
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
	s_clause 0x3
	s_load_dwordx8 s[12:19], s[4:5], 0x0
	s_load_dwordx4 s[24:27], s[4:5], 0x20
	s_load_dwordx4 s[28:31], s[4:5], 0x50
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_mov_b32 s10, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b32 s7, -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_cbranch_scc1 .LBB2_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[20:21], s[10:11], 2
	s_add_u32 s16, s16, s20
	s_addc_u32 s17, s17, s21
	s_load_dword s33, s[16:17], 0x0
	s_clause 0x1
	s_load_dword s34, s[4:5], 0x60
	s_load_dword s35, s[4:5], 0x88
	s_cbranch_execnz .LBB2_3
.LBB2_2:
	s_load_dwordx2 s[16:17], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s9, s16, s10
	s_add_i32 s9, s10, s9
	s_lshr_b32 s33, s9, s17
.LBB2_3:
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB2_6
; %bb.4:
	s_mul_hi_u32 s7, s29, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s7, s7, s30
	s_mul_i32 s7, s7, s31
	s_sub_i32 s29, s10, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s7, s33
	s_branch .LBB2_7
.LBB2_5:
                                        ; implicit-def: $sgpr33
	s_clause 0x1
	s_load_dword s34, s[4:5], 0x60
	s_load_dword s35, s[4:5], 0x88
	s_branch .LBB2_2
.LBB2_6:
	s_mov_b32 s7, s10
	s_mov_b32 s29, s10
.LBB2_7:
	s_clause 0x1
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[20:23], s[4:5], 0x90
	v_or_b32_e32 v2, v0, v1
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v4, 0
	s_cmp_lg_u64 s[24:25], 0
	s_mov_b32 s11, exec_lo
	s_cselect_b32 s9, -1, 0
	v_cmpx_eq_u32_e32 0, v2
	s_cbranch_execz .LBB2_12
; %bb.8:
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s30, s7, s2
	s_cbranch_scc1 .LBB2_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s22, s8
	s_mov_b32 s37, 0
	v_lshlrev_b32_e32 v2, 2, v0
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s31, s37
	s_add_u32 s7, s18, s38
	s_addc_u32 s23, s19, s39
	s_lshl_b64 s[18:19], s[30:31], 2
	s_add_u32 s31, s7, s18
	s_addc_u32 s23, s23, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s31, s18
	s_addc_u32 s19, s23, s19
	global_load_dword v5, v2, s[18:19]
.LBB2_10:
	s_cmp_lg_u64 s[26:27], 0
	s_cselect_b32 s7, -1, 0
	s_and_b32 s7, s7, s9
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB2_12
; %bb.11:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s22, s8
	s_mov_b32 s19, 0
	v_lshlrev_b32_e32 v2, 2, v0
	s_lshl_b64 s[36:37], s[18:19], 2
	s_mov_b32 s31, s19
	s_add_u32 s7, s26, s36
	s_addc_u32 s23, s27, s37
	s_lshl_b64 s[18:19], s[30:31], 2
	s_add_u32 s26, s7, s18
	s_addc_u32 s23, s23, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s26, s18
	s_addc_u32 s19, s23, s19
	global_load_dword v4, v2, s[18:19]
.LBB2_12:
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v6, 0, 1, s9
	v_mov_b32_e32 v7, 0
	s_lshr_b32 s7, s28, 8
	s_mov_b32 s11, exec_lo
	v_cmpx_gt_u32_e64 s7, v1
	s_cbranch_execz .LBB2_18
; %bb.13:
	v_and_b32_e32 v7, 15, v0
	s_mul_i32 s1, s29, s1
	s_mul_hi_u32 s3, s3, s8
	s_mul_hi_u32 s19, s1, 36
	s_mul_i32 s18, s1, 36
	v_lshrrev_b16 v9, 3, v7
	v_mad_u64_u32 v[2:3], null, 0x120, v1, s[18:19]
	s_add_i32 s3, s8, s3
	v_lshrrev_b32_e32 v8, 4, v0
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s3, s35
	s_mul_i32 s3, s21, s8
	v_and_b32_e32 v9, 0xffff, v9
	v_and_b32_e32 v11, 7, v0
	v_mad_u64_u32 v[2:3], null, s3, 36, v[2:3]
	v_lshlrev_b32_e32 v10, 3, v8
	v_lshl_or_b32 v8, v8, 2, v9
	v_lshrrev_b16 v7, 2, v7
	v_lshlrev_b32_e32 v13, 1, v0
	s_mul_i32 s34, s34, s6
	v_or_b32_e32 v12, v10, v11
	v_mad_u64_u32 v[2:3], null, v8, 36, v[2:3]
	s_mul_i32 s3, s33, s0
	s_mul_i32 s0, s1, s20
	v_lshlrev_b32_e32 v14, 1, v12
	v_mov_b32_e32 v8, 0
	v_lshlrev_b32_e32 v9, 1, v9
	v_or_b32_sdwa v10, v10, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_0
	v_add_co_u32 v2, vcc_lo, s14, v2
	v_lshlrev_b32_e32 v11, 2, v11
	v_add_co_ci_u32_e64 v3, null, s15, v3, vcc_lo
	v_lshlrev_b32_e32 v12, 1, v13
	v_lshlrev_b32_e32 v13, 1, v14
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v7, 0
	s_add_i32 s0, s0, s34
	s_mov_b32 s1, 0
	s_add_i32 s3, s3, s0
	s_branch .LBB2_15
.LBB2_14:                               ;   in Loop: Header=BB2_15 Depth=1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v23, v9, v23
	v_and_b32_e32 v24, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	s_waitcnt vmcnt(1)
	v_bfe_i32 v21, v21, 0, 8
	v_add_nc_u32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v25, 4, v23
	v_add_co_u32 v2, s0, 0x120, v2
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_cmp_le_u32_e32 vcc_lo, s7, v14
	v_and_or_b32 v24, 0x30303030, v25, v24
	v_add_co_ci_u32_e64 v3, null, 0, v3, s0
	v_and_or_b32 v22, 0x30303030, v23, v22
	s_or_b32 s1, vcc_lo, s1
	v_lshrrev_b32_e32 v23, 16, v24
	v_and_b32_e32 v27, 0x3f00, v24
	v_lshlrev_b16 v24, 8, v24
	v_lshrrev_b32_e32 v25, 16, v22
	v_lshlrev_b16 v29, 8, v22
	v_lshlrev_b16 v26, 8, v23
	v_and_b32_e32 v23, 0x3f00, v23
	v_add_nc_u16 v24, 0xe000, v24
	v_lshlrev_b16 v28, 8, v25
	v_and_b32_e32 v25, 0x3f00, v25
	v_add_nc_u16 v26, 0xe000, v26
	v_and_b32_e32 v22, 0x3f00, v22
	v_or_b32_sdwa v24, v27, v24 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_nc_u16 v28, 0xe000, v28
	v_or_b32_sdwa v23, v23, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_nc_u16 v26, 0xe000, v29
	v_add_nc_u16 v24, 0xe000, v24
	v_or_b32_sdwa v25, v25, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_nc_u16 v23, 0xe000, v23
	v_or_b32_sdwa v22, v22, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_mov_b32_e32 v26, 0
	v_add_nc_u16 v25, 0xe000, v25
	v_lshlrev_b32_e32 v23, 16, v23
	v_add_nc_u16 v22, 0xe000, v22
	v_lshlrev_b32_e32 v25, 16, v25
	v_or_b32_sdwa v23, v24, v23 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_mov_b32_e32 v24, 0
	v_or_b32_sdwa v22, v22, v25 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_dot4c_i32_i8 v26, v23, v16
	s_waitcnt vmcnt(0)
	v_bfe_i32 v16, v20, 0, 8
	v_dot4c_i32_i8 v24, v22, v17
	v_mul_lo_u32 v17, v26, v21
	v_mul_lo_u32 v16, v24, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_fma_f32 v17, v19, v17, 0
	v_fmac_f32_e32 v17, v18, v16
	v_fma_mix_f32 v8, v17, v15, v8 op_sel_hi:[0,1,0]
	s_andn2_b32 exec_lo, exec_lo, s1
	s_cbranch_execz .LBB2_17
.LBB2_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v24, s3, v14
	v_add_co_u32 v20, vcc_lo, v2, v11
	v_add_co_ci_u32_e64 v21, null, 0, v3, vcc_lo
	v_mad_i64_i32 v[18:19], null, 0xd2, v24, s[12:13]
	s_clause 0x1
	global_load_dword v16, v[20:21], off offset:4
	global_load_dword v17, v[20:21], off offset:76
	v_add_co_u32 v22, vcc_lo, v18, v12
	v_add_co_ci_u32_e64 v23, null, 0, v19, vcc_lo
	v_add_co_u32 v25, vcc_lo, v18, v13
	v_add_co_ci_u32_e64 v26, null, 0, v19, vcc_lo
	v_add_co_u32 v27, vcc_lo, v18, v10
	v_add_co_ci_u32_e64 v28, null, 0, v19, vcc_lo
	s_clause 0x1
	global_load_dword v29, v[2:3], off
	global_load_dword v30, v[2:3], off offset:72
	s_clause 0x4
	global_load_dword v22, v[22:23], off
	global_load_dword v23, v[25:26], off offset:128
	global_load_ushort v15, v[18:19], off offset:208
	global_load_ubyte v21, v[27:28], off offset:192
	global_load_ubyte v20, v[27:28], off offset:196
	s_andn2_b32 vcc_lo, exec_lo, s9
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v19, v29
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v18, v30
	s_cbranch_vccnz .LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	v_mad_i64_i32 v[24:25], null, 0xd2, v24, s[24:25]
	v_add_co_u32 v26, vcc_lo, v24, v13
	v_add_co_ci_u32_e64 v27, null, 0, v25, vcc_lo
	v_add_co_u32 v28, vcc_lo, v24, v12
	v_add_co_ci_u32_e64 v29, null, 0, v25, vcc_lo
	s_clause 0x1
	global_load_dword v30, v[26:27], off offset:128
	global_load_dword v28, v[28:29], off
	v_add_co_u32 v26, vcc_lo, v24, v10
	v_add_co_ci_u32_e64 v27, null, 0, v25, vcc_lo
	s_clause 0x2
	global_load_sbyte v29, v[26:27], off offset:192
	global_load_sbyte v26, v[26:27], off offset:196
	global_load_ushort v24, v[24:25], off offset:208
	s_waitcnt vmcnt(4)
	v_ashrrev_i32_e32 v25, v9, v30
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v27, 0xf0f0f0f, v28
	v_lshrrev_b32_e32 v28, 4, v28
	v_lshlrev_b32_e32 v30, 4, v25
	v_and_b32_e32 v28, 0xf0f0f0f, v28
	v_and_or_b32 v27, 0x30303030, v30, v27
	v_and_or_b32 v25, 0x30303030, v25, v28
	v_lshrrev_b32_e32 v30, 16, v27
	v_and_b32_e32 v32, 0x3f00, v27
	v_lshrrev_b32_e32 v31, 16, v25
	v_lshlrev_b16 v27, 8, v27
	v_lshlrev_b16 v34, 8, v25
	v_lshlrev_b16 v28, 8, v30
	v_and_b32_e32 v30, 0x3f00, v30
	v_lshlrev_b16 v33, 8, v31
	v_add_nc_u16 v27, 0xe000, v27
	v_and_b32_e32 v31, 0x3f00, v31
	v_add_nc_u16 v28, 0xe000, v28
	v_and_b32_e32 v25, 0x3f00, v25
	v_or_b32_sdwa v27, v32, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v28, v30, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_nc_u16 v30, 0xe000, v33
	v_add_nc_u16 v33, 0xe000, v34
	v_add_nc_u16 v27, 0xe000, v27
	v_add_nc_u16 v28, 0xe000, v28
	v_or_b32_sdwa v30, v31, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v25, v25, v33 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_mov_b32_e32 v31, 0
	v_lshlrev_b32_e32 v28, 16, v28
	v_add_nc_u16 v30, 0xe000, v30
	v_add_nc_u16 v25, 0xe000, v25
	v_or_b32_sdwa v27, v27, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_lshlrev_b32_e32 v28, 16, v30
	v_mov_b32_e32 v30, 0
	v_dot4c_i32_i8 v31, v27, v16
	v_or_b32_sdwa v25, v25, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v27, v31, v29
	v_dot4c_i32_i8 v30, v25, v17
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v25, v30, v26
	v_cvt_f32_i32_e32 v26, v27
	v_fma_f32 v26, v19, v26, 0
	v_cvt_f32_i32_e32 v25, v25
	v_fmac_f32_e32 v26, v18, v25
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v7, v26, v24, v7 op_sel_hi:[0,1,0]
	s_branch .LBB2_14
.LBB2_17:
	s_or_b32 exec_lo, exec_lo, s1
.LBB2_18:
	s_or_b32 exec_lo, exec_lo, s11
	v_cmp_eq_u32_e64 s0, 0, v1
	s_mov_b32 s1, exec_lo
	v_cmpx_ne_u32_e32 0, v1
	s_cbranch_execz .LBB2_22
; %bb.19:
	v_lshlrev_b32_e32 v2, 2, v0
	s_and_b32 vcc_lo, exec_lo, s9
	v_lshl_or_b32 v1, v1, 7, v2
	v_add_nc_u32_e32 v1, 0xffffff80, v1
	s_cbranch_vccz .LBB2_21
; %bb.20:
	ds_write_b32 v1, v7 offset:128
.LBB2_21:
	ds_write_b32 v1, v8
.LBB2_22:
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s1, s0
	s_cbranch_execz .LBB2_54
; %bb.23:
	v_mbcnt_lo_u32_b32 v2, -1, 0
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v9, 8, v2
	v_cmp_gt_u32_e32 vcc_lo, 32, v1
	v_cndmask_b32_e32 v1, v2, v1, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v9
	v_lshlrev_b32_e32 v1, 2, v1
	v_cndmask_b32_e32 v9, v2, v9, vcc_lo
	ds_bpermute_b32 v3, v1, v8
	v_lshlrev_b32_e32 v9, 2, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v8, v3
	v_xor_b32_e32 v8, 4, v2
	ds_bpermute_b32 v10, v9, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v8
	v_cndmask_b32_e32 v8, v2, v8, vcc_lo
	v_lshlrev_b32_e32 v8, 2, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v10
	v_xor_b32_e32 v10, 2, v2
	ds_bpermute_b32 v11, v8, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	v_cndmask_b32_e32 v10, v2, v10, vcc_lo
	v_lshlrev_b32_e32 v10, 2, v10
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v11
	v_xor_b32_e32 v11, 1, v2
	ds_bpermute_b32 v12, v10, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	v_cndmask_b32_e32 v2, v2, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v6
	v_lshlrev_b32_e32 v11, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v3, v12
	ds_bpermute_b32 v3, v11, v2
	s_cbranch_vccnz .LBB2_25
; %bb.24:
	ds_bpermute_b32 v1, v1, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v7, v1
	ds_bpermute_b32 v7, v9, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v8, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v10, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v7
	ds_bpermute_b32 v7, v11, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v1, v7
.LBB2_25:
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB2_54
; %bb.26:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	v_cmp_ne_u32_e32 vcc_lo, 1, v6
	v_add_f32_e32 v0, v5, v0
	s_cbranch_vccnz .LBB2_53
; %bb.27:
	v_add_f32_e32 v1, v4, v7
	s_cmp_lt_i32 s16, 3
	s_mov_b32 s0, 0
	s_cbranch_scc1 .LBB2_31
; %bb.28:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB2_32
; %bb.29:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB2_33
; %bb.30:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s17, s17
	s_mov_b32 s1, 0
	v_min_f32_e32 v2, v2, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v2
	v_fma_f32 v5, 0xbfb8aa3b, v2, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v2, 0xb2a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, null, v4, v4, v2
	v_rcp_f32_e32 v6, v5
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	v_fmac_f32_e32 v8, v9, v6
	v_max_f32_e32 v9, v0, v0
	v_fma_f32 v5, -v5, v8, v7
	v_min_f32_e32 v3, v9, v3
	v_max_f32_e64 v7, -s17, -s17
	v_div_fmas_f32 v5, v5, v6, v8
	v_max_f32_e32 v3, v3, v7
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB2_34
.LBB2_31:
	s_mov_b32 s1, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_39
	s_branch .LBB2_44
.LBB2_32:
	s_mov_b32 s1, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_35
	s_branch .LBB2_37
.LBB2_33:
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr2
.LBB2_34:
	s_branch .LBB2_37
.LBB2_35:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB2_38
; %bb.36:
	v_max_f32_e32 v2, v1, v1
	s_mov_b32 s1, 0
	v_min_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_fma_f32 v5, 0x3fb8aa3b, v3, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v3, 0x32a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	v_rcp_f32_e32 v5, v4
	v_fma_f32 v6, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	v_max_f32_e32 v8, v0, v0
	v_fma_f32 v4, -v4, v6, v7
	v_min_f32_e32 v7, 0x40e00000, v8
	v_div_fmas_f32 v4, v4, v5, v6
	v_max_f32_e32 v5, 0xc0e00000, v7
	v_div_fixup_f32 v2, v4, v3, v2
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB2_37:
	s_branch .LBB2_44
.LBB2_38:
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_44
.LBB2_39:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB2_41
; %bb.40:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v1
	v_rndne_f32_e32 v3, v2
	v_fma_f32 v4, 0xbfb8aa3b, v1, -v2
	v_sub_f32_e32 v2, v2, v3
	v_fmamk_f32 v4, v1, 0xb2a5705f, v4
	v_cvt_i32_f32_e32 v3, v3
	v_add_f32_e32 v2, v2, v4
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB2_42
.LBB2_41:
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr2
.LBB2_42:
	s_andn2_b32 vcc_lo, exec_lo, s0
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB2_44
; %bb.43:
	s_cmp_lg_u32 s16, 1
	s_mov_b32 s0, -1
	s_cselect_b32 s1, -1, 0
.LBB2_44:
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccz .LBB2_46
; %bb.45:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s0, 0
.LBB2_46:
	s_andn2_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB2_52
; %bb.47:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	v_cmp_ngt_f32_e64 s0, 0x3f200000, |v2|
	s_and_saveexec_b32 s1, s0
	s_xor_b32 s0, exec_lo, s1
	s_cbranch_execz .LBB2_49
; %bb.48:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_rndne_f32_e32 v5, v4
	v_fma_f32 v6, 0x3fb8aa3b, v3, -v4
	v_sub_f32_e32 v4, v4, v5
	v_fmamk_f32 v6, v3, 0x32a5705f, v6
	v_cvt_i32_f32_e32 v5, v5
	v_add_f32_e32 v4, v4, v6
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB2_49:
	s_andn2_saveexec_b32 s0, s0
	s_cbranch_execz .LBB2_51
; %bb.50:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s1, 0xbbbac73d
	v_fmaak_f32 v4, s1, v3, 0x3ca908c9
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
.LBB2_51:
	s_or_b32 exec_lo, exec_lo, s0
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_52:
	v_mov_b32_e32 v0, v2
.LBB2_53:
	s_load_dwordx2 s[0:1], s[4:5], 0x48
	s_mul_i32 s2, s2, s10
	s_mul_i32 s3, s22, s8
	s_add_i32 s2, s2, s6
	v_mov_b32_e32 v1, 0
	s_add_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_dword v1, v0, s[0:1]
.LBB2_54:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 35
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 35
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 40
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
; TotalNumSgprs: 42
; NumVgprs: 35
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 35
; Occupancy: 16
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
	s_clause 0x1
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	s_load_dwordx4 s[16:19], s[4:5], 0x50
	s_mov_b32 s10, s7
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[0:1], 0
	s_cselect_b32 s7, -1, 0
	s_cmp_eq_u64 s[0:1], 0
	s_cbranch_scc1 .LBB3_5
; %bb.1:
	s_mov_b32 s11, 0
	s_lshl_b64 s[2:3], s[10:11], 2
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	s_load_dword s20, s[0:1], 0x0
	s_clause 0x1
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s21, s[4:5], 0x60
	s_cbranch_execnz .LBB3_3
.LBB3_2:
	s_load_dwordx2 s[12:13], s[4:5], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s9, s12, s10
	s_add_i32 s9, s10, s9
	s_lshr_b32 s20, s9, s13
.LBB3_3:
	s_load_dword s11, s[4:5], 0x88
	s_andn2_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB3_6
; %bb.4:
	s_mul_hi_u32 s7, s17, s10
	s_add_i32 s7, s10, s7
	s_lshr_b32 s7, s7, s18
	s_mul_i32 s7, s7, s19
	s_sub_i32 s22, s10, s7
	s_branch .LBB3_7
.LBB3_5:
                                        ; implicit-def: $sgpr20
	s_clause 0x1
	s_load_dwordx4 s[0:3], s[4:5], 0x78
	s_load_dword s21, s[4:5], 0x60
	s_branch .LBB3_2
.LBB3_6:
	s_mov_b32 s22, s10
.LBB3_7:
	s_load_dwordx4 s[12:15], s[4:5], 0x90
	v_mov_b32_e32 v4, 0
	s_lshr_b32 s9, s16, 8
	s_mov_b32 s7, exec_lo
	v_cmpx_gt_u32_e64 s9, v1
	s_cbranch_execz .LBB3_11
; %bb.8:
	v_and_b32_e32 v4, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s22, s1
	s_mul_hi_u32 s3, s3, s8
	s_mul_hi_u32 s23, s1, 36
	s_mul_i32 s22, s1, 36
	v_lshrrev_b16 v6, 3, v4
	v_mad_u64_u32 v[2:3], null, 0x120, v1, s[22:23]
	s_load_dwordx4 s[16:19], s[4:5], 0x0
	s_add_i32 s3, s8, s3
	v_lshrrev_b32_e32 v5, 4, v0
	s_lshr_b32 s1, s3, s11
	s_mul_i32 s3, s13, s8
	v_and_b32_e32 v6, 0xffff, v6
	v_mad_u64_u32 v[2:3], null, s3, 36, v[2:3]
	v_lshlrev_b32_e32 v7, 3, v5
	v_and_b32_e32 v8, 7, v0
	v_lshl_or_b32 v5, v5, 2, v6
	v_lshrrev_b16 v10, 2, v4
	v_lshlrev_b32_e32 v11, 1, v0
	s_mul_i32 s21, s21, s6
	v_or_b32_e32 v9, v7, v8
	v_mad_u64_u32 v[2:3], null, v5, 36, v[2:3]
	s_mul_i32 s3, s20, s0
	s_mul_i32 s0, s1, s12
	v_lshlrev_b32_e32 v9, 1, v9
	v_mov_b32_e32 v4, 0
	v_lshlrev_b32_e32 v5, 1, v6
	v_or_b32_sdwa v6, v7, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_lshlrev_b32_e32 v7, 2, v8
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	v_lshlrev_b32_e32 v8, 1, v11
	v_lshlrev_b32_e32 v9, 1, v9
	v_mov_b32_e32 v10, v1
	s_add_i32 s0, s0, s21
	s_mov_b32 s1, 0
	s_add_i32 s3, s3, s0
.LBB3_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v11, s3, v10
	v_add_nc_u32_e32 v10, 1, v10
	v_mad_i64_i32 v[11:12], null, 0xd2, v11, s[16:17]
	v_cmp_le_u32_e64 s0, s9, v10
	s_or_b32 s1, s0, s1
	v_add_co_u32 v13, vcc_lo, v11, v9
	v_add_co_ci_u32_e64 v14, null, 0, v12, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v8
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_dword v17, v[13:14], off offset:128
	global_load_dword v18, v[15:16], off
	v_add_co_u32 v13, vcc_lo, v2, v7
	v_add_co_ci_u32_e64 v14, null, 0, v3, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v6
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_dword v19, v[13:14], off offset:4
	global_load_dword v13, v[13:14], off offset:76
	s_clause 0x1
	global_load_sbyte v14, v[15:16], off offset:192
	global_load_sbyte v15, v[15:16], off offset:196
	s_clause 0x1
	global_load_dword v16, v[2:3], off
	global_load_dword v20, v[2:3], off offset:72
	global_load_ushort v11, v[11:12], off offset:208
	v_add_co_u32 v2, vcc_lo, 0x120, v2
	v_add_co_ci_u32_e64 v3, null, 0, v3, vcc_lo
	s_waitcnt vmcnt(8)
	v_ashrrev_i32_e32 v12, v5, v17
	s_waitcnt vmcnt(7)
	v_lshrrev_b32_e32 v17, 4, v18
	v_and_b32_e32 v18, 0xf0f0f0f, v18
	v_lshlrev_b32_e32 v21, 4, v12
	v_and_b32_e32 v17, 0xf0f0f0f, v17
	v_and_or_b32 v18, 0x30303030, v21, v18
	v_and_or_b32 v12, 0x30303030, v12, v17
	v_lshrrev_b32_e32 v17, 16, v18
	v_lshrrev_b32_e32 v22, 16, v12
	v_and_b32_e32 v21, 0x3f00, v18
	v_lshlrev_b16 v18, 8, v18
	v_and_b32_e32 v23, 0x3f00, v12
	v_lshlrev_b16 v24, 8, v17
	v_and_b32_e32 v17, 0x3f00, v17
	v_lshlrev_b16 v25, 8, v22
	v_lshlrev_b16 v12, 8, v12
	v_add_nc_u16 v18, 0xe000, v18
	v_add_nc_u16 v24, 0xe000, v24
	v_and_b32_e32 v22, 0x3f00, v22
	v_add_nc_u16 v25, 0xe000, v25
	v_add_nc_u16 v12, 0xe000, v12
	v_or_b32_sdwa v18, v21, v18 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v17, v17, v24 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v21, v22, v25 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v12, v23, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_nc_u16 v18, 0xe000, v18
	v_add_nc_u16 v17, 0xe000, v17
	v_mov_b32_e32 v22, 0
	v_add_nc_u16 v21, 0xe000, v21
	v_add_nc_u16 v12, 0xe000, v12
	v_lshlrev_b32_e32 v17, 16, v17
	v_lshlrev_b32_e32 v21, 16, v21
	v_or_b32_sdwa v17, v18, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_mov_b32_e32 v18, 0
	v_or_b32_sdwa v12, v12, v21 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	s_waitcnt vmcnt(6)
	v_dot4c_i32_i8 v22, v17, v19
	s_waitcnt vmcnt(5)
	v_dot4c_i32_i8 v18, v12, v13
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v12, v22, v14
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v13, v18, v15
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	s_waitcnt vmcnt(2)
	v_fma_mix_f32 v12, v16, v12, 0 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(1)
	v_fma_mix_f32 v12, v20, v13, v12 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v4, v12, v11, v4 op_sel_hi:[0,1,0]
	s_andn2_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB3_9
; %bb.10:
	s_or_b32 exec_lo, exec_lo, s1
.LBB3_11:
	s_or_b32 exec_lo, exec_lo, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s1, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cmpx_ne_u32_e32 0, v1
	s_cbranch_execz .LBB3_13
; %bb.12:
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshl_or_b32 v1, v1, 7, v2
	v_add_nc_u32_e32 v1, 0xffffff80, v1
	ds_write_b32 v1, v4
.LBB3_13:
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s0, vcc_lo
	s_cbranch_execz .LBB3_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	s_mov_b32 s1, 0
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 8, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v2
	v_cndmask_b32_e32 v2, v1, v2, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v3
	v_lshlrev_b32_e32 v2, 2, v2
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	ds_bpermute_b32 v2, v2, v4
	v_lshlrev_b32_e32 v3, 2, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v4, v2
	v_xor_b32_e32 v4, 4, v1
	ds_bpermute_b32 v3, v3, v2
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v2, v3
	ds_bpermute_b32 v3, v4, v2
	v_xor_b32_e32 v4, 2, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v2, v3
	ds_bpermute_b32 v3, v4, v2
	v_xor_b32_e32 v4, 1, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v1, v1, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_lshlrev_b32_e32 v4, 2, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v2, v3
	ds_bpermute_b32 v2, v4, v1
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB3_16
; %bb.15:
	s_load_dwordx2 s[4:5], s[4:5], 0x48
	s_mul_i32 s0, s2, s10
	s_mul_i32 s2, s14, s8
	s_add_i32 s0, s0, s6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v1, v2
	s_add_i32 s0, s0, s2
	v_mov_b32_e32 v1, 0
	s_lshl_b64 s[0:1], s[0:1], 2
	s_add_u32 s0, s4, s0
	s_addc_u32 s1, s5, s1
	global_store_dword v1, v0, s[0:1]
.LBB3_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 128
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
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 26
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
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 26
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
; codeLenInByte = 1324
; TotalNumSgprs: 26
; NumVgprs: 26
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 128 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 26
; Occupancy: 16
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
	.type	__hip_cuid_298482333355ae5a,@object ; @__hip_cuid_298482333355ae5a
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_298482333355ae5a
__hip_cuid_298482333355ae5a:
	.byte	0                               ; 0x0
	.size	__hip_cuid_298482333355ae5a, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_298482333355ae5a
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
    .group_segment_fixed_size: 256
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 32
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     38
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
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
    .group_segment_fixed_size: 128
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 32
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     31
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
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
    .max_flat_workgroup_size: 32
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     35
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
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
    .group_segment_fixed_size: 128
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 32
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     26
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1030
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
