	.type	_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
; %bb.0:
	s_load_dwordx2 s[8:9], s[0:1], 0x10
	s_load_dwordx4 s[16:19], s[0:1], 0x50
	s_mov_b32 s20, s3
	s_mov_b64 s[12:13], 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u64 s[8:9], 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_eq_u64 s[8:9], 0
	s_cbranch_scc1 .LBB190_5
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
	s_cbranch_vccnz .LBB190_3
.LBB190_2:
	s_load_dwordx2 s[12:13], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s12, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s5, s3, s13
.LBB190_3:
	s_load_dword s22, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB190_6
; %bb.4:
	s_mul_hi_u32 s3, s17, s20
	s_add_i32 s3, s20, s3
	s_lshr_b32 s3, s3, s18
	s_mul_i32 s3, s3, s19
	s_sub_i32 s23, s20, s3
	s_branch .LBB190_7
.LBB190_5:
                                        ; implicit-def: $sgpr5
	s_load_dwordx4 s[8:11], s[0:1], 0x78
	s_load_dword s21, s[0:1], 0x60
	s_branch .LBB190_2
.LBB190_6:
	s_mov_b32 s23, s20
.LBB190_7:
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
	s_cbranch_execz .LBB190_11
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
.LBB190_9:                              ; =>This Inner Loop Header: Depth=1
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
	s_cbranch_execnz .LBB190_9
; %bb.10:
	s_or_b64 exec, exec, s[8:9]
.LBB190_11:
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
	s_cbranch_execz .LBB190_16
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
	s_cbranch_execz .LBB190_16
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
.LBB190_16:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	.section	.text._ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end190:
	.size	_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end190-_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb0ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
