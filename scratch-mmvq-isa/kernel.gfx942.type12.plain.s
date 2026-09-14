	.type	_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[8:9], s[0:1], 0x10
	s_load_dwordx4 s[16:19], s[0:1], 0x50
	s_mov_b32 s20, s3
	s_mov_b64 s[12:13], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB160_5
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
	s_cbranch_vccnz .LBB160_3
.LBB160_2:
	s_load_dwordx2 s[12:13], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s12, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s5, s3, s13
.LBB160_3:
	s_load_dword s24, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB160_6
; %bb.4:
	s_mul_hi_u32 s3, s17, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s3, s3, s18
	s_mul_i32 s3, s3, s19
	s_sub_i32 s6, s20, s3
	s_branch .LBB160_7
.LBB160_5:
                                        ; implicit-def: $sgpr5
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_branch .LBB160_2
.LBB160_6:
	s_mov_b32 s6, s20
.LBB160_7:
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
	s_cbranch_execz .LBB160_11
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
.LBB160_9:                              ; =>This Inner Loop Header: Depth=1
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
	s_cbranch_execnz .LBB160_9
; %bb.10:
	s_or_b64 exec, exec, s[8:9]
.LBB160_11:
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
	s_cbranch_execz .LBB160_16
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
	s_cbranch_execz .LBB160_16
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
.LBB160_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	.section	.text._ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end160:
	.size	_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end160-_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
