	.amdgcn_target "amdgcn-amd-amdhsa--gfx90a"
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
	s_sub_i32 s38, s34, s1
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s1, s9
	s_branch .LBB0_7
.LBB0_5:
                                        ; implicit-def: $sgpr9
	s_load_dword s33, s[4:5], 0x60
	s_load_dword s35, s[4:5], 0x88
	s_branch .LBB0_2
.LBB0_6:
	s_mov_b32 s1, s34
	s_mov_b32 s38, s34
.LBB0_7:
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[24:27], s[4:5], 0x90
	v_bfe_u32 v14, v0, 10, 10
	v_and_b32_e32 v1, 0x3ff, v0
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v0, v1, v14
	s_cselect_b64 s[36:37], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v13, 0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s10, s1, s22
	s_cbranch_scc1 .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s40, s26, s8
	s_mov_b32 s41, 0
	s_lshl_b64 s[42:43], s[40:41], 2
	s_add_u32 s1, s18, s42
	s_mov_b32 s11, s41
	s_addc_u32 s7, s19, s43
	s_lshl_b64 s[18:19], s[10:11], 2
	s_add_u32 s1, s1, s18
	s_addc_u32 s11, s7, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s1, s18
	s_addc_u32 s19, s11, s19
	v_lshlrev_b32_e32 v0, 2, v1
	global_load_dword v3, v0, s[18:19]
	s_branch .LBB0_11
.LBB0_10:
	v_mov_b32_e32 v3, 0
.LBB0_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[36:37]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s8
	s_mov_b32 s19, 0
	s_lshl_b64 s[40:41], s[18:19], 2
	s_add_u32 s1, s30, s40
	s_mov_b32 s11, s19
	s_addc_u32 s7, s31, s41
	s_lshl_b64 s[10:11], s[10:11], 2
	s_add_u32 s1, s1, s10
	s_addc_u32 s18, s7, s11
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[10:11], s[6:7], 2
	s_add_u32 s10, s1, s10
	s_addc_u32 s11, s18, s11
	v_lshlrev_b32_e32 v0, 2, v1
	global_load_dword v13, v0, s[10:11]
	s_branch .LBB0_14
.LBB0_13:
	v_mov_b32_e32 v13, 0
.LBB0_14:
	s_or_b64 exec, exec, s[2:3]
	v_lshl_add_u32 v0, v14, 6, v1
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v17, 4, v0
	v_cndmask_b32_e64 v0, 0, 1, s[36:37]
	v_cmp_gt_u32_e32 vcc, s7, v17
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v15, 0
	v_cmp_ne_u32_e64 s[0:1], 1, v0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB0_20
; %bb.15:
	s_mul_hi_u32 s2, s23, s8
	s_add_i32 s2, s8, s2
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s2, s2, s35
	s_mul_i32 s33, s33, s6
	s_mul_i32 s2, s2, s24
	v_lshlrev_b32_e32 v0, 1, v1
	s_mul_i32 s9, s9, s20
	v_and_b32_e32 v4, 30, v0
	s_add_i32 s2, s2, s33
	s_add_i32 s9, s9, s2
	v_bfe_u32 v8, v4, 3, 1
	v_cmp_lt_u32_e64 s[2:3], 15, v4
	v_bfe_u32 v4, v1, 2, 2
	v_mul_hi_u32_u24_e32 v5, 0x48, v4
	v_mul_u32_u24_e32 v4, 0x48, v4
	s_movk_i32 s10, 0x120
	s_mul_i32 s20, s25, s8
	v_mad_u64_u32 v[4:5], s[10:11], v17, s10, v[4:5]
	s_mul_hi_u32 s11, s20, 36
	s_mul_i32 s20, s20, 36
	s_mul_i32 s21, s38, s21
	s_add_u32 s14, s14, s20
	s_mul_hi_u32 s10, s21, 36
	s_mul_i32 s21, s21, 36
	s_addc_u32 s11, s15, s11
	s_add_u32 s14, s14, s21
	s_addc_u32 s10, s11, s10
	v_mov_b32_e32 v6, s10
	v_add_co_u32_e32 v4, vcc, s14, v4
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	v_bfe_u32 v0, v0, 3, 2
	v_and_b32_e32 v2, 3, v1
	v_add_co_u32_e32 v4, vcc, 36, v4
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v2, 2, v2
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v15, 0
	s_movk_i32 s20, 0x90
	v_pk_mov_b32 v[6:7], s[12:13], s[12:13] op_sel:[0,1]
	v_lshlrev_b32_e32 v18, 1, v8
	s_mov_b32 s12, 0x5040100
	s_branch .LBB0_17
.LBB0_16:                               ;   in Loop: Header=BB0_17 Depth=1
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v12, 0xf0f0f0f, v29
	v_mov_b32_e32 v32, 0
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v31, 0xf0f0f0f, v28
	v_dot4c_i32_i8_e32 v32, v12, v27
	v_lshrrev_b32_e32 v12, 4, v29
	v_dot4c_i32_i8_e32 v32, v31, v26
	v_and_b32_e32 v12, 0xf0f0f0f, v12
	v_lshrrev_b32_e32 v26, 4, v28
	v_mov_b32_e32 v27, 0
	v_and_b32_e32 v26, 0xf0f0f0f, v26
	v_dot4c_i32_i8_e32 v27, v12, v24
	v_dot4c_i32_i8_e32 v27, v26, v23
	s_waitcnt vmcnt(2)
	v_lshrrev_b16_e32 v12, 2, v22
	s_waitcnt vmcnt(1)
	v_lshrrev_b16_e32 v24, 4, v30
	v_lshrrev_b16_e32 v26, 2, v20
	v_and_b32_e32 v12, 0x3030, v12
	v_and_b32_e32 v23, 0xf0f, v30
	v_and_b32_e32 v24, 0xf0f, v24
	v_and_b32_e32 v26, 0x3030, v26
	v_or_b32_e32 v12, v24, v12
	v_or_b32_e32 v23, v23, v26
	v_and_b32_e32 v22, 0x3f3f, v22
	v_and_b32_e32 v20, 0x3f3f, v20
	v_cndmask_b32_e64 v12, v22, v12, s[2:3]
	v_cndmask_b32_e64 v20, v20, v23, s[2:3]
	v_perm_b32 v12, v12, v20, s12
	v_and_b32_e32 v20, 0x3f003f, v12
	v_lshrrev_b32_e32 v22, 16, v20
	v_and_b32_e32 v20, 63, v20
	v_mul_lo_u32 v20, v32, v20
	v_mul_lo_u32 v22, v25, v22
	v_pk_lshrrev_b16 v12, 8, v12 op_sel_hi:[0,1]
	v_cvt_f32_i32_e32 v23, v22
	v_cvt_f32_i32_e32 v22, v20
	v_lshrrev_b32_e32 v20, 16, v12
	v_and_b32_e32 v12, 63, v12
	v_mul_lo_u32 v12, v27, v12
	v_mul_lo_u32 v20, v21, v20
	v_cvt_f32_i32_e32 v21, v20
	v_cvt_f32_i32_e32 v20, v12
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_sdwa v25, v19 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v24, v19
	v_pk_fma_f32 v[8:9], v[8:9], v[22:23], 0 op_sel_hi:[1,1,0]
	v_pk_fma_f32 v[8:9], v[10:11], v[20:21], v[8:9]
	v_add_u32_e32 v17, 8, v17
	v_pk_mul_f32 v[8:9], v[8:9], v[24:25]
	v_sub_f32_e32 v8, v8, v9
	v_add_co_u32_e32 v4, vcc, 0x900, v4
	v_cmp_le_u32_e64 s[10:11], s7, v17
	v_add_f32_e32 v16, v16, v8
	s_or_b64 s[14:15], s[10:11], s[14:15]
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB0_19
.LBB0_17:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v12, s9, v17
	v_mad_i64_i32 v[8:9], s[10:11], v12, s20, v[6:7]
	v_add_co_u32_e32 v10, vcc, v8, v0
	v_addc_co_u32_e32 v11, vcc, 0, v9, vcc
	v_add_co_u32_e32 v10, vcc, v10, v2
	v_addc_co_u32_e32 v11, vcc, 0, v11, vcc
	v_add_co_u32_e32 v32, vcc, v8, v18
	v_addc_co_u32_e32 v33, vcc, 0, v9, vcc
	v_add_co_u32_e32 v34, vcc, v4, v2
	v_addc_co_u32_e32 v35, vcc, 0, v5, vcc
	global_load_dword v31, v[4:5], off offset:-36
	global_load_dword v27, v[34:35], off offset:-32
	global_load_dword v26, v[34:35], off offset:-16
	global_load_dword v36, v[4:5], off
	global_load_dword v24, v[34:35], off offset:4
	global_load_dword v23, v[34:35], off offset:20
	global_load_dword v29, v[10:11], off offset:16
	global_load_dword v28, v[10:11], off offset:32
	global_load_ushort v20, v[32:33], off offset:4
	global_load_ushort v22, v[32:33], off offset:8
	global_load_ushort v30, v[32:33], off offset:12
	global_load_dword v19, v[8:9], off
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v21, 0
	s_and_b64 vcc, exec, s[0:1]
	s_waitcnt vmcnt(11)
	v_cvt_f32_f16_e32 v8, v31
	s_waitcnt vmcnt(10)
	v_dot4c_i32_i8_e32 v25, 0x1010101, v27
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8_e32 v25, 0x1010101, v26
	s_waitcnt vmcnt(8)
	v_cvt_f32_f16_e32 v10, v36
	s_waitcnt vmcnt(7)
	v_dot4c_i32_i8_e32 v21, 0x1010101, v24
	s_waitcnt vmcnt(6)
	v_dot4c_i32_i8_e32 v21, 0x1010101, v23
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v11, v10
	s_cbranch_vccnz .LBB0_16
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=1
	v_pk_mov_b32 v[32:33], s[28:29], s[28:29] op_sel:[0,1]
	v_mad_i64_i32 v[32:33], s[10:11], v12, s20, v[32:33]
	v_add_co_u32_e32 v34, vcc, v32, v18
	v_addc_co_u32_e32 v35, vcc, 0, v33, vcc
	v_add_co_u32_e32 v12, vcc, v32, v0
	v_addc_co_u32_e32 v31, vcc, 0, v33, vcc
	v_add_co_u32_e32 v36, vcc, v12, v2
	global_load_ushort v38, v[34:35], off offset:4
	global_load_ushort v39, v[34:35], off offset:8
	v_addc_co_u32_e32 v37, vcc, 0, v31, vcc
	global_load_dword v12, v[36:37], off offset:16
	global_load_dword v31, v[36:37], off offset:32
	global_load_ushort v40, v[34:35], off offset:12
	global_load_dword v41, v[32:33], off
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	s_waitcnt vmcnt(5)
	v_lshrrev_b16_e32 v35, 2, v38
	s_waitcnt vmcnt(4)
	v_lshrrev_b16_e32 v34, 2, v39
	v_and_b32_e32 v37, 0x3f3f, v38
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v38, 0xf0f0f0f, v12
	v_lshrrev_b32_e32 v12, 4, v12
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v42, 0xf0f, v40
	v_lshrrev_b16_e32 v40, 4, v40
	v_and_b32_e32 v34, 0x3030, v34
	v_and_b32_e32 v35, 0x3030, v35
	v_dot4c_i32_i8_e32 v32, v38, v27
	v_and_b32_e32 v12, 0xf0f0f0f, v12
	v_and_b32_e32 v38, 0xf0f, v40
	v_and_b32_e32 v36, 0x3f3f, v39
	v_or_b32_e32 v35, v42, v35
	v_dot4c_i32_i8_e32 v33, v12, v24
	v_or_b32_e32 v12, v38, v34
	v_and_b32_e32 v39, 0xf0f0f0f, v31
	v_lshrrev_b32_e32 v31, 4, v31
	v_cndmask_b32_e64 v34, v37, v35, s[2:3]
	v_cndmask_b32_e64 v12, v36, v12, s[2:3]
	v_and_b32_e32 v31, 0xf0f0f0f, v31
	v_perm_b32 v12, v12, v34, s12
	v_dot4c_i32_i8_e32 v33, v31, v23
	v_and_b32_e32 v31, 0x3f003f, v12
	v_dot4c_i32_i8_e32 v32, v39, v26
	v_pk_lshrrev_b16 v12, 8, v12 op_sel_hi:[0,1]
	v_lshrrev_b32_e32 v34, 16, v31
	v_and_b32_e32 v31, 63, v31
	v_lshrrev_b32_e32 v35, 16, v12
	v_and_b32_e32 v12, 63, v12
	v_mul_lo_u32 v31, v32, v31
	v_mul_lo_u32 v32, v25, v34
	v_mul_lo_u32 v12, v33, v12
	v_mul_lo_u32 v34, v21, v35
	v_cvt_f32_i32_e32 v33, v32
	v_cvt_f32_i32_e32 v32, v31
	v_cvt_f32_i32_e32 v35, v34
	v_cvt_f32_i32_e32 v34, v12
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v36, v41
	v_cvt_f32_f16_sdwa v37, v41 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_pk_fma_f32 v[32:33], v[8:9], v[32:33], 0 op_sel_hi:[1,1,0]
	v_pk_fma_f32 v[32:33], v[10:11], v[34:35], v[32:33]
	v_pk_mul_f32 v[32:33], v[32:33], v[36:37]
	v_sub_f32_e32 v12, v32, v33
	v_add_f32_e32 v15, v15, v12
	s_branch .LBB0_16
.LBB0_19:
	s_or_b64 exec, exec, s[14:15]
.LBB0_20:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[2:3], 0, v14
	v_cmp_ne_u32_e32 vcc, 0, v14
	v_lshlrev_b32_e32 v0, 2, v1
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB0_24
; %bb.21:
	v_lshlrev_b32_e32 v2, 8, v14
	s_movk_i32 s7, 0xff00
	v_add3_u32 v2, v2, v0, s7
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB0_23
; %bb.22:
	ds_write_b32 v2, v15 offset:256
.LBB0_23:
	ds_write_b32 v2, v16
.LBB0_24:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[10:11], s[2:3]
	s_cbranch_execz .LBB0_58
; %bb.25:
	ds_read_b32 v2, v0
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v15, v15, v0
.LBB0_27:
	v_mbcnt_lo_u32_b32 v0, -1, 0
	v_mbcnt_hi_u32_b32 v4, -1, v0
	v_and_b32_e32 v0, 64, v4
	v_add_u32_e32 v5, 64, v0
	v_xor_b32_e32 v0, 32, v4
	v_cmp_lt_u32_e32 vcc, v0, v5
	v_cndmask_b32_e32 v0, v4, v0, vcc
	v_lshlrev_b32_e32 v0, 2, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v16, v2
	ds_bpermute_b32 v7, v0, v6
	v_xor_b32_e32 v2, 16, v4
	v_cmp_lt_u32_e32 vcc, v2, v5
	v_cndmask_b32_e32 v2, v4, v2, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v6, v7
	ds_bpermute_b32 v8, v2, v7
	v_xor_b32_e32 v6, 8, v4
	v_cmp_lt_u32_e32 vcc, v6, v5
	v_cndmask_b32_e32 v6, v4, v6, vcc
	v_lshlrev_b32_e32 v6, 2, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v7, v8
	ds_bpermute_b32 v9, v6, v8
	v_xor_b32_e32 v7, 4, v4
	v_cmp_lt_u32_e32 vcc, v7, v5
	v_cndmask_b32_e32 v7, v4, v7, vcc
	v_lshlrev_b32_e32 v7, 2, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v9, v8, v9
	ds_bpermute_b32 v10, v7, v9
	v_xor_b32_e32 v8, 2, v4
	v_cmp_lt_u32_e32 vcc, v8, v5
	v_cndmask_b32_e32 v8, v4, v8, vcc
	v_lshlrev_b32_e32 v8, 2, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v10, v9, v10
	ds_bpermute_b32 v11, v8, v10
	v_xor_b32_e32 v9, 1, v4
	v_cmp_lt_u32_e32 vcc, v9, v5
	v_cndmask_b32_e32 v4, v4, v9, vcc
	v_lshlrev_b32_e32 v9, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v10, v11
	ds_bpermute_b32 v5, v9, v4
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_29
; %bb.28:
	ds_bpermute_b32 v0, v0, v15
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v15, v0
	ds_bpermute_b32 v2, v2, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v6, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v7, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v8, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v9, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v15, v0, v2
.LBB0_29:
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB0_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v4, v5
	s_and_b64 vcc, exec, s[0:1]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v3, v0
	s_cbranch_vccnz .LBB0_57
; %bb.31:
	v_add_f32_e32 v1, v13, v15
	s_cmp_lt_i32 s16, 3
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB0_35
; %bb.32:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB0_36
; %bb.33:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB0_37
; %bb.34:
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
	v_rcp_f32_e32 v7, v5
	v_max_f32_e32 v6, v0, v0
	v_min_f32_e32 v3, v6, v3
	v_max_f32_e64 v6, -s17, -s17
	v_max_f32_e32 v3, v3, v6
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
	s_mov_b64 s[2:3], 0
	s_branch .LBB0_38
.LBB0_35:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_43
	s_branch .LBB0_48
.LBB0_36:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB0_39
	s_branch .LBB0_41
.LBB0_37:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
.LBB0_38:
	s_branch .LBB0_41
.LBB0_39:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB0_42
; %bb.40:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v4, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v4
	s_mov_b32 s2, 0x3fb8aa3b
	v_mul_f32_e32 v2, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s2, -v2
	v_rndne_f32_e32 v6, v2
	v_fmac_f32_e32 v5, 0x32a5705f, v3
	v_sub_f32_e32 v2, v2, v6
	v_add_f32_e32 v2, v2, v5
	v_exp_f32_e32 v5, v2
	v_cvt_i32_f32_e32 v6, v6
	s_mov_b32 s2, 0xc2ce8ed0
	v_max_f32_e32 v2, v0, v0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	v_ldexp_f32 v5, v5, v6
	s_mov_b32 s2, 0x42b17218
	v_min_f32_e32 v2, 0x40e00000, v2
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_mov_b32_e32 v6, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_max_f32_e32 v2, 0xc0e00000, v2
	v_cndmask_b32_e32 v3, v6, v5, vcc
	v_pk_add_f32 v[2:3], v[2:3], 1.0 op_sel_hi:[1,0]
	v_div_scale_f32 v5, s[2:3], v3, v3, v4
	v_rcp_f32_e32 v6, v5
	s_mov_b64 s[2:3], 0
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
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB0_48
.LBB0_43:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB0_45
; %bb.44:
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
	v_rcp_f32_e32 v4, v3
	s_mov_b64 s[0:1], 0
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
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr2
.LBB0_46:
	s_andn2_b64 vcc, exec, s[0:1]
	s_mov_b64 s[0:1], 0
	s_cbranch_vccnz .LBB0_48
; %bb.47:
	s_cmp_lg_u32 s16, 1
	s_mov_b64 s[0:1], -1
	s_cselect_b64 s[2:3], -1, 0
.LBB0_48:
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz .LBB0_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[0:1], 0
.LBB0_50:
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_56
; %bb.51:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s0, 0x3f200000
	v_cmp_nlt_f32_e64 s[0:1], |v2|, s0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
	s_cbranch_execz .LBB0_53
; %bb.52:
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
.LBB0_53:
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execz .LBB0_55
; %bb.54:
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
.LBB0_55:
	s_or_b64 exec, exec, s[0:1]
	s_brev_b32 s0, -2
	v_bfi_b32 v2, s0, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB0_56:
	v_mov_b32_e32 v0, v2
.LBB0_57:
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
.LBB0_58:
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
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 43
		.amdhsa_next_free_sgpr 44
		.amdhsa_accum_offset 44
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 43
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
; codeLenInByte = 3296
; TotalNumSgprs: 48
; NumVgprs: 43
; NumAgprs: 0
; TotalNumVgprs: 43
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 5
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 43
; AccumOffset: 44
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 10
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
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
	v_bfe_u32 v3, v0, 10, 10
	v_and_b32_e32 v1, 0x3ff, v0
	v_lshl_add_u32 v0, v3, 6, v1
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v9, 4, v0
	v_cmp_gt_u32_e32 vcc, s7, v9
	v_mov_b32_e32 v8, 0
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB1_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s15, s8
	s_add_i32 s0, s8, s0
	s_lshr_b32 s0, s0, s26
	s_mul_i32 s11, s11, s6
	s_mul_i32 s0, s0, s16
	v_lshlrev_b32_e32 v0, 1, v1
	s_load_dwordx4 s[20:23], s[4:5], 0x0
	s_mul_i32 s9, s9, s12
	v_and_b32_e32 v4, 30, v0
	s_add_i32 s0, s0, s11
	s_mul_i32 s13, s1, s13
	s_add_i32 s9, s9, s0
	v_bfe_u32 v10, v4, 3, 1
	v_cmp_lt_u32_e64 s[0:1], 15, v4
	v_bfe_u32 v4, v1, 2, 2
	v_mul_hi_u32_u24_e32 v5, 0x48, v4
	v_mul_u32_u24_e32 v4, 0x48, v4
	s_movk_i32 s2, 0x120
	s_mul_i32 s12, s17, s8
	v_mad_u64_u32 v[4:5], s[2:3], v9, s2, v[4:5]
	s_mul_hi_u32 s3, s12, 36
	s_mul_i32 s12, s12, 36
	s_waitcnt lgkmcnt(0)
	s_add_u32 s11, s22, s12
	s_mul_hi_u32 s2, s13, 36
	s_mul_i32 s13, s13, 36
	s_addc_u32 s3, s23, s3
	s_add_u32 s11, s11, s13
	s_addc_u32 s2, s3, s2
	v_mov_b32_e32 v6, s2
	v_add_co_u32_e32 v4, vcc, s11, v4
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	v_bfe_u32 v0, v0, 3, 2
	v_and_b32_e32 v2, 3, v1
	v_add_co_u32_e32 v4, vcc, 36, v4
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v2, 2, v2
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_mov_b64 s[12:13], 0
	v_mov_b32_e32 v8, 0
	s_movk_i32 s11, 0x90
	v_pk_mov_b32 v[6:7], s[20:21], s[20:21] op_sel:[0,1]
	v_lshlrev_b32_e32 v10, 1, v10
	s_mov_b32 s15, 0x5040100
.LBB1_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v11, s9, v9
	v_add_co_u32_e32 v12, vcc, v4, v2
	v_addc_co_u32_e32 v13, vcc, 0, v5, vcc
	v_mad_i64_i32 v[14:15], s[2:3], v11, s11, v[6:7]
	v_add_co_u32_e32 v16, vcc, v14, v0
	v_addc_co_u32_e32 v17, vcc, 0, v15, vcc
	global_load_dword v11, v[12:13], off offset:-32
	global_load_dword v20, v[12:13], off offset:-16
	global_load_dword v21, v[12:13], off offset:4
	global_load_dword v22, v[12:13], off offset:20
	v_add_co_u32_e32 v12, vcc, v14, v10
	v_addc_co_u32_e32 v13, vcc, 0, v15, vcc
	v_add_co_u32_e32 v16, vcc, v16, v2
	global_load_dword v18, v[4:5], off offset:-36
	global_load_dword v19, v[4:5], off
	v_addc_co_u32_e32 v17, vcc, 0, v17, vcc
	global_load_dword v23, v[16:17], off offset:16
	global_load_dword v24, v[16:17], off offset:32
	global_load_ushort v25, v[12:13], off offset:8
	global_load_ushort v26, v[12:13], off offset:12
	global_load_ushort v27, v[12:13], off offset:4
	global_load_dword v28, v[14:15], off
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v29, 0
	v_add_u32_e32 v9, 8, v9
	v_add_co_u32_e32 v4, vcc, 0x900, v4
	v_cmp_le_u32_e64 s[2:3], s7, v9
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_or_b64 s[12:13], s[2:3], s[12:13]
	s_waitcnt vmcnt(11)
	v_dot4c_i32_i8_e32 v15, 0x1010101, v11
	s_waitcnt vmcnt(10)
	v_dot4c_i32_i8_e32 v15, 0x1010101, v20
	s_waitcnt vmcnt(9)
	v_dot4c_i32_i8_e32 v29, 0x1010101, v21
	s_waitcnt vmcnt(8)
	v_dot4c_i32_i8_e32 v29, 0x1010101, v22
	s_waitcnt vmcnt(7)
	v_cvt_f32_f16_e32 v12, v18
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v14, v19
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v18, 0xf0f0f0f, v23
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v19, 0xf0f0f0f, v24
	v_lshrrev_b32_e32 v23, 4, v23
	v_lshrrev_b32_e32 v24, 4, v24
	s_waitcnt vmcnt(3)
	v_lshrrev_b16_e32 v30, 2, v25
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v31, 0xf0f, v26
	v_lshrrev_b16_e32 v26, 4, v26
	s_waitcnt vmcnt(1)
	v_lshrrev_b16_e32 v32, 2, v27
	v_dot4c_i32_i8_e32 v13, v18, v11
	v_and_b32_e32 v11, 0xf0f0f0f, v23
	v_and_b32_e32 v18, 0xf0f0f0f, v24
	v_and_b32_e32 v23, 0x3030, v30
	v_and_b32_e32 v24, 0xf0f, v26
	v_and_b32_e32 v26, 0x3030, v32
	v_and_b32_e32 v25, 0x3f3f, v25
	v_and_b32_e32 v27, 0x3f3f, v27
	v_dot4c_i32_i8_e32 v13, v19, v20
	v_dot4c_i32_i8_e32 v17, v11, v21
	v_or_b32_e32 v11, v24, v23
	v_or_b32_e32 v19, v31, v26
	v_dot4c_i32_i8_e32 v17, v18, v22
	v_cndmask_b32_e64 v11, v25, v11, s[0:1]
	v_cndmask_b32_e64 v18, v27, v19, s[0:1]
	v_perm_b32 v11, v11, v18, s15
	v_and_b32_e32 v18, 0x3f003f, v11
	v_pk_lshrrev_b16 v11, 8, v11 op_sel_hi:[0,1]
	v_lshrrev_b32_e32 v19, 16, v18
	v_and_b32_e32 v18, 63, v18
	v_lshrrev_b32_e32 v20, 16, v11
	v_and_b32_e32 v11, 63, v11
	v_mul_lo_u32 v13, v13, v18
	v_mul_lo_u32 v15, v15, v19
	v_mul_lo_u32 v11, v17, v11
	v_mul_lo_u32 v17, v29, v20
	v_cvt_f32_i32_e32 v19, v15
	v_cvt_f32_i32_e32 v18, v13
	v_cvt_f32_i32_e32 v21, v17
	v_cvt_f32_i32_e32 v20, v11
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v16, v28
	v_cvt_f32_f16_sdwa v17, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_pk_fma_f32 v[12:13], v[12:13], v[18:19], 0 op_sel_hi:[0,1,0]
	v_pk_fma_f32 v[12:13], v[14:15], v[20:21], v[12:13] op_sel_hi:[0,1,1]
	v_pk_mul_f32 v[12:13], v[12:13], v[16:17]
	v_sub_f32_e32 v11, v12, v13
	v_add_f32_e32 v8, v8, v11
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execnz .LBB1_9
; %bb.10:
	s_or_b64 exec, exec, s[12:13]
.LBB1_11:
	s_or_b64 exec, exec, s[24:25]
	v_cmp_eq_u32_e32 vcc, 0, v3
	v_cmp_ne_u32_e64 s[0:1], 0, v3
	v_lshlrev_b32_e32 v0, 2, v1
	s_and_saveexec_b64 s[2:3], s[0:1]
; %bb.12:
	v_lshlrev_b32_e32 v2, 8, v3
	s_movk_i32 s0, 0xff00
	v_add3_u32 v2, v2, v0, s0
	ds_write_b32 v2, v8
; %bb.13:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v2, -1, 0
	ds_read_b32 v0, v0
	v_mbcnt_hi_u32_b32 v2, -1, v2
	v_and_b32_e32 v3, 64, v2
	v_add_u32_e32 v3, 64, v3
	v_xor_b32_e32 v4, 32, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v8, v0
	ds_bpermute_b32 v4, v4, v0
	v_xor_b32_e32 v5, 16, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 8, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 2, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 1, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v2, v2, v5, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v2, v2, v0
	s_mov_b32 s1, 0
	v_cmp_eq_u32_e32 vcc, 0, v1
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
	v_add_f32_e32 v0, v0, v2
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
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 33
		.amdhsa_next_free_sgpr 27
		.amdhsa_accum_offset 36
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 33
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
; codeLenInByte = 1384
; TotalNumSgprs: 31
; NumVgprs: 33
; NumAgprs: 0
; TotalNumVgprs: 33
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 33
; AccumOffset: 36
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
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
	s_sub_i32 s38, s10, s1
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s1, s9
	s_branch .LBB2_7
.LBB2_5:
                                        ; implicit-def: $sgpr9
	s_load_dword s11, s[4:5], 0x60
	s_load_dword s33, s[4:5], 0x88
	s_branch .LBB2_2
.LBB2_6:
	s_mov_b32 s1, s10
	s_mov_b32 s38, s10
.LBB2_7:
	s_load_dwordx2 s[16:17], s[4:5], 0x40
	s_load_dwordx4 s[24:27], s[4:5], 0x90
	v_bfe_u32 v10, v0, 10, 10
	v_and_b32_e32 v1, 0x3ff, v0
	s_cmp_lg_u64 s[28:29], 0
	v_or_b32_e32 v0, v1, v10
	s_cselect_b64 s[34:35], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v9, 0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB2_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s1, s22
	s_cbranch_scc1 .LBB2_10
; %bb.9:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s40, s26, s8
	s_mov_b32 s41, 0
	s_lshl_b64 s[42:43], s[40:41], 2
	s_add_u32 s1, s18, s42
	s_mov_b32 s37, s41
	s_addc_u32 s7, s19, s43
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s1, s1, s18
	s_addc_u32 s27, s7, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s1, s18
	s_addc_u32 s19, s27, s19
	v_lshlrev_b32_e32 v0, 2, v1
	global_load_dword v3, v0, s[18:19]
	s_branch .LBB2_11
.LBB2_10:
	v_mov_b32_e32 v3, 0
.LBB2_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[34:35]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB2_13
; %bb.12:
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s26, s8
	s_mov_b32 s19, 0
	s_lshl_b64 s[40:41], s[18:19], 2
	s_add_u32 s1, s30, s40
	s_mov_b32 s37, s19
	s_addc_u32 s7, s31, s41
	s_lshl_b64 s[18:19], s[36:37], 2
	s_add_u32 s1, s1, s18
	s_addc_u32 s27, s7, s19
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[18:19], s[6:7], 2
	s_add_u32 s18, s1, s18
	s_addc_u32 s19, s27, s19
	v_lshlrev_b32_e32 v0, 2, v1
	global_load_dword v9, v0, s[18:19]
	s_branch .LBB2_14
.LBB2_13:
	v_mov_b32_e32 v9, 0
.LBB2_14:
	s_or_b64 exec, exec, s[2:3]
	v_lshl_add_u32 v0, v10, 6, v1
	s_lshr_b32 s7, s0, 8
	v_lshrrev_b32_e32 v13, 5, v0
	v_cndmask_b32_e64 v0, 0, 1, s[34:35]
	v_cmp_gt_u32_e32 vcc, s7, v13
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v11, 0
	v_cmp_ne_u32_e64 s[0:1], 1, v0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB2_20
; %bb.15:
	s_mul_hi_u32 s2, s23, s8
	s_add_i32 s2, s8, s2
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s2, s2, s33
	s_mul_i32 s11, s11, s6
	s_mul_i32 s2, s2, s24
	v_and_b32_e32 v4, 15, v1
	s_mul_i32 s9, s9, s20
	s_mul_i32 s3, s38, s21
	v_and_b32_e32 v0, 31, v1
	s_add_i32 s2, s2, s11
	v_bfe_u32 v2, v1, 4, 1
	v_lshrrev_b16_e32 v5, 3, v4
	s_add_i32 s9, s9, s2
	v_lshl_or_b32 v6, v2, 2, v5
	v_lshlrev_b32_e32 v8, 1, v0
	v_lshlrev_b32_e32 v0, 3, v2
	v_and_b32_e32 v2, 7, v1
	v_lshrrev_b16_e32 v4, 2, v4
	s_mul_hi_u32 s2, s3, 36
	s_mul_i32 s3, s3, 36
	v_or_b32_e32 v7, v0, v2
	v_lshlrev_b32_e32 v14, 1, v5
	v_or_b32_e32 v0, v0, v4
	v_mov_b32_e32 v4, s3
	v_mov_b32_e32 v5, s2
	s_movk_i32 s2, 0x120
	s_mul_i32 s20, s25, s8
	v_mad_u64_u32 v[4:5], s[2:3], v13, s2, v[4:5]
	v_mad_u64_u32 v[4:5], s[2:3], s20, 36, v[4:5]
	v_mad_u64_u32 v[4:5], s[2:3], v6, 36, v[4:5]
	v_lshlrev_b32_e32 v16, 1, v7
	v_mov_b32_e32 v6, s15
	v_add_co_u32_e32 v4, vcc, s14, v4
	v_lshlrev_b32_e32 v2, 2, v2
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v11, 0
	s_movk_i32 s11, 0xd2
	v_pk_mov_b32 v[6:7], s[12:13], s[12:13] op_sel:[0,1]
	v_lshlrev_b32_e32 v15, 1, v8
	v_lshlrev_b32_e32 v16, 1, v16
	s_mov_b32 s12, 0x30303030
	s_movk_i32 s13, 0x3f00
	s_movk_i32 s20, 0xe000
	v_mov_b32_e32 v17, 8
	s_branch .LBB2_17
.LBB2_16:                               ;   in Loop: Header=BB2_17 Depth=1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v8, v14, v25
	s_waitcnt vmcnt(1)
	v_bfe_i32 v25, v26, 0, 8
	v_and_b32_e32 v26, 0xf0f0f0f, v23
	v_lshlrev_b32_e32 v27, 4, v8
	v_and_or_b32 v26, v27, s12, v26
	v_lshlrev_b16_e32 v28, 8, v26
	v_and_b32_e32 v27, 0x3f00, v26
	v_add_u16_e32 v28, 0xe000, v28
	v_or_b32_sdwa v27, v27, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v28, v26, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v26, v17, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v26, 0xe000, v26
	v_or_b32_sdwa v26, v28, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v27, 0xe000, v27
	v_add_u16_sdwa v26, v26, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_lshrrev_b32_e32 v23, 4, v23
	v_or_b32_e32 v26, v27, v26
	v_mov_b32_e32 v27, 0
	v_and_b32_e32 v23, 0xf0f0f0f, v23
	v_dot4c_i32_i8_e32 v27, v26, v22
	v_and_or_b32 v8, v8, s12, v23
	v_and_b32_e32 v23, 0x3f00, v8
	s_waitcnt vmcnt(0)
	v_bfe_i32 v24, v24, 0, 8
	v_mul_lo_u32 v22, v27, v25
	v_lshlrev_b16_e32 v25, 8, v8
	v_add_u16_e32 v25, 0xe000, v25
	v_or_b32_sdwa v23, v23, v25 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_and_b32_sdwa v25, v8, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v8, v17, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v8, 0xe000, v8
	v_or_b32_sdwa v8, v25, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v23, 0xe000, v23
	v_add_u16_sdwa v8, v8, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v8, v23, v8
	v_mov_b32_e32 v23, 0
	v_dot4c_i32_i8_e32 v23, v8, v18
	v_cvt_f32_i32_e32 v22, v22
	v_add_u32_e32 v13, 4, v13
	v_add_co_u32_e32 v4, vcc, 0x480, v4
	v_mul_lo_u32 v8, v23, v24
	v_cvt_f32_i32_e32 v8, v8
	v_fma_f32 v18, v21, v22, 0
	v_cmp_le_u32_e64 s[2:3], s7, v13
	s_or_b64 s[14:15], s[2:3], s[14:15]
	v_fmac_f32_e32 v18, v20, v8
	v_fma_mix_f32 v12, v18, v19, v12 op_sel_hi:[0,1,0]
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz .LBB2_19
.LBB2_17:                               ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v8, s9, v13
	v_mad_i64_i32 v[20:21], s[2:3], v8, s11, v[6:7]
	v_add_co_u32_e32 v28, vcc, v20, v15
	v_addc_co_u32_e32 v29, vcc, 0, v21, vcc
	v_add_co_u32_e32 v30, vcc, v20, v16
	v_addc_co_u32_e32 v31, vcc, 0, v21, vcc
	v_add_co_u32_e32 v24, vcc, v4, v2
	v_addc_co_u32_e32 v25, vcc, 0, v5, vcc
	global_load_dword v22, v[24:25], off offset:4
	global_load_dword v18, v[24:25], off offset:76
	global_load_dword v27, v[4:5], off
	global_load_dword v34, v[4:5], off offset:72
	v_add_co_u32_e32 v32, vcc, v20, v0
	v_addc_co_u32_e32 v33, vcc, 0, v21, vcc
	global_load_dword v23, v[28:29], off
	global_load_dword v25, v[30:31], off offset:128
	global_load_ushort v19, v[20:21], off offset:208
	global_load_ubyte v26, v[32:33], off offset:192
	global_load_ubyte v24, v[32:33], off offset:196
	s_and_b64 vcc, exec, s[0:1]
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v21, v27
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v20, v34
	s_cbranch_vccnz .LBB2_16
; %bb.18:                               ;   in Loop: Header=BB2_17 Depth=1
	v_pk_mov_b32 v[28:29], s[28:29], s[28:29] op_sel:[0,1]
	v_mad_i64_i32 v[28:29], s[2:3], v8, s11, v[28:29]
	v_add_co_u32_e32 v30, vcc, v28, v16
	v_addc_co_u32_e32 v31, vcc, 0, v29, vcc
	v_add_co_u32_e32 v32, vcc, v28, v15
	v_addc_co_u32_e32 v33, vcc, 0, v29, vcc
	global_load_dword v8, v[30:31], off offset:128
	global_load_dword v27, v[32:33], off
	v_add_co_u32_e32 v30, vcc, v28, v0
	v_addc_co_u32_e32 v31, vcc, 0, v29, vcc
	global_load_sbyte v32, v[30:31], off offset:192
	global_load_sbyte v33, v[30:31], off offset:196
	global_load_ushort v34, v[28:29], off offset:208
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	s_waitcnt vmcnt(4)
	v_ashrrev_i32_e32 v8, v14, v8
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v30, 0xf0f0f0f, v27
	v_lshrrev_b32_e32 v27, 4, v27
	v_lshlrev_b32_e32 v31, 4, v8
	v_and_b32_e32 v27, 0xf0f0f0f, v27
	v_and_or_b32 v30, v31, s12, v30
	v_and_or_b32 v8, v8, s12, v27
	v_and_b32_e32 v27, 0x3f00, v30
	v_lshlrev_b16_e32 v31, 8, v30
	v_and_b32_sdwa v35, v30, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v30, v17, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_and_b32_e32 v36, 0x3f00, v8
	v_lshlrev_b16_e32 v37, 8, v8
	v_and_b32_sdwa v38, v8, s13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v8, v17, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v31, 0xe000, v31
	v_add_u16_e32 v30, 0xe000, v30
	v_add_u16_e32 v37, 0xe000, v37
	v_add_u16_e32 v8, 0xe000, v8
	v_or_b32_sdwa v27, v27, v31 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v30, v35, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v31, v36, v37 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v8, v38, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v27, 0xe000, v27
	v_add_u16_sdwa v30, v30, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v31, 0xe000, v31
	v_add_u16_sdwa v8, v8, s20 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v27, v27, v30
	v_or_b32_e32 v8, v31, v8
	v_dot4c_i32_i8_e32 v28, v27, v22
	v_dot4c_i32_i8_e32 v29, v8, v18
	s_waitcnt vmcnt(2)
	s_nop 0
	v_mul_lo_u32 v8, v28, v32
	v_cvt_f32_i32_e32 v8, v8
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v27, v29, v33
	v_cvt_f32_i32_e32 v27, v27
	v_fma_f32 v8, v21, v8, 0
	v_fmac_f32_e32 v8, v20, v27
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v11, v8, v34, v11 op_sel_hi:[0,1,0]
	s_branch .LBB2_16
.LBB2_19:
	s_or_b64 exec, exec, s[14:15]
.LBB2_20:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[2:3], 0, v10
	v_cmp_ne_u32_e32 vcc, 0, v10
	v_lshlrev_b32_e32 v0, 2, v1
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB2_24
; %bb.21:
	v_lshlrev_b32_e32 v2, 8, v10
	s_movk_i32 s7, 0xff00
	v_add3_u32 v2, v2, v0, s7
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB2_23
; %bb.22:
	ds_write_b32 v2, v11 offset:256
.LBB2_23:
	ds_write_b32 v2, v12
.LBB2_24:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[2:3]
	s_cbranch_execz .LBB2_58
; %bb.25:
	ds_read_b32 v2, v0
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v11, v11, v0
.LBB2_27:
	v_mbcnt_lo_u32_b32 v0, -1, 0
	v_mbcnt_hi_u32_b32 v4, -1, v0
	v_and_b32_e32 v0, 64, v4
	v_add_u32_e32 v5, 64, v0
	v_xor_b32_e32 v0, 32, v4
	v_cmp_lt_u32_e32 vcc, v0, v5
	v_cndmask_b32_e32 v0, v4, v0, vcc
	v_lshlrev_b32_e32 v0, 2, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v12, v2
	ds_bpermute_b32 v7, v0, v6
	v_xor_b32_e32 v2, 16, v4
	v_cmp_lt_u32_e32 vcc, v2, v5
	v_cndmask_b32_e32 v2, v4, v2, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v6, v7
	ds_bpermute_b32 v8, v2, v7
	v_xor_b32_e32 v6, 8, v4
	v_cmp_lt_u32_e32 vcc, v6, v5
	v_cndmask_b32_e32 v6, v4, v6, vcc
	v_lshlrev_b32_e32 v6, 2, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v8, v7, v8
	ds_bpermute_b32 v10, v6, v8
	v_xor_b32_e32 v7, 4, v4
	v_cmp_lt_u32_e32 vcc, v7, v5
	v_cndmask_b32_e32 v7, v4, v7, vcc
	v_lshlrev_b32_e32 v7, 2, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v10, v8, v10
	ds_bpermute_b32 v12, v7, v10
	v_xor_b32_e32 v8, 2, v4
	v_cmp_lt_u32_e32 vcc, v8, v5
	v_cndmask_b32_e32 v8, v4, v8, vcc
	v_lshlrev_b32_e32 v8, 2, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v12, v10, v12
	ds_bpermute_b32 v13, v8, v12
	v_xor_b32_e32 v10, 1, v4
	v_cmp_lt_u32_e32 vcc, v10, v5
	v_cndmask_b32_e32 v4, v4, v10, vcc
	v_lshlrev_b32_e32 v10, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v12, v13
	ds_bpermute_b32 v5, v10, v4
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_29
; %bb.28:
	ds_bpermute_b32 v0, v0, v11
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v11, v0
	ds_bpermute_b32 v2, v2, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v6, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v7, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v8, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v2
	ds_bpermute_b32 v2, v10, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v11, v0, v2
.LBB2_29:
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB2_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v4, v5
	s_and_b64 vcc, exec, s[0:1]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v3, v0
	s_cbranch_vccnz .LBB2_57
; %bb.31:
	v_add_f32_e32 v1, v9, v11
	s_cmp_lt_i32 s16, 3
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB2_35
; %bb.32:
	s_cmp_gt_i32 s16, 5
	s_cbranch_scc0 .LBB2_36
; %bb.33:
	s_cmp_eq_u32 s16, 6
	s_cbranch_scc0 .LBB2_37
; %bb.34:
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
	v_rcp_f32_e32 v7, v5
	v_max_f32_e32 v6, v0, v0
	v_min_f32_e32 v3, v6, v3
	v_max_f32_e64 v6, -s17, -s17
	v_max_f32_e32 v3, v3, v6
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
	s_mov_b64 s[2:3], 0
	s_branch .LBB2_38
.LBB2_35:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_43
	s_branch .LBB2_48
.LBB2_36:
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB2_39
	s_branch .LBB2_41
.LBB2_37:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
.LBB2_38:
	s_branch .LBB2_41
.LBB2_39:
	s_cmp_eq_u32 s16, 3
	s_cbranch_scc0 .LBB2_42
; %bb.40:
	v_max_f32_e32 v2, v1, v1
	v_min_f32_e32 v4, 0x40e00000, v2
	v_mul_f32_e32 v3, 0xbfd9db23, v4
	s_mov_b32 s2, 0x3fb8aa3b
	v_mul_f32_e32 v2, 0x3fb8aa3b, v3
	v_fma_f32 v5, v3, s2, -v2
	v_rndne_f32_e32 v6, v2
	v_fmac_f32_e32 v5, 0x32a5705f, v3
	v_sub_f32_e32 v2, v2, v6
	v_add_f32_e32 v2, v2, v5
	v_exp_f32_e32 v5, v2
	v_cvt_i32_f32_e32 v6, v6
	s_mov_b32 s2, 0xc2ce8ed0
	v_max_f32_e32 v2, v0, v0
	v_cmp_ngt_f32_e32 vcc, s2, v3
	v_ldexp_f32 v5, v5, v6
	s_mov_b32 s2, 0x42b17218
	v_min_f32_e32 v2, 0x40e00000, v2
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_mov_b32_e32 v6, 0x7f800000
	v_cmp_nlt_f32_e32 vcc, s2, v3
	v_max_f32_e32 v2, 0xc0e00000, v2
	v_cndmask_b32_e32 v3, v6, v5, vcc
	v_pk_add_f32 v[2:3], v[2:3], 1.0 op_sel_hi:[1,0]
	v_div_scale_f32 v5, s[2:3], v3, v3, v4
	v_rcp_f32_e32 v6, v5
	s_mov_b64 s[2:3], 0
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
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB2_48
.LBB2_43:
	s_cmp_gt_i32 s16, 1
	s_cbranch_scc0 .LBB2_45
; %bb.44:
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
	v_rcp_f32_e32 v4, v3
	s_mov_b64 s[0:1], 0
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
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr2
.LBB2_46:
	s_andn2_b64 vcc, exec, s[0:1]
	s_mov_b64 s[0:1], 0
	s_cbranch_vccnz .LBB2_48
; %bb.47:
	s_cmp_lg_u32 s16, 1
	s_mov_b64 s[0:1], -1
	s_cselect_b64 s[2:3], -1, 0
.LBB2_48:
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz .LBB2_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[0:1], 0
.LBB2_50:
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB2_56
; %bb.51:
	v_mul_f32_e32 v3, 0x3d372713, v1
	v_mul_f32_e32 v2, 0x3f4c422a, v1
	v_fma_f32 v3, v1, v3, 1.0
	v_mul_f32_e32 v2, v2, v3
	s_mov_b32 s0, 0x3f200000
	v_cmp_nlt_f32_e64 s[0:1], |v2|, s0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
	s_cbranch_execz .LBB2_53
; %bb.52:
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
.LBB2_53:
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execz .LBB2_55
; %bb.54:
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
.LBB2_55:
	s_or_b64 exec, exec, s[0:1]
	s_brev_b32 s0, -2
	v_bfi_b32 v2, s0, v3, v2
	v_mul_f32_e32 v1, 0.5, v1
	v_add_f32_e32 v2, 1.0, v2
	v_mul_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, v0, v1
.LBB2_56:
	v_mov_b32_e32 v0, v2
.LBB2_57:
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
.LBB2_58:
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
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 39
		.amdhsa_next_free_sgpr 44
		.amdhsa_accum_offset 40
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 39
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
; codeLenInByte = 3184
; TotalNumSgprs: 48
; NumVgprs: 39
; NumAgprs: 0
; TotalNumVgprs: 39
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 512 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 39
; AccumOffset: 40
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 9
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
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
	v_bfe_u32 v3, v0, 10, 10
	v_and_b32_e32 v1, 0x3ff, v0
	v_lshl_add_u32 v0, v3, 6, v1
	s_lshr_b32 s7, s16, 8
	v_lshrrev_b32_e32 v9, 5, v0
	v_cmp_gt_u32_e32 vcc, s7, v9
	v_mov_b32_e32 v8, 0
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB3_11
; %bb.8:
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s3, s8
	s_add_i32 s3, s8, s3
	s_lshr_b32 s3, s3, s22
	s_mul_i32 s11, s11, s6
	s_mul_i32 s3, s3, s12
	v_and_b32_e32 v4, 15, v1
	s_mul_i32 s0, s9, s0
	s_mul_i32 s1, s23, s1
	v_and_b32_e32 v0, 31, v1
	s_add_i32 s3, s3, s11
	v_bfe_u32 v2, v1, 4, 1
	v_lshrrev_b16_e32 v5, 3, v4
	s_load_dwordx4 s[16:19], s[4:5], 0x0
	s_add_i32 s3, s0, s3
	v_lshl_or_b32 v6, v2, 2, v5
	v_lshlrev_b32_e32 v12, 1, v0
	v_lshlrev_b32_e32 v0, 3, v2
	v_and_b32_e32 v2, 7, v1
	v_lshrrev_b16_e32 v4, 2, v4
	s_mul_hi_u32 s0, s1, 36
	s_mul_i32 s1, s1, 36
	v_or_b32_e32 v7, v0, v2
	v_lshlrev_b32_e32 v10, 1, v5
	v_or_b32_e32 v0, v0, v4
	v_mov_b32_e32 v4, s1
	v_mov_b32_e32 v5, s0
	s_movk_i32 s0, 0x120
	s_mul_i32 s9, s13, s8
	v_mad_u64_u32 v[4:5], s[0:1], v9, s0, v[4:5]
	v_mad_u64_u32 v[4:5], s[0:1], s9, 36, v[4:5]
	v_mad_u64_u32 v[4:5], s[0:1], v6, 36, v[4:5]
	v_lshlrev_b32_e32 v14, 1, v7
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s19
	v_add_co_u32_e32 v4, vcc, s18, v4
	v_lshlrev_b32_e32 v2, 2, v2
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	s_mov_b64 s[12:13], 0
	v_mov_b32_e32 v8, 0
	s_movk_i32 s9, 0xd2
	v_pk_mov_b32 v[6:7], s[16:17], s[16:17] op_sel:[0,1]
	v_lshlrev_b32_e32 v11, 1, v12
	v_lshlrev_b32_e32 v12, 1, v14
	s_mov_b32 s11, 0x30303030
	s_movk_i32 s15, 0x3f00
	s_movk_i32 s16, 0xe000
	v_mov_b32_e32 v13, 8
.LBB3_9:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v15, s3, v9
	v_mad_i64_i32 v[16:17], s[0:1], v15, s9, v[6:7]
	v_add_co_u32_e64 v18, s[0:1], v16, v11
	v_addc_co_u32_e64 v19, s[0:1], 0, v17, s[0:1]
	v_add_co_u32_e64 v20, s[0:1], v16, v12
	v_addc_co_u32_e64 v21, s[0:1], 0, v17, s[0:1]
	global_load_dword v22, v[20:21], off offset:128
	global_load_dword v23, v[18:19], off
	v_add_co_u32_e32 v14, vcc, v4, v2
	v_addc_co_u32_e32 v15, vcc, 0, v5, vcc
	global_load_dword v18, v[14:15], off offset:4
	global_load_dword v19, v[14:15], off offset:76
	v_add_co_u32_e32 v14, vcc, v16, v0
	v_addc_co_u32_e32 v15, vcc, 0, v17, vcc
	global_load_sbyte v20, v[14:15], off offset:192
	global_load_sbyte v21, v[14:15], off offset:196
	global_load_dword v24, v[4:5], off
	global_load_dword v25, v[4:5], off offset:72
	global_load_ushort v26, v[16:17], off offset:208
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_add_co_u32_e32 v4, vcc, 0x480, v4
	v_add_u32_e32 v9, 4, v9
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_cmp_le_u32_e32 vcc, s7, v9
	s_or_b64 s[12:13], vcc, s[12:13]
	s_waitcnt vmcnt(8)
	v_ashrrev_i32_e32 v16, v10, v22
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v17, 0xf0f0f0f, v23
	v_lshrrev_b32_e32 v22, 4, v23
	v_lshlrev_b32_e32 v23, 4, v16
	v_and_b32_e32 v22, 0xf0f0f0f, v22
	v_and_or_b32 v17, v23, s11, v17
	v_and_or_b32 v16, v16, s11, v22
	v_and_b32_e32 v22, 0x3f00, v17
	v_lshlrev_b16_e32 v23, 8, v17
	v_and_b32_sdwa v27, v17, s15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v17, v13, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_and_b32_e32 v28, 0x3f00, v16
	v_lshlrev_b16_e32 v29, 8, v16
	v_and_b32_sdwa v30, v16, s15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_lshlrev_b16_sdwa v16, v13, v16 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:WORD_1
	v_add_u16_e32 v23, 0xe000, v23
	v_add_u16_e32 v17, 0xe000, v17
	v_add_u16_e32 v29, 0xe000, v29
	v_add_u16_e32 v16, 0xe000, v16
	v_or_b32_sdwa v22, v22, v23 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v17, v27, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v23, v28, v29 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_or_b32_sdwa v16, v30, v16 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u16_e32 v22, 0xe000, v22
	v_add_u16_sdwa v17, v17, s16 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_add_u16_e32 v23, 0xe000, v23
	v_add_u16_sdwa v16, v16, s16 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_or_b32_e32 v17, v22, v17
	v_or_b32_e32 v16, v23, v16
	s_waitcnt vmcnt(6)
	v_dot4c_i32_i8_e32 v14, v17, v18
	s_waitcnt vmcnt(5)
	v_dot4c_i32_i8_e32 v15, v16, v19
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v14, v14, v20
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v15, v15, v21
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	s_waitcnt vmcnt(2)
	v_fma_mix_f32 v14, v24, v14, 0 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(1)
	v_fma_mix_f32 v14, v25, v15, v14 op_sel_hi:[1,0,0]
	s_waitcnt vmcnt(0)
	v_fma_mix_f32 v8, v14, v26, v8 op_sel_hi:[0,1,0]
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execnz .LBB3_9
; %bb.10:
	s_or_b64 exec, exec, s[12:13]
.LBB3_11:
	s_or_b64 exec, exec, s[20:21]
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	v_cmp_ne_u32_e64 s[0:1], 0, v3
	v_lshlrev_b32_e32 v0, 2, v1
	s_and_saveexec_b64 s[12:13], s[0:1]
; %bb.12:
	v_lshlrev_b32_e32 v2, 8, v3
	s_movk_i32 s0, 0xff00
	v_add3_u32 v2, v2, v0, s0
	ds_write_b32 v2, v8
; %bb.13:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB3_16
; %bb.14:
	v_mbcnt_lo_u32_b32 v2, -1, 0
	ds_read_b32 v0, v0
	v_mbcnt_hi_u32_b32 v2, -1, v2
	v_and_b32_e32 v3, 64, v2
	v_add_u32_e32 v3, 64, v3
	v_xor_b32_e32 v4, 32, v2
	v_cmp_lt_u32_e32 vcc, v4, v3
	v_cndmask_b32_e32 v4, v2, v4, vcc
	v_lshlrev_b32_e32 v4, 2, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v8, v0
	ds_bpermute_b32 v4, v4, v0
	v_xor_b32_e32 v5, 16, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 8, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 4, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 2, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v5, v2, v5, vcc
	v_lshlrev_b32_e32 v5, 2, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v4, v5, v0
	v_xor_b32_e32 v5, 1, v2
	v_cmp_lt_u32_e32 vcc, v5, v3
	v_cndmask_b32_e32 v2, v2, v5, vcc
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v0, v4
	ds_bpermute_b32 v2, v2, v0
	s_mov_b32 s1, 0
	v_cmp_eq_u32_e32 vcc, 0, v1
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
	v_add_f32_e32 v0, v0, v2
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
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 31
		.amdhsa_next_free_sgpr 24
		.amdhsa_accum_offset 32
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
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
	.set _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.num_vgpr, 31
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
; codeLenInByte = 1308
; TotalNumSgprs: 28
; NumVgprs: 31
; NumAgprs: 0
; TotalNumVgprs: 31
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 256 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 31
; AccumOffset: 32
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 7
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.section	.AMDGPU.csdata,"",@progbits
	.type	__hip_cuid_5aa05fe2ba975cd8,@object ; @__hip_cuid_5aa05fe2ba975cd8
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_5aa05fe2ba975cd8
__hip_cuid_5aa05fe2ba975cd8:
	.byte	0                               ; 0x0
	.size	__hip_cuid_5aa05fe2ba975cd8, 1

	.ident	"AMD clang version 23.0.0git (https://github.com/ROCm/llvm-project.git 43215c73116c407735c85a180d174f718798c328+PATCHED:2506c552d8428e2cc1778bef048b20f818e06bb3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_5aa05fe2ba975cd8
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
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
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
    .name:           _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     33
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
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     39
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
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     31
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx90a
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
