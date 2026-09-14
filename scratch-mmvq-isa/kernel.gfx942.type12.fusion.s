	.type	_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,@function
_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj: ; @_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	s_cbranch_scc1 .LBB159_5
; %bb.1:
	s_mov_b32 s35, 0
	s_lshl_b64 s[26:27], s[34:35], 2
	s_add_u32 s16, s16, s26
	s_addc_u32 s17, s17, s27
	s_load_dword s5, s[16:17], 0x0
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_andn2_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB159_3
.LBB159_2:
	s_load_dwordx2 s[16:17], s[0:1], 0x6c
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s3, s16, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s5, s3, s17
.LBB159_3:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB159_6
; %bb.4:
	s_mul_hi_u32 s3, s9, s34
	s_add_i32 s3, s34, s3
	s_lshr_b32 s3, s3, s10
	s_mul_i32 s3, s3, s11
	s_sub_i32 s38, s34, s3
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s3, s5
	s_branch .LBB159_7
.LBB159_5:
                                        ; implicit-def: $sgpr5
	s_load_dword s33, s[0:1], 0x60
	s_load_dword s35, s[0:1], 0x88
	s_branch .LBB159_2
.LBB159_6:
	s_mov_b32 s3, s34
	s_mov_b32 s38, s34
.LBB159_7:
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
	s_cbranch_execz .LBB159_14
; %bb.8:
	s_cmp_eq_u64 s[18:19], 0
	s_mul_i32 s36, s3, s22
	s_cbranch_scc1 .LBB159_10
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
	s_branch .LBB159_11
.LBB159_10:
	v_mov_b32_e32 v16, 0
.LBB159_11:
	s_cmp_lg_u64 s[30:31], 0
	s_cselect_b64 s[18:19], -1, 0
	s_and_b64 s[18:19], s[18:19], s[16:17]
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB159_13
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
	s_branch .LBB159_14
.LBB159_13:
	v_mov_b32_e32 v17, 0
.LBB159_14:
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
	s_cbranch_execz .LBB159_20
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
	s_branch .LBB159_17
.LBB159_16:                             ;   in Loop: Header=BB159_17 Depth=1
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
	s_cbranch_execz .LBB159_19
.LBB159_17:                             ; =>This Inner Loop Header: Depth=1
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
	s_cbranch_vccnz .LBB159_16
; %bb.18:                               ;   in Loop: Header=BB159_17 Depth=1
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
	s_branch .LBB159_16
.LBB159_19:
	s_or_b64 exec, exec, s[14:15]
.LBB159_20:
	s_or_b64 exec, exec, s[18:19]
	v_cmp_eq_u32_e64 s[6:7], 0, v18
	v_cmp_ne_u32_e32 vcc, 0, v18
	v_lshlrev_b32_e32 v0, 2, v15
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB159_24
; %bb.21:
	v_lshlrev_b32_e32 v1, 8, v18
	s_movk_i32 s3, 0xff00
	v_add3_u32 v1, v1, v0, s3
	s_and_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB159_23
; %bb.22:
	ds_write_b32 v1, v19 offset:256
.LBB159_23:
	ds_write_b32 v1, v20
.LBB159_24:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[6:7]
	s_cbranch_execz .LBB159_58
; %bb.25:
	ds_read_b32 v1, v0
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz .LBB159_27
; %bb.26:
	ds_read_b32 v0, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v19, v19, v0
.LBB159_27:
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
	s_cbranch_vccnz .LBB159_29
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
.LBB159_29:
	v_cmp_eq_u32_e32 vcc, 0, v15
	s_and_b64 exec, exec, vcc
	s_cbranch_execz .LBB159_58
; %bb.30:
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v0, v2, v3
	s_and_b64 vcc, exec, s[8:9]
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v16, v0
	s_cbranch_vccnz .LBB159_57
; %bb.31:
	v_add_f32_e32 v1, v17, v19
	s_cmp_lt_i32 s10, 3
	s_mov_b64 s[6:7], 0
	s_cbranch_scc1 .LBB159_35
; %bb.32:
	s_cmp_gt_i32 s10, 5
	s_cbranch_scc0 .LBB159_36
; %bb.33:
	s_cmp_eq_u32 s10, 6
	s_cbranch_scc0 .LBB159_37
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
	s_branch .LBB159_38
.LBB159_35:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB159_43
	s_branch .LBB159_48
.LBB159_36:
	s_mov_b64 s[8:9], 0
                                        ; implicit-def: $vgpr2
	s_cbranch_execnz .LBB159_39
	s_branch .LBB159_41
.LBB159_37:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
.LBB159_38:
	s_branch .LBB159_41
.LBB159_39:
	s_cmp_eq_u32 s10, 3
	s_cbranch_scc0 .LBB159_42
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
.LBB159_41:
	s_branch .LBB159_48
.LBB159_42:
	s_mov_b64 s[8:9], -1
                                        ; implicit-def: $vgpr2
	s_branch .LBB159_48
.LBB159_43:
	s_cmp_gt_i32 s10, 1
	s_cbranch_scc0 .LBB159_45
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
	s_branch .LBB159_46
.LBB159_45:
	s_mov_b64 s[6:7], -1
                                        ; implicit-def: $vgpr2
.LBB159_46:
	s_andn2_b64 vcc, exec, s[6:7]
	s_mov_b64 s[6:7], 0
	s_cbranch_vccnz .LBB159_48
; %bb.47:
	s_cmp_lg_u32 s10, 1
	s_mov_b64 s[6:7], -1
	s_cselect_b64 s[8:9], -1, 0
.LBB159_48:
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccz .LBB159_50
; %bb.49:
	v_mul_f32_e32 v2, v0, v1
	s_mov_b64 s[6:7], 0
.LBB159_50:
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB159_56
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
	s_cbranch_execz .LBB159_53
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
.LBB159_53:
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
.LBB159_56:
	v_mov_b32_e32 v0, v2
.LBB159_57:
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
.LBB159_58:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
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
	.section	.text._ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,"axG",@progbits,_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj,comdat
.Lfunc_end159:
	.size	_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj, .Lfunc_end159-_ZL13mul_mat_vec_qIL9ggml_type12ELi1ELb1ELb0ELb0EEvPKvS2_PKi31ggml_cuda_mm_fusion_args_devicePfj15HIP_vector_typeIjLj3EEjjjS8_jjjS8_jjjj
