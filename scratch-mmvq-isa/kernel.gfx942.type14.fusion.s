	.type	_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	s_cbranch_scc1 .LBB189_5
; %bb.1:
	s_mov_b32 s35, 0
	s_lshl_b64 s[26:27], s[34:35], 2
	s_add_u32 s16, s16, s26
	s_addc_u32 s17, s17, s27
	s_load_dword s5, s[16:17], 0x0
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB189_3
.LBB189_2:
	s_load_dwordx2 s[16:17], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s16, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s5, s3, s17
.LBB189_3:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB189_6
; %bb.4:
	s_mul_hi_u32 s3, s9, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s3, s3, s10
	s_mul_i32 s3, s3, s11
	s_sub_i32 s38, s34, s3
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s3, s5
	s_branch .LBB189_7
.LBB189_5:
                                        ; implicit-def: $sgpr5
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_branch .LBB189_2
.LBB189_6:
	s_mov_b32 s3, s34
	s_mov_b32 s38, s34
.LBB189_7:
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
	s_cbranch_execz .LBB189_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s3, s22
	s_cbranch_scc1 .LBB189_10
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
	s_branch .LBB189_11
.LBB189_10:
	v_mov_b32_e32 v14, 0
.LBB189_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[16:17]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB189_13
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
	s_branch .LBB189_14
.LBB189_13:
	v_mov_b32_e32 v15, 0
.LBB189_14:
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
	s_cbranch_execz .LBB189_20
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
	s_branch .LBB189_17
.LBB189_16:                             ;   in Loop: Header=BB189_17 Depth=1
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
	s_cbranch_execz .LBB189_19
.LBB189_17:                             ; =>This Inner Loop Header: Depth=1
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
	s_cbranch_vccnz .LBB189_16
; %bb.18:                               ;   in Loop: Header=BB189_17 Depth=1
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
	s_branch .LBB189_16
.LBB189_19:
	s_or_b64 exec, exec, s[14:15]
.LBB189_20:
	s_or_b64 exec, exec, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], 0, v16
	v_cmp_ne_u32_e32 vcc, 0, v16
	v_lshlrev_b32_e32 v0, 2, v13
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB189_24
; %bb.21:
	v_lshlrev_b32_e32 v1, 8, v16
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	s_and_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB189_23
; %bb.22:
	ds_write_b32 v1, v17 offset:256
.LBB189_23:
	ds_write_b32 v1, v18
.LBB189_24:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[6:7]
	s_cbranch_execz .LBB189_58
; %bb.25:
	ds_read_b32 v1, v0
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB189_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v17, v17, v0
.LBB189_27:
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
	s_cbranch_vccnz .LBB189_29
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
.LBB189_29:
	v_cmp_eq_u32_e32 vcc, 0, v13
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB189_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v14, v0
	s_cbranch_vccnz .LBB189_57
; %bb.31:
	v_add_f32_e32 v1, v15, v17
	s_cmp_lt_i32 s10, 3
	s_mov_b64 s[6:7], 0
	s_cbranch_scc1 .LBB189_35
; %bb.32:
	s_cmp_gt_i32 s10, 5
	s_cbranch_scc0 .LBB189_36
; %bb.33:
	s_cmp_eq_u32 s10, 6
	s_cbranch_scc0 .LBB189_37
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
	s_branch .LBB189_38
.LBB189_35:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB189_43
	s_branch .LBB189_48
.LBB189_36:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB189_39
	s_branch .LBB189_41
.LBB189_37:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
.LBB189_38:
	s_branch .LBB189_41
.LBB189_39:
	s_cmp_eq_u32 s10, 3
	s_cbranch_scc0 .LBB189_42
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
.LBB189_41:
	s_branch .LBB189_48
.LBB189_42:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB189_48
.LBB189_43:
	s_cmp_gt_i32 s10, 1
	s_cbranch_scc0 .LBB189_45
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
	s_branch .LBB189_46
.LBB189_45:
	s_mov_b64 s[6:7], -1
                                        ; implicit-def: $vgpr2
.LBB189_46:
	s_andn2_b64 vcc, exec, s[6:7]
	s_mov_b64 s[6:7], 0
	s_cbranch_vccnz .LBB189_48
; %bb.47:
	s_cmp_lg_u32 s10, 1
	s_mov_b64 s[6:7], -1
	s_cselect_b64 s[8:9], -1, 0
.LBB189_48:
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccz .LBB189_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[6:7], 0
.LBB189_50:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB189_56
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
	s_cbranch_execz .LBB189_53
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
.LBB189_53:
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
.LBB189_56:
	v_mov_b32_e32 v0, v2
.LBB189_57:
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
.LBB189_58:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	.section	.text._ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end189:
	.size	_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end189-_ZL13mul_mat_vec_qIL9ggml_type14ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
