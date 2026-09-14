	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx8 s[12:19], s[0:1], 0x0
	s_load_dwordx4 s[28:31], s[0:1], 0x20
	s_load_dwordx4 s[8:11], s[0:1], 0x50
	s_load_dwordx4 s[20:23], s[0:1], 0x78
	s_mov_b32 s34, s3
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_mov_b64 s[24:25], 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:
	s_mov_b32 s35, 0
	s_lshl_b64 s[26:27], s[34:35], 2
	s_add_u32 s16, s16, s26
	s_addc_u32 s17, s17, s27
	s_load_dword s5, s[16:17], 0x0
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB0_3
.LBB0_2:
	s_load_dwordx2 s[16:17], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s16, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s5, s3, s17
.LBB0_3:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB0_6
; %bb.4:
	s_mul_hi_u32 s3, s9, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s3, s3, s10
	s_mul_i32 s3, s3, s11
	s_sub_i32 s38, s34, s3
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s3, s5
	s_branch .LBB0_7
.LBB0_5:
                                        ; implicit-def: $sgpr5
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_branch .LBB0_2
.LBB0_6:
	s_mov_b32 s3, s34
	s_mov_b32 s38, s34
.LBB0_7:
	s_load_dwordx2 s[10:11], s[0:1], 0x40
	s_load_dwordx4 s[24:27], s[0:1], 0x90
	v_bfe_u32 v18, v0, 10, 10
	v_and_b32_e32 v15, 0x3ff, v0
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v0, v15, v18
	s_cselect_b64 s[16:17], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v17, 0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB0_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s3, s22
	s_cbranch_scc1 .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s40, s26, s4
	s_mov_b32 s41, 0
	s_lshl_b64 s[42:43], s[40:41], 2
	s_add_u32 s3, s18, s42
	s_mov_b32 s37, s41
	s_addc_u32 s9, s19, s43
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s27, s3, s18
	s_addc_u32 s9, s9, s19
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[18:19], s[2:3], 2
	s_add_u32 s18, s27, s18
	s_addc_u32 s19, s9, s19
	v_lshlrev_b32_e32 v0, 2, v15
	global_load_dword v16, v0, s[18:19]
	s_branch .LBB0_11
.LBB0_10:
	v_mov_b32_e32 v16, 0
.LBB0_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[16:17]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s4
	s_mov_b32 s19, 0
	s_lshl_b64 s[40:41], s[18:19], 2
	s_add_u32 s3, s30, s40
	s_mov_b32 s37, s19
	s_addc_u32 s9, s31, s41
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s27, s3, s18
	s_addc_u32 s9, s9, s19
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[18:19], s[2:3], 2
	s_add_u32 s18, s27, s18
	s_addc_u32 s19, s9, s19
	v_lshlrev_b32_e32 v0, 2, v15
	global_load_dword v17, v0, s[18:19]
	s_branch .LBB0_14
.LBB0_13:
	v_mov_b32_e32 v17, 0
.LBB0_14:
	s_or_b64 exec, exec, s[6:7]
	v_lshl_add_u32 v0, v18, 6, v15
	s_lshr_b32 s3, s8, 8
	v_lshrrev_b32_e32 v21, 4, v0
	v_cndmask_b32_e64 v0, 0, 1, s[16:17]
	v_cmp_gt_u32_e32 vcc, s3, v21
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v19, 0
	v_cmp_ne_u32_e64 s[8:9], 1, v0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB0_20
; %bb.15:
	s_mul_hi_u32 s6, s23, s4
	s_add_i32 s6, s4, s6
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s6, s6, s35
	s_mul_i32 s33, s33, s2
	s_mul_i32 s6, s6, s24
	v_lshlrev_b32_e32 v0, 1, v15
	s_mul_i32 s5, s5, s20
	v_and_b32_e32 v4, 30, v0
	s_add_i32 s6, s6, s33
	s_add_i32 s5, s5, s6
	v_bfe_u32 v8, v4, 3, 1
	v_cmp_lt_u32_e64 s[6:7], 15, v4
	v_bfe_u32 v4, v15, 2, 2
	v_mul_hi_u32_u24_e32 v5, 0x48, v4
	v_mul_u32_u24_e32 v4, 0x48, v4
	s_movk_i32 s20, 0x120
	s_mul_i32 s23, s25, s4
	s_mul_i32 s24, s38, s21
	v_mad_u64_u32 v[4:5], s[20:21], v21, s20, v[4:5]
	s_mul_hi_u32 s21, s23, 36
	s_mul_i32 s23, s23, 36
	s_add_u32 s14, s14, s23
	s_mul_hi_u32 s20, s24, 36
	s_mul_i32 s24, s24, 36
	s_addc_u32 s15, s15, s21
	s_add_u32 s14, s14, s24
	s_addc_u32 s15, s15, s20
	v_bfe_u32 v0, v0, 3, 2
	v_and_b32_e32 v2, 3, v15
	v_lshl_add_u64 v[4:5], s[14:15], 0, v[4:5]
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v2, 2, v2
	v_mov_b32_e32 v3, v1
	v_lshl_add_u64 v[4:5], v[4:5], 0, 36
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v19, 0
	s_movk_i32 s20, 0x90
	v_mov_b64_e32 v[6:7], s[12:13]
	v_lshlrev_b32_e32 v8, 1, v8
	v_mov_b32_e32 v9, v1
	s_mov_b32 s21, 0x5040100
	s_mov_b64 s[12:13], 0x900
	s_branch .LBB0_17
.LBB0_16:                               ;   in Loop: Header=BB0_17 Depth=1
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v14, 0xf0f0f0f, v32
	v_mov_b32_e32 v35, 0
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v34, 0xf0f0f0f, v31
	v_dot4c_i32_i8_e32 v35, v14, v30
	v_lshrrev_b32_e32 v14, 4, v32
	v_dot4c_i32_i8_e32 v35, v34, v29
	v_and_b32_e32 v14, 0xf0f0f0f, v14
	v_lshrrev_b32_e32 v29, 4, v31
	v_mov_b32_e32 v30, 0
	v_and_b32_e32 v29, 0xf0f0f0f, v29
	v_dot4c_i32_i8_e32 v30, v14, v27
	v_dot4c_i32_i8_e32 v30, v29, v26
	s_waitcnt vmcnt(2)
	v_lshrrev_b16_e32 v14, 2, v25
	s_waitcnt vmcnt(1)
	v_lshrrev_b16_e32 v27, 4, v33
	v_lshrrev_b16_e32 v29, 2, v23
	v_and_b32_e32 v14, 0x3030, v14
	v_and_b32_e32 v26, 0xf0f, v33
	v_and_b32_e32 v27, 0xf0f, v27
	v_and_b32_e32 v29, 0x3030, v29
	v_or_b32_e32 v14, v27, v14
	v_or_b32_e32 v26, v26, v29
	v_and_b32_e32 v25, 0x3f3f, v25
	v_and_b32_e32 v23, 0x3f3f, v23
	v_cndmask_b32_e64 v14, v25, v14, s[6:7]
	v_cndmask_b32_e64 v23, v23, v26, s[6:7]
	v_perm_b32 v14, v14, v23, s21
	v_and_b32_e32 v23, 0x3f003f, v14
	v_lshrrev_b32_e32 v25, 16, v23
	v_and_b32_e32 v23, 63, v23
	v_mul_lo_u32 v23, v35, v23
	v_pk_lshrrev_b16 v14, 8, v14 op_sel_hi:[0,1]
	v_mul_lo_u32 v25, v28, v25
	v_cvt_f32_i32_e32 v26, v23
	v_lshrrev_b32_e32 v23, 16, v14
	v_and_b32_e32 v14, 63, v14
	v_cvt_f32_i32_e32 v27, v25
	v_mul_lo_u32 v14, v30, v14
	v_mul_lo_u32 v23, v24, v23
	v_cvt_f32_i32_e32 v25, v23
	v_cvt_f32_i32_e32 v24, v14
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_sdwa v23, v22 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v22, v22
	v_pk_fma_f32 v[10:11], v[10:11], v[26:27], 0 op_sel_hi:[1,1,0]
	v_add_u32_e32 v21, 8, v21
	v_pk_fma_f32 v[10:11], v[12:13], v[24:25], v[10:11]
	v_cmp_le_u32_e32 vcc, s3, v21
	v_pk_mul_f32 v[10:11], v[10:11], v[22:23]
	s_or_b64 s[14:15], vcc, s[14:15]
	v_sub_f32_e32 v10, v10, v11
	v_add_f32_e32 v20, v20, v10
	v_lshl_add_u64 v[4:5], v[4:5], 0, s[12:13]
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB0_19
.LBB0_17:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v14, s5, v21
	v_mad_i64_i32 v[10:11], s[24:25], v14, s20, v[6:7]
	v_lshl_add_u64 v[12:13], v[10:11], 0, v[0:1]
	v_lshl_add_u64 v[12:13], v[12:13], 0, v[2:3]
	v_lshl_add_u64 v[34:35], v[10:11], 0, v[8:9]
	v_lshl_add_u64 v[36:37], v[4:5], 0, v[2:3]
	global_load_dword v38, v[4:5], off offset:-36
	global_load_dword v30, v[36:37], off offset:-32
	global_load_dword v29, v[36:37], off offset:-16
	global_load_dword v39, v[4:5], off
	global_load_dword v27, v[36:37], off offset:4
	global_load_dword v26, v[36:37], off offset:20
	global_load_dword v32, v[12:13], off offset:16
	global_load_dword v31, v[12:13], off offset:32
	global_load_ushort v23, v[34:35], off offset:4
	global_load_ushort v25, v[34:35], off offset:8
	global_load_ushort v33, v[34:35], off offset:12
	global_load_dword v22, v[10:11], off
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v24, 0
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(11)
	v_cvt_f32_f16_e32 v10, v38
	s_waitcnt vmcnt(10)
	v_dot4c_i32_i8_e32 v28, 0x1010101, v30
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8_e32 v28, 0x1010101, v29
	s_waitcnt vmcnt(8)
	v_cvt_f32_f16_e32 v12, v39
	s_waitcnt vmcnt(7)
	v_dot4c_i32_i8_e32 v24, 0x1010101, v27
	s_waitcnt vmcnt(6)
	v_dot4c_i32_i8_e32 v24, 0x1010101, v26
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v13, v12
	s_cbranch_vccnz .LBB0_16
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=1
	v_mov_b64_e32 v[34:35], s[28:29]
	v_mad_i64_i32 v[34:35], s[24:25], v14, s20, v[34:35]
	v_lshl_add_u64 v[36:37], v[34:35], 0, v[8:9]
	v_lshl_add_u64 v[38:39], v[34:35], 0, v[0:1]
	global_load_ushort v14, v[36:37], off offset:8
	global_load_ushort v40, v[36:37], off offset:4
	v_lshl_add_u64 v[38:39], v[38:39], 0, v[2:3]
	global_load_dword v41, v[38:39], off offset:16
	global_load_dword v42, v[38:39], off offset:32
	global_load_ushort v43, v[36:37], off offset:12
	global_load_dword v44, v[34:35], off
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v35, 0
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v39, 0xf0f0f0f, v41
	v_lshrrev_b16_e32 v36, 2, v14
	v_lshrrev_b16_e32 v37, 2, v40
	v_and_b32_e32 v38, 0x3f3f, v40
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v40, 0xf0f0f0f, v42
	v_lshrrev_b32_e32 v41, 4, v41
	v_lshrrev_b32_e32 v42, 4, v42
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v45, 0xf0f, v43
	v_lshrrev_b16_e32 v43, 4, v43
	v_and_b32_e32 v36, 0x3030, v36
	v_and_b32_e32 v37, 0x3030, v37
	v_dot4c_i32_i8_e32 v34, v39, v30
	v_and_b32_e32 v39, 0xf0f0f0f, v41
	v_and_b32_e32 v41, 0xf0f0f0f, v42
	v_and_b32_e32 v42, 0xf0f, v43
	v_and_b32_e32 v14, 0x3f3f, v14
	v_or_b32_e32 v37, v45, v37
	v_or_b32_e32 v36, v42, v36
	v_cndmask_b32_e64 v37, v38, v37, s[6:7]
	v_cndmask_b32_e64 v14, v14, v36, s[6:7]
	v_perm_b32 v14, v14, v37, s21
	v_and_b32_e32 v36, 0x3f003f, v14
	v_dot4c_i32_i8_e32 v34, v40, v29
	v_dot4c_i32_i8_e32 v35, v39, v27
	v_pk_lshrrev_b16 v14, 8, v14 op_sel_hi:[0,1]
	v_lshrrev_b32_e32 v37, 16, v36
	v_and_b32_e32 v36, 63, v36
	v_dot4c_i32_i8_e32 v35, v41, v26
	v_lshrrev_b32_e32 v38, 16, v14
	v_and_b32_e32 v14, 63, v14
	v_mul_lo_u32 v34, v34, v36
	v_mul_lo_u32 v36, v28, v37
	v_mul_lo_u32 v14, v35, v14
	v_mul_lo_u32 v37, v24, v38
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v14
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v38, v44
	v_cvt_f32_f16_sdwa v39, v44 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_pk_fma_f32 v[34:35], v[10:11], v[34:35], 0 op_sel_hi:[1,1,0]
	s_nop 0
	v_pk_fma_f32 v[34:35], v[12:13], v[36:37], v[34:35]
	s_nop 0
	v_pk_mul_f32 v[34:35], v[34:35], v[38:39]
	s_nop 0
	v_sub_f32_e32 v14, v34, v35
	v_add_f32_e32 v19, v19, v14
	s_branch .LBB0_16
.LBB0_19:
	s_or_b64 exec, exec, s[14:15]
.LBB0_20:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[6:7], 0, v18
	v_cmp_ne_u32_e32 vcc, 0, v18
	v_lshlrev_b32_e32 v0, 2, v15
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB0_24
; %bb.21:
	v_lshlrev_b32_e32 v1, 8, v18
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	s_and_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB0_23
; %bb.22:
	ds_write_b32 v1, v19 offset:256
.LBB0_23:
	ds_write_b32 v1, v20
.LBB0_24:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[6:7]
	s_cbranch_execz .LBB0_58
; %bb.25:
	ds_read_b32 v1, v0
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB0_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v19, v19, v0
.LBB0_27:
	v_mbcnt_lo_u32_b32 v0, -1, 0
	v_mbcnt_hi_u32_b32 v2, -1, v0
	v_and_b32_e32 v0, 64, v2
	v_add_u32_e32 v3, 64, v0
	v_xor_b32_e32 v0, 32, v2
	v_cmp_lt_u32_e32 vcc, v0, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v20, v1
	v_xor_b32_e32 v1, 16, v2
	v_cndmask_b32_e32 v0, v2, v0, vcc
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v5, v0, v4
	v_cmp_lt_u32_e32 vcc, v1, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v4, v5
	v_cndmask_b32_e32 v1, v2, v1, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	ds_bpermute_b32 v6, v1, v5
	v_xor_b32_e32 v4, 8, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v5, v6
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v7, v4, v6
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v6, v7
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	ds_bpermute_b32 v8, v5, v7
	v_xor_b32_e32 v6, 2, v2
	v_cmp_lt_u32_e32 vcc, v6, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v7, v8
	v_cndmask_b32_e32 v6, v2, v6, vcc
	v_lshlrev_b32_e32 v6, 2, v6
	ds_bpermute_b32 v9, v6, v8
	v_xor_b32_e32 v7, 1, v2
	v_cmp_lt_u32_e32 vcc, v7, v3
	s_nop 1
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_lshlrev_b32_e32 v7, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v8, v9
	ds_bpermute_b32 v3, v7, v2
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB0_29
; %bb.28:
	ds_bpermute_b32 v0, v0, v19
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v19, v0
	ds_bpermute_b32 v1, v1, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v5, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v6, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v7, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v19, v0, v1
.LBB0_29:
	v_cmp_eq_u32_e32 vcc, 0, v15
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB0_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v16, v0
	s_cbranch_vccnz .LBB0_57
; %bb.31:
	v_add_f32_e32 v1, v17, v19
	s_cmp_lt_i32 s10, 3
	s_mov_b64 s[6:7], 0
	s_cbranch_scc1 .LBB0_35
; %bb.32:
	s_cmp_gt_i32 s10, 5
	s_cbranch_scc0 .LBB0_36
; %bb.33:
	s_cmp_eq_u32 s10, 6
	s_cbranch_scc0 .LBB0_37
; %bb.34:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s11, s11
	v_min_f32_e32 v2, v2, v3
	s_mov_b32 s3, 0xbfb8aa3b
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_fma_f32 v5, v2, s3, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v2, 0xb2a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s3, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s3, v2
	s_mov_b32 s3, 0xc2b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s3, v2
	v_max_f32_e32 v6, v0, v0
	v_min_f32_e32 v3, v6, v3
	v_cndmask_b32_e32 v4, v5, v4, vcc
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, s[8:9], v4, v4, v2
	v_rcp_f32_e32 v7, v5
	v_max_f32_e64 v6, -s11, -s11
	v_max_f32_e32 v3, v3, v6
	s_mov_b64 s[8:9], 0
	v_fma_f32 v6, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v6, v7
	v_div_scale_f32 v6, vcc, v2, v4, v2
	v_mul_f32_e32 v8, v6, v7
	v_fma_f32 v9, -v5, v8, v6
	v_fmac_f32_e32 v8, v9, v7
	v_fma_f32 v5, -v5, v8, v6
	v_div_fmas_f32 v5, v5, v7, v8
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB0_38
.LBB0_35:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_43
	s_branch .LBB0_48
.LBB0_36:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_39
	s_branch .LBB0_41
.LBB0_37:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
.LBB0_38:
	s_branch .LBB0_41
.LBB0_39:
	s_cmp_eq_u32 s10, 3
	s_cbranch_scc0 .LBB0_42
; %bb.40:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v4, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v4
	s_mov_b32 s3, 0x3fb8aa3b
	v_mul_f32_e32 v2, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s3, -v2
	v_rndne_f32_e32 v6, v2
	v_fmamk_f32 v5, v3, 0x32a5705f, v5
	v_sub_f32_e32 v2, v2, v6
	v_add_f32_e32 v2, v2, v5
	v_exp_f32_e32 v5, v2
	v_cvt_i32_f32_e32 v6, v6
	s_mov_b32 s3, 0xc2ce8ed0
	v_max_f32_e32 v2, v0, v0
	v_cmp_ngt_f32_e32 vcc, s3, v3
	v_ldexp_f32 v5, v5, v6
	s_mov_b32 s3, 0x42b17218
	v_min_f32_e32 v2, 0x40e00000, v2
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_mov_b32_e32 v6, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s3, v3
	v_max_f32_e32 v2, 0xc0e00000, v2
	s_nop 0
	v_cndmask_b32_e32 v3, v6, v5, vcc
	v_pk_add_f32 v[2:3], v[2:3], 1.0 op_sel_hi:[1,0]
	s_nop 0
	v_div_scale_f32 v5, s[8:9], v3, v3, v4
	v_rcp_f32_e32 v6, v5
	s_mov_b64 s[8:9], 0
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc, v4, v3, v4
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	v_fmac_f32_e32 v8, v9, v6
	v_fma_f32 v5, -v5, v8, v7
	v_div_fmas_f32 v5, v5, v6, v8
	v_div_fixup_f32 v3, v5, v3, v4
	v_mul_f32_e32 v2, v2, v3
.LBB0_41:
	s_branch .LBB0_48
.LBB0_42:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_48
.LBB0_43:
	s_cmp_gt_i32 s10, 1
	s_cbranch_scc0 .LBB0_45
; %bb.44:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	s_mov_b32 s3, 0xbfb8aa3b
	v_rndne_f32_e32 v3, v2
	v_sub_f32_e32 v4, v2, v3
	v_fma_f32 v2, v1, s3, -v2
	v_fmamk_f32 v2, v1, 0xb2a5705f, v2
	v_add_f32_e32 v2, v4, v2
	v_exp_f32_e32 v2, v2
	v_cvt_i32_f32_e32 v3, v3
	s_mov_b32 s3, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s3, v1
	s_mov_b32 s3, 0xc2b17218
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_mov_b32_e32 v3, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s3, v1
	s_nop 1
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, s[6:7], v2, v2, v1
	v_rcp_f32_e32 v4, v3
	s_mov_b64 s[6:7], 0
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB0_46
.LBB0_45:
	s_mov_b64 s[6:7], -1
                                        ; implicit-def: $vgpr2
.LBB0_46:
	s_andn2_b64 vcc, exec, s[6:7]
	s_mov_b64 s[6:7], 0
	s_cbranch_vccnz .LBB0_48
; %bb.47:
	s_cmp_lg_u32 s10, 1
	s_mov_b64 s[6:7], -1
	s_cselect_b64 s[8:9], -1, 0
.LBB0_48:
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccz .LBB0_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[6:7], 0
.LBB0_50:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB0_56
; %bb.51:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s3, 0x3f200000
	v_cmp_nlt_f32_e64 s[6:7], |v2|, s3
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[6:7], exec, s[8:9]
	s_cbranch_execz .LBB0_53
; %bb.52:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	s_mov_b32 s3, 0x3fb8aa3b
	v_rndne_f32_e32 v5, v4
	v_sub_f32_e32 v6, v4, v5
	v_fma_f32 v4, v3, s3, -v4
	v_fmamk_f32 v4, v3, 0x32a5705f, v4
	v_add_f32_e32 v4, v6, v4
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	s_mov_b32 s3, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s3, v3
	s_mov_b32 s3, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s3, v3
	s_nop 1
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	s_nop 0
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB0_53:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
; %bb.54:
	v_mul_f32_e32 v3, v2, v2
	v_mov_b32_e32 v4, 0x3ca908c9
	v_fmac_f32_e32 v4, 0xbbbac73d, v3
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
; %bb.55:
	s_or_b64 exec, exec, s[6:7]
	s_brev_b32 s3, -2
	v_bfi_b32 v2, s3, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_56:
	v_mov_b32_e32 v0, v2
.LBB0_57:
	s_load_dwordx2 s[0:1], s[0:1], 0x48
	s_mul_i32 s3, s26, s4
	s_mul_i32 s4, s22, s34
	s_add_i32 s2, s4, s2
	s_add_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB0_58:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 512
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 46
		.amdhsa_next_free_sgpr 44
		.amdhsa_accum_offset 48
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 46
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 44
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3312
; TotalNumSgprs: 50
; NumVgprs: 46
; NumAgprs: 0
; TotalNumVgprs: 46
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 5
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 46
; AccumOffset: 48
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 11
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.text._Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[8:9], s[0:1], 0x10
	s_load_dwordx4 s[16:19], s[0:1], 0x50
	s_mov_b32 s20, s3
	s_mov_b64 s[12:13], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB1_5
; %bb.1:
	s_mov_b32 s21, 0
	s_lshl_b64 s[10:11], s[20:21], 2
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	s_load_dword s5, s[8:9], 0x0
	s_nop 0
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB1_3
.LBB1_2:
	s_load_dwordx2 s[12:13], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s12, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s5, s3, s13
.LBB1_3:
	s_load_dword s24, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB1_6
; %bb.4:
	s_mul_hi_u32 s3, s17, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s3, s3, s18
	s_mul_i32 s3, s3, s19
	s_sub_i32 s6, s20, s3
	s_branch .LBB1_7
.LBB1_5:
                                        ; implicit-def: $sgpr5
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_branch .LBB1_2
.LBB1_6:
	s_mov_b32 s6, s20
.LBB1_7:
	s_load_dwordx4 s[12:15], s[0:1], 0x90
	v_bfe_u32 v11, v0, 10, 10
	v_and_b32_e32 v10, 0x3ff, v0
	v_lshl_add_u32 v0, v11, 6, v10
	s_lshr_b32 s3, s16, 8
	v_lshrrev_b32_e32 v13, 4, v0
	v_cmp_gt_u32_e32 vcc, s3, v13
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v12, 0
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB1_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s7, s11, s4
	s_add_i32 s7, s4, s7
	v_lshlrev_b32_e32 v0, 1, v10
	s_load_dwordx4 s[16:19], s[0:1], 0x0
	s_lshr_b32 s7, s7, s24
	v_and_b32_e32 v4, 30, v0
	s_mul_i32 s21, s21, s2
	s_mul_i32 s7, s7, s12
	v_bfe_u32 v8, v4, 3, 1
	v_cmp_lt_u32_e32 vcc, 15, v4
	v_bfe_u32 v4, v10, 2, 2
	s_mul_i32 s5, s5, s8
	s_mul_i32 s9, s6, s9
	s_add_i32 s7, s7, s21
	v_mul_hi_u32_u24_e32 v5, 0x48, v4
	v_mul_u32_u24_e32 v4, 0x48, v4
	s_movk_i32 s6, 0x120
	s_mul_i32 s8, s13, s4
	s_add_i32 s5, s5, s7
	v_mad_u64_u32 v[4:5], s[6:7], v13, s6, v[4:5]
	s_mul_hi_u32 s6, s8, 36
	s_mul_i32 s8, s8, 36
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s18, s8
	s_mul_hi_u32 s7, s9, 36
	s_mul_i32 s9, s9, 36
	s_addc_u32 s11, s19, s6
	s_add_u32 s6, s8, s9
	s_addc_u32 s7, s11, s7
	v_bfe_u32 v0, v0, 3, 2
	v_and_b32_e32 v2, 3, v10
	v_lshl_add_u64 v[4:5], s[6:7], 0, v[4:5]
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v2, 2, v2
	v_mov_b32_e32 v3, v1
	v_lshl_add_u64 v[4:5], v[4:5], 0, 36
	s_mov_b64 s[8:9], 0
	v_mov_b32_e32 v12, 0
	s_movk_i32 s11, 0x90
	v_mov_b64_e32 v[6:7], s[16:17]
	v_lshlrev_b32_e32 v8, 1, v8
	v_mov_b32_e32 v9, v1
	s_mov_b32 s15, 0x5040100
	s_mov_b64 s[12:13], 0x900
.LBB1_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, s5, v13
	v_lshl_add_u64 v[14:15], v[4:5], 0, v[2:3]
	v_mad_i64_i32 v[16:17], s[6:7], v16, s11, v[6:7]
	global_load_dword v22, v[14:15], off offset:-32
	global_load_dword v23, v[14:15], off offset:-16
	global_load_dword v24, v[14:15], off offset:4
	global_load_dword v25, v[14:15], off offset:20
	v_lshl_add_u64 v[14:15], v[16:17], 0, v[0:1]
	global_load_dword v20, v[4:5], off offset:-36
	global_load_dword v21, v[4:5], off
	v_lshl_add_u64 v[14:15], v[14:15], 0, v[2:3]
	v_lshl_add_u64 v[18:19], v[16:17], 0, v[8:9]
	global_load_dword v26, v[14:15], off offset:16
	global_load_dword v27, v[14:15], off offset:32
	global_load_ushort v28, v[18:19], off offset:8
	global_load_ushort v29, v[18:19], off offset:12
	global_load_ushort v30, v[18:19], off offset:4
	global_load_dword v31, v[16:17], off
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v32, 0
	v_add_u32_e32 v13, 8, v13
	v_cmp_le_u32_e64 s[6:7], s3, v13
	v_lshl_add_u64 v[4:5], v[4:5], 0, s[12:13]
	s_or_b64 s[8:9], s[6:7], s[8:9]
	s_waitcnt vmcnt(11)
	v_dot4c_i32_i8_e32 v17, 0x1010101, v22
	s_waitcnt vmcnt(10)
	v_dot4c_i32_i8_e32 v17, 0x1010101, v23
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8_e32 v32, 0x1010101, v24
	s_waitcnt vmcnt(8)
	v_dot4c_i32_i8_e32 v32, 0x1010101, v25
	s_waitcnt vmcnt(7)
	v_cvt_f32_f16_e32 v14, v20
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v16, v21
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v20, 0xf0f0f0f, v26
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v21, 0xf0f0f0f, v27
	v_lshrrev_b32_e32 v26, 4, v26
	v_lshrrev_b32_e32 v27, 4, v27
	s_waitcnt vmcnt(3)
	v_lshrrev_b16_e32 v33, 2, v28
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v34, 0xf0f, v29
	v_lshrrev_b16_e32 v29, 4, v29
	s_waitcnt vmcnt(1)
	v_lshrrev_b16_e32 v35, 2, v30
	v_dot4c_i32_i8_e32 v15, v20, v22
	v_and_b32_e32 v20, 0xf0f0f0f, v26
	v_and_b32_e32 v22, 0xf0f0f0f, v27
	v_and_b32_e32 v26, 0x3030, v33
	v_and_b32_e32 v27, 0xf0f, v29
	v_and_b32_e32 v29, 0x3030, v35
	v_and_b32_e32 v28, 0x3f3f, v28
	v_and_b32_e32 v30, 0x3f3f, v30
	v_dot4c_i32_i8_e32 v15, v21, v23
	v_dot4c_i32_i8_e32 v19, v20, v24
	v_or_b32_e32 v20, v27, v26
	v_or_b32_e32 v21, v34, v29
	v_cndmask_b32_e32 v20, v28, v20, vcc
	v_cndmask_b32_e32 v21, v30, v21, vcc
	v_perm_b32 v20, v20, v21, s15
	v_and_b32_e32 v21, 0x3f003f, v20
	v_dot4c_i32_i8_e32 v19, v22, v25
	v_pk_lshrrev_b16 v20, 8, v20 op_sel_hi:[0,1]
	v_lshrrev_b32_e32 v22, 16, v21
	v_and_b32_e32 v21, 63, v21
	v_lshrrev_b32_e32 v23, 16, v20
	v_and_b32_e32 v20, 63, v20
	v_mul_lo_u32 v15, v15, v21
	v_mul_lo_u32 v17, v17, v22
	v_mul_lo_u32 v19, v19, v20
	v_mul_lo_u32 v22, v32, v23
	v_cvt_f32_i32_e32 v21, v17
	v_cvt_f32_i32_e32 v20, v15
	v_cvt_f32_i32_e32 v23, v22
	v_cvt_f32_i32_e32 v22, v19
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v18, v31
	v_cvt_f32_f16_sdwa v19, v31 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_pk_fma_f32 v[14:15], v[14:15], v[20:21], 0 op_sel_hi:[0,1,0]
	v_pk_fma_f32 v[14:15], v[16:17], v[22:23], v[14:15] op_sel_hi:[0,1,1]
	v_pk_mul_f32 v[14:15], v[14:15], v[18:19]
	s_nop 0
	v_sub_f32_e32 v14, v14, v15
	v_add_f32_e32 v12, v12, v14
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz .LBB1_9
; %bb.10:
	s_or_b64 exec, exec, s[8:9]
.LBB1_11:
	s_or_b64 exec, exec, s[22:23]
	v_cmp_eq_u32_e32 vcc, 0, v11
	v_cmp_ne_u32_e64 s[6:7], 0, v11
	v_lshlrev_b32_e32 v0, 2, v10
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[6:7]
; %bb.12:
	v_lshlrev_b32_e32 v1, 8, v11
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	ds_write_b32 v1, v12
; %bb.13:
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB1_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	ds_read_b32 v0, v0
	v_mbcnt_hi_u32_b32 v1, -1, v1
	v_and_b32_e32 v2, 64, v1
	v_add_u32_e32 v2, 64, v2
	v_xor_b32_e32 v3, 32, v1
	v_cmp_lt_u32_e32 vcc, v3, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v12, v0
	v_xor_b32_e32 v4, 16, v1
	v_cndmask_b32_e32 v3, v1, v3, vcc
	v_lshlrev_b32_e32 v3, 2, v3
	ds_bpermute_b32 v3, v3, v0
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_mov_b32 s3, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 8, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 4, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 2, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 1, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v1, v1, v4, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	ds_bpermute_b32 v1, v1, v0
	v_cmp_eq_u32_e32 vcc, 0, v10
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB1_16
; %bb.15:
	s_load_dwordx2 s[0:1], s[0:1], 0x48
	s_mul_i32 s5, s10, s20
	s_add_i32 s2, s5, s2
	s_mul_i32 s4, s14, s4
	s_add_i32 s2, s2, s4
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	v_add_f32_e32 v0, v0, v1
	s_addc_u32 s1, s1, s3
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
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 36
		.amdhsa_next_free_sgpr 25
		.amdhsa_accum_offset 36
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 36
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 25
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1388
; TotalNumSgprs: 31
; NumVgprs: 36
; NumAgprs: 0
; TotalNumVgprs: 36
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 36
; AccumOffset: 36
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 8
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx8 s[12:19], s[0:1], 0x0
	s_load_dwordx4 s[28:31], s[0:1], 0x20
	s_load_dwordx4 s[8:11], s[0:1], 0x50
	s_load_dwordx4 s[20:23], s[0:1], 0x78
	s_mov_b32 s34, s3
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[16:17], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[16:17], 0
	s_mov_b64 s[24:25], 0
	s_cbranch_scc1 .LBB2_5
; %bb.1:
	s_mov_b32 s35, 0
	s_lshl_b64 s[26:27], s[34:35], 2
	s_add_u32 s16, s16, s26
	s_addc_u32 s17, s17, s27
	s_load_dword s5, s[16:17], 0x0
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB2_3
.LBB2_2:
	s_load_dwordx2 s[16:17], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s16, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s5, s3, s17
.LBB2_3:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB2_6
; %bb.4:
	s_mul_hi_u32 s3, s9, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s3, s3, s10
	s_mul_i32 s3, s3, s11
	s_sub_i32 s38, s34, s3
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s3, s5
	s_branch .LBB2_7
.LBB2_5:
                                        ; implicit-def: $sgpr5
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_branch .LBB2_2
.LBB2_6:
	s_mov_b32 s3, s34
	s_mov_b32 s38, s34
.LBB2_7:
	s_load_dwordx2 s[10:11], s[0:1], 0x40
	s_load_dwordx4 s[24:27], s[0:1], 0x90
	v_bfe_u32 v16, v0, 10, 10
	v_and_b32_e32 v13, 0x3ff, v0
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v0, v13, v16
	s_cselect_b64 s[16:17], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s3, s22
	s_cbranch_scc1 .LBB2_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s40, s26, s4
	s_mov_b32 s41, 0
	s_lshl_b64 s[42:43], s[40:41], 2
	s_add_u32 s3, s18, s42
	s_mov_b32 s37, s41
	s_addc_u32 s9, s19, s43
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s27, s3, s18
	s_addc_u32 s9, s9, s19
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[18:19], s[2:3], 2
	s_add_u32 s18, s27, s18
	s_addc_u32 s19, s9, s19
	v_lshlrev_b32_e32 v0, 2, v13
	global_load_dword v14, v0, s[18:19]
	s_branch .LBB2_11
.LBB2_10:
	v_mov_b32_e32 v14, 0
.LBB2_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[16:17]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB2_13
; %bb.12:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s4
	s_mov_b32 s19, 0
	s_lshl_b64 s[40:41], s[18:19], 2
	s_add_u32 s3, s30, s40
	s_mov_b32 s37, s19
	s_addc_u32 s9, s31, s41
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s27, s3, s18
	s_addc_u32 s9, s9, s19
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[18:19], s[2:3], 2
	s_add_u32 s18, s27, s18
	s_addc_u32 s19, s9, s19
	v_lshlrev_b32_e32 v0, 2, v13
	global_load_dword v15, v0, s[18:19]
	s_branch .LBB2_14
.LBB2_13:
	v_mov_b32_e32 v15, 0
.LBB2_14:
	s_or_b64 exec, exec, s[6:7]
	v_lshl_add_u32 v0, v16, 6, v13
	s_lshr_b32 s3, s8, 8
	v_lshrrev_b32_e32 v19, 5, v0
	v_cndmask_b32_e64 v0, 0, 1, s[16:17]
	v_cmp_gt_u32_e32 vcc, s3, v19
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v17, 0
	v_cmp_ne_u32_e64 s[8:9], 1, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_20
; %bb.15:
	s_mul_hi_u32 s18, s23, s4
	s_add_i32 s18, s4, s18
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s18, s18, s35
	v_and_b32_e32 v3, 15, v13
	s_mul_i32 s33, s33, s2
	s_mul_i32 s18, s18, s24
	v_and_b32_e32 v0, 31, v13
	v_bfe_u32 v2, v13, 4, 1
	v_lshrrev_b16_e32 v4, 3, v3
	s_mul_i32 s5, s5, s20
	s_mul_i32 s19, s38, s21
	s_add_i32 s18, s18, s33
	v_lshl_or_b32 v6, v2, 2, v4
	v_lshlrev_b32_e32 v8, 1, v0
	v_lshlrev_b32_e32 v0, 3, v2
	v_and_b32_e32 v2, 7, v13
	s_add_i32 s5, s5, s18
	v_or_b32_e32 v5, v0, v2
	s_mul_hi_u32 s18, s19, 36
	s_mul_i32 s19, s19, 36
	v_lshlrev_b32_e32 v10, 1, v5
	v_lshlrev_b32_e32 v20, 1, v4
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v5, s18
	s_movk_i32 s18, 0x120
	s_mul_i32 s20, s25, s4
	v_mad_u64_u32 v[4:5], s[18:19], v19, s18, v[4:5]
	v_mad_u64_u32 v[4:5], s[18:19], s20, 36, v[4:5]
	v_lshrrev_b16_e32 v3, 2, v3
	v_mad_u64_u32 v[4:5], s[18:19], v6, 36, v[4:5]
	v_or_b32_e32 v0, v0, v3
	v_lshlrev_b32_e32 v2, 2, v2
	v_mov_b32_e32 v3, v1
	v_lshl_add_u64 v[4:5], s[14:15], 0, v[4:5]
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v17, 0
	s_movk_i32 s18, 0xd2
	v_mov_b64_e32 v[6:7], s[12:13]
	v_lshlrev_b32_e32 v8, 1, v8
	v_mov_b32_e32 v9, v1
	v_lshlrev_b32_e32 v10, 1, v10
	v_mov_b32_e32 v11, v1
	s_mov_b32 s19, 0x30303030
	s_movk_i32 s20, 0x3f00
	s_movk_i32 s21, 0xe000
	s_mov_b64 s[12:13], 0x480
	v_mov_b32_e32 v21, 8
	s_branch .LBB2_17
.LBB2_16:                               ;   in Loop: Header=BB2_17 Depth=1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v12, v20, v29
	s_waitcnt vmcnt(1)
	v_bfe_i32 v29, v30, 0, 8
	v_and_b32_e32 v30, 0xf0f0f0f, v27
	v_lshlrev_b32_e32 v31, 4, v12
	v_and_or_b32 v30, v31, s19, v30
	v_lshlrev_b16_e32 v32, 8, v30
	v_and_b32_e32 v31, 0x3f00, v30
	v_add_u16_e32 v32, 0xe000, v32
	v_or_b32_sdwa v31, v31, v32 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v32, v30, s20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v30, v21, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v30, 0xe000, v30
	v_or_b32_sdwa v30, v32, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v31, 0xe000, v31
	v_add_u16_sdwa v30, v30, s21 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_lshrrev_b32_e32 v27, 4, v27
	v_or_b32_e32 v30, v31, v30
	v_mov_b32_e32 v31, 0
	v_and_b32_e32 v27, 0xf0f0f0f, v27
	v_dot4c_i32_i8_e32 v31, v30, v26
	v_and_or_b32 v12, v12, s19, v27
	v_and_b32_e32 v27, 0x3f00, v12
	s_waitcnt vmcnt(0)
	v_bfe_i32 v28, v28, 0, 8
	v_mul_lo_u32 v26, v31, v29
	v_lshlrev_b16_e32 v29, 8, v12
	v_add_u16_e32 v29, 0xe000, v29
	v_or_b32_sdwa v27, v27, v29 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v29, v12, s20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v12, v21, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v12, 0xe000, v12
	v_or_b32_sdwa v12, v29, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v27, 0xe000, v27
	v_add_u16_sdwa v12, v12, s21 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_cvt_f32_i32_e32 v26, v26
	v_or_b32_e32 v12, v27, v12
	v_mov_b32_e32 v27, 0
	v_dot4c_i32_i8_e32 v27, v12, v22
	v_fma_f32 v22, v25, v26, 0
	v_add_u32_e32 v19, 4, v19
	v_cmp_le_u32_e32 vcc, s3, v19
	v_mul_lo_u32 v12, v27, v28
	v_cvt_f32_i32_e32 v12, v12
	s_or_b64 s[14:15], vcc, s[14:15]
	v_lshl_add_u64 v[4:5], v[4:5], 0, s[12:13]
	v_fmac_f32_e32 v22, v24, v12
	v_fma_mix_f32 v18, v22, v23, v18 op_sel_hi:[0,1,0]
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB2_19
.LBB2_17:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v12, s5, v19
	v_mad_i64_i32 v[24:25], s[24:25], v12, s18, v[6:7]
	v_lshl_add_u64 v[28:29], v[4:5], 0, v[2:3]
	v_lshl_add_u64 v[32:33], v[24:25], 0, v[8:9]
	global_load_dword v26, v[28:29], off offset:4
	global_load_dword v22, v[28:29], off offset:76
	global_load_dword v31, v[4:5], off
	global_load_dword v38, v[4:5], off offset:72
	v_lshl_add_u64 v[34:35], v[24:25], 0, v[10:11]
	v_lshl_add_u64 v[36:37], v[24:25], 0, v[0:1]
	global_load_dword v27, v[32:33], off
	global_load_dword v29, v[34:35], off offset:128
	global_load_ushort v23, v[24:25], off offset:208
	global_load_ubyte v30, v[36:37], off offset:192
	global_load_ubyte v28, v[36:37], off offset:196
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v25, v31
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v24, v38
	s_cbranch_vccnz .LBB2_16
; %bb.18:                               ;   in Loop: Header=BB2_17 Depth=1
	v_mov_b64_e32 v[32:33], s[28:29]
	v_mad_i64_i32 v[32:33], s[24:25], v12, s18, v[32:33]
	v_lshl_add_u64 v[34:35], v[32:33], 0, v[10:11]
	v_lshl_add_u64 v[36:37], v[32:33], 0, v[8:9]
	global_load_dword v12, v[34:35], off offset:128
	global_load_dword v31, v[36:37], off
	v_lshl_add_u64 v[34:35], v[32:33], 0, v[0:1]
	global_load_sbyte v36, v[34:35], off offset:192
	global_load_sbyte v37, v[34:35], off offset:196
	global_load_ushort v38, v[32:33], off offset:208
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	s_waitcnt vmcnt(4)
	v_ashrrev_i32_e32 v12, v20, v12
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v34, 0xf0f0f0f, v31
	v_lshrrev_b32_e32 v31, 4, v31
	v_lshlrev_b32_e32 v35, 4, v12
	v_and_b32_e32 v31, 0xf0f0f0f, v31
	v_and_or_b32 v34, v35, s19, v34
	v_and_or_b32 v12, v12, s19, v31
	v_and_b32_e32 v31, 0x3f00, v34
	v_lshlrev_b16_e32 v35, 8, v34
	v_and_b32_sdwa v39, v34, s20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v34, v21, v34 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_and_b32_e32 v40, 0x3f00, v12
	v_lshlrev_b16_e32 v41, 8, v12
	v_and_b32_sdwa v42, v12, s20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v12, v21, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v35, 0xe000, v35
	v_add_u16_e32 v34, 0xe000, v34
	v_add_u16_e32 v41, 0xe000, v41
	v_add_u16_e32 v12, 0xe000, v12
	v_or_b32_sdwa v31, v31, v35 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v34, v39, v34 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v35, v40, v41 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v12, v42, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v31, 0xe000, v31
	v_add_u16_sdwa v34, v34, s21 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v35, 0xe000, v35
	v_add_u16_sdwa v12, v12, s21 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v31, v31, v34
	v_or_b32_e32 v12, v35, v12
	v_dot4c_i32_i8_e32 v32, v31, v26
	v_dot4c_i32_i8_e32 v33, v12, v22
	s_waitcnt vmcnt(2)
	s_nop 0
	v_mul_lo_u32 v12, v32, v36
	v_cvt_f32_i32_e32 v12, v12
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v31, v33, v37
	v_cvt_f32_i32_e32 v31, v31
	v_fma_f32 v12, v25, v12, 0
	v_fmac_f32_e32 v12, v24, v31
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v17, v12, v38, v17 op_sel_hi:[0,1,0]
	s_branch .LBB2_16
.LBB2_19:
	s_or_b64 exec, exec, s[14:15]
.LBB2_20:
	s_or_b64 exec, exec, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], 0, v16
	v_cmp_ne_u32_e32 vcc, 0, v16
	v_lshlrev_b32_e32 v0, 2, v13
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB2_24
; %bb.21:
	v_lshlrev_b32_e32 v1, 8, v16
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	s_and_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB2_23
; %bb.22:
	ds_write_b32 v1, v17 offset:256
.LBB2_23:
	ds_write_b32 v1, v18
.LBB2_24:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[6:7]
	s_cbranch_execz .LBB2_58
; %bb.25:
	ds_read_b32 v1, v0
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB2_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v17, v17, v0
.LBB2_27:
	v_mbcnt_lo_u32_b32 v0, -1, 0
	v_mbcnt_hi_u32_b32 v2, -1, v0
	v_and_b32_e32 v0, 64, v2
	v_add_u32_e32 v3, 64, v0
	v_xor_b32_e32 v0, 32, v2
	v_cmp_lt_u32_e32 vcc, v0, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v18, v1
	v_xor_b32_e32 v1, 16, v2
	v_cndmask_b32_e32 v0, v2, v0, vcc
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v5, v0, v4
	v_cmp_lt_u32_e32 vcc, v1, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v4, v5
	v_cndmask_b32_e32 v1, v2, v1, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	ds_bpermute_b32 v6, v1, v5
	v_xor_b32_e32 v4, 8, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v5, v6
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v7, v4, v6
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v6, v7
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	ds_bpermute_b32 v8, v5, v7
	v_xor_b32_e32 v6, 2, v2
	v_cmp_lt_u32_e32 vcc, v6, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v7, v8
	v_cndmask_b32_e32 v6, v2, v6, vcc
	v_lshlrev_b32_e32 v6, 2, v6
	ds_bpermute_b32 v9, v6, v8
	v_xor_b32_e32 v7, 1, v2
	v_cmp_lt_u32_e32 vcc, v7, v3
	s_nop 1
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_lshlrev_b32_e32 v7, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v2, v8, v9
	ds_bpermute_b32 v3, v7, v2
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB2_29
; %bb.28:
	ds_bpermute_b32 v0, v0, v17
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v17, v0
	ds_bpermute_b32 v1, v1, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v4, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v5, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v6, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v1
	ds_bpermute_b32 v1, v7, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v17, v0, v1
.LBB2_29:
	v_cmp_eq_u32_e32 vcc, 0, v13
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB2_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v14, v0
	s_cbranch_vccnz .LBB2_57
; %bb.31:
	v_add_f32_e32 v1, v15, v17
	s_cmp_lt_i32 s10, 3
	s_mov_b64 s[6:7], 0
	s_cbranch_scc1 .LBB2_35
; %bb.32:
	s_cmp_gt_i32 s10, 5
	s_cbranch_scc0 .LBB2_36
; %bb.33:
	s_cmp_eq_u32 s10, 6
	s_cbranch_scc0 .LBB2_37
; %bb.34:
	v_max_f32_e32 v2, v1, v1
	v_max_f32_e64 v3, s11, s11
	v_min_f32_e32 v2, v2, v3
	s_mov_b32 s3, 0xbfb8aa3b
	v_mul_f32_e32 v4, 0xbfb8aa3b, v2
	v_fma_f32 v5, v2, s3, -v4
	v_rndne_f32_e32 v6, v4
	v_fmamk_f32 v5, v2, 0xb2a5705f, v5
	v_sub_f32_e32 v4, v4, v6
	v_add_f32_e32 v4, v4, v5
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v6
	s_mov_b32 s3, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s3, v2
	s_mov_b32 s3, 0xc2b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s3, v2
	v_max_f32_e32 v6, v0, v0
	v_min_f32_e32 v3, v6, v3
	v_cndmask_b32_e32 v4, v5, v4, vcc
	v_add_f32_e32 v4, 1.0, v4
	v_div_scale_f32 v5, s[8:9], v4, v4, v2
	v_rcp_f32_e32 v7, v5
	v_max_f32_e64 v6, -s11, -s11
	v_max_f32_e32 v3, v3, v6
	s_mov_b64 s[8:9], 0
	v_fma_f32 v6, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v6, v7
	v_div_scale_f32 v6, vcc, v2, v4, v2
	v_mul_f32_e32 v8, v6, v7
	v_fma_f32 v9, -v5, v8, v6
	v_fmac_f32_e32 v8, v9, v7
	v_fma_f32 v5, -v5, v8, v6
	v_div_fmas_f32 v5, v5, v7, v8
	v_div_fixup_f32 v2, v5, v4, v2
	v_mul_f32_e32 v2, v3, v2
	s_branch .LBB2_38
.LBB2_35:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_43
	s_branch .LBB2_48
.LBB2_36:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_39
	s_branch .LBB2_41
.LBB2_37:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
.LBB2_38:
	s_branch .LBB2_41
.LBB2_39:
	s_cmp_eq_u32 s10, 3
	s_cbranch_scc0 .LBB2_42
; %bb.40:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v4, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v4
	s_mov_b32 s3, 0x3fb8aa3b
	v_mul_f32_e32 v2, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s3, -v2
	v_rndne_f32_e32 v6, v2
	v_fmamk_f32 v5, v3, 0x32a5705f, v5
	v_sub_f32_e32 v2, v2, v6
	v_add_f32_e32 v2, v2, v5
	v_exp_f32_e32 v5, v2
	v_cvt_i32_f32_e32 v6, v6
	s_mov_b32 s3, 0xc2ce8ed0
	v_max_f32_e32 v2, v0, v0
	v_cmp_ngt_f32_e32 vcc, s3, v3
	v_ldexp_f32 v5, v5, v6
	s_mov_b32 s3, 0x42b17218
	v_min_f32_e32 v2, 0x40e00000, v2
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_mov_b32_e32 v6, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s3, v3
	v_max_f32_e32 v2, 0xc0e00000, v2
	s_nop 0
	v_cndmask_b32_e32 v3, v6, v5, vcc
	v_pk_add_f32 v[2:3], v[2:3], 1.0 op_sel_hi:[1,0]
	s_nop 0
	v_div_scale_f32 v5, s[8:9], v3, v3, v4
	v_rcp_f32_e32 v6, v5
	s_mov_b64 s[8:9], 0
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc, v4, v3, v4
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v9, -v5, v8, v7
	v_fmac_f32_e32 v8, v9, v6
	v_fma_f32 v5, -v5, v8, v7
	v_div_fmas_f32 v5, v5, v6, v8
	v_div_fixup_f32 v3, v5, v3, v4
	v_mul_f32_e32 v2, v2, v3
.LBB2_41:
	s_branch .LBB2_48
.LBB2_42:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_48
.LBB2_43:
	s_cmp_gt_i32 s10, 1
	s_cbranch_scc0 .LBB2_45
; %bb.44:
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	s_mov_b32 s3, 0xbfb8aa3b
	v_rndne_f32_e32 v3, v2
	v_sub_f32_e32 v4, v2, v3
	v_fma_f32 v2, v1, s3, -v2
	v_fmamk_f32 v2, v1, 0xb2a5705f, v2
	v_add_f32_e32 v2, v4, v2
	v_exp_f32_e32 v2, v2
	v_cvt_i32_f32_e32 v3, v3
	s_mov_b32 s3, 0x42ce8ed0
	v_cmp_nlt_f32_e32 vcc, s3, v1
	s_mov_b32 s3, 0xc2b17218
	v_ldexp_f32 v2, v2, v3
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_mov_b32_e32 v3, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s3, v1
	s_nop 1
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_add_f32_e32 v2, 1.0, v2
	v_div_scale_f32 v3, s[6:7], v2, v2, v1
	v_rcp_f32_e32 v4, v3
	s_mov_b64 s[6:7], 0
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc, v1, v2, v1
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_fixup_f32 v2, v3, v2, v1
	v_mul_f32_e32 v2, v0, v2
	s_branch .LBB2_46
.LBB2_45:
	s_mov_b64 s[6:7], -1
                                        ; implicit-def: $vgpr2
.LBB2_46:
	s_andn2_b64 vcc, exec, s[6:7]
	s_mov_b64 s[6:7], 0
	s_cbranch_vccnz .LBB2_48
; %bb.47:
	s_cmp_lg_u32 s10, 1
	s_mov_b64 s[6:7], -1
	s_cselect_b64 s[8:9], -1, 0
.LBB2_48:
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccz .LBB2_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[6:7], 0
.LBB2_50:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB2_56
; %bb.51:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s3, 0x3f200000
	v_cmp_nlt_f32_e64 s[6:7], |v2|, s3
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[6:7], exec, s[8:9]
	s_cbranch_execz .LBB2_53
; %bb.52:
	v_add_f32_e64 v3, |v2|, |v2|
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	s_mov_b32 s3, 0x3fb8aa3b
	v_rndne_f32_e32 v5, v4
	v_sub_f32_e32 v6, v4, v5
	v_fma_f32 v4, v3, s3, -v4
	v_fmamk_f32 v4, v3, 0x32a5705f, v4
	v_add_f32_e32 v4, v6, v4
	v_exp_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	s_mov_b32 s3, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s3, v3
	s_mov_b32 s3, 0x42b17218
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_mov_b32_e32 v5, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s3, v3
	s_nop 1
	v_cndmask_b32_e32 v3, v5, v4, vcc
	v_add_f32_e32 v3, 1.0, v3
	v_rcp_f32_e32 v3, v3
	s_nop 0
	v_fma_f32 v3, v3, -2.0, 1.0
.LBB2_53:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
; %bb.54:
	v_mul_f32_e32 v3, v2, v2
	v_mov_b32_e32 v4, 0x3ca908c9
	v_fmac_f32_e32 v4, 0xbbbac73d, v3
	v_fmaak_f32 v4, v3, v4, 0xbd5c1c4e
	v_fmaak_f32 v4, v3, v4, 0x3e088382
	v_fmaak_f32 v4, v3, v4, 0xbeaaaa99
	v_mul_f32_e64 v4, |v2|, v4
	v_fma_f32 v3, v3, v4, |v2|
; %bb.55:
	s_or_b64 exec, exec, s[6:7]
	s_brev_b32 s3, -2
	v_bfi_b32 v2, s3, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_56:
	v_mov_b32_e32 v0, v2
.LBB2_57:
	s_load_dwordx2 s[0:1], s[0:1], 0x48
	s_mul_i32 s3, s26, s4
	s_mul_i32 s4, s22, s34
	s_add_i32 s2, s4, s2
	s_add_i32 s2, s2, s3
	s_mov_b32 s3, 0
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	s_addc_u32 s1, s1, s3
	v_mov_b32_e32 v1, 0
	global_store_dword v1, v0, s[0:1]
.LBB2_58:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
		.amdhsa_group_segment_fixed_size 512
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 43
		.amdhsa_next_free_sgpr 44
		.amdhsa_accum_offset 44
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 43
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_agpr, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.numbered_sgpr, 44
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_named_barrier, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.private_seg_size, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_vcc, 1
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.uses_flat_scratch, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_dyn_sized_stack, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_recursion, 0
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3196
; TotalNumSgprs: 50
; NumVgprs: 43
; NumAgprs: 0
; TotalNumVgprs: 43
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 5
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 43
; AccumOffset: 44
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 10
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.text._Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
	.protected	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj ; -- Begin function _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.globl	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
	.p2align	8
	.type	_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[8:9], s[0:1], 0x10
	s_load_dwordx4 s[16:19], s[0:1], 0x50
	s_mov_b32 s20, s3
	s_mov_b64 s[12:13], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB3_5
; %bb.1:
	s_mov_b32 s21, 0
	s_lshl_b64 s[10:11], s[20:21], 2
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	s_load_dword s5, s[8:9], 0x0
	s_nop 0
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_3
.LBB3_2:
	s_load_dwordx2 s[12:13], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s12, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s5, s3, s13
.LBB3_3:
	s_load_dword s22, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB3_6
; %bb.4:
	s_mul_hi_u32 s3, s17, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s3, s3, s18
	s_mul_i32 s3, s3, s19
	s_sub_i32 s23, s20, s3
	s_branch .LBB3_7
.LBB3_5:
                                        ; implicit-def: $sgpr5
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_branch .LBB3_2
.LBB3_6:
	s_mov_b32 s23, s20
.LBB3_7:
	s_load_dwordx4 s[12:15], s[0:1], 0x90
	v_bfe_u32 v13, v0, 10, 10
	v_and_b32_e32 v12, 0x3ff, v0
	v_lshl_add_u32 v0, v13, 6, v12
	s_lshr_b32 s3, s16, 8
	v_lshrrev_b32_e32 v15, 5, v0
	v_cmp_gt_u32_e32 vcc, s3, v15
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v14, 0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB3_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s8, s11, s4
	s_add_i32 s8, s4, s8
	s_lshr_b32 s8, s8, s22
	v_and_b32_e32 v3, 15, v12
	s_mul_i32 s21, s21, s2
	s_mul_i32 s8, s8, s12
	v_and_b32_e32 v0, 31, v12
	v_bfe_u32 v2, v12, 4, 1
	v_lshrrev_b16_e32 v4, 3, v3
	s_mul_i32 s9, s23, s9
	s_add_i32 s8, s8, s21
	v_lshl_or_b32 v6, v2, 2, v4
	v_lshlrev_b32_e32 v8, 1, v0
	v_lshlrev_b32_e32 v0, 3, v2
	v_and_b32_e32 v2, 7, v12
	s_load_dwordx4 s[16:19], s[0:1], 0x0
	s_add_i32 s5, s5, s8
	v_or_b32_e32 v5, v0, v2
	s_mul_hi_u32 s8, s9, 36
	s_mul_i32 s9, s9, 36
	v_lshlrev_b32_e32 v10, 1, v5
	v_lshlrev_b32_e32 v16, 1, v4
	v_mov_b32_e32 v4, s9
	v_mov_b32_e32 v5, s8
	s_movk_i32 s8, 0x120
	s_mul_i32 s11, s13, s4
	v_mad_u64_u32 v[4:5], s[8:9], v15, s8, v[4:5]
	v_mad_u64_u32 v[4:5], s[8:9], s11, 36, v[4:5]
	v_lshrrev_b16_e32 v3, 2, v3
	v_mad_u64_u32 v[4:5], s[8:9], v6, 36, v[4:5]
	v_or_b32_e32 v0, v0, v3
	v_lshlrev_b32_e32 v2, 2, v2
	v_mov_b32_e32 v3, v1
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[4:5], s[18:19], 0, v[4:5]
	s_mov_b64 s[8:9], 0
	v_mov_b32_e32 v14, 0
	s_movk_i32 s11, 0xd2
	v_mov_b64_e32 v[6:7], s[16:17]
	v_lshlrev_b32_e32 v8, 1, v8
	v_mov_b32_e32 v9, v1
	v_lshlrev_b32_e32 v10, 1, v10
	v_mov_b32_e32 v11, v1
	s_mov_b32 s15, 0x30303030
	s_movk_i32 s16, 0x3f00
	s_movk_i32 s17, 0xe000
	s_mov_b64 s[12:13], 0x480
	v_mov_b32_e32 v17, 8
.LBB3_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v18, s5, v15
	v_mad_i64_i32 v[18:19], s[18:19], v18, s11, v[6:7]
	v_lshl_add_u64 v[22:23], v[18:19], 0, v[10:11]
	v_lshl_add_u64 v[20:21], v[18:19], 0, v[8:9]
	global_load_dword v24, v[22:23], off offset:128
	global_load_dword v25, v[20:21], off
	v_lshl_add_u64 v[20:21], v[4:5], 0, v[2:3]
	global_load_dword v22, v[20:21], off offset:4
	global_load_dword v23, v[20:21], off offset:76
	v_lshl_add_u64 v[20:21], v[18:19], 0, v[0:1]
	global_load_sbyte v26, v[20:21], off offset:192
	global_load_sbyte v27, v[20:21], off offset:196
	global_load_dword v28, v[4:5], off
	global_load_dword v29, v[4:5], off offset:72
	global_load_ushort v30, v[18:19], off offset:208
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v19, 0
	v_add_u32_e32 v15, 4, v15
	v_cmp_le_u32_e32 vcc, s3, v15
	v_lshl_add_u64 v[4:5], v[4:5], 0, s[12:13]
	s_or_b64 s[8:9], vcc, s[8:9]
	s_waitcnt vmcnt(8)
	v_ashrrev_i32_e32 v20, v16, v24
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v21, 0xf0f0f0f, v25
	v_lshrrev_b32_e32 v24, 4, v25
	v_lshlrev_b32_e32 v25, 4, v20
	v_and_b32_e32 v24, 0xf0f0f0f, v24
	v_and_or_b32 v21, v25, s15, v21
	v_and_or_b32 v20, v20, s15, v24
	v_and_b32_e32 v24, 0x3f00, v21
	v_lshlrev_b16_e32 v25, 8, v21
	v_and_b32_sdwa v31, v21, s16 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v21, v17, v21 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_and_b32_e32 v32, 0x3f00, v20
	v_lshlrev_b16_e32 v33, 8, v20
	v_and_b32_sdwa v34, v20, s16 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v20, v17, v20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v25, 0xe000, v25
	v_add_u16_e32 v21, 0xe000, v21
	v_add_u16_e32 v33, 0xe000, v33
	v_add_u16_e32 v20, 0xe000, v20
	v_or_b32_sdwa v24, v24, v25 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v21, v31, v21 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v25, v32, v33 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v20, v34, v20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v24, 0xe000, v24
	v_add_u16_sdwa v21, v21, s17 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v25, 0xe000, v25
	v_add_u16_sdwa v20, v20, s17 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v21, v24, v21
	v_or_b32_e32 v20, v25, v20
	s_waitcnt vmcnt(6)
	v_dot4c_i32_i8_e32 v18, v21, v22
	s_waitcnt vmcnt(5)
	v_dot4c_i32_i8_e32 v19, v20, v23
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v18, v18, v26
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v19, v19, v27
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_waitcnt vmcnt(2)
	v_fma_mix_f32 v18, v28, v18, 0 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(1)
	v_fma_mix_f32 v18, v29, v19, v18 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v14, v18, v30, v14 op_sel_hi:[0,1,0]
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz .LBB3_9
; %bb.10:
	s_or_b64 exec, exec, s[8:9]
.LBB3_11:
	s_or_b64 exec, exec, s[6:7]
	v_cmp_eq_u32_e32 vcc, 0, v13
	v_cmp_ne_u32_e64 s[6:7], 0, v13
	v_lshlrev_b32_e32 v0, 2, v12
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[6:7]
; %bb.12:
	v_lshlrev_b32_e32 v1, 8, v13
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	ds_write_b32 v1, v14
; %bb.13:
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB3_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v1, -1, 0
	ds_read_b32 v0, v0
	v_mbcnt_hi_u32_b32 v1, -1, v1
	v_and_b32_e32 v2, 64, v1
	v_add_u32_e32 v2, 64, v2
	v_xor_b32_e32 v3, 32, v1
	v_cmp_lt_u32_e32 vcc, v3, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v14, v0
	v_xor_b32_e32 v4, 16, v1
	v_cndmask_b32_e32 v3, v1, v3, vcc
	v_lshlrev_b32_e32 v3, 2, v3
	ds_bpermute_b32 v3, v3, v0
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_mov_b32 s3, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 8, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 4, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 2, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v4, v1, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	ds_bpermute_b32 v3, v4, v0
	v_xor_b32_e32 v4, 1, v1
	v_cmp_lt_u32_e32 vcc, v4, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v3
	v_cndmask_b32_e32 v1, v1, v4, vcc
	v_lshlrev_b32_e32 v1, 2, v1
	ds_bpermute_b32 v1, v1, v0
	v_cmp_eq_u32_e32 vcc, 0, v12
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB3_16
; %bb.15:
	s_load_dwordx2 s[0:1], s[0:1], 0x48
	s_mul_i32 s5, s10, s20
	s_add_i32 s2, s5, s2
	s_mul_i32 s4, s14, s4
	s_add_i32 s2, s2, s4
	s_lshl_b64 s[2:3], s[2:3], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s2
	v_add_f32_e32 v0, v0, v1
	s_addc_u32 s1, s1, s3
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
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 35
		.amdhsa_next_free_sgpr 24
		.amdhsa_accum_offset 36
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 35
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
; codeLenInByte = 1304
; TotalNumSgprs: 30
; NumVgprs: 35
; NumAgprs: 0
; TotalNumVgprs: 35
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 30
; NumVGPRsForWavesPerEU: 35
; AccumOffset: 36
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 8
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.section	.AMDGPU.csdata,"",@progbits
	.type	__hip_cuid_64805f19d0ccdac8,@object ; @__hip_cuid_64805f19d0ccdac8
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_64805f19d0ccdac8
__hip_cuid_64805f19d0ccdac8:
	.byte	0                               ; 0x0
	.size	__hip_cuid_64805f19d0ccdac8, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_64805f19d0ccdac8
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     0
    .args:
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
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     46
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
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
    .vgpr_count:     36
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
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
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     43
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
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
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     35
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
