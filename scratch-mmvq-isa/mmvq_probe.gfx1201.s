	.amdgcn_target "amdgcn-amd-amdhsa--gfx1201"
	.amdhsa_code_object_version 6
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_clause 0x3
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b128 s[16:19], s[0:1], 0x20
	s_load_b128 s[20:23], s[0:1], 0x50
	s_load_b128 s[12:15], s[0:1], 0x78
	s_and_b32 s27, ttmp7, 0xffff
	s_wait_kmcnt 0x0
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b32 s2, -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB0_43
; %bb.1:
	s_lshl_b32 s3, s27, 2
	s_load_b32 s28, s[8:9], s3 offset:0x0
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x60
	s_load_b32 s29, s[0:1], 0x88
	s_cbranch_execnz .LBB0_3
.LBB0_2:
	s_load_b64 s[8:9], s[0:1], 0x6c
	s_wait_kmcnt 0x0
	s_mul_hi_u32 s3, s8, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s3, s27, s3
	s_lshr_b32 s28, s3, s9
.LBB0_3:
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s2, s27
	s_mov_b32 s31, s27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	s_mul_hi_u32 s2, s21, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s2, s27, s2
	s_lshr_b32 s2, s2, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s2, s2, s23
	s_sub_co_i32 s31, s27, s2
	s_wait_kmcnt 0x0
	s_mov_b32 s2, s28
.LBB0_5:
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x40
	s_load_b96 s[24:26], s[0:1], 0x90
	v_bfe_u32 v7, v0, 10, 10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v2, 0x3ff, v0
	s_lshr_b32 s21, ttmp7, 16
	v_mov_b32_e32 v4, 0
	s_cmp_lg_u64 s[16:17], 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, v2, v7
	s_cselect_b32 s22, -1, 0
	s_mov_b32 s23, exec_lo
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.6:
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cmp_eq_u64 s[10:11], 0
	s_mul_i32 s2, s2, s14
	s_cbranch_scc1 .LBB0_8
; %bb.7:
	s_wait_kmcnt 0x0
	s_mul_i32 s36, s26, s21
	s_mov_b32 s37, 0
	s_mov_b32 s34, ttmp9
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s3, s37
	s_add_nc_u64 s[10:11], s[10:11], s[38:39]
	s_lshl_b64 s[36:37], s[2:3], 2
	s_ashr_i32 s35, ttmp9, 31
	v_lshlrev_b32_e32 v0, 2, v2
	s_add_nc_u64 s[10:11], s[10:11], s[36:37]
	s_lshl_b64 s[34:35], s[34:35], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_nc_u64 s[10:11], s[10:11], s[34:35]
	global_load_b32 v4, v0, s[10:11]
.LBB0_8:
	s_cmp_lg_u64 s[18:19], 0
	s_cselect_b32 s3, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s22
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_wait_kmcnt 0x0
	s_mul_i32 s34, s26, s21
	s_mov_b32 s35, 0
	s_mov_b32 s10, ttmp9
	s_lshl_b64 s[36:37], s[34:35], 2
	s_mov_b32 s3, s35
	s_add_nc_u64 s[18:19], s[18:19], s[36:37]
	s_lshl_b64 s[2:3], s[2:3], 2
	s_ashr_i32 s11, ttmp9, 31
	v_lshlrev_b32_e32 v0, 2, v2
	s_add_nc_u64 s[2:3], s[18:19], s[2:3]
	s_lshl_b64 s[10:11], s[10:11], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_nc_u64 s[2:3], s[2:3], s[10:11]
	global_load_b32 v3, v0, s[2:3]
.LBB0_10:
	s_or_b32 exec_lo, exec_lo, s23
	v_lshl_add_u32 v0, v7, 5, v2
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v5, 0, 1, s22
	v_mov_b32_e32 v6, 0
	s_lshr_b32 s18, s20, 8
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s19, exec_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_u32_e64 s18, v9
	s_cbranch_execz .LBB0_16
; %bb.11:
	v_lshlrev_b32_e32 v1, 1, v2
	v_bfe_u32 v6, v2, 2, 2
	v_lshrrev_b32_e32 v11, 4, v0
	s_mul_hi_u32 s2, s15, s21
	s_wait_kmcnt 0x0
	s_mul_i32 s10, s25, s21
	v_bfe_u32 v8, v1, 3, 2
	v_mul_u32_u24_e32 v0, 0x48, v6
	s_add_co_i32 s2, s21, s2
	s_mov_b32 s11, 0
	s_lshr_b32 s2, s2, s29
	v_lshlrev_b32_e32 v10, 5, v8
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v12, 30, v1
	v_mul_hi_u32_u24_e32 v1, 0x48, v6
	s_mul_i32 s15, s28, s12
	s_mul_i32 s20, s2, s24
	s_mul_i32 s2, s31, s13
	s_mov_b32 s3, s11
	v_mad_co_u64_u32 v[0:1], null, 0x120, v11, v[0:1]
	s_mul_u64 s[12:13], s[10:11], 36
	s_mul_u64 s[2:3], s[2:3], 36
	s_add_nc_u64 s[6:7], s[6:7], s[12:13]
	v_and_b32_e32 v6, 3, v2
	s_add_nc_u64 s[2:3], s[6:7], s[2:3]
	s_mul_i32 s30, s30, ttmp9
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v11, 2, v6
	v_bfe_u32 v6, v12, 3, 1
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	v_add_co_u32 v0, vcc_lo, v0, 36
	v_cmp_lt_u32_e64 s2, 15, v12
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v1, null, 0, v1, vcc_lo
	v_lshlrev_b32_e32 v12, 1, v6
	v_mov_b32_e32 v6, 0
	s_add_co_i32 s20, s20, s30
	s_add_co_i32 s6, s15, s20
	s_branch .LBB0_13
.LBB0_12:                               ;   in Loop: Header=BB0_13 Depth=1
	s_wait_loadcnt 0x2
	v_lshrrev_b16 v27, 2, v26
	s_wait_loadcnt 0x1
	v_lshrrev_b16 v28, 4, v25
	v_lshrrev_b16 v29, 2, v24
	v_and_b32_e32 v26, 0x3f3f, v26
	v_and_b32_e32 v25, 0xf0f, v25
	v_and_b32_e32 v27, 0x3030, v27
	v_and_b32_e32 v28, 0xf0f, v28
	v_and_b32_e32 v29, 0x3030, v29
	v_and_b32_e32 v24, 0x3f3f, v24
	v_and_b32_e32 v30, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	v_or_b32_e32 v27, v28, v27
	v_and_b32_e32 v28, 0xf0f0f0f, v23
	v_lshrrev_b32_e32 v23, 4, v23
	v_or_b32_e32 v25, v25, v29
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_cndmask_b32_e64 v26, v26, v27, s2
	v_dot4_i32_iu8 v20, v28, v20, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_cndmask_b32_e64 v24, v24, v25, s2
	v_add_nc_u32_e32 v9, 16, v9
	v_and_b32_e32 v27, 63, v26
	v_dot4_i32_iu8 v20, v30, v21, v20 neg_lo:[1,1,0]
	v_lshrrev_b16 v21, 8, v26
	v_dot4_i32_iu8 v14, v23, v14, 0 neg_lo:[1,1,0]
	v_pk_lshrrev_b16 v23, 8, v24 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b32_e32 v25, 0xffff, v27
	v_and_b32_e32 v24, 63, v24
	v_and_b32_e32 v21, 0xffff, v21
	v_dot4_i32_iu8 v14, v22, v15, v14 neg_lo:[1,1,0]
	v_lshrrev_b32_e32 v15, 16, v23
	v_mul_lo_u32 v18, v18, v25
	v_mul_lo_u32 v20, v20, v24
	v_mul_lo_u32 v19, v19, v21
	v_cmp_le_u32_e32 vcc_lo, s18, v9
	v_mul_lo_u32 v14, v14, v15
	v_add_co_u32 v0, s3, 0x1200, v0
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v1, null, 0, v1, s3
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v14, v14
	s_or_b32 s11, vcc_lo, s11
	v_fma_f32 v15, v17, v15, 0
	v_fma_f32 v17, v17, v18, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v15, v16, v19
	v_fmac_f32_e32 v17, v16, v14
	s_wait_loadcnt 0x0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v14, v13, v15, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v13, v17, v13, -v14 op_sel_hi:[0,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v8, v8, v13
	s_and_not1_b32 exec_lo, exec_lo, s11
	s_cbranch_execz .LBB0_15
.LBB0_13:                               ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v27, s6, v9
	v_add_co_u32 v18, vcc_lo, v0, v11
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v19, null, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_co_i64_i32 v[16:17], null, 0x90, v27, s[4:5]
	s_clause 0x1
	global_load_b32 v20, v[18:19], off offset:-32
	global_load_b32 v14, v[18:19], off offset:4
	v_add_co_u32 v13, vcc_lo, v16, v10
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v15, null, 0, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_u32 v24, vcc_lo, v13, v11
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v25, null, 0, v15, vcc_lo
	v_add_co_u32 v28, vcc_lo, v16, v12
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v29, null, 0, v17, vcc_lo
	s_clause 0x3
	global_load_b32 v21, v[18:19], off offset:-16
	global_load_b32 v30, v[0:1], off
	global_load_b32 v15, v[18:19], off offset:20
	global_load_b32 v31, v[0:1], off offset:-36
	s_clause 0x5
	global_load_b32 v23, v[24:25], off offset:16
	global_load_b32 v22, v[24:25], off offset:32
	global_load_u16 v24, v[28:29], off offset:4
	global_load_u16 v26, v[28:29], off offset:8
	global_load_u16 v25, v[28:29], off offset:12
	global_load_b32 v13, v[16:17], off
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_wait_loadcnt 0xb
	v_dot4_i32_iu8 v16, 0x1010101, v20, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0xa
	v_dot4_i32_iu8 v17, 0x1010101, v14, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0x9
	s_delay_alu instid0(VALU_DEP_2)
	v_dot4_i32_iu8 v18, 0x1010101, v21, v16 neg_lo:[1,1,0]
	s_wait_loadcnt 0x8
	v_cvt_f32_f16_e32 v16, v30
	s_wait_loadcnt 0x7
	v_dot4_i32_iu8 v19, 0x1010101, v15, v17 neg_lo:[1,1,0]
	s_wait_loadcnt 0x6
	v_cvt_f32_f16_e32 v17, v31
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=1
	v_mad_co_i64_i32 v[27:28], null, 0x90, v27, s[16:17]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_u32 v31, vcc_lo, v27, v10
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v32, null, 0, v28, vcc_lo
	v_add_co_u32 v29, vcc_lo, v27, v12
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v30, null, 0, v28, vcc_lo
	v_add_co_u32 v31, vcc_lo, v31, v11
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v32, null, 0, v32, vcc_lo
	s_clause 0x5
	global_load_u16 v33, v[29:30], off offset:8
	global_load_b32 v34, v[31:32], off offset:32
	global_load_u16 v35, v[29:30], off offset:12
	global_load_u16 v29, v[29:30], off offset:4
	global_load_b32 v30, v[31:32], off offset:16
	global_load_b32 v27, v[27:28], off
	s_wait_loadcnt 0x5
	v_lshrrev_b16 v28, 2, v33
	v_and_b32_e32 v33, 0x3f3f, v33
	s_wait_loadcnt 0x3
	v_lshrrev_b16 v31, 4, v35
	s_wait_loadcnt 0x2
	v_lshrrev_b16 v32, 2, v29
	v_and_b32_e32 v35, 0xf0f, v35
	v_and_b32_e32 v28, 0x3030, v28
	v_and_b32_e32 v29, 0x3f3f, v29
	v_and_b32_e32 v31, 0xf0f, v31
	v_and_b32_e32 v32, 0x3030, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v28, v31, v28
	v_or_b32_e32 v32, v35, v32
	s_wait_loadcnt 0x1
	v_and_b32_e32 v31, 0xf0f0f0f, v30
	v_lshrrev_b32_e32 v30, 4, v30
	v_cndmask_b32_e64 v28, v33, v28, s2
	v_cndmask_b32_e64 v29, v29, v32, s2
	v_lshrrev_b32_e32 v33, 4, v34
	v_dot4_i32_iu8 v31, v31, v20, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v30, 0xf0f0f0f, v30
	v_and_b32_e32 v32, 63, v28
	v_lshrrev_b16 v28, 8, v28
	v_and_b32_e32 v33, 0xf0f0f0f, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dot4_i32_iu8 v30, v30, v14, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v32, 0xffff, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v28, 0xffff, v28
	v_dot4_i32_iu8 v30, v33, v15, v30 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v32, v18, v32
	v_mul_lo_u32 v28, v19, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v28, v28
	v_and_b32_e32 v36, 0xf0f0f0f, v34
	v_and_b32_e32 v34, 63, v29
	v_lshrrev_b16 v29, 8, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dot4_i32_iu8 v31, v36, v21, v31 neg_lo:[1,1,0]
	v_and_b32_e32 v34, 0xffff, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 0xffff, v29
	v_mul_lo_u32 v31, v31, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v29, v30, v29
	v_cvt_f32_i32_e32 v30, v31
	v_fma_f32 v31, v17, v32, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v29, v29
	v_fma_f32 v30, v17, v30, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v16, v28
	v_fmac_f32_e32 v30, v16, v29
	s_wait_loadcnt 0x0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v28, v27, v31, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	v_fma_mix_f32 v27, v30, v27, -v28 op_sel_hi:[0,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v6, v6, v27
	s_branch .LBB0_12
.LBB0_15:
	s_or_b32 exec_lo, exec_lo, s11
.LBB0_16:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s19
	v_cmp_eq_u32_e64 s2, 0, v7
	v_lshlrev_b32_e32 v0, 2, v2
	s_mov_b32 s3, exec_lo
	v_cmpx_ne_u32_e32 0, v7
	s_cbranch_execz .LBB0_20
; %bb.17:
	v_lshlrev_b32_e32 v1, 7, v7
	s_and_b32 vcc_lo, exec_lo, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccz .LBB0_19
; %bb.18:
	ds_store_b32 v1, v6 offset:896
.LBB0_19:
	ds_store_b32 v1, v8
.LBB0_20:
	s_wait_alu depctr_sa_sdst(0)
	s_or_b32 exec_lo, exec_lo, s3
	s_wait_loadcnt_dscnt 0x0
	s_barrier_signal -1
	s_barrier_wait -1
	global_inv scope:SCOPE_SE
	s_and_saveexec_b32 s3, s2
	s_cbranch_execz .LBB0_67
; %bb.21:
	ds_load_b32 v1, v0
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_23
; %bb.22:
	ds_load_b32 v7, v0 offset:896
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v7
.LBB0_23:
	ds_load_b32 v7, v0 offset:128
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_25
; %bb.24:
	ds_load_b32 v9, v0 offset:1024
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v9
.LBB0_25:
	ds_load_b32 v9, v0 offset:256
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_27
; %bb.26:
	ds_load_b32 v10, v0 offset:1152
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v10
.LBB0_27:
	ds_load_b32 v10, v0 offset:384
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_29
; %bb.28:
	ds_load_b32 v11, v0 offset:1280
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v11
.LBB0_29:
	ds_load_b32 v11, v0 offset:512
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_31
; %bb.30:
	ds_load_b32 v12, v0 offset:1408
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v12
.LBB0_31:
	ds_load_b32 v12, v0 offset:640
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_33
; %bb.32:
	ds_load_b32 v13, v0 offset:1536
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v13
.LBB0_33:
	ds_load_b32 v13, v0 offset:768
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB0_35
; %bb.34:
	ds_load_b32 v0, v0 offset:1664
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v0
.LBB0_35:
	s_wait_dscnt 0x6
	v_add_f32_e32 v0, v8, v1
	v_mbcnt_lo_u32_b32 v1, -1, 0
	s_wait_dscnt 0x5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v0, v0, v7
	v_xor_b32_e32 v7, 16, v1
	v_xor_b32_e32 v8, 8, v1
	s_wait_dscnt 0x4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v0, v0, v9
	v_cmp_gt_u32_e32 vcc_lo, 32, v7
	s_wait_dscnt 0x3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_add_f32 v0, v0, v10 :: v_dual_cndmask_b32 v7, v1, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v8
	s_wait_dscnt 0x2
	v_add_f32_e32 v0, v0, v11
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v8, v1, v8, vcc_lo
	s_wait_dscnt 0x1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v0, v0, v12
	s_wait_dscnt 0x0
	v_dual_add_f32 v9, v0, v13 :: v_dual_lshlrev_b32 v8, 2, v8
	v_lshlrev_b32_e32 v0, 2, v7
	ds_bpermute_b32 v7, v0, v9
	s_wait_dscnt 0x0
	v_add_f32_e32 v7, v9, v7
	v_xor_b32_e32 v9, 4, v1
	ds_bpermute_b32 v10, v8, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v9
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v9, v1, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v9, 2, v9
	s_wait_dscnt 0x0
	v_add_f32_e32 v7, v7, v10
	v_xor_b32_e32 v10, 2, v1
	ds_bpermute_b32 v11, v9, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	s_wait_dscnt 0x0
	s_wait_alu depctr_va_vcc(0)
	v_dual_add_f32 v7, v7, v11 :: v_dual_cndmask_b32 v10, v1, v10
	v_xor_b32_e32 v11, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v10, 2, v10
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	ds_bpermute_b32 v12, v10, v7
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v1, v1, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v11, 2, v1
	s_wait_dscnt 0x0
	v_add_f32_e32 v1, v7, v12
	ds_bpermute_b32 v7, v11, v1
	s_cbranch_vccnz .LBB0_37
; %bb.36:
	ds_bpermute_b32 v0, v0, v6
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v6, v0
	ds_bpermute_b32 v6, v8, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v9, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v10, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v11, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v0, v6
.LBB0_37:
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB0_67
; %bb.38:
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v1, v7
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v0, v4, v0
	s_cbranch_vccnz .LBB0_66
; %bb.39:
	v_add_f32_e32 v1, v3, v6
	s_wait_kmcnt 0x0
	s_cmp_lt_i32 s8, 3
	s_mov_b32 s2, 0
	s_cbranch_scc1 .LBB0_44
; %bb.40:
	s_cmp_gt_i32 s8, 5
	s_cbranch_scc0 .LBB0_45
; %bb.41:
	s_cmp_eq_u32 s8, 6
	s_cbranch_scc0 .LBB0_46
; %bb.42:
	v_max_num_f32_e32 v2, v1, v1
	v_max_num_f32_e64 v3, s9, s9
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_num_f32_e32 v2, v2, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v5, 0xbfb8aa3b, v2, -v4
	v_rndne_f32_e32 v6, v4
	v_dual_fmamk_f32 v5, v2, 0xb2a5705f, v5 :: v_dual_sub_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v5, null, v4, v4, v2
	v_rcp_f32_e32 v6, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v9, v6
	v_max_num_f32_e64 v9, -s9, -s9
	v_fma_f32 v5, -v5, v8, v7
	v_max_num_f32_e32 v7, v0, v0
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v6, v8
	v_minmax_num_f32 v3, v7, v3, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB0_47
.LBB0_43:
                                        ; implicit-def: $sgpr28
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x60
	s_load_b32 s29, s[0:1], 0x88
	s_branch .LBB0_2
.LBB0_44:
	s_mov_b32 s3, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_52
	s_branch .LBB0_57
.LBB0_45:
	s_mov_b32 s3, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_48
	s_branch .LBB0_50
.LBB0_46:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
.LBB0_47:
	s_branch .LBB0_50
.LBB0_48:
	s_cmp_eq_u32 s8, 3
	s_cbranch_scc0 .LBB0_51
; %bb.49:
	v_max_num_f32_e32 v2, v1, v1
	s_mov_b32 s3, 0xc0e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_num_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_fma_f32 v5, 0x3fb8aa3b, v3, -v4
	v_rndne_f32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmamk_f32 v5, v3, 0x32a5705f, v5 :: v_dual_sub_f32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v5, v4
	v_fma_f32 v6, -v4, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v6, v7
	s_wait_alu depctr_va_vcc(0)
	v_div_fmas_f32 v4, v4, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v4, v3, v2
	v_max_num_f32_e32 v7, v0, v0
	s_wait_alu depctr_sa_sdst(0)
	v_minmax_num_f32 v5, v7, 0x40e00000, s3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB0_50:
	s_branch .LBB0_57
.LBB0_51:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_57
.LBB0_52:
	s_cmp_gt_i32 s8, 1
	s_cbranch_scc0 .LBB0_54
; %bb.53:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v3, v2
	v_fma_f32 v4, 0xbfb8aa3b, v1, -v2
	v_sub_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmamk_f32 v4, v1, 0xb2a5705f, v4
	v_cvt_i32_f32_e32 v3, v3
	v_add_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, null, v2, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v6, v5
	s_wait_alu depctr_va_vcc(0)
	v_div_fmas_f32 v3, v3, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB0_55
.LBB0_54:
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr2
.LBB0_55:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s2, 0
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB0_57
; %bb.56:
	s_cmp_lg_u32 s8, 1
	s_mov_b32 s2, -1
	s_cselect_b32 s3, -1, 0
.LBB0_57:
	s_wait_alu depctr_sa_sdst(0)
	s_and_b32 vcc_lo, exec_lo, s3
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccz .LBB0_59
; %bb.58:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s2, 0
.LBB0_59:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB0_65
; %bb.60:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ngt_f32_e64 s2, 0x3f200000, |v2|
	s_and_saveexec_b32 s3, s2
	s_wait_alu depctr_sa_sdst(0)
	s_xor_b32 s2, exec_lo, s3
	s_cbranch_execz .LBB0_62
; %bb.61:
	v_add_f32_e64 v3, |v2|, |v2|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_rndne_f32_e32 v5, v4
	v_fma_f32 v6, 0x3fb8aa3b, v3, -v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_sub_f32_e32 v4, v4, v5
	v_fmamk_f32 v6, v3, 0x32a5705f, v6
	v_cvt_i32_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v4, v4, v6
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB0_62:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_saveexec_b32 s2, s2
	s_cbranch_execz .LBB0_64
; %bb.63:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s3, 0xbbbac73d
	s_wait_alu depctr_sa_sdst(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, s3, v3, 0x3ca908c9
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
.LBB0_64:
	s_wait_alu depctr_sa_sdst(0)
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_dual_mul_f32 v1, 0.5, v1 :: v_dual_add_f32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_65:
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v0, v2
.LBB0_66:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s2, s14, s27
	s_wait_kmcnt 0x0
	s_mul_i32 s3, s26, s21
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, ttmp9
	v_mov_b32_e32 v1, 0
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_wait_alu depctr_sa_sdst(0)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_wait_alu depctr_sa_sdst(0)
	s_add_nc_u64 s[0:1], s[0:1], s[2:3]
	global_store_b32 v1, v0, s[0:1]
.LBB0_67:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 1792
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 37
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_inst_pref_size 32
		.amdhsa_round_robin_scheduling 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 37
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
; codeLenInByte = 4088
; TotalNumSgprs: 42
; NumVgprs: 37
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1792 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 37
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
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
	s_load_b64 s[2:3], s[0:1], 0x10
	s_load_b128 s[8:11], s[0:1], 0x50
	s_and_b32 s15, ttmp7, 0xffff
	s_wait_kmcnt 0x0
	s_cmp_lg_u64 s[2:3], 0
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u64 s[2:3], 0
	s_cbranch_scc1 .LBB1_15
; %bb.1:
	s_lshl_b32 s4, s15, 2
	s_load_b32 s2, s[2:3], s4 offset:0x0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s3, s[0:1], 0x60
	s_cbranch_execnz .LBB1_3
.LBB1_2:
	s_load_b64 s[16:17], s[0:1], 0x6c
	s_wait_kmcnt 0x0
	s_mul_hi_u32 s2, s16, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s2, s15, s2
	s_lshr_b32 s2, s2, s17
.LBB1_3:
	s_load_b32 s20, s[0:1], 0x88
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mov_b32 s19, s15
	s_cbranch_vccnz .LBB1_5
; %bb.4:
	s_mul_hi_u32 s9, s9, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s9, s15, s9
	s_lshr_b32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s11
	s_sub_co_i32 s19, s15, s9
.LBB1_5:
	s_load_b96 s[12:14], s[0:1], 0x90
	v_bfe_u32 v3, v0, 10, 10
	v_and_b32_e32 v2, 0x3ff, v0
	v_mov_b32_e32 v4, 0
	s_lshr_b32 s18, s8, 8
	s_lshr_b32 s16, ttmp7, 16
	s_mov_b32 s17, exec_lo
	v_lshl_add_u32 v0, v3, 5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshrrev_b32_e32 v5, 4, v0
	v_cmpx_gt_u32_e64 s18, v5
	s_cbranch_execz .LBB1_9
; %bb.6:
	s_load_b128 s[8:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v1, 1, v2
	v_bfe_u32 v4, v2, 2, 2
	s_wait_kmcnt 0x0
	s_mul_hi_u32 s7, s7, s16
	v_lshrrev_b32_e32 v7, 4, v0
	s_add_co_i32 s7, s16, s7
	v_bfe_u32 v6, v1, 3, 2
	v_and_b32_e32 v8, 30, v1
	v_mul_hi_u32_u24_e32 v1, 0x48, v4
	v_mul_u32_u24_e32 v0, 0x48, v4
	s_mul_i32 s21, s3, ttmp9
	s_lshr_b32 s3, s7, s20
	s_mul_i32 s7, s2, s4
	s_mul_i32 s20, s3, s12
	s_mul_i32 s12, s13, s16
	s_mov_b32 s13, 0
	v_mad_co_u64_u32 v[0:1], null, 0x120, v7, v[0:1]
	s_mul_i32 s2, s19, s5
	s_mov_b32 s3, s13
	s_mul_u64 s[4:5], s[12:13], 36
	s_mul_u64 s[2:3], s[2:3], 36
	s_add_nc_u64 s[4:5], s[10:11], s[4:5]
	v_and_b32_e32 v9, 3, v2
	s_add_nc_u64 s[2:3], s[4:5], s[2:3]
	v_lshlrev_b32_e32 v6, 5, v6
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v7, 2, v9
	v_bfe_u32 v9, v8, 3, 1
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	v_add_co_u32 v0, s2, v0, 36
	v_mov_b32_e32 v4, 0
	v_cmp_lt_u32_e32 vcc_lo, 15, v8
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v1, null, 0, v1, s2
	v_lshlrev_b32_e32 v8, 1, v9
	s_add_co_i32 s20, s20, s21
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_co_i32 s4, s7, s20
.LBB1_7:                                ; =>This Inner Loop Header: Depth=1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v11, s4, v5
	v_add_co_u32 v9, s2, v0, v7
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v10, null, 0, v1, s2
	v_mad_co_i64_i32 v[11:12], null, 0x90, v11, s[8:9]
	s_clause 0x4
	global_load_b32 v19, v[9:10], off offset:-32
	global_load_b32 v20, v[9:10], off offset:-16
	global_load_b32 v21, v[9:10], off offset:4
	global_load_b32 v17, v[0:1], off offset:-36
	global_load_b32 v18, v[0:1], off
	v_add_nc_u32_e32 v5, 16, v5
	v_add_co_u32 v0, s3, 0x1200, v0
	v_add_co_u32 v15, s2, v11, v6
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v16, null, 0, v12, s2
	v_add_co_u32 v13, s2, v11, v8
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v14, null, 0, v12, s2
	v_add_co_u32 v15, s2, v15, v7
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v16, null, 0, v16, s2
	s_clause 0x4
	global_load_b32 v22, v[15:16], off offset:16
	global_load_b32 v15, v[15:16], off offset:32
	global_load_u16 v16, v[13:14], off offset:4
	global_load_u16 v23, v[13:14], off offset:8
	global_load_u16 v13, v[13:14], off offset:12
	global_load_b32 v9, v[9:10], off offset:20
	global_load_b32 v10, v[11:12], off
	v_cmp_le_u32_e64 s2, s18, v5
	v_add_co_ci_u32_e64 v1, null, 0, v1, s3
	s_or_b32 s13, s2, s13
	s_wait_loadcnt 0xb
	v_dot4_i32_iu8 v11, 0x1010101, v19, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0x9
	v_dot4_i32_iu8 v12, 0x1010101, v21, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_dot4_i32_iu8 v11, 0x1010101, v20, v11 neg_lo:[1,1,0]
	s_wait_loadcnt 0x5
	v_and_b32_e32 v27, 0xf0f0f0f, v15
	s_wait_loadcnt 0x4
	v_lshrrev_b16 v25, 2, v16
	s_wait_loadcnt 0x3
	v_lshrrev_b16 v14, 2, v23
	s_wait_loadcnt 0x2
	v_lshrrev_b16 v24, 4, v13
	v_and_b32_e32 v13, 0xf0f, v13
	v_and_b32_e32 v16, 0x3f3f, v16
	v_and_b32_e32 v25, 0x3030, v25
	v_and_b32_e32 v14, 0x3030, v14
	v_and_b32_e32 v24, 0xf0f, v24
	v_and_b32_e32 v23, 0x3f3f, v23
	v_lshrrev_b32_e32 v15, 4, v15
	v_or_b32_e32 v13, v13, v25
	v_and_b32_e32 v26, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	v_or_b32_e32 v14, v24, v14
	v_and_b32_e32 v15, 0xf0f0f0f, v15
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v13, v16, v13, vcc_lo
	v_dot4_i32_iu8 v19, v26, v19, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_cndmask_b32_e32 v14, v23, v14, vcc_lo
	s_wait_loadcnt 0x1
	v_dot4_i32_iu8 v12, 0x1010101, v9, v12 neg_lo:[1,1,0]
	v_pk_lshrrev_b16 v16, 8, v13 op_sel:[1,0] op_sel_hi:[0,0]
	v_dot4_i32_iu8 v19, v27, v20, v19 neg_lo:[1,1,0]
	v_dot4_i32_iu8 v20, v22, v21, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v13, 63, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v16, 16, v16
	v_dot4_i32_iu8 v9, v15, v9, v20 neg_lo:[1,1,0]
	v_and_b32_e32 v15, 63, v14
	v_lshrrev_b16 v14, 8, v14
	v_mul_lo_u32 v13, v19, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v9, v9, v16
	v_and_b32_e32 v15, 0xffff, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v14, 0xffff, v14
	v_mul_lo_u32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v12, v12, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v9, v9
	v_fma_mix_f32 v13, v17, v13, 0 op_sel_hi:[1,0,0]
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_mix_f32 v9, v18, v9, v13 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v11, v17, v11, 0 op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v11, v18, v12, v11 op_sel_hi:[1,0,0]
	s_wait_loadcnt 0x0
	v_fma_mix_f32 v11, v10, v11, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v9, v9, v10, -v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v9
	s_and_not1_b32 exec_lo, exec_lo, s13
	s_cbranch_execnz .LBB1_7
; %bb.8:
	s_or_b32 exec_lo, exec_lo, s13
.LBB1_9:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s17
	v_lshlrev_b32_e32 v0, 2, v2
	s_wait_kmcnt 0x0
	s_mov_b32 s3, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cmpx_ne_u32_e32 0, v3
; %bb.10:
	v_lshlrev_b32_e32 v1, 7, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	ds_store_b32 v1, v4
; %bb.11:
	s_wait_alu depctr_sa_sdst(0)
	s_or_b32 exec_lo, exec_lo, s3
	s_wait_dscnt 0x0
	s_barrier_signal -1
	s_barrier_wait -1
	global_inv scope:SCOPE_SE
	s_and_saveexec_b32 s2, vcc_lo
	s_cbranch_execz .LBB1_14
; %bb.12:
	ds_load_2addr_b32 v[5:6], v0 offset1:32
	ds_load_2addr_b32 v[7:8], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v0 offset0:128 offset1:160
	v_mbcnt_lo_u32_b32 v3, -1, 0
	ds_load_b32 v0, v0 offset:768
	s_mov_b32 s3, 0
	s_wait_dscnt 0x3
	v_add_f32_e32 v1, v4, v5
	v_xor_b32_e32 v4, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_dual_cndmask_b32 v4, v3, v4 :: v_dual_add_f32 v1, v1, v6
	s_wait_dscnt 0x2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v1, v1, v7
	v_add_f32_e32 v1, v1, v8
	s_wait_dscnt 0x1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v1, v1, v9
	v_add_f32_e32 v1, v1, v10
	s_wait_dscnt 0x0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v0, v1, v0
	v_lshlrev_b32_e32 v1, 2, v4
	v_xor_b32_e32 v4, 8, v3
	ds_bpermute_b32 v1, v1, v0
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 4, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 2, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 1, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v3, v3, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_wait_dscnt 0x0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v0, v0, v1 :: v_dual_lshlrev_b32 v3, 2, v3
	ds_bpermute_b32 v1, v3, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB1_14
; %bb.13:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s2, s6, s15
	s_mul_i32 s4, s14, s16
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, ttmp9
	v_mov_b32_e32 v2, 0
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, s4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	s_wait_alu depctr_sa_sdst(0)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_wait_kmcnt 0x0
	s_wait_alu depctr_sa_sdst(0)
	s_add_nc_u64 s[0:1], s[0:1], s[2:3]
	global_store_b32 v2, v0, s[0:1]
.LBB1_14:
	s_endpgm
.LBB1_15:
                                        ; implicit-def: $sgpr2
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s3, s[0:1], 0x60
	s_branch .LBB1_2
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 896
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 28
		.amdhsa_next_free_sgpr 22
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_inst_pref_size 13
		.amdhsa_round_robin_scheduling 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 28
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 22
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1660
; TotalNumSgprs: 24
; NumVgprs: 28
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 896 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 28
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
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
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b128 s[16:19], s[0:1], 0x20
	s_load_b128 s[20:23], s[0:1], 0x50
	s_load_b128 s[12:15], s[0:1], 0x78
	s_and_b32 s27, ttmp7, 0xffff
	s_wait_kmcnt 0x0
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b32 s2, -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB2_43
; %bb.1:
	s_lshl_b32 s3, s27, 2
	s_load_b32 s28, s[8:9], s3 offset:0x0
	s_clause 0x1
	s_load_b32 s29, s[0:1], 0x60
	s_load_b32 s30, s[0:1], 0x88
	s_cbranch_execnz .LBB2_3
.LBB2_2:
	s_load_b64 s[8:9], s[0:1], 0x6c
	s_wait_kmcnt 0x0
	s_mul_hi_u32 s3, s8, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s3, s27, s3
	s_lshr_b32 s28, s3, s9
.LBB2_3:
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s2, s27
	s_mov_b32 s31, s27
	s_cbranch_vccnz .LBB2_5
; %bb.4:
	s_mul_hi_u32 s2, s21, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s2, s27, s2
	s_lshr_b32 s2, s2, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s2, s2, s23
	s_sub_co_i32 s31, s27, s2
	s_wait_kmcnt 0x0
	s_mov_b32 s2, s28
.LBB2_5:
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x40
	s_load_b96 s[24:26], s[0:1], 0x90
	v_bfe_u32 v7, v0, 10, 10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v2, 0x3ff, v0
	s_lshr_b32 s21, ttmp7, 16
	v_mov_b32_e32 v4, 0
	s_cmp_lg_u64 s[16:17], 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, v2, v7
	s_cselect_b32 s22, -1, 0
	s_mov_b32 s23, exec_lo
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB2_10
; %bb.6:
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cmp_eq_u64 s[10:11], 0
	s_mul_i32 s2, s2, s14
	s_cbranch_scc1 .LBB2_8
; %bb.7:
	s_wait_kmcnt 0x0
	s_mul_i32 s36, s26, s21
	s_mov_b32 s37, 0
	s_mov_b32 s34, ttmp9
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s3, s37
	s_add_nc_u64 s[10:11], s[10:11], s[38:39]
	s_lshl_b64 s[36:37], s[2:3], 2
	s_ashr_i32 s35, ttmp9, 31
	v_lshlrev_b32_e32 v0, 2, v2
	s_add_nc_u64 s[10:11], s[10:11], s[36:37]
	s_lshl_b64 s[34:35], s[34:35], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_nc_u64 s[10:11], s[10:11], s[34:35]
	global_load_b32 v4, v0, s[10:11]
.LBB2_8:
	s_cmp_lg_u64 s[18:19], 0
	s_cselect_b32 s3, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s22
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB2_10
; %bb.9:
	s_wait_kmcnt 0x0
	s_mul_i32 s34, s26, s21
	s_mov_b32 s35, 0
	s_mov_b32 s10, ttmp9
	s_lshl_b64 s[36:37], s[34:35], 2
	s_mov_b32 s3, s35
	s_add_nc_u64 s[18:19], s[18:19], s[36:37]
	s_lshl_b64 s[2:3], s[2:3], 2
	s_ashr_i32 s11, ttmp9, 31
	v_lshlrev_b32_e32 v0, 2, v2
	s_add_nc_u64 s[2:3], s[18:19], s[2:3]
	s_lshl_b64 s[10:11], s[10:11], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_nc_u64 s[2:3], s[2:3], s[10:11]
	global_load_b32 v3, v0, s[2:3]
.LBB2_10:
	s_or_b32 exec_lo, exec_lo, s23
	v_lshrrev_b32_e32 v0, 5, v2
	v_cndmask_b32_e64 v5, 0, 1, s22
	v_mov_b32_e32 v6, 0
	s_lshr_b32 s10, s20, 8
	s_mov_b32 s11, exec_lo
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v9, v0, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_u32_e64 s10, v9
	s_cbranch_execz .LBB2_16
; %bb.11:
	s_mul_i32 s2, s31, s13
	s_mov_b32 s3, 0
	v_and_b32_e32 v6, 15, v2
	s_mul_u64 s[18:19], s[2:3], 36
	s_mul_hi_u32 s15, s15, s21
	v_mad_co_u64_u32 v[0:1], null, 0x120, v9, s[18:19]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b16 v10, 3, v6
	s_add_co_i32 s13, s21, s15
	v_bfe_u32 v8, v2, 4, 1
	s_wait_kmcnt 0x0
	s_lshr_b32 s2, s13, s30
	s_mul_i32 s13, s25, s21
	v_and_b32_e32 v10, 0xffff, v10
	v_mad_co_u64_u32 v[0:1], null, s13, 36, v[0:1]
	v_lshlrev_b32_e32 v11, 3, v8
	v_and_b32_e32 v12, 7, v2
	v_lshrrev_b16 v6, 2, v6
	v_lshl_or_b32 v8, v8, 2, v10
	v_and_b32_e32 v13, 31, v2
	s_mul_i32 s29, s29, ttmp9
	s_mul_i32 s2, s2, s24
	v_and_b32_e32 v6, 0xffff, v6
	v_mad_co_u64_u32 v[0:1], null, v8, 36, v[0:1]
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v14, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b32_e32 v11, v11, v6
	v_dual_mov_b32 v6, 0 :: v_dual_lshlrev_b32 v13, 1, v13
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v14, 1, v14
	v_add_co_u32 v0, vcc_lo, s6, v0
	v_lshlrev_b32_e32 v12, 2, v12
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v14, 1, v14
	s_mul_i32 s12, s28, s12
	s_add_co_i32 s2, s2, s29
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s6, s12, s2
	s_branch .LBB2_13
.LBB2_12:                               ;   in Loop: Header=BB2_13 Depth=1
	s_wait_loadcnt 0x3
	v_ashrrev_i32_e32 v23, v10, v23
	v_and_b32_e32 v24, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	s_wait_loadcnt 0x1
	v_bfe_i32 v21, v21, 0, 8
	s_wait_loadcnt 0x0
	v_bfe_i32 v20, v20, 0, 8
	v_lshlrev_b32_e32 v25, 4, v23
	v_add_nc_u32_e32 v9, 8, v9
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_add_co_u32 v0, s2, 0x900, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v24, 0x30303030, v25, v24
	v_cmp_le_u32_e32 vcc_lo, s10, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v22, 0x30303030, v23, v22
	s_wait_alu depctr_va_sdst(0)
	v_add_co_ci_u32_e64 v1, null, 0, v1, s2
	v_lshrrev_b32_e32 v23, 16, v24
	v_and_b32_e32 v25, 0x3f00, v24
	v_lshlrev_b16 v24, 8, v24
	v_lshrrev_b32_e32 v26, 16, v22
	v_and_b32_e32 v28, 0x3f00, v22
	v_lshlrev_b16 v27, 8, v23
	v_lshlrev_b16 v22, 8, v22
	v_add_nc_u16 v24, 0xe000, v24
	v_lshlrev_b16 v29, 8, v26
	v_and_b32_e32 v23, 0x3f00, v23
	v_add_nc_u16 v27, 0xe000, v27
	v_add_nc_u16 v22, 0xe000, v22
	v_lshrrev_b16 v24, 8, v24
	v_add_nc_u16 v29, 0xe000, v29
	v_and_b32_e32 v26, 0x3f00, v26
	v_lshrrev_b16 v27, 8, v27
	v_lshrrev_b16 v22, 8, v22
	v_or_b32_e32 v24, v25, v24
	v_lshrrev_b16 v25, 8, v29
	s_or_b32 s3, vcc_lo, s3
	v_or_b32_e32 v23, v23, v27
	v_or_b32_e32 v22, v28, v22
	v_add_nc_u16 v24, 0xe000, v24
	v_or_b32_e32 v25, v26, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v23, 0xe000, v23
	v_add_nc_u16 v22, 0xe000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 0xffff, v24
	v_add_nc_u16 v25, 0xe000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v23, 16, v23
	v_and_b32_e32 v22, 0xffff, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v25, 16, v25
	v_or_b32_e32 v23, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v22, v22, v25
	v_dot4_i32_iu8 v16, v23, v16, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dot4_i32_iu8 v17, v22, v17, 0 neg_lo:[1,1,0]
	v_mul_lo_u32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v17, v17, v20
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v17, v17
	v_fma_f32 v16, v19, v16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v18, v17
	v_fma_mix_f32 v8, v16, v15, v8 op_sel_hi:[0,1,0]
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execz .LBB2_15
.LBB2_13:                               ; =>This Inner Loop Header: Depth=1
	s_wait_alu depctr_sa_sdst(0)
	v_add_nc_u32_e32 v24, s6, v9
	v_add_co_u32 v20, vcc_lo, v0, v12
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v21, null, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_co_i64_i32 v[18:19], null, 0xd2, v24, s[4:5]
	s_clause 0x1
	global_load_b32 v16, v[20:21], off offset:4
	global_load_b32 v17, v[20:21], off offset:76
	v_add_co_u32 v22, vcc_lo, v18, v13
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v23, null, 0, v19, vcc_lo
	v_add_co_u32 v25, vcc_lo, v18, v14
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v26, null, 0, v19, vcc_lo
	v_add_co_u32 v27, vcc_lo, v18, v11
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v28, null, 0, v19, vcc_lo
	s_clause 0x1
	global_load_b32 v29, v[0:1], off
	global_load_b32 v30, v[0:1], off offset:72
	s_clause 0x4
	global_load_b32 v22, v[22:23], off
	global_load_b32 v23, v[25:26], off offset:128
	global_load_u16 v15, v[18:19], off offset:208
	global_load_u8 v21, v[27:28], off offset:192
	global_load_u8 v20, v[27:28], off offset:196
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_wait_loadcnt 0x6
	v_cvt_f32_f16_e32 v19, v29
	s_wait_loadcnt 0x5
	v_cvt_f32_f16_e32 v18, v30
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB2_12
; %bb.14:                               ;   in Loop: Header=BB2_13 Depth=1
	v_mad_co_i64_i32 v[24:25], null, 0xd2, v24, s[16:17]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_u32 v26, vcc_lo, v24, v14
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v27, null, 0, v25, vcc_lo
	v_add_co_u32 v28, vcc_lo, v24, v13
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v29, null, 0, v25, vcc_lo
	s_clause 0x1
	global_load_b32 v30, v[26:27], off offset:128
	global_load_b32 v28, v[28:29], off
	v_add_co_u32 v26, vcc_lo, v24, v11
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v27, null, 0, v25, vcc_lo
	s_clause 0x2
	global_load_i8 v29, v[26:27], off offset:192
	global_load_i8 v26, v[26:27], off offset:196
	global_load_u16 v24, v[24:25], off offset:208
	s_wait_loadcnt 0x4
	v_ashrrev_i32_e32 v25, v10, v30
	s_wait_loadcnt 0x3
	v_and_b32_e32 v27, 0xf0f0f0f, v28
	v_lshrrev_b32_e32 v28, 4, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v30, 4, v25
	v_and_b32_e32 v28, 0xf0f0f0f, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_or_b32 v27, 0x30303030, v30, v27
	v_and_or_b32 v25, 0x30303030, v25, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v30, 16, v27
	v_and_b32_e32 v28, 0x3f00, v27
	v_lshlrev_b16 v27, 8, v27
	v_lshrrev_b32_e32 v32, 16, v25
	v_and_b32_e32 v33, 0x3f00, v25
	v_lshlrev_b16 v31, 8, v30
	v_lshlrev_b16 v25, 8, v25
	v_add_nc_u16 v27, 0xe000, v27
	v_lshlrev_b16 v34, 8, v32
	v_and_b32_e32 v30, 0x3f00, v30
	v_add_nc_u16 v31, 0xe000, v31
	v_add_nc_u16 v25, 0xe000, v25
	v_lshrrev_b16 v27, 8, v27
	v_add_nc_u16 v34, 0xe000, v34
	v_and_b32_e32 v32, 0x3f00, v32
	v_lshrrev_b16 v31, 8, v31
	v_lshrrev_b16 v25, 8, v25
	v_or_b32_e32 v27, v28, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v28, v30, v31
	v_lshrrev_b16 v30, 8, v34
	v_or_b32_e32 v25, v33, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v27, 0xe000, v27
	v_add_nc_u16 v28, 0xe000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v30, v32, v30
	v_add_nc_u16 v25, 0xe000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v27, 0xffff, v27
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v30, 0xe000, v30
	v_and_b32_e32 v25, 0xffff, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v27, v27, v28
	v_lshlrev_b32_e32 v28, 16, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dot4_i32_iu8 v27, v27, v16, 0 neg_lo:[1,1,0]
	v_or_b32_e32 v25, v25, v28
	s_wait_loadcnt 0x2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v27, v27, v29
	v_dot4_i32_iu8 v25, v25, v17, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0x1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v25, v25, v26
	v_cvt_f32_i32_e32 v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, v19, v26, 0
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v18, v25
	s_wait_loadcnt 0x0
	v_fma_mix_f32 v6, v26, v24, v6 op_sel_hi:[0,1,0]
	s_branch .LBB2_12
.LBB2_15:
	s_or_b32 exec_lo, exec_lo, s3
.LBB2_16:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s11
	v_cmp_eq_u32_e64 s2, 0, v7
	v_lshlrev_b32_e32 v0, 2, v2
	s_mov_b32 s3, exec_lo
	v_cmpx_ne_u32_e32 0, v7
	s_cbranch_execz .LBB2_20
; %bb.17:
	v_lshlrev_b32_e32 v1, 7, v7
	s_and_b32 vcc_lo, exec_lo, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccz .LBB2_19
; %bb.18:
	ds_store_b32 v1, v6 offset:896
.LBB2_19:
	ds_store_b32 v1, v8
.LBB2_20:
	s_wait_alu depctr_sa_sdst(0)
	s_or_b32 exec_lo, exec_lo, s3
	s_wait_loadcnt_dscnt 0x0
	s_barrier_signal -1
	s_barrier_wait -1
	global_inv scope:SCOPE_SE
	s_and_saveexec_b32 s3, s2
	s_cbranch_execz .LBB2_67
; %bb.21:
	ds_load_b32 v1, v0
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_23
; %bb.22:
	ds_load_b32 v7, v0 offset:896
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v7
.LBB2_23:
	ds_load_b32 v7, v0 offset:128
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_25
; %bb.24:
	ds_load_b32 v9, v0 offset:1024
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v9
.LBB2_25:
	ds_load_b32 v9, v0 offset:256
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_27
; %bb.26:
	ds_load_b32 v10, v0 offset:1152
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v10
.LBB2_27:
	ds_load_b32 v10, v0 offset:384
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_29
; %bb.28:
	ds_load_b32 v11, v0 offset:1280
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v11
.LBB2_29:
	ds_load_b32 v11, v0 offset:512
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_31
; %bb.30:
	ds_load_b32 v12, v0 offset:1408
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v12
.LBB2_31:
	ds_load_b32 v12, v0 offset:640
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_33
; %bb.32:
	ds_load_b32 v13, v0 offset:1536
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v13
.LBB2_33:
	ds_load_b32 v13, v0 offset:768
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_35
; %bb.34:
	ds_load_b32 v0, v0 offset:1664
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v6, v0
.LBB2_35:
	s_wait_dscnt 0x6
	v_add_f32_e32 v0, v8, v1
	v_mbcnt_lo_u32_b32 v1, -1, 0
	s_wait_dscnt 0x5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v0, v0, v7
	v_xor_b32_e32 v7, 16, v1
	v_xor_b32_e32 v8, 8, v1
	s_wait_dscnt 0x4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v0, v0, v9
	v_cmp_gt_u32_e32 vcc_lo, 32, v7
	s_wait_dscnt 0x3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_add_f32 v0, v0, v10 :: v_dual_cndmask_b32 v7, v1, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v8
	s_wait_dscnt 0x2
	v_add_f32_e32 v0, v0, v11
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v8, v1, v8, vcc_lo
	s_wait_dscnt 0x1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v0, v0, v12
	s_wait_dscnt 0x0
	v_dual_add_f32 v9, v0, v13 :: v_dual_lshlrev_b32 v8, 2, v8
	v_lshlrev_b32_e32 v0, 2, v7
	ds_bpermute_b32 v7, v0, v9
	s_wait_dscnt 0x0
	v_add_f32_e32 v7, v9, v7
	v_xor_b32_e32 v9, 4, v1
	ds_bpermute_b32 v10, v8, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v9
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v9, v1, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v9, 2, v9
	s_wait_dscnt 0x0
	v_add_f32_e32 v7, v7, v10
	v_xor_b32_e32 v10, 2, v1
	ds_bpermute_b32 v11, v9, v7
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	s_wait_dscnt 0x0
	s_wait_alu depctr_va_vcc(0)
	v_dual_add_f32 v7, v7, v11 :: v_dual_cndmask_b32 v10, v1, v10
	v_xor_b32_e32 v11, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v10, 2, v10
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	ds_bpermute_b32 v12, v10, v7
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v1, v1, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v11, 2, v1
	s_wait_dscnt 0x0
	v_add_f32_e32 v1, v7, v12
	ds_bpermute_b32 v7, v11, v1
	s_cbranch_vccnz .LBB2_37
; %bb.36:
	ds_bpermute_b32 v0, v0, v6
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v6, v0
	ds_bpermute_b32 v6, v8, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v9, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v10, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v6
	ds_bpermute_b32 v6, v11, v0
	s_wait_dscnt 0x0
	v_add_f32_e32 v6, v0, v6
.LBB2_37:
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB2_67
; %bb.38:
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v1, v7
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v0, v4, v0
	s_cbranch_vccnz .LBB2_66
; %bb.39:
	v_add_f32_e32 v1, v3, v6
	s_wait_kmcnt 0x0
	s_cmp_lt_i32 s8, 3
	s_mov_b32 s2, 0
	s_cbranch_scc1 .LBB2_44
; %bb.40:
	s_cmp_gt_i32 s8, 5
	s_cbranch_scc0 .LBB2_45
; %bb.41:
	s_cmp_eq_u32 s8, 6
	s_cbranch_scc0 .LBB2_46
; %bb.42:
	v_max_num_f32_e32 v2, v1, v1
	v_max_num_f32_e64 v3, s9, s9
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_num_f32_e32 v2, v2, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v5, 0xbfb8aa3b, v2, -v4
	v_rndne_f32_e32 v6, v4
	v_dual_fmamk_f32 v5, v2, 0xb2a5705f, v5 :: v_dual_sub_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v5, null, v4, v4, v2
	v_rcp_f32_e32 v6, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v9, v6
	v_max_num_f32_e64 v9, -s9, -s9
	v_fma_f32 v5, -v5, v8, v7
	v_max_num_f32_e32 v7, v0, v0
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v6, v8
	v_minmax_num_f32 v3, v7, v3, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB2_47
.LBB2_43:
                                        ; implicit-def: $sgpr28
	s_clause 0x1
	s_load_b32 s29, s[0:1], 0x60
	s_load_b32 s30, s[0:1], 0x88
	s_branch .LBB2_2
.LBB2_44:
	s_mov_b32 s3, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_52
	s_branch .LBB2_57
.LBB2_45:
	s_mov_b32 s3, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_48
	s_branch .LBB2_50
.LBB2_46:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
.LBB2_47:
	s_branch .LBB2_50
.LBB2_48:
	s_cmp_eq_u32 s8, 3
	s_cbranch_scc0 .LBB2_51
; %bb.49:
	v_max_num_f32_e32 v2, v1, v1
	s_mov_b32 s3, 0xc0e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_num_f32_e32 v2, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_fma_f32 v5, 0x3fb8aa3b, v3, -v4
	v_rndne_f32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmamk_f32 v5, v3, 0x32a5705f, v5 :: v_dual_sub_f32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_cvt_i32_f32_e32 v5, v6
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v3
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v5, v4
	v_fma_f32 v6, -v4, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v6, v7
	s_wait_alu depctr_va_vcc(0)
	v_div_fmas_f32 v4, v4, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v4, v3, v2
	v_max_num_f32_e32 v7, v0, v0
	s_wait_alu depctr_sa_sdst(0)
	v_minmax_num_f32 v5, v7, 0x40e00000, s3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB2_50:
	s_branch .LBB2_57
.LBB2_51:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_57
.LBB2_52:
	s_cmp_gt_i32 s8, 1
	s_cbranch_scc0 .LBB2_54
; %bb.53:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	v_cmp_nlt_f32_e32 vcc_lo, 0x42ce8ed0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v3, v2
	v_fma_f32 v4, 0xbfb8aa3b, v1, -v2
	v_sub_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmamk_f32 v4, v1, 0xb2a5705f, v4
	v_cvt_i32_f32_e32 v3, v3
	v_add_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, null, v2, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v6, v5
	s_wait_alu depctr_va_vcc(0)
	v_div_fmas_f32 v3, v3, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB2_55
.LBB2_54:
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr2
.LBB2_55:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s2, 0
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB2_57
; %bb.56:
	s_cmp_lg_u32 s8, 1
	s_mov_b32 s2, -1
	s_cselect_b32 s3, -1, 0
.LBB2_57:
	s_wait_alu depctr_sa_sdst(0)
	s_and_b32 vcc_lo, exec_lo, s3
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccz .LBB2_59
; %bb.58:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s2, 0
.LBB2_59:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_wait_alu depctr_sa_sdst(0)
	s_cbranch_vccnz .LBB2_65
; %bb.60:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ngt_f32_e64 s2, 0x3f200000, |v2|
	s_and_saveexec_b32 s3, s2
	s_wait_alu depctr_sa_sdst(0)
	s_xor_b32 s2, exec_lo, s3
	s_cbranch_execz .LBB2_62
; %bb.61:
	v_add_f32_e64 v3, |v2|, |v2|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2ce8ed0, v3
	v_rndne_f32_e32 v5, v4
	v_fma_f32 v6, 0x3fb8aa3b, v3, -v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_sub_f32_e32 v4, v4, v5
	v_fmamk_f32 v6, v3, 0x32a5705f, v6
	v_cvt_i32_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v4, v4, v6
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v5
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v3
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB2_62:
	s_wait_alu depctr_sa_sdst(0)
	s_and_not1_saveexec_b32 s2, s2
	s_cbranch_execz .LBB2_64
; %bb.63:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s3, 0xbbbac73d
	s_wait_alu depctr_sa_sdst(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, s3, v3, 0x3ca908c9
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
.LBB2_64:
	s_wait_alu depctr_sa_sdst(0)
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_dual_mul_f32 v1, 0.5, v1 :: v_dual_add_f32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_65:
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v0, v2
.LBB2_66:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s2, s14, s27
	s_wait_kmcnt 0x0
	s_mul_i32 s3, s26, s21
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, ttmp9
	v_mov_b32_e32 v1, 0
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_wait_alu depctr_sa_sdst(0)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_wait_alu depctr_sa_sdst(0)
	s_add_nc_u64 s[0:1], s[0:1], s[2:3]
	global_store_b32 v1, v0, s[0:1]
.LBB2_67:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 1792
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 35
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_inst_pref_size 33
		.amdhsa_round_robin_scheduling 0
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
; codeLenInByte = 4136
; TotalNumSgprs: 42
; NumVgprs: 35
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1792 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 35
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
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
	s_load_b64 s[2:3], s[0:1], 0x10
	s_load_b128 s[8:11], s[0:1], 0x50
	s_and_b32 s15, ttmp7, 0xffff
	s_wait_kmcnt 0x0
	s_cmp_lg_u64 s[2:3], 0
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u64 s[2:3], 0
	s_cbranch_scc1 .LBB3_15
; %bb.1:
	s_lshl_b32 s4, s15, 2
	s_load_b32 s19, s[2:3], s4 offset:0x0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s2, s[0:1], 0x60
	s_cbranch_execnz .LBB3_3
.LBB3_2:
	s_load_b64 s[16:17], s[0:1], 0x6c
	s_wait_kmcnt 0x0
	s_mul_hi_u32 s3, s16, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s3, s15, s3
	s_lshr_b32 s19, s3, s17
.LBB3_3:
	s_load_b32 s20, s[0:1], 0x88
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_mov_b32 s3, s15
	s_cbranch_vccnz .LBB3_5
; %bb.4:
	s_mul_hi_u32 s3, s9, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_co_i32 s3, s15, s3
	s_lshr_b32 s3, s3, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s11
	s_sub_co_i32 s3, s15, s3
.LBB3_5:
	s_load_b96 s[12:14], s[0:1], 0x90
	v_bfe_u32 v3, v0, 10, 10
	v_bfe_u32 v1, v0, 5, 5
	v_and_b32_e32 v2, 0x3ff, v0
	s_lshr_b32 s17, s8, 8
	v_mov_b32_e32 v5, 0
	s_lshr_b32 s16, ttmp7, 16
	v_add_nc_u32_e32 v4, v1, v3
	s_mov_b32 s18, exec_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_u32_e64 s17, v4
	s_cbranch_execz .LBB3_9
; %bb.6:
	s_wait_kmcnt 0x0
	s_mul_i32 s21, s2, ttmp9
	s_mul_i32 s2, s3, s5
	s_mov_b32 s3, 0
	v_and_b32_e32 v5, 15, v2
	s_mul_u64 s[22:23], s[2:3], 36
	s_load_b128 s[8:11], s[0:1], 0x0
	v_mad_co_u64_u32 v[0:1], null, 0x120, v4, s[22:23]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b16 v7, 3, v5
	s_mul_hi_u32 s5, s7, s16
	v_bfe_u32 v6, v2, 4, 1
	s_add_co_i32 s2, s16, s5
	s_mul_i32 s5, s13, s16
	v_and_b32_e32 v7, 0xffff, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_co_u64_u32 v[0:1], null, s5, 36, v[0:1]
	v_lshlrev_b32_e32 v8, 3, v6
	v_and_b32_e32 v9, 7, v2
	v_lshrrev_b16 v5, 2, v5
	v_lshl_or_b32 v6, v6, 2, v7
	v_and_b32_e32 v10, 31, v2
	s_lshr_b32 s2, s2, s20
	s_mul_i32 s4, s19, s4
	v_and_b32_e32 v12, 0xffff, v5
	v_mad_co_u64_u32 v[0:1], null, v6, 36, v[0:1]
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v11, v8, v9
	v_lshlrev_b32_e32 v10, 1, v10
	s_mul_i32 s2, s2, s12
	v_lshlrev_b32_e32 v6, 1, v7
	v_or_b32_e32 v7, v8, v12
	v_lshlrev_b32_e32 v11, 1, v11
	s_wait_kmcnt 0x0
	v_add_co_u32 v0, vcc_lo, s10, v0
	v_lshlrev_b32_e32 v8, 2, v9
	v_add_co_ci_u32_e64 v1, null, s11, v1, vcc_lo
	v_lshlrev_b32_e32 v9, 1, v10
	v_lshlrev_b32_e32 v10, 1, v11
	s_add_co_i32 s2, s2, s21
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s4, s4, s2
.LBB3_7:                                ; =>This Inner Loop Header: Depth=1
	s_wait_alu depctr_sa_sdst(0)
	v_add_nc_u32_e32 v11, s4, v4
	v_add_nc_u32_e32 v4, 8, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_co_i64_i32 v[11:12], null, 0xd2, v11, s[8:9]
	v_cmp_le_u32_e64 s2, s17, v4
	s_or_b32 s3, s2, s3
	v_add_co_u32 v13, vcc_lo, v11, v10
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v14, null, 0, v12, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v9
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_b32 v17, v[13:14], off offset:128
	global_load_b32 v18, v[15:16], off
	v_add_co_u32 v13, vcc_lo, v0, v8
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v14, null, 0, v1, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v7
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_b32 v19, v[13:14], off offset:4
	global_load_b32 v13, v[13:14], off offset:76
	s_clause 0x1
	global_load_i8 v14, v[15:16], off offset:192
	global_load_i8 v15, v[15:16], off offset:196
	s_clause 0x1
	global_load_b32 v16, v[0:1], off
	global_load_b32 v20, v[0:1], off offset:72
	global_load_u16 v11, v[11:12], off offset:208
	v_add_co_u32 v0, vcc_lo, 0x900, v0
	s_wait_alu depctr_va_vcc(0)
	v_add_co_ci_u32_e64 v1, null, 0, v1, vcc_lo
	s_wait_loadcnt 0x8
	v_ashrrev_i32_e32 v12, v6, v17
	s_wait_loadcnt 0x7
	v_lshrrev_b32_e32 v17, 4, v18
	v_and_b32_e32 v18, 0xf0f0f0f, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v21, 4, v12
	v_and_b32_e32 v17, 0xf0f0f0f, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_or_b32 v18, 0x30303030, v21, v18
	v_and_or_b32 v12, 0x30303030, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v17, 16, v18
	v_and_b32_e32 v21, 0x3f00, v18
	v_lshlrev_b16 v18, 8, v18
	v_lshrrev_b32_e32 v22, 16, v12
	v_lshlrev_b16 v23, 8, v12
	v_lshlrev_b16 v24, 8, v17
	v_and_b32_e32 v17, 0x3f00, v17
	v_add_nc_u16 v18, 0xe000, v18
	v_lshlrev_b16 v25, 8, v22
	v_add_nc_u16 v23, 0xe000, v23
	v_add_nc_u16 v24, 0xe000, v24
	v_and_b32_e32 v12, 0x3f00, v12
	v_lshrrev_b16 v18, 8, v18
	v_add_nc_u16 v25, 0xe000, v25
	v_and_b32_e32 v22, 0x3f00, v22
	v_lshrrev_b16 v24, 8, v24
	v_lshrrev_b16 v23, 8, v23
	v_or_b32_e32 v18, v21, v18
	v_lshrrev_b16 v21, 8, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v17, v17, v24
	v_or_b32_e32 v12, v12, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v18, 0xe000, v18
	v_or_b32_e32 v21, v22, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v17, 0xe000, v17
	v_add_nc_u16 v12, 0xe000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 0xffff, v18
	v_add_nc_u16 v21, 0xe000, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v17, 16, v17
	v_and_b32_e32 v12, 0xffff, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v21, 16, v21
	v_or_b32_e32 v17, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v12, v12, v21
	s_wait_loadcnt 0x6
	v_dot4_i32_iu8 v17, v17, v19, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0x5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dot4_i32_iu8 v12, v12, v13, 0 neg_lo:[1,1,0]
	s_wait_loadcnt 0x4
	v_mul_lo_u32 v13, v17, v14
	s_wait_loadcnt 0x3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v12, v12, v15
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v12, v12
	s_wait_loadcnt 0x2
	v_fma_mix_f32 v13, v16, v13, 0 op_sel_hi:[1,0,0]
	s_wait_loadcnt 0x1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v12, v20, v12, v13 op_sel_hi:[1,0,0]
	s_wait_loadcnt 0x0
	v_fma_mix_f32 v5, v12, v11, v5 op_sel_hi:[0,1,0]
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB3_7
; %bb.8:
	s_or_b32 exec_lo, exec_lo, s3
.LBB3_9:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s18
	v_lshlrev_b32_e32 v0, 2, v2
	s_mov_b32 s3, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cmpx_ne_u32_e32 0, v3
; %bb.10:
	v_lshlrev_b32_e32 v1, 7, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	ds_store_b32 v1, v5
; %bb.11:
	s_or_b32 exec_lo, exec_lo, s3
	s_wait_dscnt 0x0
	s_barrier_signal -1
	s_barrier_wait -1
	global_inv scope:SCOPE_SE
	s_wait_kmcnt 0x0
	s_and_saveexec_b32 s2, vcc_lo
	s_cbranch_execz .LBB3_14
; %bb.12:
	ds_load_2addr_b32 v[3:4], v0 offset1:32
	ds_load_2addr_b32 v[6:7], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[8:9], v0 offset0:128 offset1:160
	ds_load_b32 v0, v0 offset:768
	s_mov_b32 s3, 0
	s_wait_dscnt 0x3
	v_add_f32_e32 v1, v5, v3
	v_mbcnt_lo_u32_b32 v3, -1, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v1, v1, v4
	v_xor_b32_e32 v4, 16, v3
	s_wait_dscnt 0x2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v1, v1, v6
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v1, v1, v7 :: v_dual_cndmask_b32 v4, v3, v4
	s_wait_dscnt 0x1
	v_add_f32_e32 v1, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v1, v1, v9
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v1, v0
	v_lshlrev_b32_e32 v1, 2, v4
	v_xor_b32_e32 v4, 8, v3
	ds_bpermute_b32 v1, v1, v0
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 4, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 2, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v4, v3, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v4, 2, v4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	v_xor_b32_e32 v4, 1, v3
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	s_wait_alu depctr_va_vcc(0)
	v_cndmask_b32_e32 v3, v3, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_wait_dscnt 0x0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v0, v0, v1 :: v_dual_lshlrev_b32 v3, 2, v3
	ds_bpermute_b32 v1, v3, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB3_14
; %bb.13:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s2, s6, s15
	s_mul_i32 s4, s14, s16
	s_add_co_i32 s2, s2, ttmp9
	v_mov_b32_e32 v2, 0
	s_wait_alu depctr_sa_sdst(0)
	s_add_co_i32 s2, s2, s4
	s_wait_dscnt 0x0
	v_add_f32_e32 v0, v0, v1
	s_lshl_b64 s[2:3], s[2:3], 2
	s_wait_kmcnt 0x0
	s_add_nc_u64 s[0:1], s[0:1], s[2:3]
	global_store_b32 v2, v0, s[0:1]
.LBB3_14:
	s_endpgm
.LBB3_15:
                                        ; implicit-def: $sgpr19
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s2, s[0:1], 0x60
	s_branch .LBB3_2
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 896
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 26
		.amdhsa_next_free_sgpr 24
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_inst_pref_size 14
		.amdhsa_round_robin_scheduling 0
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
; codeLenInByte = 1672
; TotalNumSgprs: 26
; NumVgprs: 26
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 896 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 26
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
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
	.type	__hip_cuid_3e8b58115484dd5e,@object ; @__hip_cuid_3e8b58115484dd5e
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_3e8b58115484dd5e
__hip_cuid_3e8b58115484dd5e:
	.byte	0                               ; 0x0
	.size	__hip_cuid_3e8b58115484dd5e, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_3e8b58115484dd5e
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
    .group_segment_fixed_size: 1792
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     37
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
    .group_segment_fixed_size: 896
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     28
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
    .group_segment_fixed_size: 1792
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
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
    .group_segment_fixed_size: 896
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
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
amdhsa.target:   amdgcn-amd-amdhsa--gfx1201
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
