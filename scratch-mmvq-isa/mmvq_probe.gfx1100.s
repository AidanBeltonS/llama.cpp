	.amdgcn_target "amdgcn-amd-amdhsa--gfx1100"
	.amdhsa_code_object_version 6
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_clause 0x3
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b128 s[24:27], s[0:1], 0x20
	s_load_b128 s[28:31], s[0:1], 0x50
	s_load_b128 s[4:7], s[0:1], 0x78
	s_mov_b32 s2, s15
	s_mov_b32 s12, s13
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[20:21], 0
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u64 s[20:21], 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:
	s_mov_b32 s15, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[10:11], s[14:15], 2
	s_add_u32 s10, s20, s10
	s_addc_u32 s11, s21, s11
	s_load_b32 s3, s[10:11], 0x0
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b32 s33, s[0:1], 0x88
	s_cbranch_execnz .LBB0_3
.LBB0_2:
	s_load_b64 s[10:11], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s14, s3
	s_lshr_b32 s3, s3, s11
.LBB0_3:
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_6
; %bb.4:
	s_mul_hi_u32 s8, s29, s14
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s13, s3
	s_add_i32 s8, s14, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, s30
	s_mul_i32 s8, s8, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s29, s14, s8
	s_branch .LBB0_7
.LBB0_5:
                                        ; implicit-def: $sgpr3
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b32 s33, s[0:1], 0x88
	s_branch .LBB0_2
.LBB0_6:
	s_mov_b32 s13, s14
	s_mov_b32 s29, s14
.LBB0_7:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x90
	v_bfe_u32 v7, v0, 10, 10
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v4, 0x3ff, v0
	v_mov_b32_e32 v6, 0
	s_cmp_lg_u64 s[24:25], 0
	s_mov_b32 s15, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, v4, v7
	s_waitcnt lgkmcnt(0)
	s_cselect_b32 s11, -1, 0
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_12
; %bb.8:
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cmp_eq_u64 s[22:23], 0
	s_mul_i32 s30, s13, s6
	s_cbranch_scc1 .LBB0_10
; %bb.9:
	s_mul_i32 s36, s10, s2
	s_mov_b32 s37, 0
	v_lshlrev_b32_e32 v0, 2, v4
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s31, s37
	s_add_u32 s13, s22, s38
	s_addc_u32 s35, s23, s39
	s_lshl_b64 s[22:23], s[30:31], 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_u32 s31, s13, s22
	s_addc_u32 s35, s35, s23
	s_ashr_i32 s13, s12, 31
	s_lshl_b64 s[22:23], s[12:13], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s22, s31, s22
	s_addc_u32 s23, s35, s23
	global_load_b32 v6, v0, s[22:23]
.LBB0_10:
	s_cmp_lg_u64 s[26:27], 0
	s_cselect_b32 s13, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s11
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mul_i32 s22, s10, s2
	s_mov_b32 s23, 0
	v_lshlrev_b32_e32 v0, 2, v4
	s_lshl_b64 s[36:37], s[22:23], 2
	s_mov_b32 s31, s23
	s_add_u32 s13, s26, s36
	s_addc_u32 s26, s27, s37
	s_lshl_b64 s[22:23], s[30:31], 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_u32 s27, s13, s22
	s_addc_u32 s26, s26, s23
	s_ashr_i32 s13, s12, 31
	s_lshl_b64 s[22:23], s[12:13], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s22, s27, s22
	s_addc_u32 s23, s26, s23
	global_load_b32 v5, v0, s[22:23]
.LBB0_12:
	s_or_b32 exec_lo, exec_lo, s15
	v_lshl_add_u32 v0, v7, 5, v4
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_cndmask_b32_e64 v8, 0, 1, s11
	s_lshr_b32 s13, s28, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshrrev_b32_e32 v11, 4, v0
	s_mov_b32 s15, exec_lo
	v_cmpx_gt_u32_e64 s13, v11
	s_cbranch_execz .LBB0_18
; %bb.13:
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v1, 1, v4
	v_bfe_u32 v3, v4, 2, 2
	s_mul_hi_u32 s7, s7, s2
	v_lshrrev_b32_e32 v14, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_bfe_u32 v2, v1, 3, 2
	s_add_i32 s7, s2, s7
	v_and_b32_e32 v9, 30, v1
	v_mul_hi_u32_u24_e32 v1, 0x48, v3
	v_mul_u32_u24_e32 v0, 0x48, v3
	v_lshlrev_b32_e32 v12, 5, v2
	v_and_b32_e32 v2, 3, v4
	s_lshr_b32 s7, s7, s33
	s_mul_i32 s34, s34, s12
	s_mul_i32 s3, s3, s4
	s_mul_i32 s4, s7, s8
	s_mul_i32 s7, s9, s2
	s_add_i32 s4, s4, s34
	v_lshlrev_b32_e32 v13, 2, v2
	v_mad_u64_u32 v[2:3], null, 0x120, v14, v[0:1]
	s_mul_i32 s8, s29, s5
	s_add_i32 s5, s3, s4
	s_mul_i32 s4, s7, 36
	s_mul_hi_u32 s7, s7, 36
	s_mul_hi_u32 s3, s8, 36
	s_mul_i32 s8, s8, 36
	s_add_u32 s4, s18, s4
	s_addc_u32 s7, s19, s7
	s_add_u32 s4, s4, s8
	s_addc_u32 s3, s7, s3
	v_add_co_u32 v0, vcc_lo, s4, v2
	v_bfe_u32 v15, v9, 3, 1
	v_add_co_ci_u32_e64 v1, null, s3, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_u32 v2, vcc_lo, v0, 36
	v_cmp_lt_u32_e64 s3, 15, v9
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v14, 1, v15
	s_mov_b32 s7, 0
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v1.h, 2, v0.h
	v_lshrrev_b16 v26.l, 4, v1.l
	v_lshrrev_b16 v26.h, 2, v0.l
	v_and_b16 v1.l, 0xf0f, v1.l
	v_and_b16 v0.h, 0x3f3f, v0.h
	v_and_b16 v1.h, 0x3030, v1.h
	v_and_b16 v26.l, 0xf0f, v26.l
	v_and_b16 v26.h, 0x3030, v26.h
	v_and_b16 v0.l, 0x3f3f, v0.l
	v_lshrrev_b32_e32 v27, 4, v25
	v_and_b32_e32 v25, 0xf0f0f0f, v25
	v_or_b16 v1.h, v26.l, v1.h
	v_or_b16 v1.l, v1.l, v26.h
	v_lshrrev_b32_e32 v26, 4, v23
	v_and_b32_e32 v27, 0xf0f0f0f, v27
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_cndmask_b16 v0.h, v0.h, v1.h, s3
	v_cndmask_b16 v0.l, v0.l, v1.l, s3
	v_mov_b16_e32 v1.h, 0
	v_and_b32_e32 v26, 0xf0f0f0f, v26
	v_dot4_i32_iu8 v21, v27, v21, 0 neg_lo:[1,1,0]
	v_and_b16 v1.l, v0.h, 63
	v_pk_lshrrev_b16 v27, 8, v0 op_sel:[1,0] op_sel_hi:[0,0]
	v_dot4_i32_iu8 v17, v25, v17, 0 neg_lo:[1,1,0]
	v_add_nc_u32_e32 v11, 2, v11
	v_dot4_i32_iu8 v21, v26, v22, v21 neg_lo:[1,1,0]
	v_mul_lo_u32 v22, v24, v1
	v_mov_b16_e32 v1.l, v27.h
	v_mov_b16_e32 v24.h, v1.h
	v_dot4_i32_iu8 v17, v23, v18, v17 neg_lo:[1,1,0]
	v_and_b16 v24.l, v0.l, 63
	v_cmp_le_u32_e32 vcc_lo, s13, v11
	v_mul_lo_u32 v18, v21, v1
	v_lshrrev_b16 v1.l, 8, v0.h
	v_add_co_u32 v2, s4, 0x240, v2
	v_mul_lo_u32 v0, v17, v24
	v_cvt_f32_i32_e32 v17, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v1, v20, v1
	v_add_co_ci_u32_e64 v3, null, 0, v3, s4
	v_cvt_f32_i32_e32 v18, v18
	v_fma_f32 v17, v19, v17, 0
	s_or_b32 s7, vcc_lo, s7
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v19, v0, 0
	v_fmac_f32_e32 v17, v16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v16, v18
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v1, v15, v17, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v0, v0, v15, -v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v0
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execz .LBB0_17
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v26, s5, v11
	v_add_co_u32 v0, vcc_lo, v2, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, 0, v3, vcc_lo
	v_mad_i64_i32 v[15:16], null, 0x90, v26, s[16:17]
	s_clause 0x1
	global_load_b32 v17, v[0:1], off offset:-32
	global_load_b32 v21, v[0:1], off offset:4
	v_add_co_u32 v18, vcc_lo, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v20, null, 0, v16, vcc_lo
	v_add_co_u32 v19, vcc_lo, v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, 0, v20, vcc_lo
	v_add_co_u32 v27, vcc_lo, v15, v14
	v_add_co_ci_u32_e64 v28, null, 0, v16, vcc_lo
	s_clause 0x3
	global_load_b32 v18, v[0:1], off offset:-16
	global_load_b32 v29, v[2:3], off
	global_load_b32 v22, v[0:1], off offset:20
	global_load_b32 v30, v[2:3], off offset:-36
	s_clause 0x5
	global_load_b32 v25, v[19:20], off offset:16
	global_load_b32 v23, v[19:20], off offset:32
	global_load_d16_b16 v0, v[27:28], off offset:4
	global_load_d16_hi_b16 v0, v[27:28], off offset:8
	global_load_d16_b16 v1, v[27:28], off offset:12
	global_load_b32 v15, v[15:16], off
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_waitcnt vmcnt(11)
	v_dot4_i32_iu8 v16, 0x1010101, v17, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(10)
	v_dot4_i32_iu8 v19, 0x1010101, v21, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_2)
	v_dot4_i32_iu8 v24, 0x1010101, v18, v16 neg_lo:[1,1,0]
	s_waitcnt vmcnt(8)
	v_cvt_f32_f16_e32 v16, v29.l
	s_waitcnt vmcnt(7)
	v_dot4_i32_iu8 v20, 0x1010101, v22, v19 neg_lo:[1,1,0]
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v19, v30.l
	s_cbranch_vccnz .LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	v_mad_i64_i32 v[27:28], null, 0x90, v26, s[24:25]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, v27, v12
	v_add_co_ci_u32_e64 v32, null, 0, v28, vcc_lo
	v_add_co_u32 v29, vcc_lo, v27, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v30, null, 0, v28, vcc_lo
	v_add_co_u32 v31, vcc_lo, v26, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v32, null, 0, v32, vcc_lo
	s_clause 0x5
	global_load_d16_hi_b16 v1, v[29:30], off offset:4
	global_load_d16_b16 v26, v[29:30], off offset:8
	global_load_b32 v33, v[31:32], off offset:32
	global_load_d16_hi_b16 v26, v[29:30], off offset:12
	global_load_b32 v29, v[31:32], off offset:16
	global_load_b32 v30, v[27:28], off
	v_mov_b16_e32 v28.h, 0
	s_waitcnt vmcnt(5)
	v_lshrrev_b16 v27.l, 2, v1.h
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v27.h, 2, v26.l
	v_and_b16 v1.h, 0x3f3f, v1.h
	v_and_b16 v28.l, 0xf0f, v26.h
	v_lshrrev_b16 v26.h, 4, v26.h
	v_and_b16 v27.l, 0x3030, v27.l
	v_and_b16 v27.h, 0x3030, v27.h
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v31, 0xf0f0f0f, v29
	v_and_b16 v26.l, 0x3f3f, v26.l
	v_and_b16 v26.h, 0xf0f, v26.h
	v_or_b16 v27.l, v28.l, v27.l
	v_and_b32_e32 v32, 0xf0f0f0f, v33
	v_lshrrev_b32_e32 v29, 4, v29
	v_dot4_i32_iu8 v31, v31, v17, 0 neg_lo:[1,1,0]
	v_or_b16 v26.h, v26.h, v27.h
	v_cndmask_b16 v1.h, v1.h, v27.l, s3
	v_lshrrev_b32_e32 v27, 4, v33
	v_and_b32_e32 v29, 0xf0f0f0f, v29
	v_dot4_i32_iu8 v31, v32, v18, v31 neg_lo:[1,1,0]
	v_cndmask_b16 v26.l, v26.l, v26.h, s3
	v_and_b16 v28.l, v1.h, 63
	v_and_b32_e32 v27, 0xf0f0f0f, v27
	v_dot4_i32_iu8 v29, v29, v21, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v31, v31, v28
	v_and_b16 v28.l, v26.l, 63
	v_dot4_i32_iu8 v27, v27, v22, v29 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v29, v24, v28
	v_lshrrev_b16 v28.l, 8, v1.h
	v_mul_lo_u32 v27, v27, v28
	v_lshrrev_b16 v28.l, 8, v26.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v26, v20, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v31
	v_cvt_f32_i32_e32 v27, v27
	v_fma_f32 v28, v19, v28, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, v19, v29, 0
	v_cvt_f32_i32_e32 v26, v26
	v_fmac_f32_e32 v29, v16, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v16, v26
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v26, v30, v28, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v26, v29, v30, -v26 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v26
	s_branch .LBB0_14
.LBB0_17:
	s_or_b32 exec_lo, exec_lo, s7
.LBB0_18:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s15
	v_cmp_eq_u32_e64 s3, 0, v7
	s_mov_b32 s4, exec_lo
	v_cmpx_ne_u32_e32 0, v7
	s_cbranch_execz .LBB0_22
; %bb.19:
	v_lshlrev_b32_e32 v0, 2, v4
	v_lshlrev_b32_e32 v1, 7, v7
	s_and_b32 vcc_lo, exec_lo, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, 0xffffff80
	s_cbranch_vccz .LBB0_21
; %bb.20:
	ds_store_b32 v0, v9 offset:128
.LBB0_21:
	ds_store_b32 v0, v10
.LBB0_22:
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s4, s3
	s_cbranch_execz .LBB0_54
; %bb.23:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v0, 16, v1
	v_xor_b32_e32 v3, 8, v1
	v_xor_b32_e32 v7, 4, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v0
	v_cndmask_b32_e32 v0, v1, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_u32_e32 vcc_lo, 32, v3
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v7
	v_lshlrev_b32_e32 v3, 2, v3
	v_dual_cndmask_b32 v7, v1, v7 :: v_dual_lshlrev_b32 v0, 2, v0
	ds_bpermute_b32 v2, v0, v10
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v10, v2
	ds_bpermute_b32 v10, v3, v2
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v2, v2, v10 :: v_dual_lshlrev_b32 v7, 2, v7
	v_xor_b32_e32 v10, 2, v1
	ds_bpermute_b32 v11, v7, v2
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	v_cndmask_b32_e32 v10, v1, v10, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v2, v11
	v_xor_b32_e32 v11, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	v_cndmask_b32_e32 v1, v1, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v8
	v_lshlrev_b32_e32 v11, 2, v1
	v_lshlrev_b32_e32 v10, 2, v10
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	ds_bpermute_b32 v12, v10, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v2, v12
	ds_bpermute_b32 v2, v11, v1
	s_cbranch_vccnz .LBB0_25
; %bb.24:
	ds_bpermute_b32 v0, v0, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v9, v0
	ds_bpermute_b32 v3, v3, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v7, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v10, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v11, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v9, v0, v3
.LBB0_25:
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB0_54
; %bb.26:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v1, v2
	v_cmp_ne_u32_e32 vcc_lo, 1, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v0, v6, v0
	s_cbranch_vccnz .LBB0_53
; %bb.27:
	v_add_f32_e32 v1, v5, v9
	s_cmp_lt_i32 s20, 3
	s_mov_b32 s3, 0
	s_cbranch_scc1 .LBB0_31
; %bb.28:
	s_cmp_gt_i32 s20, 5
	s_cbranch_scc0 .LBB0_32
; %bb.29:
	s_cmp_eq_u32 s20, 6
	s_cbranch_scc0 .LBB0_33
; %bb.30:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s21, s21
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_f32_e32 v2, v2, v3
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
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, null, v4, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v6, v5
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v9, v6
	v_max_f32_e64 v9, -s21, -s21
	v_fma_f32 v5, -v5, v8, v7
	v_max_f32_e32 v7, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v6, v8
	v_minmax_f32 v3, v7, v3, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB0_34
.LBB0_31:
	s_mov_b32 s4, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_39
	s_branch .LBB0_44
.LBB0_32:
	s_mov_b32 s4, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_35
	s_branch .LBB0_37
.LBB0_33:
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
.LBB0_34:
	s_branch .LBB0_37
.LBB0_35:
	s_cmp_eq_u32 s20, 3
	s_cbranch_scc0 .LBB0_38
; %bb.36:
	v_max_f32_e32 v2, v1, v1
	s_mov_b32 s4, 0xc0e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_f32_e32 v2, 0x40e00000, v2
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v4, v4
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	v_rcp_f32_e32 v5, v4
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v6, -v4, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v6, v7
	v_div_fmas_f32 v4, v4, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v4, v3, v2
	v_max_f32_e32 v7, v0, v0
	v_minmax_f32 v5, v7, 0x40e00000, s4
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB0_37:
	s_branch .LBB0_44
.LBB0_38:
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_44
.LBB0_39:
	s_cmp_gt_i32 s20, 1
	s_cbranch_scc0 .LBB0_41
; %bb.40:
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v2, v2
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v4, v3
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB0_42
.LBB0_41:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
.LBB0_42:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s3, 0
	s_cbranch_vccnz .LBB0_44
; %bb.43:
	s_cmp_lg_u32 s20, 1
	s_mov_b32 s3, -1
	s_cselect_b32 s4, -1, 0
.LBB0_44:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccz .LBB0_46
; %bb.45:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s3, 0
.LBB0_46:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_52
; %bb.47:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cmp_ngt_f32_e64 s3, 0x3f200000, |v2|
	s_and_saveexec_b32 s4, s3
	s_xor_b32 s3, exec_lo, s4
	s_cbranch_execz .LBB0_49
; %bb.48:
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
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB0_49:
	s_and_not1_saveexec_b32 s3, s3
	s_cbranch_execz .LBB0_51
; %bb.50:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s4, 0xbbbac73d
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_fmaak_f32 v4, s4, v3, 0x3ca908c9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v3, v3, v4, |v2|
.LBB0_51:
	s_or_b32 exec_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_dual_mul_f32 v1, 0.5, v1 :: v_dual_add_f32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_52:
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v0, v2
.LBB0_53:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s3, s6, s14
	s_mul_i32 s2, s10, s2
	s_add_i32 s3, s3, s12
	v_mov_b32_e32 v1, 0
	s_add_i32 s2, s3, s2
	s_mov_b32 s3, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_b32 v1, v0, s[0:1]
.LBB0_54:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 256
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 13
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
		.amdhsa_next_free_vgpr 34
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
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
		.amdhsa_inst_pref_size 29
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 34
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
; codeLenInByte = 3636
; TotalNumSgprs: 42
; NumVgprs: 34
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 34
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 13
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
	s_load_b64 s[4:5], s[0:1], 0x10
	s_load_b128 s[16:19], s[0:1], 0x50
	s_mov_b32 s2, s15
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[4:5], 0
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u64 s[4:5], 0
	s_cbranch_scc1 .LBB1_5
; %bb.1:
	s_mov_b32 s15, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[6:7], s[14:15], 2
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	s_load_b32 s3, s[4:5], 0x0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s20, s[0:1], 0x60
	s_cbranch_execnz .LBB1_3
.LBB1_2:
	s_load_b64 s[10:11], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s14, s3
	s_lshr_b32 s3, s3, s11
.LBB1_3:
	s_load_b32 s15, s[0:1], 0x88
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB1_6
; %bb.4:
	s_mul_hi_u32 s8, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s14, s8
	s_lshr_b32 s8, s8, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s19
	s_sub_i32 s21, s14, s8
	s_branch .LBB1_7
.LBB1_5:
                                        ; implicit-def: $sgpr3
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s20, s[0:1], 0x60
	s_branch .LBB1_2
.LBB1_6:
	s_mov_b32 s21, s14
.LBB1_7:
	s_load_b128 s[8:11], s[0:1], 0x90
	v_bfe_u32 v3, v0, 10, 10
	v_and_b32_e32 v2, 0x3ff, v0
	v_mov_b32_e32 v4, 0
	s_lshr_b32 s12, s16, 8
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s11, exec_lo
	v_lshl_or_b32 v0, v3, 5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshrrev_b32_e32 v5, 4, v0
	v_cmpx_gt_u32_e64 s12, v5
	s_cbranch_execz .LBB1_11
; %bb.8:
	s_load_b128 s[16:19], s[0:1], 0x0
	v_lshlrev_b32_e32 v1, 1, v2
	v_bfe_u32 v7, v2, 2, 2
	s_mul_hi_u32 s7, s7, s2
	v_and_b32_e32 v8, 3, v2
	s_add_i32 s7, s2, s7
	v_bfe_u32 v4, v1, 3, 2
	v_lshrrev_b32_e32 v11, 4, v0
	v_mul_u32_u24_e32 v0, 0x48, v7
	s_lshr_b32 s7, s7, s15
	s_mul_i32 s20, s20, s13
	v_lshlrev_b32_e32 v6, 5, v4
	v_mov_b32_e32 v4, 0
	v_and_b32_e32 v10, 30, v1
	v_mul_hi_u32_u24_e32 v1, 0x48, v7
	s_mul_i32 s3, s3, s4
	s_mul_i32 s4, s7, s8
	s_mul_i32 s7, s9, s2
	s_add_i32 s4, s4, s20
	v_lshlrev_b32_e32 v7, 2, v8
	v_mad_u64_u32 v[8:9], null, 0x120, v11, v[0:1]
	s_mul_i32 s8, s21, s5
	s_add_i32 s5, s3, s4
	s_mul_i32 s4, s7, 36
	s_mul_hi_u32 s7, s7, 36
	s_mul_hi_u32 s3, s8, 36
	s_mul_i32 s8, s8, 36
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s18, s4
	s_addc_u32 s7, s19, s7
	s_add_u32 s4, s4, s8
	s_addc_u32 s3, s7, s3
	v_add_co_u32 v0, vcc_lo, s4, v8
	v_bfe_u32 v12, v10, 3, 1
	v_add_co_ci_u32_e64 v1, null, s3, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_u32 v0, s3, v0, 36
	v_lshlrev_b32_e32 v8, 1, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, 0, v1, s3
	s_mov_b32 s7, 0
	v_cmp_lt_u32_e32 vcc_lo, 15, v10
.LBB1_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v9, s5, v5
	v_add_co_u32 v11, s3, v0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v12, null, 0, v1, s3
	v_mad_i64_i32 v[13:14], null, 0x90, v9, s[16:17]
	s_clause 0x4
	global_load_b32 v19, v[11:12], off offset:-32
	global_load_b32 v20, v[11:12], off offset:-16
	global_load_b32 v21, v[11:12], off offset:4
	global_load_b32 v17, v[0:1], off offset:-36
	global_load_b32 v18, v[0:1], off
	v_add_nc_u32_e32 v5, 2, v5
	v_add_co_u32 v0, s4, 0x240, v0
	v_add_co_u32 v9, s3, v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v14, s3
	v_add_co_u32 v15, s3, v13, v8
	v_add_co_ci_u32_e64 v16, null, 0, v14, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v9, s3, v9, v7
	v_add_co_ci_u32_e64 v10, null, 0, v10, s3
	s_clause 0x4
	global_load_b32 v22, v[9:10], off offset:16
	global_load_b32 v23, v[9:10], off offset:32
	global_load_d16_b16 v9, v[15:16], off offset:4
	global_load_d16_hi_b16 v9, v[15:16], off offset:8
	global_load_d16_b16 v10, v[15:16], off offset:12
	global_load_b32 v12, v[11:12], off offset:20
	global_load_b32 v13, v[13:14], off
	v_mov_b16_e32 v14.h, 0
	v_cmp_le_u32_e64 s3, s12, v5
	v_add_co_ci_u32_e64 v1, null, 0, v1, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v15.h, v14.h
	s_or_b32 s7, s3, s7
	s_waitcnt vmcnt(11)
	v_dot4_i32_iu8 v11, 0x1010101, v19, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(9)
	v_dot4_i32_iu8 v16, 0x1010101, v21, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_dot4_i32_iu8 v24, 0x1010101, v20, v11 neg_lo:[1,1,0]
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v25, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v11.h, 2, v9.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v10.h, 2, v9.h
	v_lshrrev_b16 v11.l, 4, v10.l
	v_and_b16 v10.l, 0xf0f, v10.l
	v_and_b16 v9.h, 0x3f3f, v9.h
	v_and_b16 v11.h, 0x3030, v11.h
	v_and_b16 v10.h, 0x3030, v10.h
	v_and_b16 v11.l, 0xf0f, v11.l
	v_and_b16 v9.l, 0x3f3f, v9.l
	v_and_b32_e32 v26, 0xf0f0f0f, v23
	v_lshrrev_b32_e32 v23, 4, v23
	v_dot4_i32_iu8 v19, v25, v19, 0 neg_lo:[1,1,0]
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_or_b16 v10.h, v11.l, v10.h
	v_or_b16 v10.l, v10.l, v11.h
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_dot4_i32_iu8 v11, v26, v20, v19 neg_lo:[1,1,0]
	v_dot4_i32_iu8 v19, v22, v21, 0 neg_lo:[1,1,0]
	v_cndmask_b16 v9.h, v9.h, v10.h, vcc_lo
	v_cndmask_b16 v9.l, v9.l, v10.l, vcc_lo
	s_waitcnt vmcnt(1)
	v_dot4_i32_iu8 v16, 0x1010101, v12, v16 neg_lo:[1,1,0]
	v_dot4_i32_iu8 v10, v23, v12, v19 neg_lo:[1,1,0]
	v_and_b16 v14.l, v9.h, 63
	v_pk_lshrrev_b16 v12, 8, v9 op_sel:[1,0] op_sel_hi:[0,0]
	v_and_b16 v15.l, v9.l, 63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v19, v24, v14
	v_mov_b16_e32 v14.l, v12.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v10, v10, v14
	v_lshrrev_b16 v14.l, 8, v9.h
	v_mul_lo_u32 v9, v11, v15
	v_cvt_f32_i32_e32 v12, v19
	v_mul_lo_u32 v11, v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_mix_f32 v12, v17, v12, 0 op_sel_hi:[1,0,0]
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_mix_f32 v9, v17, v9, 0 op_sel_hi:[1,0,0]
	v_fma_mix_f32 v11, v18, v11, v12 op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_mix_f32 v9, v18, v10, v9 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v10, v13, v11, neg(0) op_sel:[1,0,0] op_sel_hi:[1,0,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v9, v9, v13, -v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v9
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB1_9
; %bb.10:
	s_or_b32 exec_lo, exec_lo, s7
.LBB1_11:
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s11
	s_mov_b32 s4, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cmpx_ne_u32_e32 0, v3
	s_cbranch_execz .LBB1_13
; %bb.12:
	v_lshlrev_b32_e32 v0, 7, v3
	v_lshlrev_b32_e32 v1, 2, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v0, v1, 0xffffff80
	ds_store_b32 v0, v4
.LBB1_13:
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt lgkmcnt(0)
	; wave barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s3, vcc_lo
	s_cbranch_execz .LBB1_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v0, -1, 0
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, 16, v0
	v_xor_b32_e32 v3, 8, v0
	v_cmp_gt_u32_e32 vcc_lo, 32, v1
	v_cndmask_b32_e32 v1, v0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_u32_e32 vcc_lo, 32, v3
	v_lshlrev_b32_e32 v1, 2, v1
	v_cndmask_b32_e32 v3, v0, v3, vcc_lo
	ds_bpermute_b32 v1, v1, v4
	v_lshlrev_b32_e32 v3, 2, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v4, v1
	v_xor_b32_e32 v4, 4, v0
	ds_bpermute_b32 v3, v3, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_add_f32 v1, v1, v3 :: v_dual_lshlrev_b32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v1
	v_xor_b32_e32 v4, 2, v0
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_add_f32 v1, v1, v3 :: v_dual_lshlrev_b32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v1
	v_xor_b32_e32 v4, 1, v0
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v0, v0, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v4, 2, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v1, v3
	ds_bpermute_b32 v1, v4, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB1_16
; %bb.15:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s4, s6, s14
	s_mul_i32 s2, s10, s2
	s_add_i32 s4, s4, s13
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v0, v0, v1 :: v_dual_mov_b32 v1, 0
	s_add_i32 s2, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_b32 v1, v0, s[0:1]
.LBB1_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 128
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 13
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
		.amdhsa_next_free_vgpr 27
		.amdhsa_next_free_sgpr 22
		.amdhsa_reserve_vcc 1
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
		.amdhsa_inst_pref_size 12
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 27
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
; codeLenInByte = 1520
; TotalNumSgprs: 24
; NumVgprs: 27
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 128 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 27
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 13
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
	s_load_b128 s[24:27], s[0:1], 0x20
	s_load_b128 s[28:31], s[0:1], 0x50
	s_load_b128 s[16:19], s[0:1], 0x78
	s_mov_b32 s2, s15
	s_mov_b32 s12, s13
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB2_5
; %bb.1:
	s_mov_b32 s15, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[20:21], s[14:15], 2
	s_add_u32 s8, s8, s20
	s_addc_u32 s9, s9, s21
	s_load_b32 s3, s[8:9], 0x0
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b32 s33, s[0:1], 0x88
	s_cbranch_execnz .LBB2_3
.LBB2_2:
	s_load_b64 s[8:9], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s8, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s14, s3
	s_lshr_b32 s3, s3, s9
.LBB2_3:
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_cbranch_vccnz .LBB2_6
; %bb.4:
	s_mul_hi_u32 s8, s29, s14
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s13, s3
	s_add_i32 s8, s14, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, s30
	s_mul_i32 s8, s8, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s29, s14, s8
	s_branch .LBB2_7
.LBB2_5:
                                        ; implicit-def: $sgpr3
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b32 s33, s[0:1], 0x88
	s_branch .LBB2_2
.LBB2_6:
	s_mov_b32 s13, s14
	s_mov_b32 s29, s14
.LBB2_7:
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x40
	s_load_b128 s[20:23], s[0:1], 0x90
	v_bfe_u32 v6, v0, 10, 10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v2, 0x3ff, v0
	v_mov_b32_e32 v4, 0
	s_cmp_lg_u64 s[24:25], 0
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s23, exec_lo
	v_or_b32_e32 v0, v2, v6
	s_cselect_b32 s15, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB2_12
; %bb.8:
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cmp_eq_u64 s[10:11], 0
	s_mul_i32 s30, s13, s18
	s_cbranch_scc1 .LBB2_10
; %bb.9:
	s_mul_i32 s36, s22, s2
	s_mov_b32 s37, 0
	v_lshlrev_b32_e32 v0, 2, v2
	s_lshl_b64 s[38:39], s[36:37], 2
	s_mov_b32 s31, s37
	s_add_u32 s13, s10, s38
	s_addc_u32 s35, s11, s39
	s_lshl_b64 s[10:11], s[30:31], 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_u32 s31, s13, s10
	s_addc_u32 s35, s35, s11
	s_ashr_i32 s13, s12, 31
	s_lshl_b64 s[10:11], s[12:13], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s10, s31, s10
	s_addc_u32 s11, s35, s11
	global_load_b32 v4, v0, s[10:11]
.LBB2_10:
	s_cmp_lg_u64 s[26:27], 0
	s_cselect_b32 s10, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s10, s10, s15
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB2_12
; %bb.11:
	s_mul_i32 s10, s22, s2
	s_mov_b32 s11, 0
	v_lshlrev_b32_e32 v0, 2, v2
	s_lshl_b64 s[36:37], s[10:11], 2
	s_mov_b32 s31, s11
	s_add_u32 s13, s26, s36
	s_addc_u32 s26, s27, s37
	s_lshl_b64 s[10:11], s[30:31], 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_u32 s27, s13, s10
	s_addc_u32 s26, s26, s11
	s_ashr_i32 s13, s12, 31
	s_lshl_b64 s[10:11], s[12:13], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s10, s27, s10
	s_addc_u32 s11, s26, s11
	global_load_b32 v3, v0, s[10:11]
.LBB2_12:
	s_or_b32 exec_lo, exec_lo, s23
	v_lshrrev_b32_e32 v0, 5, v2
	v_cndmask_b32_e64 v5, 0, 1, s15
	v_mov_b32_e32 v7, 0
	s_lshr_b32 s10, s28, 8
	s_mov_b32 s11, exec_lo
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v9, v0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_u32_e64 s10, v9
	s_cbranch_execz .LBB2_18
; %bb.13:
	s_mul_i32 s17, s29, s17
	v_and_b16 v0.l, v2.l, 15
	s_mul_hi_u32 s27, s17, 36
	s_mul_i32 s26, s17, 36
	s_mul_i32 s3, s3, s16
	v_mad_u64_u32 v[7:8], null, 0x120, v9, s[26:27]
	s_mul_i32 s16, s21, s2
	v_bfe_u32 v1, v2, 4, 1
	v_lshrrev_b16 v13.l, 3, v0.l
	v_mov_b16_e32 v13.h, 0
	v_and_b32_e32 v15, 7, v2
	s_mul_hi_u32 s13, s19, s2
	v_mad_u64_u32 v[11:12], null, s16, 36, v[7:8]
	v_and_b32_e32 v7, 31, v2
	v_lshlrev_b32_e32 v14, 3, v1
	v_lshl_or_b32 v8, v1, 2, v13
	v_lshlrev_b32_e32 v10, 1, v13
	v_lshrrev_b16 v13.l, 2, v0.l
	v_lshlrev_b32_e32 v7, 1, v7
	s_add_i32 s13, s2, s13
	v_mad_u64_u32 v[0:1], null, v8, 36, v[11:12]
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v11, v14, v13
	v_lshlrev_b32_e32 v13, 1, v7
	v_mov_b32_e32 v7, 0
	v_or_b32_e32 v16, v14, v15
	s_lshr_b32 s13, s13, s33
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_mul_i32 s34, s34, s12
	v_lshlrev_b32_e32 v16, 1, v16
	s_mul_i32 s13, s13, s20
	v_lshlrev_b32_e32 v12, 2, v15
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v14, 1, v16
	s_add_i32 s13, s13, s34
	s_mov_b32 s6, 0
	s_add_i32 s7, s3, s13
	s_branch .LBB2_15
.LBB2_14:                               ;   in Loop: Header=BB2_15 Depth=1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v23, v10, v23
	v_and_b32_e32 v24, 0xf0f0f0f, v22
	v_lshrrev_b32_e32 v22, 4, v22
	v_add_nc_u32_e32 v9, 2, v9
	v_add_co_u32 v0, s3, 0x240, v0
	v_lshlrev_b32_e32 v25, 4, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_cmp_le_u32_e32 vcc_lo, s10, v9
	v_add_co_ci_u32_e64 v1, null, 0, v1, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v24, 0x30303030, v25, v24
	v_and_or_b32 v25, 0x30303030, v23, v22
	s_or_b32 s6, vcc_lo, s6
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v20.h, 8, v24.l
	v_lshlrev_b16 v21.h, 8, v24.h
	v_lshlrev_b16 v22.h, 8, v25.l
	v_lshlrev_b16 v23.l, 8, v25.h
	v_and_b16 v15.h, 0x3f00, v24.l
	v_add_nc_u16 v20.h, 0xe000, v20.h
	v_add_nc_u16 v21.h, 0xe000, v21.h
	v_and_b16 v22.l, 0x3f00, v24.h
	v_add_nc_u16 v22.h, 0xe000, v22.h
	v_add_nc_u16 v23.l, 0xe000, v23.l
	v_lshrrev_b16 v20.h, 8, v20.h
	v_lshrrev_b16 v21.h, 8, v21.h
	v_and_b16 v23.h, 0x3f00, v25.l
	v_and_b16 v24.l, 0x3f00, v25.h
	v_lshrrev_b16 v22.h, 8, v22.h
	v_lshrrev_b16 v23.l, 8, v23.l
	v_or_b16 v15.h, v15.h, v20.h
	v_or_b16 v20.h, v22.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v21.h, v23.h, v22.h
	v_or_b16 v22.l, v24.l, v23.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v23.l, 0xe000, v15.h
	v_add_nc_u16 v23.h, 0xe000, v20.h
	v_bfe_i32 v20, v20, 0, 8
	v_bfe_i32 v24, v21, 0, 8
	v_add_nc_u16 v21.l, 0xe000, v21.h
	v_add_nc_u16 v21.h, 0xe000, v22.l
	v_dot4_i32_iu8 v17, v23, v17, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dot4_i32_iu8 v16, v21, v16, 0 neg_lo:[1,1,0]
	v_mul_lo_u32 v17, v17, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v16, v16, v20
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v16, v16
	v_fma_f32 v17, v19, v17, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v16
	v_fma_mix_f32 v8, v17, v15, v8 op_sel_hi:[0,1,0]
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execz .LBB2_17
.LBB2_15:                               ; =>This Inner Loop Header: Depth=1
	v_add_nc_u32_e32 v24, s7, v9
	v_add_co_u32 v15, vcc_lo, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v16, null, 0, v1, vcc_lo
	v_mad_i64_i32 v[18:19], null, 0xd2, v24, s[4:5]
	s_clause 0x1
	global_load_b32 v17, v[15:16], off offset:4
	global_load_b32 v16, v[15:16], off offset:76
	v_add_co_u32 v20, vcc_lo, v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, 0, v19, vcc_lo
	v_add_co_u32 v25, vcc_lo, v18, v14
	v_add_co_ci_u32_e64 v26, null, 0, v19, vcc_lo
	v_add_co_u32 v27, vcc_lo, v18, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v28, null, 0, v19, vcc_lo
	s_clause 0x1
	global_load_b32 v29, v[0:1], off
	global_load_b32 v30, v[0:1], off offset:72
	s_clause 0x4
	global_load_b32 v22, v[20:21], off
	global_load_b32 v23, v[25:26], off offset:128
	global_load_d16_b16 v15, v[18:19], off offset:208
	global_load_d16_u8 v21, v[27:28], off offset:192
	global_load_d16_u8 v20, v[27:28], off offset:196
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v19, v29.l
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v18, v30.l
	s_cbranch_vccnz .LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	v_mad_i64_i32 v[25:26], null, 0xd2, v24, s[24:25]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v27, vcc_lo, v25, v14
	v_add_co_ci_u32_e64 v28, null, 0, v26, vcc_lo
	v_add_co_u32 v29, vcc_lo, v25, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, 0, v26, vcc_lo
	s_clause 0x1
	global_load_b32 v24, v[27:28], off offset:128
	global_load_b32 v29, v[29:30], off
	v_add_co_u32 v27, vcc_lo, v25, v11
	v_add_co_ci_u32_e64 v28, null, 0, v26, vcc_lo
	s_clause 0x2
	global_load_i8 v30, v[27:28], off offset:192
	global_load_i8 v27, v[27:28], off offset:196
	global_load_d16_b16 v28, v[25:26], off offset:208
	s_waitcnt vmcnt(4)
	v_ashrrev_i32_e32 v24, v10, v24
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v25, 0xf0f0f0f, v29
	v_lshrrev_b32_e32 v26, 4, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v29, 4, v24
	v_and_b32_e32 v26, 0xf0f0f0f, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_or_b32 v25, 0x30303030, v29, v25
	v_and_or_b32 v26, 0x30303030, v24, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v15.h, 8, v25.l
	v_lshlrev_b16 v20.h, 8, v25.h
	v_and_b16 v21.h, 0x3f00, v25.l
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b16 v24.h, 8, v26.l
	v_lshlrev_b16 v25.l, 8, v26.h
	v_add_nc_u16 v15.h, 0xe000, v15.h
	v_add_nc_u16 v20.h, 0xe000, v20.h
	v_and_b16 v24.l, 0x3f00, v25.h
	v_add_nc_u16 v24.h, 0xe000, v24.h
	v_add_nc_u16 v25.l, 0xe000, v25.l
	v_lshrrev_b16 v15.h, 8, v15.h
	v_lshrrev_b16 v20.h, 8, v20.h
	v_and_b16 v25.h, 0x3f00, v26.l
	v_and_b16 v26.l, 0x3f00, v26.h
	v_lshrrev_b16 v24.h, 8, v24.h
	v_or_b16 v15.h, v21.h, v15.h
	v_or_b16 v20.h, v24.l, v20.h
	v_lshrrev_b16 v21.h, 8, v25.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v24.l, v25.h, v24.h
	v_add_nc_u16 v25.l, 0xe000, v15.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v25.h, 0xe000, v20.h
	v_or_b16 v15.h, v26.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u16 v24.l, 0xe000, v24.l
	v_dot4_i32_iu8 v25, v25, v17, 0 neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u16 v24.h, 0xe000, v15.h
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v25, v25, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dot4_i32_iu8 v24, v24, v16, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v24, v24, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v25, v25
	v_fma_f32 v25, v19, v25, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v24, v24
	v_fmac_f32_e32 v25, v18, v24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_mix_f32 v7, v25, v28, v7 op_sel_hi:[0,1,0]
	s_branch .LBB2_14
.LBB2_17:
	s_or_b32 exec_lo, exec_lo, s6
.LBB2_18:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s11
	v_cmp_eq_u32_e64 s3, 0, v6
	v_lshlrev_b32_e32 v0, 2, v2
	s_mov_b32 s4, exec_lo
	v_cmpx_ne_u32_e32 0, v6
	s_cbranch_execz .LBB2_22
; %bb.19:
	v_lshlrev_b32_e32 v1, 7, v6
	s_and_b32 vcc_lo, exec_lo, s15
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	s_cbranch_vccz .LBB2_21
; %bb.20:
	ds_store_b32 v1, v7 offset:128
.LBB2_21:
	ds_store_b32 v1, v8
.LBB2_22:
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s4, s3
	s_cbranch_execz .LBB2_56
; %bb.23:
	ds_load_b32 v1, v0
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_cbranch_vccnz .LBB2_25
; %bb.24:
	ds_load_b32 v0, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v7, v0
.LBB2_25:
	v_mbcnt_lo_u32_b32 v6, -1, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v0, 16, v6
	v_xor_b32_e32 v8, 8, v6
	v_cmp_gt_u32_e32 vcc_lo, 32, v0
	v_cndmask_b32_e32 v0, v6, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_u32_e32 vcc_lo, 32, v8
	v_lshlrev_b32_e32 v0, 2, v0
	v_cndmask_b32_e32 v8, v6, v8, vcc_lo
	ds_bpermute_b32 v9, v0, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v9
	v_xor_b32_e32 v9, 4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_u32_e32 vcc_lo, 32, v9
	v_cndmask_b32_e32 v9, v6, v9, vcc_lo
	v_lshlrev_b32_e32 v9, 2, v9
	v_lshlrev_b32_e32 v8, 2, v8
	ds_bpermute_b32 v10, v8, v1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v10
	v_xor_b32_e32 v10, 2, v6
	ds_bpermute_b32 v11, v9, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v10
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v10, v6, v10 :: v_dual_add_f32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v10, 2, v10
	v_xor_b32_e32 v11, 1, v6
	ds_bpermute_b32 v12, v10, v1
	v_cmp_gt_u32_e32 vcc_lo, 32, v11
	v_cndmask_b32_e32 v6, v6, v11, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v12
	v_lshlrev_b32_e32 v11, 2, v6
	ds_bpermute_b32 v6, v11, v1
	s_cbranch_vccnz .LBB2_27
; %bb.26:
	ds_bpermute_b32 v0, v0, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v7, v0
	ds_bpermute_b32 v7, v8, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v7
	ds_bpermute_b32 v7, v9, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v7
	ds_bpermute_b32 v7, v10, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v7
	ds_bpermute_b32 v7, v11, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v0, v7
.LBB2_27:
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB2_56
; %bb.28:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v1, v6
	v_cmp_ne_u32_e32 vcc_lo, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v0, v4, v0
	s_cbranch_vccnz .LBB2_55
; %bb.29:
	v_add_f32_e32 v1, v3, v7
	s_cmp_lt_i32 s8, 3
	s_mov_b32 s3, 0
	s_cbranch_scc1 .LBB2_33
; %bb.30:
	s_cmp_gt_i32 s8, 5
	s_cbranch_scc0 .LBB2_34
; %bb.31:
	s_cmp_eq_u32 s8, 6
	s_cbranch_scc0 .LBB2_35
; %bb.32:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s9, s9
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_f32_e32 v2, v2, v3
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
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v2
	v_cndmask_b32_e32 v4, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, null, v4, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v6, v5
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v9, v6
	v_max_f32_e64 v9, -s9, -s9
	v_fma_f32 v5, -v5, v8, v7
	v_max_f32_e32 v7, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v6, v8
	v_minmax_f32 v3, v7, v3, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB2_36
.LBB2_33:
	s_mov_b32 s4, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_41
	s_branch .LBB2_46
.LBB2_34:
	s_mov_b32 s4, 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_37
	s_branch .LBB2_39
.LBB2_35:
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
.LBB2_36:
	s_branch .LBB2_39
.LBB2_37:
	s_cmp_eq_u32 s8, 3
	s_cbranch_scc0 .LBB2_40
; %bb.38:
	v_max_f32_e32 v2, v1, v1
	s_mov_b32 s4, 0xc0e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_min_f32_e32 v2, 0x40e00000, v2
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v4, v4
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v4, null, v3, v3, v2
	v_div_scale_f32 v7, vcc_lo, v2, v3, v2
	v_rcp_f32_e32 v5, v4
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v6, -v4, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v5
	v_mul_f32_e32 v6, v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v4, v6, v7
	v_fmac_f32_e32 v6, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v6, v7
	v_div_fmas_f32 v4, v4, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v4, v3, v2
	v_max_f32_e32 v7, v0, v0
	v_minmax_f32 v5, v7, 0x40e00000, s4
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v5
	v_mul_f32_e32 v2, v3, v2
.LBB2_39:
	s_branch .LBB2_46
.LBB2_40:
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_46
.LBB2_41:
	s_cmp_gt_i32 s8, 1
	s_cbranch_scc0 .LBB2_43
; %bb.42:
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v2, v2
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_ngt_f32_e32 vcc_lo, 0xc2b17218, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x7f800000, v2, vcc_lo
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v4, v3
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB2_44
.LBB2_43:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
.LBB2_44:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s3, 0
	s_cbranch_vccnz .LBB2_46
; %bb.45:
	s_cmp_lg_u32 s8, 1
	s_mov_b32 s3, -1
	s_cselect_b32 s4, -1, 0
.LBB2_46:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccz .LBB2_48
; %bb.47:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b32 s3, 0
.LBB2_48:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB2_54
; %bb.49:
	v_mul_f32_e32 v2, 0x3d372713, v1
	v_mul_f32_e32 v3, 0x3f4c422a, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, v1, v2, 1.0
	v_mul_f32_e32 v2, v3, v2
                                        ; implicit-def: $vgpr3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cmp_ngt_f32_e64 s3, 0x3f200000, |v2|
	s_and_saveexec_b32 s4, s3
	s_xor_b32 s3, exec_lo, s4
	s_cbranch_execz .LBB2_51
; %bb.50:
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
	s_waitcnt_depctr depctr_va_vdst(0)
	v_ldexp_f32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_nlt_f32_e32 vcc_lo, 0x42b17218, v3
	v_cndmask_b32_e32 v3, 0x7f800000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	s_waitcnt_depctr depctr_va_vdst(0)
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB2_51:
	s_and_not1_saveexec_b32 s3, s3
	s_cbranch_execz .LBB2_53
; %bb.52:
	v_mul_f32_e32 v3, v2, v2
	s_mov_b32 s4, 0xbbbac73d
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_fmaak_f32 v4, s4, v3, 0x3ca908c9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v3, v3, v4, |v2|
.LBB2_53:
	s_or_b32 exec_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_bfi_b32 v2, 0x7fffffff, v3, v2
	v_dual_mul_f32 v1, 0.5, v1 :: v_dual_add_f32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_54:
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v0, v2
.LBB2_55:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s3, s18, s14
	s_mul_i32 s2, s22, s2
	s_add_i32 s3, s3, s12
	v_mov_b32_e32 v1, 0
	s_add_i32 s2, s3, s2
	s_mov_b32 s3, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_b32 v1, v0, s[0:1]
.LBB2_56:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 256
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 13
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
		.amdhsa_next_free_vgpr 31
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
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
		.amdhsa_inst_pref_size 29
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 31
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
; codeLenInByte = 3668
; TotalNumSgprs: 42
; NumVgprs: 31
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 31
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 13
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
	s_load_b64 s[4:5], s[0:1], 0x10
	s_load_b128 s[16:19], s[0:1], 0x50
	s_mov_b32 s2, s15
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[4:5], 0
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u64 s[4:5], 0
	s_cbranch_scc1 .LBB3_5
; %bb.1:
	s_mov_b32 s15, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[6:7], s[14:15], 2
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	s_load_b32 s20, s[4:5], 0x0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s21, s[0:1], 0x60
	s_cbranch_execnz .LBB3_3
.LBB3_2:
	s_load_b64 s[10:11], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s14, s3
	s_lshr_b32 s20, s3, s11
.LBB3_3:
	s_load_b32 s3, s[0:1], 0x88
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB3_6
; %bb.4:
	s_mul_hi_u32 s8, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s14, s8
	s_lshr_b32 s8, s8, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s19
	s_sub_i32 s15, s14, s8
	s_branch .LBB3_7
.LBB3_5:
                                        ; implicit-def: $sgpr20
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x78
	s_load_b32 s21, s[0:1], 0x60
	s_branch .LBB3_2
.LBB3_6:
	s_mov_b32 s15, s14
.LBB3_7:
	s_load_b128 s[8:11], s[0:1], 0x90
	v_bfe_u32 v3, v0, 10, 10
	v_bfe_u32 v1, v0, 5, 5
	v_and_b32_e32 v2, 0x3ff, v0
	s_lshr_b32 s12, s16, 8
	v_mov_b32_e32 v5, 0
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s11, exec_lo
	v_add_nc_u32_e32 v4, v1, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_u32_e64 s12, v4
	s_cbranch_execz .LBB3_11
; %bb.8:
	s_mul_i32 s20, s20, s4
	s_mul_i32 s4, s15, s5
	v_and_b16 v0.l, v2.l, 15
	s_mul_hi_u32 s5, s4, 36
	s_mul_i32 s4, s4, 36
	s_load_b128 s[16:19], s[0:1], 0x0
	v_mad_u64_u32 v[5:6], null, 0x120, v4, s[4:5]
	v_bfe_u32 v1, v2, 4, 1
	s_mul_i32 s4, s9, s2
	v_lshrrev_b16 v9.l, 3, v0.l
	v_mov_b16_e32 v9.h, 0
	v_and_b32_e32 v11, 7, v2
	v_lshlrev_b32_e32 v10, 3, v1
	v_mad_u64_u32 v[7:8], null, s4, 36, v[5:6]
	v_and_b32_e32 v5, 31, v2
	v_lshl_or_b32 v12, v1, 2, v9
	v_lshlrev_b32_e32 v6, 1, v9
	v_lshrrev_b16 v9.l, 2, v0.l
	s_mul_hi_u32 s7, s7, s2
	s_mul_i32 s21, s21, s13
	v_mad_u64_u32 v[0:1], null, v12, 36, v[7:8]
	v_lshlrev_b32_e32 v12, 1, v5
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v13, v10, v11
	s_add_i32 s7, s2, s7
	v_or_b32_e32 v7, v10, v9
	s_lshr_b32 s3, s7, s3
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s18, v0
	v_lshlrev_b32_e32 v13, 1, v13
	s_mul_i32 s3, s3, s8
	v_lshlrev_b32_e32 v8, 2, v11
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	v_lshlrev_b32_e32 v9, 1, v12
	v_lshlrev_b32_e32 v10, 1, v13
	s_add_i32 s3, s3, s21
	s_mov_b32 s4, 0
	s_add_i32 s5, s20, s3
.LBB3_9:                                ; =>This Inner Loop Header: Depth=1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v13, s5, v4
	v_add_nc_u32_e32 v4, 2, v4
	v_mad_i64_i32 v[11:12], null, 0xd2, v13, s[16:17]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_le_u32_e64 s3, s12, v4
	s_or_b32 s4, s3, s4
	v_add_co_u32 v13, vcc_lo, v11, v10
	v_add_co_ci_u32_e64 v14, null, 0, v12, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_b32 v17, v[13:14], off offset:128
	global_load_b32 v18, v[15:16], off
	v_add_co_u32 v13, vcc_lo, v0, v8
	v_add_co_ci_u32_e64 v14, null, 0, v1, vcc_lo
	v_add_co_u32 v15, vcc_lo, v11, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, 0, v12, vcc_lo
	s_clause 0x1
	global_load_b32 v19, v[13:14], off offset:4
	global_load_b32 v20, v[13:14], off offset:76
	s_clause 0x1
	global_load_i8 v21, v[15:16], off offset:192
	global_load_i8 v15, v[15:16], off offset:196
	s_clause 0x1
	global_load_b32 v16, v[0:1], off
	global_load_b32 v22, v[0:1], off offset:72
	global_load_d16_b16 v23, v[11:12], off offset:208
	v_add_co_u32 v0, vcc_lo, 0x240, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, 0, v1, vcc_lo
	s_waitcnt vmcnt(8)
	v_ashrrev_i32_e32 v11, v6, v17
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v12, 0xf0f0f0f, v18
	v_lshrrev_b32_e32 v13, 4, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v14, 4, v11
	v_and_b32_e32 v13, 0xf0f0f0f, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_or_b32 v12, 0x30303030, v14, v12
	v_and_or_b32 v14, 0x30303030, v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v11.l, 0x3f00, v12.l
	v_lshlrev_b16 v11.h, 8, v12.l
	v_and_b16 v12.l, 0x3f00, v12.h
	v_lshlrev_b16 v12.h, 8, v12.h
	v_and_b16 v13.l, 0x3f00, v14.l
	v_lshlrev_b16 v13.h, 8, v14.l
	v_and_b16 v14.l, 0x3f00, v14.h
	v_lshlrev_b16 v14.h, 8, v14.h
	v_add_nc_u16 v11.h, 0xe000, v11.h
	v_add_nc_u16 v12.h, 0xe000, v12.h
	v_add_nc_u16 v13.h, 0xe000, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v14.h, 0xe000, v14.h
	v_lshrrev_b16 v11.h, 8, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshrrev_b16 v12.h, 8, v12.h
	v_lshrrev_b16 v13.h, 8, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshrrev_b16 v14.h, 8, v14.h
	v_or_b16 v11.l, v11.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v11.h, v12.l, v12.h
	v_or_b16 v12.l, v13.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v12.h, v14.l, v14.h
	v_add_nc_u16 v11.l, 0xe000, v11.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u16 v11.h, 0xe000, v11.h
	v_add_nc_u16 v12.l, 0xe000, v12.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u16 v12.h, 0xe000, v12.h
	s_waitcnt vmcnt(6)
	v_dot4_i32_iu8 v11, v11, v19, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dot4_i32_iu8 v12, v12, v20, 0 neg_lo:[1,1,0]
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v11, v11, v21
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v12, v12, v15
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v12, v12
	s_waitcnt vmcnt(2)
	v_fma_mix_f32 v11, v16, v11, 0 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_mix_f32 v11, v22, v12, v11 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v5, v11, v23, v5 op_sel_hi:[0,1,0]
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB3_9
; %bb.10:
	s_or_b32 exec_lo, exec_lo, s4
.LBB3_11:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s11
	v_lshlrev_b32_e32 v0, 2, v2
	s_mov_b32 s4, exec_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cmpx_ne_u32_e32 0, v3
; %bb.12:
	v_lshlrev_b32_e32 v1, 7, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v0, 0xffffff80
	ds_store_b32 v1, v5
; %bb.13:
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s3, vcc_lo
	s_cbranch_execz .LBB3_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	ds_load_b32 v0, v0
	s_mov_b32 s3, 0
	v_xor_b32_e32 v3, 16, v1
	v_xor_b32_e32 v4, 8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_u32_e32 vcc_lo, 32, v3
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v5, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v4, 2, v4
	v_lshlrev_b32_e32 v3, 2, v3
	ds_bpermute_b32 v3, v3, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v4, v1, v4, vcc_lo
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_u32_e32 vcc_lo, 32, v4
	v_cndmask_b32_e32 v1, v1, v4, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v0, v0, v3 :: v_dual_lshlrev_b32 v1, 2, v1
	ds_bpermute_b32 v1, v1, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB3_16
; %bb.15:
	s_load_b64 s[0:1], s[0:1], 0x48
	s_mul_i32 s4, s6, s14
	s_mul_i32 s2, s10, s2
	s_add_i32 s4, s4, s13
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v0, v0, v1 :: v_dual_mov_b32 v1, 0
	s_add_i32 s2, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	global_store_b32 v1, v0, s[0:1]
.LBB3_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 128
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 13
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
		.amdhsa_next_free_vgpr 24
		.amdhsa_next_free_sgpr 22
		.amdhsa_reserve_vcc 1
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
		.amdhsa_inst_pref_size 12
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 24
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 22
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1508
; TotalNumSgprs: 24
; NumVgprs: 24
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 128 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 24
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 13
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
	.type	__hip_cuid_85ab8ad46372e4d0,@object ; @__hip_cuid_85ab8ad46372e4d0
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_85ab8ad46372e4d0
__hip_cuid_85ab8ad46372e4d0:
	.byte	0                               ; 0x0
	.size	__hip_cuid_85ab8ad46372e4d0, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_85ab8ad46372e4d0
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
    .vgpr_count:     34
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
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     27
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
    .max_flat_workgroup_size: 64
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
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
    .group_segment_fixed_size: 128
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     24
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1100
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
