; ModuleID = 'C:/Users/Justin/Documents/GitHub/fpga-trace/hls/triangle_intersect/tri_intersect/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"WORK\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [14 x i8] c"tri_intersect\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @tri_intersect(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V, float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V) {
.preheader59.preheader:
  %data_array = alloca [20 x i576], align 8
  call void (...)* @_ssdm_op_SpecBitsMap(float* %ins_data), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %ins_keep_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %ins_strb_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ins_user_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ins_last_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ins_id_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ins_dest_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(float* %outs_data), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outs_keep_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outs_strb_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outs_user_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outs_last_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outs_id_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outs_dest_V), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty, 0
  %data_array_addr = getelementptr [20 x i576]* %data_array, i64 0, i64 0
  %ins_data_tmp_load_toint = bitcast float %ins_data_val to i32
  %empty_11 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val1 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_11, 0
  %ins_data_tmp_load_1_toint = bitcast float %ins_data_val1 to i32
  %empty_12 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val2 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_12, 0
  %ins_data_tmp_load_2_toint = bitcast float %ins_data_val2 to i32
  %empty_13 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val3 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_13, 0
  %ins_data_tmp_load_3_toint = bitcast float %ins_data_val3 to i32
  %empty_14 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val4 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_14, 0
  %ins_data_tmp_load_4_toint = bitcast float %ins_data_val4 to i32
  %empty_15 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val5 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 0
  %ins_data_tmp_load_5_toint = bitcast float %ins_data_val5 to i32
  %empty_16 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val6 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_16, 0
  %ins_data_tmp_load_6_toint = bitcast float %ins_data_val6 to i32
  %empty_17 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val7 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_17, 0
  %ins_data_tmp_load_7_toint = bitcast float %ins_data_val7 to i32
  %empty_18 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val8 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_18, 0
  %ins_data_tmp_load_8_toint = bitcast float %ins_data_val8 to i32
  %empty_19 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val9 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_19, 0
  %ins_data_tmp_load_9_toint = bitcast float %ins_data_val9 to i32
  %empty_20 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val10 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_20, 0
  %ins_data_tmp_load_10_toint = bitcast float %ins_data_val10 to i32
  %empty_21 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val11 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_21, 0
  %ins_data_tmp_load_11_toint = bitcast float %ins_data_val11 to i32
  %empty_22 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val12 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_22, 0
  %ins_data_tmp_load_12_toint = bitcast float %ins_data_val12 to i32
  %empty_23 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val13 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_23, 0
  %ins_data_tmp_load_13_toint = bitcast float %ins_data_val13 to i32
  %empty_24 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val14 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_24, 0
  %ins_data_tmp_load_14_toint = bitcast float %ins_data_val14 to i32
  %tmp = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_14_toint, i32 %ins_data_tmp_load_13_toint, i32 %ins_data_tmp_load_12_toint, i32 %ins_data_tmp_load_11_toint, i32 %ins_data_tmp_load_10_toint, i32 %ins_data_tmp_load_9_toint, i32 %ins_data_tmp_load_8_toint, i32 %ins_data_tmp_load_7_toint, i32 %ins_data_tmp_load_6_toint, i32 %ins_data_tmp_load_5_toint, i32 %ins_data_tmp_load_4_toint, i32 %ins_data_tmp_load_3_toint, i32 %ins_data_tmp_load_2_toint, i32 %ins_data_tmp_load_1_toint, i32 %ins_data_tmp_load_toint)
  %rez_addr959960_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp, i32 0, i32 479)
  store i576 %rez_addr959960_part_set, i576* %data_array_addr, align 8
  %empty_25 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val15 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_25, 0
  %data_array_addr_1 = getelementptr [20 x i576]* %data_array, i64 0, i64 1
  %ins_data_tmp_load_15_toint = bitcast float %ins_data_val15 to i32
  %empty_26 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val16 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_26, 0
  %ins_data_tmp_load_16_toint = bitcast float %ins_data_val16 to i32
  %empty_27 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val17 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_27, 0
  %ins_data_tmp_load_17_toint = bitcast float %ins_data_val17 to i32
  %empty_28 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val18 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_28, 0
  %ins_data_tmp_load_18_toint = bitcast float %ins_data_val18 to i32
  %empty_29 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val19 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_29, 0
  %ins_data_tmp_load_19_toint = bitcast float %ins_data_val19 to i32
  %empty_30 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val20 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_30, 0
  %ins_data_tmp_load_20_toint = bitcast float %ins_data_val20 to i32
  %empty_31 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val21 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_31, 0
  %ins_data_tmp_load_21_toint = bitcast float %ins_data_val21 to i32
  %empty_32 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val22 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_32, 0
  %ins_data_tmp_load_22_toint = bitcast float %ins_data_val22 to i32
  %empty_33 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val23 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_33, 0
  %ins_data_tmp_load_23_toint = bitcast float %ins_data_val23 to i32
  %empty_34 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val24 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_34, 0
  %ins_data_tmp_load_24_toint = bitcast float %ins_data_val24 to i32
  %empty_35 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val25 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_35, 0
  %ins_data_tmp_load_25_toint = bitcast float %ins_data_val25 to i32
  %empty_36 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val26 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_36, 0
  %ins_data_tmp_load_26_toint = bitcast float %ins_data_val26 to i32
  %empty_37 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val27 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_37, 0
  %ins_data_tmp_load_27_toint = bitcast float %ins_data_val27 to i32
  %empty_38 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val28 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_38, 0
  %ins_data_tmp_load_28_toint = bitcast float %ins_data_val28 to i32
  %empty_39 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val29 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 0
  %ins_data_tmp_load_29_toint = bitcast float %ins_data_val29 to i32
  %tmp_2 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_29_toint, i32 %ins_data_tmp_load_28_toint, i32 %ins_data_tmp_load_27_toint, i32 %ins_data_tmp_load_26_toint, i32 %ins_data_tmp_load_25_toint, i32 %ins_data_tmp_load_24_toint, i32 %ins_data_tmp_load_23_toint, i32 %ins_data_tmp_load_22_toint, i32 %ins_data_tmp_load_21_toint, i32 %ins_data_tmp_load_20_toint, i32 %ins_data_tmp_load_19_toint, i32 %ins_data_tmp_load_18_toint, i32 %ins_data_tmp_load_17_toint, i32 %ins_data_tmp_load_16_toint, i32 %ins_data_tmp_load_15_toint)
  %rez_addr_1956957_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_2, i32 0, i32 479)
  store i576 %rez_addr_1956957_part_set, i576* %data_array_addr_1, align 8
  %empty_40 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val30 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_40, 0
  %data_array_addr_2 = getelementptr [20 x i576]* %data_array, i64 0, i64 2
  %ins_data_tmp_load_30_toint = bitcast float %ins_data_val30 to i32
  %empty_41 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val31 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_41, 0
  %ins_data_tmp_load_31_toint = bitcast float %ins_data_val31 to i32
  %empty_42 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val32 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_42, 0
  %ins_data_tmp_load_32_toint = bitcast float %ins_data_val32 to i32
  %empty_43 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val33 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_43, 0
  %ins_data_tmp_load_33_toint = bitcast float %ins_data_val33 to i32
  %empty_44 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val34 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_44, 0
  %ins_data_tmp_load_34_toint = bitcast float %ins_data_val34 to i32
  %empty_45 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val35 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_45, 0
  %ins_data_tmp_load_35_toint = bitcast float %ins_data_val35 to i32
  %empty_46 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val36 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_46, 0
  %ins_data_tmp_load_36_toint = bitcast float %ins_data_val36 to i32
  %empty_47 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val37 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_47, 0
  %ins_data_tmp_load_37_toint = bitcast float %ins_data_val37 to i32
  %empty_48 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val38 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_48, 0
  %ins_data_tmp_load_38_toint = bitcast float %ins_data_val38 to i32
  %empty_49 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val39 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_49, 0
  %ins_data_tmp_load_39_toint = bitcast float %ins_data_val39 to i32
  %empty_50 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val40 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_50, 0
  %ins_data_tmp_load_40_toint = bitcast float %ins_data_val40 to i32
  %empty_51 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val41 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_51, 0
  %ins_data_tmp_load_41_toint = bitcast float %ins_data_val41 to i32
  %empty_52 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val42 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_52, 0
  %ins_data_tmp_load_42_toint = bitcast float %ins_data_val42 to i32
  %empty_53 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val43 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_53, 0
  %ins_data_tmp_load_43_toint = bitcast float %ins_data_val43 to i32
  %empty_54 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val44 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_54, 0
  %ins_data_tmp_load_44_toint = bitcast float %ins_data_val44 to i32
  %tmp_3 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_44_toint, i32 %ins_data_tmp_load_43_toint, i32 %ins_data_tmp_load_42_toint, i32 %ins_data_tmp_load_41_toint, i32 %ins_data_tmp_load_40_toint, i32 %ins_data_tmp_load_39_toint, i32 %ins_data_tmp_load_38_toint, i32 %ins_data_tmp_load_37_toint, i32 %ins_data_tmp_load_36_toint, i32 %ins_data_tmp_load_35_toint, i32 %ins_data_tmp_load_34_toint, i32 %ins_data_tmp_load_33_toint, i32 %ins_data_tmp_load_32_toint, i32 %ins_data_tmp_load_31_toint, i32 %ins_data_tmp_load_30_toint)
  %rez_addr_3953954_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_3, i32 0, i32 479)
  store i576 %rez_addr_3953954_part_set, i576* %data_array_addr_2, align 8
  %empty_55 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val45 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_55, 0
  %data_array_addr_3 = getelementptr [20 x i576]* %data_array, i64 0, i64 3
  %ins_data_tmp_load_45_toint = bitcast float %ins_data_val45 to i32
  %empty_56 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val46 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_56, 0
  %ins_data_tmp_load_46_toint = bitcast float %ins_data_val46 to i32
  %empty_57 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val47 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_57, 0
  %ins_data_tmp_load_47_toint = bitcast float %ins_data_val47 to i32
  %empty_58 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val48 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_58, 0
  %ins_data_tmp_load_48_toint = bitcast float %ins_data_val48 to i32
  %empty_59 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val49 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_59, 0
  %ins_data_tmp_load_49_toint = bitcast float %ins_data_val49 to i32
  %empty_60 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val50 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_60, 0
  %ins_data_tmp_load_50_toint = bitcast float %ins_data_val50 to i32
  %empty_61 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val51 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_61, 0
  %ins_data_tmp_load_51_toint = bitcast float %ins_data_val51 to i32
  %empty_62 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val52 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_62, 0
  %ins_data_tmp_load_52_toint = bitcast float %ins_data_val52 to i32
  %empty_63 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val53 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_63, 0
  %ins_data_tmp_load_53_toint = bitcast float %ins_data_val53 to i32
  %empty_64 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val54 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_64, 0
  %ins_data_tmp_load_54_toint = bitcast float %ins_data_val54 to i32
  %empty_65 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val55 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_65, 0
  %ins_data_tmp_load_55_toint = bitcast float %ins_data_val55 to i32
  %empty_66 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val56 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_66, 0
  %ins_data_tmp_load_56_toint = bitcast float %ins_data_val56 to i32
  %empty_67 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val57 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_67, 0
  %ins_data_tmp_load_57_toint = bitcast float %ins_data_val57 to i32
  %empty_68 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val58 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_68, 0
  %ins_data_tmp_load_58_toint = bitcast float %ins_data_val58 to i32
  %empty_69 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val59 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_69, 0
  %ins_data_tmp_load_59_toint = bitcast float %ins_data_val59 to i32
  %tmp_4 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_59_toint, i32 %ins_data_tmp_load_58_toint, i32 %ins_data_tmp_load_57_toint, i32 %ins_data_tmp_load_56_toint, i32 %ins_data_tmp_load_55_toint, i32 %ins_data_tmp_load_54_toint, i32 %ins_data_tmp_load_53_toint, i32 %ins_data_tmp_load_52_toint, i32 %ins_data_tmp_load_51_toint, i32 %ins_data_tmp_load_50_toint, i32 %ins_data_tmp_load_49_toint, i32 %ins_data_tmp_load_48_toint, i32 %ins_data_tmp_load_47_toint, i32 %ins_data_tmp_load_46_toint, i32 %ins_data_tmp_load_45_toint)
  %rez_addr_4950951_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_4, i32 0, i32 479)
  store i576 %rez_addr_4950951_part_set, i576* %data_array_addr_3, align 8
  %empty_70 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val60 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_70, 0
  %data_array_addr_4 = getelementptr [20 x i576]* %data_array, i64 0, i64 4
  %ins_data_tmp_load_60_toint = bitcast float %ins_data_val60 to i32
  %empty_71 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val61 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_71, 0
  %ins_data_tmp_load_61_toint = bitcast float %ins_data_val61 to i32
  %empty_72 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val62 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_72, 0
  %ins_data_tmp_load_62_toint = bitcast float %ins_data_val62 to i32
  %empty_73 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val63 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_73, 0
  %ins_data_tmp_load_63_toint = bitcast float %ins_data_val63 to i32
  %empty_74 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val64 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_74, 0
  %ins_data_tmp_load_64_toint = bitcast float %ins_data_val64 to i32
  %empty_75 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val65 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_75, 0
  %ins_data_tmp_load_65_toint = bitcast float %ins_data_val65 to i32
  %empty_76 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val66 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_76, 0
  %ins_data_tmp_load_66_toint = bitcast float %ins_data_val66 to i32
  %empty_77 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val67 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_77, 0
  %ins_data_tmp_load_67_toint = bitcast float %ins_data_val67 to i32
  %empty_78 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val68 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_78, 0
  %ins_data_tmp_load_68_toint = bitcast float %ins_data_val68 to i32
  %empty_79 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val69 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_79, 0
  %ins_data_tmp_load_69_toint = bitcast float %ins_data_val69 to i32
  %empty_80 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val70 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_80, 0
  %ins_data_tmp_load_70_toint = bitcast float %ins_data_val70 to i32
  %empty_81 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val71 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_81, 0
  %ins_data_tmp_load_71_toint = bitcast float %ins_data_val71 to i32
  %empty_82 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val72 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_82, 0
  %ins_data_tmp_load_72_toint = bitcast float %ins_data_val72 to i32
  %empty_83 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val73 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_83, 0
  %ins_data_tmp_load_73_toint = bitcast float %ins_data_val73 to i32
  %empty_84 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val74 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_84, 0
  %ins_data_tmp_load_74_toint = bitcast float %ins_data_val74 to i32
  %tmp_5 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_74_toint, i32 %ins_data_tmp_load_73_toint, i32 %ins_data_tmp_load_72_toint, i32 %ins_data_tmp_load_71_toint, i32 %ins_data_tmp_load_70_toint, i32 %ins_data_tmp_load_69_toint, i32 %ins_data_tmp_load_68_toint, i32 %ins_data_tmp_load_67_toint, i32 %ins_data_tmp_load_66_toint, i32 %ins_data_tmp_load_65_toint, i32 %ins_data_tmp_load_64_toint, i32 %ins_data_tmp_load_63_toint, i32 %ins_data_tmp_load_62_toint, i32 %ins_data_tmp_load_61_toint, i32 %ins_data_tmp_load_60_toint)
  %rez_addr_5947948_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_5, i32 0, i32 479)
  store i576 %rez_addr_5947948_part_set, i576* %data_array_addr_4, align 8
  %empty_85 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val75 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_85, 0
  %data_array_addr_5 = getelementptr [20 x i576]* %data_array, i64 0, i64 5
  %ins_data_tmp_load_75_toint = bitcast float %ins_data_val75 to i32
  %empty_86 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val76 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_86, 0
  %ins_data_tmp_load_76_toint = bitcast float %ins_data_val76 to i32
  %empty_87 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val77 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_87, 0
  %ins_data_tmp_load_77_toint = bitcast float %ins_data_val77 to i32
  %empty_88 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val78 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_88, 0
  %ins_data_tmp_load_78_toint = bitcast float %ins_data_val78 to i32
  %empty_89 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val79 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_89, 0
  %ins_data_tmp_load_79_toint = bitcast float %ins_data_val79 to i32
  %empty_90 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val80 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_90, 0
  %ins_data_tmp_load_80_toint = bitcast float %ins_data_val80 to i32
  %empty_91 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val81 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_91, 0
  %ins_data_tmp_load_81_toint = bitcast float %ins_data_val81 to i32
  %empty_92 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val82 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_92, 0
  %ins_data_tmp_load_82_toint = bitcast float %ins_data_val82 to i32
  %empty_93 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val83 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_93, 0
  %ins_data_tmp_load_83_toint = bitcast float %ins_data_val83 to i32
  %empty_94 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val84 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_94, 0
  %ins_data_tmp_load_84_toint = bitcast float %ins_data_val84 to i32
  %empty_95 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val85 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_95, 0
  %ins_data_tmp_load_85_toint = bitcast float %ins_data_val85 to i32
  %empty_96 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val86 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_96, 0
  %ins_data_tmp_load_86_toint = bitcast float %ins_data_val86 to i32
  %empty_97 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val87 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_97, 0
  %ins_data_tmp_load_87_toint = bitcast float %ins_data_val87 to i32
  %empty_98 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val88 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_98, 0
  %ins_data_tmp_load_88_toint = bitcast float %ins_data_val88 to i32
  %empty_99 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val89 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_99, 0
  %ins_data_tmp_load_89_toint = bitcast float %ins_data_val89 to i32
  %tmp_6 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_89_toint, i32 %ins_data_tmp_load_88_toint, i32 %ins_data_tmp_load_87_toint, i32 %ins_data_tmp_load_86_toint, i32 %ins_data_tmp_load_85_toint, i32 %ins_data_tmp_load_84_toint, i32 %ins_data_tmp_load_83_toint, i32 %ins_data_tmp_load_82_toint, i32 %ins_data_tmp_load_81_toint, i32 %ins_data_tmp_load_80_toint, i32 %ins_data_tmp_load_79_toint, i32 %ins_data_tmp_load_78_toint, i32 %ins_data_tmp_load_77_toint, i32 %ins_data_tmp_load_76_toint, i32 %ins_data_tmp_load_75_toint)
  %rez_addr_6944945_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_6, i32 0, i32 479)
  store i576 %rez_addr_6944945_part_set, i576* %data_array_addr_5, align 8
  %empty_100 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val90 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_100, 0
  %data_array_addr_6 = getelementptr [20 x i576]* %data_array, i64 0, i64 6
  %ins_data_tmp_load_90_toint = bitcast float %ins_data_val90 to i32
  %empty_101 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val91 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_101, 0
  %ins_data_tmp_load_91_toint = bitcast float %ins_data_val91 to i32
  %empty_102 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val92 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_102, 0
  %ins_data_tmp_load_92_toint = bitcast float %ins_data_val92 to i32
  %empty_103 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val93 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_103, 0
  %ins_data_tmp_load_93_toint = bitcast float %ins_data_val93 to i32
  %empty_104 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val94 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_104, 0
  %ins_data_tmp_load_94_toint = bitcast float %ins_data_val94 to i32
  %empty_105 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val95 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_105, 0
  %ins_data_tmp_load_95_toint = bitcast float %ins_data_val95 to i32
  %empty_106 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val96 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_106, 0
  %ins_data_tmp_load_96_toint = bitcast float %ins_data_val96 to i32
  %empty_107 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val97 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_107, 0
  %ins_data_tmp_load_97_toint = bitcast float %ins_data_val97 to i32
  %empty_108 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val98 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_108, 0
  %ins_data_tmp_load_98_toint = bitcast float %ins_data_val98 to i32
  %empty_109 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val99 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_109, 0
  %ins_data_tmp_load_99_toint = bitcast float %ins_data_val99 to i32
  %empty_110 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val100 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_110, 0
  %ins_data_tmp_load_100_toint = bitcast float %ins_data_val100 to i32
  %empty_111 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val101 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_111, 0
  %ins_data_tmp_load_101_toint = bitcast float %ins_data_val101 to i32
  %empty_112 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val102 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_112, 0
  %ins_data_tmp_load_102_toint = bitcast float %ins_data_val102 to i32
  %empty_113 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val103 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_113, 0
  %ins_data_tmp_load_103_toint = bitcast float %ins_data_val103 to i32
  %empty_114 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val104 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_114, 0
  %ins_data_tmp_load_104_toint = bitcast float %ins_data_val104 to i32
  %tmp_7 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_104_toint, i32 %ins_data_tmp_load_103_toint, i32 %ins_data_tmp_load_102_toint, i32 %ins_data_tmp_load_101_toint, i32 %ins_data_tmp_load_100_toint, i32 %ins_data_tmp_load_99_toint, i32 %ins_data_tmp_load_98_toint, i32 %ins_data_tmp_load_97_toint, i32 %ins_data_tmp_load_96_toint, i32 %ins_data_tmp_load_95_toint, i32 %ins_data_tmp_load_94_toint, i32 %ins_data_tmp_load_93_toint, i32 %ins_data_tmp_load_92_toint, i32 %ins_data_tmp_load_91_toint, i32 %ins_data_tmp_load_90_toint)
  %rez_addr_7941942_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_7, i32 0, i32 479)
  store i576 %rez_addr_7941942_part_set, i576* %data_array_addr_6, align 8
  %empty_115 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val105 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_115, 0
  %data_array_addr_7 = getelementptr [20 x i576]* %data_array, i64 0, i64 7
  %ins_data_tmp_load_105_toint = bitcast float %ins_data_val105 to i32
  %empty_116 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val106 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_116, 0
  %ins_data_tmp_load_106_toint = bitcast float %ins_data_val106 to i32
  %empty_117 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val107 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_117, 0
  %ins_data_tmp_load_107_toint = bitcast float %ins_data_val107 to i32
  %empty_118 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val108 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_118, 0
  %ins_data_tmp_load_108_toint = bitcast float %ins_data_val108 to i32
  %empty_119 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val109 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_119, 0
  %ins_data_tmp_load_109_toint = bitcast float %ins_data_val109 to i32
  %empty_120 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val110 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_120, 0
  %ins_data_tmp_load_110_toint = bitcast float %ins_data_val110 to i32
  %empty_121 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val111 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_121, 0
  %ins_data_tmp_load_111_toint = bitcast float %ins_data_val111 to i32
  %empty_122 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val112 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_122, 0
  %ins_data_tmp_load_112_toint = bitcast float %ins_data_val112 to i32
  %empty_123 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val113 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_123, 0
  %ins_data_tmp_load_113_toint = bitcast float %ins_data_val113 to i32
  %empty_124 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val114 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_124, 0
  %ins_data_tmp_load_114_toint = bitcast float %ins_data_val114 to i32
  %empty_125 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val115 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_125, 0
  %ins_data_tmp_load_115_toint = bitcast float %ins_data_val115 to i32
  %empty_126 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val116 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_126, 0
  %ins_data_tmp_load_116_toint = bitcast float %ins_data_val116 to i32
  %empty_127 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val117 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_127, 0
  %ins_data_tmp_load_117_toint = bitcast float %ins_data_val117 to i32
  %empty_128 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val118 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_128, 0
  %ins_data_tmp_load_118_toint = bitcast float %ins_data_val118 to i32
  %empty_129 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val119 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_129, 0
  %ins_data_tmp_load_119_toint = bitcast float %ins_data_val119 to i32
  %tmp_8 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_119_toint, i32 %ins_data_tmp_load_118_toint, i32 %ins_data_tmp_load_117_toint, i32 %ins_data_tmp_load_116_toint, i32 %ins_data_tmp_load_115_toint, i32 %ins_data_tmp_load_114_toint, i32 %ins_data_tmp_load_113_toint, i32 %ins_data_tmp_load_112_toint, i32 %ins_data_tmp_load_111_toint, i32 %ins_data_tmp_load_110_toint, i32 %ins_data_tmp_load_109_toint, i32 %ins_data_tmp_load_108_toint, i32 %ins_data_tmp_load_107_toint, i32 %ins_data_tmp_load_106_toint, i32 %ins_data_tmp_load_105_toint)
  %rez_addr_8938939_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_8, i32 0, i32 479)
  store i576 %rez_addr_8938939_part_set, i576* %data_array_addr_7, align 8
  %empty_130 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val120 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_130, 0
  %data_array_addr_8 = getelementptr [20 x i576]* %data_array, i64 0, i64 8
  %ins_data_tmp_load_120_toint = bitcast float %ins_data_val120 to i32
  %empty_131 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val121 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_131, 0
  %ins_data_tmp_load_121_toint = bitcast float %ins_data_val121 to i32
  %empty_132 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val122 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_132, 0
  %ins_data_tmp_load_122_toint = bitcast float %ins_data_val122 to i32
  %empty_133 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val123 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_133, 0
  %ins_data_tmp_load_123_toint = bitcast float %ins_data_val123 to i32
  %empty_134 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val124 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_134, 0
  %ins_data_tmp_load_124_toint = bitcast float %ins_data_val124 to i32
  %empty_135 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val125 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_135, 0
  %ins_data_tmp_load_125_toint = bitcast float %ins_data_val125 to i32
  %empty_136 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val126 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_136, 0
  %ins_data_tmp_load_126_toint = bitcast float %ins_data_val126 to i32
  %empty_137 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val127 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_137, 0
  %ins_data_tmp_load_127_toint = bitcast float %ins_data_val127 to i32
  %empty_138 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val128 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_138, 0
  %ins_data_tmp_load_128_toint = bitcast float %ins_data_val128 to i32
  %empty_139 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val129 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_139, 0
  %ins_data_tmp_load_129_toint = bitcast float %ins_data_val129 to i32
  %empty_140 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val130 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_140, 0
  %ins_data_tmp_load_130_toint = bitcast float %ins_data_val130 to i32
  %empty_141 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val131 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_141, 0
  %ins_data_tmp_load_131_toint = bitcast float %ins_data_val131 to i32
  %empty_142 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val132 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_142, 0
  %ins_data_tmp_load_132_toint = bitcast float %ins_data_val132 to i32
  %empty_143 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val133 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_143, 0
  %ins_data_tmp_load_133_toint = bitcast float %ins_data_val133 to i32
  %empty_144 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val134 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_144, 0
  %ins_data_tmp_load_134_toint = bitcast float %ins_data_val134 to i32
  %tmp_9 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_134_toint, i32 %ins_data_tmp_load_133_toint, i32 %ins_data_tmp_load_132_toint, i32 %ins_data_tmp_load_131_toint, i32 %ins_data_tmp_load_130_toint, i32 %ins_data_tmp_load_129_toint, i32 %ins_data_tmp_load_128_toint, i32 %ins_data_tmp_load_127_toint, i32 %ins_data_tmp_load_126_toint, i32 %ins_data_tmp_load_125_toint, i32 %ins_data_tmp_load_124_toint, i32 %ins_data_tmp_load_123_toint, i32 %ins_data_tmp_load_122_toint, i32 %ins_data_tmp_load_121_toint, i32 %ins_data_tmp_load_120_toint)
  %rez_addr_9935936_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_9, i32 0, i32 479)
  store i576 %rez_addr_9935936_part_set, i576* %data_array_addr_8, align 8
  %empty_145 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val135 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_145, 0
  %data_array_addr_9 = getelementptr [20 x i576]* %data_array, i64 0, i64 9
  %ins_data_tmp_load_135_toint = bitcast float %ins_data_val135 to i32
  %empty_146 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val136 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_146, 0
  %ins_data_tmp_load_136_toint = bitcast float %ins_data_val136 to i32
  %empty_147 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val137 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_147, 0
  %ins_data_tmp_load_137_toint = bitcast float %ins_data_val137 to i32
  %empty_148 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val138 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_148, 0
  %ins_data_tmp_load_138_toint = bitcast float %ins_data_val138 to i32
  %empty_149 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val139 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_149, 0
  %ins_data_tmp_load_139_toint = bitcast float %ins_data_val139 to i32
  %empty_150 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val140 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_150, 0
  %ins_data_tmp_load_140_toint = bitcast float %ins_data_val140 to i32
  %empty_151 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val141 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_151, 0
  %ins_data_tmp_load_141_toint = bitcast float %ins_data_val141 to i32
  %empty_152 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val142 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_152, 0
  %ins_data_tmp_load_142_toint = bitcast float %ins_data_val142 to i32
  %empty_153 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val143 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_153, 0
  %ins_data_tmp_load_143_toint = bitcast float %ins_data_val143 to i32
  %empty_154 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val144 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_154, 0
  %ins_data_tmp_load_144_toint = bitcast float %ins_data_val144 to i32
  %empty_155 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val145 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_155, 0
  %ins_data_tmp_load_145_toint = bitcast float %ins_data_val145 to i32
  %empty_156 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val146 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_156, 0
  %ins_data_tmp_load_146_toint = bitcast float %ins_data_val146 to i32
  %empty_157 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val147 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_157, 0
  %ins_data_tmp_load_147_toint = bitcast float %ins_data_val147 to i32
  %empty_158 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val148 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_158, 0
  %ins_data_tmp_load_148_toint = bitcast float %ins_data_val148 to i32
  %empty_159 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val149 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_159, 0
  %ins_data_tmp_load_149_toint = bitcast float %ins_data_val149 to i32
  %tmp_10 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_149_toint, i32 %ins_data_tmp_load_148_toint, i32 %ins_data_tmp_load_147_toint, i32 %ins_data_tmp_load_146_toint, i32 %ins_data_tmp_load_145_toint, i32 %ins_data_tmp_load_144_toint, i32 %ins_data_tmp_load_143_toint, i32 %ins_data_tmp_load_142_toint, i32 %ins_data_tmp_load_141_toint, i32 %ins_data_tmp_load_140_toint, i32 %ins_data_tmp_load_139_toint, i32 %ins_data_tmp_load_138_toint, i32 %ins_data_tmp_load_137_toint, i32 %ins_data_tmp_load_136_toint, i32 %ins_data_tmp_load_135_toint)
  %rez_addr_10932933_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_10, i32 0, i32 479)
  store i576 %rez_addr_10932933_part_set, i576* %data_array_addr_9, align 8
  %empty_160 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val150 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_160, 0
  %data_array_addr_10 = getelementptr [20 x i576]* %data_array, i64 0, i64 10
  %ins_data_tmp_load_150_toint = bitcast float %ins_data_val150 to i32
  %empty_161 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val151 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_161, 0
  %ins_data_tmp_load_151_toint = bitcast float %ins_data_val151 to i32
  %empty_162 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val152 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_162, 0
  %ins_data_tmp_load_152_toint = bitcast float %ins_data_val152 to i32
  %empty_163 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val153 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_163, 0
  %ins_data_tmp_load_153_toint = bitcast float %ins_data_val153 to i32
  %empty_164 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val154 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_164, 0
  %ins_data_tmp_load_154_toint = bitcast float %ins_data_val154 to i32
  %empty_165 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val155 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_165, 0
  %ins_data_tmp_load_155_toint = bitcast float %ins_data_val155 to i32
  %empty_166 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val156 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_166, 0
  %ins_data_tmp_load_156_toint = bitcast float %ins_data_val156 to i32
  %empty_167 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val157 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_167, 0
  %ins_data_tmp_load_157_toint = bitcast float %ins_data_val157 to i32
  %empty_168 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val158 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_168, 0
  %ins_data_tmp_load_158_toint = bitcast float %ins_data_val158 to i32
  %empty_169 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val159 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_169, 0
  %ins_data_tmp_load_159_toint = bitcast float %ins_data_val159 to i32
  %empty_170 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val160 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_170, 0
  %ins_data_tmp_load_160_toint = bitcast float %ins_data_val160 to i32
  %empty_171 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val161 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_171, 0
  %ins_data_tmp_load_161_toint = bitcast float %ins_data_val161 to i32
  %empty_172 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val162 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_172, 0
  %ins_data_tmp_load_162_toint = bitcast float %ins_data_val162 to i32
  %empty_173 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val163 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_173, 0
  %ins_data_tmp_load_163_toint = bitcast float %ins_data_val163 to i32
  %empty_174 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val164 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_174, 0
  %ins_data_tmp_load_164_toint = bitcast float %ins_data_val164 to i32
  %tmp_11 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_164_toint, i32 %ins_data_tmp_load_163_toint, i32 %ins_data_tmp_load_162_toint, i32 %ins_data_tmp_load_161_toint, i32 %ins_data_tmp_load_160_toint, i32 %ins_data_tmp_load_159_toint, i32 %ins_data_tmp_load_158_toint, i32 %ins_data_tmp_load_157_toint, i32 %ins_data_tmp_load_156_toint, i32 %ins_data_tmp_load_155_toint, i32 %ins_data_tmp_load_154_toint, i32 %ins_data_tmp_load_153_toint, i32 %ins_data_tmp_load_152_toint, i32 %ins_data_tmp_load_151_toint, i32 %ins_data_tmp_load_150_toint)
  %rez_addr_11929930_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_11, i32 0, i32 479)
  store i576 %rez_addr_11929930_part_set, i576* %data_array_addr_10, align 8
  %empty_175 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val165 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_175, 0
  %data_array_addr_11 = getelementptr [20 x i576]* %data_array, i64 0, i64 11
  %ins_data_tmp_load_165_toint = bitcast float %ins_data_val165 to i32
  %empty_176 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val166 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_176, 0
  %ins_data_tmp_load_166_toint = bitcast float %ins_data_val166 to i32
  %empty_177 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val167 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_177, 0
  %ins_data_tmp_load_167_toint = bitcast float %ins_data_val167 to i32
  %empty_178 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val168 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_178, 0
  %ins_data_tmp_load_168_toint = bitcast float %ins_data_val168 to i32
  %empty_179 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val169 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_179, 0
  %ins_data_tmp_load_169_toint = bitcast float %ins_data_val169 to i32
  %empty_180 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val170 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_180, 0
  %ins_data_tmp_load_170_toint = bitcast float %ins_data_val170 to i32
  %empty_181 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val171 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_181, 0
  %ins_data_tmp_load_171_toint = bitcast float %ins_data_val171 to i32
  %empty_182 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val172 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_182, 0
  %ins_data_tmp_load_172_toint = bitcast float %ins_data_val172 to i32
  %empty_183 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val173 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_183, 0
  %ins_data_tmp_load_173_toint = bitcast float %ins_data_val173 to i32
  %empty_184 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val174 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_184, 0
  %ins_data_tmp_load_174_toint = bitcast float %ins_data_val174 to i32
  %empty_185 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val175 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_185, 0
  %ins_data_tmp_load_175_toint = bitcast float %ins_data_val175 to i32
  %empty_186 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val176 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_186, 0
  %ins_data_tmp_load_176_toint = bitcast float %ins_data_val176 to i32
  %empty_187 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val177 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_187, 0
  %ins_data_tmp_load_177_toint = bitcast float %ins_data_val177 to i32
  %empty_188 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val178 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_188, 0
  %ins_data_tmp_load_178_toint = bitcast float %ins_data_val178 to i32
  %empty_189 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val179 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_189, 0
  %ins_data_tmp_load_179_toint = bitcast float %ins_data_val179 to i32
  %tmp_12 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_179_toint, i32 %ins_data_tmp_load_178_toint, i32 %ins_data_tmp_load_177_toint, i32 %ins_data_tmp_load_176_toint, i32 %ins_data_tmp_load_175_toint, i32 %ins_data_tmp_load_174_toint, i32 %ins_data_tmp_load_173_toint, i32 %ins_data_tmp_load_172_toint, i32 %ins_data_tmp_load_171_toint, i32 %ins_data_tmp_load_170_toint, i32 %ins_data_tmp_load_169_toint, i32 %ins_data_tmp_load_168_toint, i32 %ins_data_tmp_load_167_toint, i32 %ins_data_tmp_load_166_toint, i32 %ins_data_tmp_load_165_toint)
  %rez_addr_12926927_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_12, i32 0, i32 479)
  store i576 %rez_addr_12926927_part_set, i576* %data_array_addr_11, align 8
  %empty_190 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val180 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_190, 0
  %data_array_addr_12 = getelementptr [20 x i576]* %data_array, i64 0, i64 12
  %ins_data_tmp_load_180_toint = bitcast float %ins_data_val180 to i32
  %empty_191 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val181 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_191, 0
  %ins_data_tmp_load_181_toint = bitcast float %ins_data_val181 to i32
  %empty_192 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val182 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_192, 0
  %ins_data_tmp_load_182_toint = bitcast float %ins_data_val182 to i32
  %empty_193 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val183 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_193, 0
  %ins_data_tmp_load_183_toint = bitcast float %ins_data_val183 to i32
  %empty_194 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val184 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_194, 0
  %ins_data_tmp_load_184_toint = bitcast float %ins_data_val184 to i32
  %empty_195 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val185 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_195, 0
  %ins_data_tmp_load_185_toint = bitcast float %ins_data_val185 to i32
  %empty_196 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val186 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_196, 0
  %ins_data_tmp_load_186_toint = bitcast float %ins_data_val186 to i32
  %empty_197 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val187 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_197, 0
  %ins_data_tmp_load_187_toint = bitcast float %ins_data_val187 to i32
  %empty_198 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val188 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_198, 0
  %ins_data_tmp_load_188_toint = bitcast float %ins_data_val188 to i32
  %empty_199 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val189 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_199, 0
  %ins_data_tmp_load_189_toint = bitcast float %ins_data_val189 to i32
  %empty_200 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val190 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_200, 0
  %ins_data_tmp_load_190_toint = bitcast float %ins_data_val190 to i32
  %empty_201 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val191 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_201, 0
  %ins_data_tmp_load_191_toint = bitcast float %ins_data_val191 to i32
  %empty_202 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val192 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_202, 0
  %ins_data_tmp_load_192_toint = bitcast float %ins_data_val192 to i32
  %empty_203 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val193 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_203, 0
  %ins_data_tmp_load_193_toint = bitcast float %ins_data_val193 to i32
  %empty_204 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val194 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_204, 0
  %ins_data_tmp_load_194_toint = bitcast float %ins_data_val194 to i32
  %tmp_13 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_194_toint, i32 %ins_data_tmp_load_193_toint, i32 %ins_data_tmp_load_192_toint, i32 %ins_data_tmp_load_191_toint, i32 %ins_data_tmp_load_190_toint, i32 %ins_data_tmp_load_189_toint, i32 %ins_data_tmp_load_188_toint, i32 %ins_data_tmp_load_187_toint, i32 %ins_data_tmp_load_186_toint, i32 %ins_data_tmp_load_185_toint, i32 %ins_data_tmp_load_184_toint, i32 %ins_data_tmp_load_183_toint, i32 %ins_data_tmp_load_182_toint, i32 %ins_data_tmp_load_181_toint, i32 %ins_data_tmp_load_180_toint)
  %rez_addr_13923924_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_13, i32 0, i32 479)
  store i576 %rez_addr_13923924_part_set, i576* %data_array_addr_12, align 8
  %empty_205 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val195 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_205, 0
  %data_array_addr_13 = getelementptr [20 x i576]* %data_array, i64 0, i64 13
  %ins_data_tmp_load_195_toint = bitcast float %ins_data_val195 to i32
  %empty_206 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val196 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_206, 0
  %ins_data_tmp_load_196_toint = bitcast float %ins_data_val196 to i32
  %empty_207 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val197 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_207, 0
  %ins_data_tmp_load_197_toint = bitcast float %ins_data_val197 to i32
  %empty_208 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val198 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_208, 0
  %ins_data_tmp_load_198_toint = bitcast float %ins_data_val198 to i32
  %empty_209 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val199 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_209, 0
  %ins_data_tmp_load_199_toint = bitcast float %ins_data_val199 to i32
  %empty_210 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val200 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_210, 0
  %ins_data_tmp_load_200_toint = bitcast float %ins_data_val200 to i32
  %empty_211 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val201 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_211, 0
  %ins_data_tmp_load_201_toint = bitcast float %ins_data_val201 to i32
  %empty_212 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val202 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_212, 0
  %ins_data_tmp_load_202_toint = bitcast float %ins_data_val202 to i32
  %empty_213 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val203 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_213, 0
  %ins_data_tmp_load_203_toint = bitcast float %ins_data_val203 to i32
  %empty_214 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val204 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_214, 0
  %ins_data_tmp_load_204_toint = bitcast float %ins_data_val204 to i32
  %empty_215 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val205 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_215, 0
  %ins_data_tmp_load_205_toint = bitcast float %ins_data_val205 to i32
  %empty_216 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val206 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_216, 0
  %ins_data_tmp_load_206_toint = bitcast float %ins_data_val206 to i32
  %empty_217 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val207 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_217, 0
  %ins_data_tmp_load_207_toint = bitcast float %ins_data_val207 to i32
  %empty_218 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val208 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_218, 0
  %ins_data_tmp_load_208_toint = bitcast float %ins_data_val208 to i32
  %empty_219 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val209 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_219, 0
  %ins_data_tmp_load_209_toint = bitcast float %ins_data_val209 to i32
  %tmp_14 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_209_toint, i32 %ins_data_tmp_load_208_toint, i32 %ins_data_tmp_load_207_toint, i32 %ins_data_tmp_load_206_toint, i32 %ins_data_tmp_load_205_toint, i32 %ins_data_tmp_load_204_toint, i32 %ins_data_tmp_load_203_toint, i32 %ins_data_tmp_load_202_toint, i32 %ins_data_tmp_load_201_toint, i32 %ins_data_tmp_load_200_toint, i32 %ins_data_tmp_load_199_toint, i32 %ins_data_tmp_load_198_toint, i32 %ins_data_tmp_load_197_toint, i32 %ins_data_tmp_load_196_toint, i32 %ins_data_tmp_load_195_toint)
  %rez_addr_14920921_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_14, i32 0, i32 479)
  store i576 %rez_addr_14920921_part_set, i576* %data_array_addr_13, align 8
  %empty_220 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val210 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_220, 0
  %data_array_addr_14 = getelementptr [20 x i576]* %data_array, i64 0, i64 14
  %ins_data_tmp_load_210_toint = bitcast float %ins_data_val210 to i32
  %empty_221 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val211 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_221, 0
  %ins_data_tmp_load_211_toint = bitcast float %ins_data_val211 to i32
  %empty_222 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val212 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_222, 0
  %ins_data_tmp_load_212_toint = bitcast float %ins_data_val212 to i32
  %empty_223 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val213 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_223, 0
  %ins_data_tmp_load_213_toint = bitcast float %ins_data_val213 to i32
  %empty_224 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val214 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_224, 0
  %ins_data_tmp_load_214_toint = bitcast float %ins_data_val214 to i32
  %empty_225 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val215 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_225, 0
  %ins_data_tmp_load_215_toint = bitcast float %ins_data_val215 to i32
  %empty_226 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val216 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_226, 0
  %ins_data_tmp_load_216_toint = bitcast float %ins_data_val216 to i32
  %empty_227 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val217 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_227, 0
  %ins_data_tmp_load_217_toint = bitcast float %ins_data_val217 to i32
  %empty_228 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val218 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_228, 0
  %ins_data_tmp_load_218_toint = bitcast float %ins_data_val218 to i32
  %empty_229 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val219 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_229, 0
  %ins_data_tmp_load_219_toint = bitcast float %ins_data_val219 to i32
  %empty_230 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val220 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_230, 0
  %ins_data_tmp_load_220_toint = bitcast float %ins_data_val220 to i32
  %empty_231 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val221 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_231, 0
  %ins_data_tmp_load_221_toint = bitcast float %ins_data_val221 to i32
  %empty_232 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val222 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_232, 0
  %ins_data_tmp_load_222_toint = bitcast float %ins_data_val222 to i32
  %empty_233 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val223 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_233, 0
  %ins_data_tmp_load_223_toint = bitcast float %ins_data_val223 to i32
  %empty_234 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val224 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_234, 0
  %ins_data_tmp_load_224_toint = bitcast float %ins_data_val224 to i32
  %tmp_15 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_224_toint, i32 %ins_data_tmp_load_223_toint, i32 %ins_data_tmp_load_222_toint, i32 %ins_data_tmp_load_221_toint, i32 %ins_data_tmp_load_220_toint, i32 %ins_data_tmp_load_219_toint, i32 %ins_data_tmp_load_218_toint, i32 %ins_data_tmp_load_217_toint, i32 %ins_data_tmp_load_216_toint, i32 %ins_data_tmp_load_215_toint, i32 %ins_data_tmp_load_214_toint, i32 %ins_data_tmp_load_213_toint, i32 %ins_data_tmp_load_212_toint, i32 %ins_data_tmp_load_211_toint, i32 %ins_data_tmp_load_210_toint)
  %rez_addr_15917918_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_15, i32 0, i32 479)
  store i576 %rez_addr_15917918_part_set, i576* %data_array_addr_14, align 8
  %empty_235 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val225 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_235, 0
  %data_array_addr_15 = getelementptr [20 x i576]* %data_array, i64 0, i64 15
  %ins_data_tmp_load_225_toint = bitcast float %ins_data_val225 to i32
  %empty_236 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val226 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_236, 0
  %ins_data_tmp_load_226_toint = bitcast float %ins_data_val226 to i32
  %empty_237 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val227 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_237, 0
  %ins_data_tmp_load_227_toint = bitcast float %ins_data_val227 to i32
  %empty_238 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val228 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_238, 0
  %ins_data_tmp_load_228_toint = bitcast float %ins_data_val228 to i32
  %empty_239 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val229 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_239, 0
  %ins_data_tmp_load_229_toint = bitcast float %ins_data_val229 to i32
  %empty_240 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val230 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_240, 0
  %ins_data_tmp_load_230_toint = bitcast float %ins_data_val230 to i32
  %empty_241 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val231 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_241, 0
  %ins_data_tmp_load_231_toint = bitcast float %ins_data_val231 to i32
  %empty_242 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val232 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_242, 0
  %ins_data_tmp_load_232_toint = bitcast float %ins_data_val232 to i32
  %empty_243 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val233 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_243, 0
  %ins_data_tmp_load_233_toint = bitcast float %ins_data_val233 to i32
  %empty_244 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val234 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_244, 0
  %ins_data_tmp_load_234_toint = bitcast float %ins_data_val234 to i32
  %empty_245 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val235 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_245, 0
  %ins_data_tmp_load_235_toint = bitcast float %ins_data_val235 to i32
  %empty_246 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val236 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_246, 0
  %ins_data_tmp_load_236_toint = bitcast float %ins_data_val236 to i32
  %empty_247 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val237 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_247, 0
  %ins_data_tmp_load_237_toint = bitcast float %ins_data_val237 to i32
  %empty_248 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val238 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_248, 0
  %ins_data_tmp_load_238_toint = bitcast float %ins_data_val238 to i32
  %empty_249 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val239 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_249, 0
  %ins_data_tmp_load_239_toint = bitcast float %ins_data_val239 to i32
  %tmp_16 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_239_toint, i32 %ins_data_tmp_load_238_toint, i32 %ins_data_tmp_load_237_toint, i32 %ins_data_tmp_load_236_toint, i32 %ins_data_tmp_load_235_toint, i32 %ins_data_tmp_load_234_toint, i32 %ins_data_tmp_load_233_toint, i32 %ins_data_tmp_load_232_toint, i32 %ins_data_tmp_load_231_toint, i32 %ins_data_tmp_load_230_toint, i32 %ins_data_tmp_load_229_toint, i32 %ins_data_tmp_load_228_toint, i32 %ins_data_tmp_load_227_toint, i32 %ins_data_tmp_load_226_toint, i32 %ins_data_tmp_load_225_toint)
  %rez_addr_16914915_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_16, i32 0, i32 479)
  store i576 %rez_addr_16914915_part_set, i576* %data_array_addr_15, align 8
  %empty_250 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val240 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_250, 0
  %data_array_addr_16 = getelementptr [20 x i576]* %data_array, i64 0, i64 16
  %ins_data_tmp_load_240_toint = bitcast float %ins_data_val240 to i32
  %data_array_load = load i576* %data_array_addr_16, align 8
  %empty_251 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val241 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_251, 0
  %ins_data_tmp_load_241_toint = bitcast float %ins_data_val241 to i32
  %empty_252 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val242 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_252, 0
  %ins_data_tmp_load_242_toint = bitcast float %ins_data_val242 to i32
  %empty_253 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val243 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_253, 0
  %ins_data_tmp_load_243_toint = bitcast float %ins_data_val243 to i32
  %empty_254 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val244 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_254, 0
  %ins_data_tmp_load_244_toint = bitcast float %ins_data_val244 to i32
  %empty_255 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val245 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_255, 0
  %ins_data_tmp_load_245_toint = bitcast float %ins_data_val245 to i32
  %empty_256 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val246 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_256, 0
  %ins_data_tmp_load_246_toint = bitcast float %ins_data_val246 to i32
  %empty_257 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val247 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_257, 0
  %ins_data_tmp_load_247_toint = bitcast float %ins_data_val247 to i32
  %empty_258 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val248 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_258, 0
  %ins_data_tmp_load_248_toint = bitcast float %ins_data_val248 to i32
  %empty_259 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val249 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_259, 0
  %ins_data_tmp_load_249_toint = bitcast float %ins_data_val249 to i32
  %empty_260 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val250 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_260, 0
  %ins_data_tmp_load_250_toint = bitcast float %ins_data_val250 to i32
  %empty_261 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val251 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_261, 0
  %ins_data_tmp_load_251_toint = bitcast float %ins_data_val251 to i32
  %empty_262 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val252 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_262, 0
  %ins_data_tmp_load_252_toint = bitcast float %ins_data_val252 to i32
  %empty_263 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val253 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_263, 0
  %ins_data_tmp_load_253_toint = bitcast float %ins_data_val253 to i32
  %empty_264 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val254 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_264, 0
  %ins_data_tmp_load_254_toint = bitcast float %ins_data_val254 to i32
  %tmp_17 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_254_toint, i32 %ins_data_tmp_load_253_toint, i32 %ins_data_tmp_load_252_toint, i32 %ins_data_tmp_load_251_toint, i32 %ins_data_tmp_load_250_toint, i32 %ins_data_tmp_load_249_toint, i32 %ins_data_tmp_load_248_toint, i32 %ins_data_tmp_load_247_toint, i32 %ins_data_tmp_load_246_toint, i32 %ins_data_tmp_load_245_toint, i32 %ins_data_tmp_load_244_toint, i32 %ins_data_tmp_load_243_toint, i32 %ins_data_tmp_load_242_toint, i32 %ins_data_tmp_load_241_toint, i32 %ins_data_tmp_load_240_toint)
  %rez_addr_17911912_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 %data_array_load, i480 %tmp_17, i32 0, i32 479)
  store i576 %rez_addr_17911912_part_set, i576* %data_array_addr_16, align 8
  %empty_265 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val255 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_265, 0
  %data_array_addr_17 = getelementptr [20 x i576]* %data_array, i64 0, i64 17
  %ins_data_tmp_load_255_toint = bitcast float %ins_data_val255 to i32
  %data_array_load_1 = load i576* %data_array_addr_17, align 8
  %empty_266 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val256 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_266, 0
  %ins_data_tmp_load_256_toint = bitcast float %ins_data_val256 to i32
  %empty_267 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val257 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_267, 0
  %ins_data_tmp_load_257_toint = bitcast float %ins_data_val257 to i32
  %empty_268 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val258 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_268, 0
  %ins_data_tmp_load_258_toint = bitcast float %ins_data_val258 to i32
  %empty_269 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val259 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_269, 0
  %ins_data_tmp_load_259_toint = bitcast float %ins_data_val259 to i32
  %empty_270 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val260 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_270, 0
  %ins_data_tmp_load_260_toint = bitcast float %ins_data_val260 to i32
  %empty_271 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val261 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_271, 0
  %ins_data_tmp_load_261_toint = bitcast float %ins_data_val261 to i32
  %empty_272 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val262 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_272, 0
  %ins_data_tmp_load_262_toint = bitcast float %ins_data_val262 to i32
  %empty_273 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val263 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_273, 0
  %ins_data_tmp_load_263_toint = bitcast float %ins_data_val263 to i32
  %empty_274 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val264 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_274, 0
  %ins_data_tmp_load_264_toint = bitcast float %ins_data_val264 to i32
  %empty_275 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val265 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_275, 0
  %ins_data_tmp_load_265_toint = bitcast float %ins_data_val265 to i32
  %empty_276 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val266 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_276, 0
  %ins_data_tmp_load_266_toint = bitcast float %ins_data_val266 to i32
  %empty_277 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val267 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_277, 0
  %ins_data_tmp_load_267_toint = bitcast float %ins_data_val267 to i32
  %empty_278 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val268 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_278, 0
  %ins_data_tmp_load_268_toint = bitcast float %ins_data_val268 to i32
  %empty_279 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val269 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_279, 0
  %ins_data_tmp_load_269_toint = bitcast float %ins_data_val269 to i32
  %tmp_18 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_269_toint, i32 %ins_data_tmp_load_268_toint, i32 %ins_data_tmp_load_267_toint, i32 %ins_data_tmp_load_266_toint, i32 %ins_data_tmp_load_265_toint, i32 %ins_data_tmp_load_264_toint, i32 %ins_data_tmp_load_263_toint, i32 %ins_data_tmp_load_262_toint, i32 %ins_data_tmp_load_261_toint, i32 %ins_data_tmp_load_260_toint, i32 %ins_data_tmp_load_259_toint, i32 %ins_data_tmp_load_258_toint, i32 %ins_data_tmp_load_257_toint, i32 %ins_data_tmp_load_256_toint, i32 %ins_data_tmp_load_255_toint)
  %rez_addr_18908909_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 %data_array_load_1, i480 %tmp_18, i32 0, i32 479)
  store i576 %rez_addr_18908909_part_set, i576* %data_array_addr_17, align 8
  %empty_280 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val270 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_280, 0
  %data_array_addr_18 = getelementptr [20 x i576]* %data_array, i64 0, i64 18
  %ins_data_tmp_load_270_toint = bitcast float %ins_data_val270 to i32
  %data_array_load_2 = load i576* %data_array_addr_18, align 8
  %empty_281 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val271 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_281, 0
  %ins_data_tmp_load_271_toint = bitcast float %ins_data_val271 to i32
  %empty_282 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val272 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_282, 0
  %ins_data_tmp_load_272_toint = bitcast float %ins_data_val272 to i32
  %empty_283 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val273 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_283, 0
  %ins_data_tmp_load_273_toint = bitcast float %ins_data_val273 to i32
  %empty_284 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val274 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_284, 0
  %ins_data_tmp_load_274_toint = bitcast float %ins_data_val274 to i32
  %empty_285 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val275 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_285, 0
  %ins_data_tmp_load_275_toint = bitcast float %ins_data_val275 to i32
  %empty_286 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val276 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_286, 0
  %ins_data_tmp_load_276_toint = bitcast float %ins_data_val276 to i32
  %empty_287 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val277 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_287, 0
  %ins_data_tmp_load_277_toint = bitcast float %ins_data_val277 to i32
  %empty_288 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val278 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_288, 0
  %ins_data_tmp_load_278_toint = bitcast float %ins_data_val278 to i32
  %empty_289 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val279 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_289, 0
  %ins_data_tmp_load_279_toint = bitcast float %ins_data_val279 to i32
  %empty_290 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val280 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_290, 0
  %ins_data_tmp_load_280_toint = bitcast float %ins_data_val280 to i32
  %empty_291 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val281 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_291, 0
  %ins_data_tmp_load_281_toint = bitcast float %ins_data_val281 to i32
  %empty_292 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val282 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_292, 0
  %ins_data_tmp_load_282_toint = bitcast float %ins_data_val282 to i32
  %empty_293 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val283 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_293, 0
  %ins_data_tmp_load_283_toint = bitcast float %ins_data_val283 to i32
  %empty_294 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val284 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_294, 0
  %ins_data_tmp_load_284_toint = bitcast float %ins_data_val284 to i32
  %tmp_19 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_284_toint, i32 %ins_data_tmp_load_283_toint, i32 %ins_data_tmp_load_282_toint, i32 %ins_data_tmp_load_281_toint, i32 %ins_data_tmp_load_280_toint, i32 %ins_data_tmp_load_279_toint, i32 %ins_data_tmp_load_278_toint, i32 %ins_data_tmp_load_277_toint, i32 %ins_data_tmp_load_276_toint, i32 %ins_data_tmp_load_275_toint, i32 %ins_data_tmp_load_274_toint, i32 %ins_data_tmp_load_273_toint, i32 %ins_data_tmp_load_272_toint, i32 %ins_data_tmp_load_271_toint, i32 %ins_data_tmp_load_270_toint)
  %rez_addr_19905906_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 %data_array_load_2, i480 %tmp_19, i32 0, i32 479)
  store i576 %rez_addr_19905906_part_set, i576* %data_array_addr_18, align 8
  %empty_295 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val285 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_295, 0
  %data_array_addr_19 = getelementptr [20 x i576]* %data_array, i64 0, i64 19
  %ins_data_tmp_load_285_toint = bitcast float %ins_data_val285 to i32
  %data_array_load_3 = load i576* %data_array_addr_19, align 8
  %empty_296 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val286 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_296, 0
  %ins_data_tmp_load_286_toint = bitcast float %ins_data_val286 to i32
  %empty_297 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val287 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_297, 0
  %ins_data_tmp_load_287_toint = bitcast float %ins_data_val287 to i32
  %empty_298 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val288 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_298, 0
  %ins_data_tmp_load_288_toint = bitcast float %ins_data_val288 to i32
  %empty_299 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val289 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_299, 0
  %ins_data_tmp_load_289_toint = bitcast float %ins_data_val289 to i32
  %empty_300 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val290 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_300, 0
  %ins_data_tmp_load_290_toint = bitcast float %ins_data_val290 to i32
  %empty_301 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val291 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_301, 0
  %ins_data_tmp_load_291_toint = bitcast float %ins_data_val291 to i32
  %empty_302 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val292 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_302, 0
  %ins_data_tmp_load_292_toint = bitcast float %ins_data_val292 to i32
  %empty_303 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val293 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_303, 0
  %ins_data_tmp_load_293_toint = bitcast float %ins_data_val293 to i32
  %empty_304 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val294 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_304, 0
  %ins_data_tmp_load_294_toint = bitcast float %ins_data_val294 to i32
  %empty_305 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val295 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_305, 0
  %ins_data_tmp_load_295_toint = bitcast float %ins_data_val295 to i32
  %empty_306 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val296 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_306, 0
  %ins_data_tmp_load_296_toint = bitcast float %ins_data_val296 to i32
  %empty_307 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val297 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_307, 0
  %ins_data_tmp_load_297_toint = bitcast float %ins_data_val297 to i32
  %empty_308 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val298 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_308, 0
  %ins_data_tmp_load_298_toint = bitcast float %ins_data_val298 to i32
  %empty_309 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val299 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 0
  %ins_keep_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 1
  %ins_strb_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 2
  %ins_user_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 3
  %ins_last_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 4
  %ins_id_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 5
  %ins_dest_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_309, 6
  %ins_data_tmp_load_299_toint = bitcast float %ins_data_val299 to i32
  %tmp_20 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_299_toint, i32 %ins_data_tmp_load_298_toint, i32 %ins_data_tmp_load_297_toint, i32 %ins_data_tmp_load_296_toint, i32 %ins_data_tmp_load_295_toint, i32 %ins_data_tmp_load_294_toint, i32 %ins_data_tmp_load_293_toint, i32 %ins_data_tmp_load_292_toint, i32 %ins_data_tmp_load_291_toint, i32 %ins_data_tmp_load_290_toint, i32 %ins_data_tmp_load_289_toint, i32 %ins_data_tmp_load_288_toint, i32 %ins_data_tmp_load_287_toint, i32 %ins_data_tmp_load_286_toint, i32 %ins_data_tmp_load_285_toint)
  %rez_addr_20902903_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 %data_array_load_3, i480 %tmp_20, i32 0, i32 479)
  store i576 %rez_addr_20902903_part_set, i576* %data_array_addr_19, align 8
  br label %.preheader59

.preheader59:                                     ; preds = %0, %.preheader59.preheader
  %i1 = phi i5 [ %i, %0 ], [ 0, %.preheader59.preheader ]
  %exitcond2 = icmp eq i5 %i1, -12
  %i = add i5 %i1, 1
  br i1 %exitcond2, label %.preheader.preheader, label %0

.preheader.preheader:                             ; preds = %.preheader59
  %data_array_load_4 = load i576* %data_array_addr, align 8
  %t_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_4, i32 480, i32 511)
  %t_load = bitcast i32 %t_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_4, i32 512, i32 543)
  %gamma_load = bitcast i32 %gamma_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_4, i32 544, i32 575)
  %beta_load = bitcast i32 %beta_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_5 = load i576* %data_array_addr_1, align 8
  %t_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_5, i32 480, i32 511)
  %t_load_s = bitcast i32 %t_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_5, i32 512, i32 543)
  %gamma_load_s = bitcast i32 %gamma_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_5, i32 544, i32 575)
  %beta_load_s = bitcast i32 %beta_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_6 = load i576* %data_array_addr_2, align 8
  %t_load_2_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_6, i32 480, i32 511)
  %t_load_1 = bitcast i32 %t_load_2_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_1, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_2_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_6, i32 512, i32 543)
  %gamma_load_1 = bitcast i32 %gamma_load_2_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_1, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_2_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_6, i32 544, i32 575)
  %beta_load_1 = bitcast i32 %beta_load_2_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_1, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_7 = load i576* %data_array_addr_3, align 8
  %t_load_3_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_7, i32 480, i32 511)
  %t_load_2 = bitcast i32 %t_load_3_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_2, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_3_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_7, i32 512, i32 543)
  %gamma_load_2 = bitcast i32 %gamma_load_3_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_2, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_3_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_7, i32 544, i32 575)
  %beta_load_2 = bitcast i32 %beta_load_3_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_2, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_8 = load i576* %data_array_addr_4, align 8
  %t_load_4_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_8, i32 480, i32 511)
  %t_load_3 = bitcast i32 %t_load_4_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_3, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_4_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_8, i32 512, i32 543)
  %gamma_load_3 = bitcast i32 %gamma_load_4_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_3, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_4_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_8, i32 544, i32 575)
  %beta_load_3 = bitcast i32 %beta_load_4_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_3, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_9 = load i576* %data_array_addr_5, align 8
  %t_load_5_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_9, i32 480, i32 511)
  %t_load_4 = bitcast i32 %t_load_5_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_4, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_5_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_9, i32 512, i32 543)
  %gamma_load_4 = bitcast i32 %gamma_load_5_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_4, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_5_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_9, i32 544, i32 575)
  %beta_load_4 = bitcast i32 %beta_load_5_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_4, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_10 = load i576* %data_array_addr_6, align 8
  %t_load_6_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_10, i32 480, i32 511)
  %t_load_5 = bitcast i32 %t_load_6_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_5, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_6_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_10, i32 512, i32 543)
  %gamma_load_5 = bitcast i32 %gamma_load_6_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_5, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_6_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_10, i32 544, i32 575)
  %beta_load_5 = bitcast i32 %beta_load_6_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_5, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_11 = load i576* %data_array_addr_7, align 8
  %t_load_7_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_11, i32 480, i32 511)
  %t_load_6 = bitcast i32 %t_load_7_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_6, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_7_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_11, i32 512, i32 543)
  %gamma_load_6 = bitcast i32 %gamma_load_7_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_6, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_7_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_11, i32 544, i32 575)
  %beta_load_6 = bitcast i32 %beta_load_7_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_6, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_12 = load i576* %data_array_addr_8, align 8
  %t_load_8_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_12, i32 480, i32 511)
  %t_load_7 = bitcast i32 %t_load_8_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_7, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_8_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_12, i32 512, i32 543)
  %gamma_load_7 = bitcast i32 %gamma_load_8_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_7, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_8_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_12, i32 544, i32 575)
  %beta_load_7 = bitcast i32 %beta_load_8_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_7, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_13 = load i576* %data_array_addr_9, align 8
  %t_load_9_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_13, i32 480, i32 511)
  %t_load_8 = bitcast i32 %t_load_9_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_8, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_9_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_13, i32 512, i32 543)
  %gamma_load_8 = bitcast i32 %gamma_load_9_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_8, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_9_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_13, i32 544, i32 575)
  %beta_load_8 = bitcast i32 %beta_load_9_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_8, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_14 = load i576* %data_array_addr_10, align 8
  %t_load_10_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_14, i32 480, i32 511)
  %t_load_9 = bitcast i32 %t_load_10_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_9, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_10_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_14, i32 512, i32 543)
  %gamma_load_9 = bitcast i32 %gamma_load_10_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_9, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_10_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_14, i32 544, i32 575)
  %beta_load_9 = bitcast i32 %beta_load_10_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_9, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_15 = load i576* %data_array_addr_11, align 8
  %t_load_11_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_15, i32 480, i32 511)
  %t_load_10 = bitcast i32 %t_load_11_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_10, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_11_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_15, i32 512, i32 543)
  %gamma_load_10 = bitcast i32 %gamma_load_11_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_10, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_11_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_15, i32 544, i32 575)
  %beta_load_10 = bitcast i32 %beta_load_11_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_10, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_16 = load i576* %data_array_addr_12, align 8
  %t_load_12_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_16, i32 480, i32 511)
  %t_load_11 = bitcast i32 %t_load_12_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_11, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_12_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_16, i32 512, i32 543)
  %gamma_load_11 = bitcast i32 %gamma_load_12_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_11, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_12_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_16, i32 544, i32 575)
  %beta_load_11 = bitcast i32 %beta_load_12_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_11, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_17 = load i576* %data_array_addr_13, align 8
  %t_load_13_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_17, i32 480, i32 511)
  %t_load_12 = bitcast i32 %t_load_13_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_12, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_13_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_17, i32 512, i32 543)
  %gamma_load_12 = bitcast i32 %gamma_load_13_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_12, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_13_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_17, i32 544, i32 575)
  %beta_load_12 = bitcast i32 %beta_load_13_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_12, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_18 = load i576* %data_array_addr_14, align 8
  %t_load_14_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_18, i32 480, i32 511)
  %t_load_13 = bitcast i32 %t_load_14_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_13, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_14_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_18, i32 512, i32 543)
  %gamma_load_13 = bitcast i32 %gamma_load_14_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_13, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_14_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_18, i32 544, i32 575)
  %beta_load_13 = bitcast i32 %beta_load_14_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_13, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_19 = load i576* %data_array_addr_15, align 8
  %t_load_15_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_19, i32 480, i32 511)
  %t_load_14 = bitcast i32 %t_load_15_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_14, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_15_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_19, i32 512, i32 543)
  %gamma_load_14 = bitcast i32 %gamma_load_15_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_14, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_15_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_19, i32 544, i32 575)
  %beta_load_14 = bitcast i32 %beta_load_15_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_14, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_20 = load i576* %data_array_addr_16, align 8
  %t_load_16_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_20, i32 480, i32 511)
  %t_load_15 = bitcast i32 %t_load_16_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_15, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_16_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_20, i32 512, i32 543)
  %gamma_load_15 = bitcast i32 %gamma_load_16_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_15, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_16_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_20, i32 544, i32 575)
  %beta_load_15 = bitcast i32 %beta_load_16_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_15, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_21 = load i576* %data_array_addr_17, align 8
  %t_load_17_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_21, i32 480, i32 511)
  %t_load_16 = bitcast i32 %t_load_17_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_16, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_17_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_21, i32 512, i32 543)
  %gamma_load_16 = bitcast i32 %gamma_load_17_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_16, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_17_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_21, i32 544, i32 575)
  %beta_load_16 = bitcast i32 %beta_load_17_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_16, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_22 = load i576* %data_array_addr_18, align 8
  %t_load_18_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_22, i32 480, i32 511)
  %t_load_17 = bitcast i32 %t_load_18_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_17, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_18_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_22, i32 512, i32 543)
  %gamma_load_17 = bitcast i32 %gamma_load_18_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_17, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_18_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_22, i32 544, i32 575)
  %beta_load_17 = bitcast i32 %beta_load_18_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_17, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_23 = load i576* %data_array_addr_19, align 8
  %t_load_19_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_23, i32 480, i32 511)
  %t_load_18 = bitcast i32 %t_load_19_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_18, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_19_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_23, i32 512, i32 543)
  %gamma_load_18 = bitcast i32 %gamma_load_19_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_18, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_19_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_23, i32 544, i32 575)
  %beta_load_18 = bitcast i32 %beta_load_19_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_18, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 %ins_last_V_val, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  ret void

; <label>:0                                       ; preds = %.preheader59
  %empty_310 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_1 = zext i5 %i1 to i64
  %data_array_addr_20 = getelementptr [20 x i576]* %data_array, i64 0, i64 %tmp_1
  %data_array_load_24 = load i576* %data_array_addr_20, align 8
  %tmp_22 = trunc i576 %data_array_load_24 to i32
  %v0x_assign4 = bitcast i32 %tmp_22 to float
  %v0y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 32, i32 63)
  %v0y_assign = bitcast i32 %v0y_assign_new to float
  %v0z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 64, i32 95)
  %v0z_assign = bitcast i32 %v0z_assign_new to float
  %v1x_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 96, i32 127)
  %v1x_assign = bitcast i32 %v1x_assign_new to float
  %v1y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 128, i32 159)
  %v1y_assign = bitcast i32 %v1y_assign_new to float
  %v1z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 160, i32 191)
  %v1z_assign = bitcast i32 %v1z_assign_new to float
  %v2x_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 192, i32 223)
  %v2x_assign = bitcast i32 %v2x_assign_new to float
  %v2y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 224, i32 255)
  %v2y_assign = bitcast i32 %v2y_assign_new to float
  %v2z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 256, i32 287)
  %v2z_assign = bitcast i32 %v2z_assign_new to float
  %rdx_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 288, i32 319)
  %g = bitcast i32 %rdx_assign_new to float
  %rdy_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 320, i32 351)
  %h = bitcast i32 %rdy_assign_new to float
  %rdz_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 352, i32 383)
  %i_1 = bitcast i32 %rdz_assign_new to float
  %rex_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 384, i32 415)
  %rex_assign = bitcast i32 %rex_assign_new to float
  %rey_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 416, i32 447)
  %rey_assign = bitcast i32 %rey_assign_new to float
  %rez_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_24, i32 448, i32 479)
  %rez_assign = bitcast i32 %rez_assign_new to float
  %a = fsub float %v0x_assign4, %v1x_assign
  %b = fsub float %v0y_assign, %v1y_assign
  %c = fsub float %v0z_assign, %v1z_assign
  %d = fsub float %v0x_assign4, %v2x_assign
  %e = fsub float %v0y_assign, %v2y_assign
  %f = fsub float %v0z_assign, %v2z_assign
  %j = fsub float %v0x_assign4, %rex_assign
  %k = fsub float %v0y_assign, %rey_assign
  %l = fsub float %v0z_assign, %rez_assign
  %tmp_i = fmul float %e, %i_1
  %tmp_i_311 = fmul float %f, %h
  %tmp_1_i = fsub float %tmp_i, %tmp_i_311
  %tmp_2_i = fmul float %a, %tmp_1_i
  %tmp_3_i = fmul float %f, %g
  %tmp_4_i = fmul float %d, %i_1
  %tmp_5_i = fsub float %tmp_3_i, %tmp_4_i
  %tmp_6_i = fmul float %b, %tmp_5_i
  %tmp_7_i = fadd float %tmp_2_i, %tmp_6_i
  %tmp_8_i = fmul float %d, %h
  %tmp_9_i = fmul float %e, %g
  %tmp_10_i = fsub float %tmp_8_i, %tmp_9_i
  %tmp_11_i = fmul float %c, %tmp_10_i
  %m = fadd float %tmp_7_i, %tmp_11_i
  %im = fdiv float 1.000000e+00, %m
  %tmp_12_i = fmul float %a, %k
  %tmp_13_i = fmul float %j, %b
  %tmp_14_i = fsub float %tmp_12_i, %tmp_13_i
  %tmp_15_i = fmul float %f, %tmp_14_i
  %tmp_16_i = fmul float %j, %c
  %tmp_17_i = fmul float %a, %l
  %tmp_18_i = fsub float %tmp_16_i, %tmp_17_i
  %tmp_19_i = fmul float %e, %tmp_18_i
  %tmp_20_i = fadd float %tmp_15_i, %tmp_19_i
  %tmp_21_i = fmul float %b, %l
  %tmp_22_i = fmul float %k, %c
  %tmp_23_i = fsub float %tmp_21_i, %tmp_22_i
  %tmp_24_i = fmul float %d, %tmp_23_i
  %tmp_25_i = fadd float %tmp_20_i, %tmp_24_i
  %tmp_61_to_int_i = bitcast float %tmp_25_i to i32
  %tmp_61_neg_i = xor i32 %tmp_61_to_int_i, -2147483648
  %tmp_26_i = bitcast i32 %tmp_61_neg_i to float
  %t_write_assign = fmul float %tmp_26_i, %im
  %tmp_27_i = fmul float %tmp_14_i, %i_1
  %tmp_28_i = fmul float %tmp_18_i, %h
  %tmp_29_i = fadd float %tmp_27_i, %tmp_28_i
  %tmp_30_i = fmul float %tmp_23_i, %g
  %tmp_31_i = fadd float %tmp_29_i, %tmp_30_i
  %gamma_write_assign = fmul float %tmp_31_i, %im
  %tmp_32_i = fmul float %j, %tmp_1_i
  %tmp_33_i = fmul float %k, %tmp_5_i
  %tmp_34_i = fadd float %tmp_32_i, %tmp_33_i
  %tmp_35_i = fmul float %l, %tmp_10_i
  %tmp_36_i = fadd float %tmp_34_i, %tmp_35_i
  %beta_write_assign = fmul float %tmp_36_i, %im
  %t_write_assign_toint = bitcast float %t_write_assign to i32
  %gamma_write_assign_toint = bitcast float %gamma_write_assign to i32
  %beta_write_assign_toint = bitcast float %beta_write_assign to i32
  %tmp_21 = call i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32 %beta_write_assign_toint, i32 %gamma_write_assign_toint, i32 %t_write_assign_toint)
  %beta_addr_111281129_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i96.i32.i32(i576 %data_array_load_24, i96 %tmp_21, i32 480, i32 575)
  store i576 %beta_addr_111281129_part_set, i576* %data_array_addr_20, align 8
  %empty_312 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_s)
  br label %.preheader59
}

define weak i576 @_ssdm_op_PartSet.i576.i576.i96.i32.i32(i576, i96, i32, i32) nounwind readnone {
entry:
  %empty = call i576 @llvm.part.set.i576.i96(i576 %0, i96 %1, i32 %2, i32 %3)
  ret i576 %empty
}

define weak i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_313 = zext i32 %2 to i64
  %empty_314 = shl i64 %empty, 32
  %empty_315 = or i64 %empty_314, %empty_313
  %empty_316 = zext i32 %0 to i96
  %empty_317 = zext i64 %empty_315 to i96
  %empty_318 = shl i96 %empty_316, 64
  %empty_319 = or i96 %empty_318, %empty_317
  ret i96 %empty_319
}

define weak i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576, i480, i32, i32) nounwind readnone {
entry:
  %empty = call i576 @llvm.part.set.i576.i480(i576 %0, i480 %1, i32 %2, i32 %3)
  ret i576 %empty
}

define weak i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %13 to i64
  %empty_320 = zext i32 %14 to i64
  %empty_321 = shl i64 %empty, 32
  %empty_322 = or i64 %empty_321, %empty_320
  %empty_323 = zext i32 %12 to i96
  %empty_324 = zext i64 %empty_322 to i96
  %empty_325 = shl i96 %empty_323, 64
  %empty_326 = or i96 %empty_325, %empty_324
  %empty_327 = zext i32 %11 to i128
  %empty_328 = zext i96 %empty_326 to i128
  %empty_329 = shl i128 %empty_327, 96
  %empty_330 = or i128 %empty_329, %empty_328
  %empty_331 = zext i32 %10 to i160
  %empty_332 = zext i128 %empty_330 to i160
  %empty_333 = shl i160 %empty_331, 128
  %empty_334 = or i160 %empty_333, %empty_332
  %empty_335 = zext i32 %9 to i192
  %empty_336 = zext i160 %empty_334 to i192
  %empty_337 = shl i192 %empty_335, 160
  %empty_338 = or i192 %empty_337, %empty_336
  %empty_339 = zext i32 %8 to i224
  %empty_340 = zext i192 %empty_338 to i224
  %empty_341 = shl i224 %empty_339, 192
  %empty_342 = or i224 %empty_341, %empty_340
  %empty_343 = zext i32 %7 to i256
  %empty_344 = zext i224 %empty_342 to i256
  %empty_345 = shl i256 %empty_343, 224
  %empty_346 = or i256 %empty_345, %empty_344
  %empty_347 = zext i32 %6 to i288
  %empty_348 = zext i256 %empty_346 to i288
  %empty_349 = shl i288 %empty_347, 256
  %empty_350 = or i288 %empty_349, %empty_348
  %empty_351 = zext i32 %5 to i320
  %empty_352 = zext i288 %empty_350 to i320
  %empty_353 = shl i320 %empty_351, 288
  %empty_354 = or i320 %empty_353, %empty_352
  %empty_355 = zext i32 %4 to i352
  %empty_356 = zext i320 %empty_354 to i352
  %empty_357 = shl i352 %empty_355, 320
  %empty_358 = or i352 %empty_357, %empty_356
  %empty_359 = zext i32 %3 to i384
  %empty_360 = zext i352 %empty_358 to i384
  %empty_361 = shl i384 %empty_359, 352
  %empty_362 = or i384 %empty_361, %empty_360
  %empty_363 = zext i32 %2 to i416
  %empty_364 = zext i384 %empty_362 to i416
  %empty_365 = shl i416 %empty_363, 384
  %empty_366 = or i416 %empty_365, %empty_364
  %empty_367 = zext i32 %1 to i448
  %empty_368 = zext i416 %empty_366 to i448
  %empty_369 = shl i448 %empty_367, 416
  %empty_370 = or i448 %empty_369, %empty_368
  %empty_371 = zext i32 %0 to i480
  %empty_372 = zext i448 %empty_370 to i480
  %empty_373 = shl i480 %empty_371, 448
  %empty_374 = or i480 %empty_373, %empty_372
  ret i480 %empty_374
}

define weak i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576, i32, i32) nounwind readnone {
entry:
  %empty = call i576 @llvm.part.select.i576(i576 %0, i32 %1, i32 %2)
  %empty_375 = trunc i576 %empty to i32
  ret i32 %empty_375
}

define weak { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load float* %0
  %empty_376 = load i4* %1
  %empty_377 = load i4* %2
  %empty_378 = load i1* %3
  %empty_379 = load i1* %4
  %empty_380 = load i1* %5
  %empty_381 = load i1* %6
  %mrv_0 = insertvalue { float, i4, i4, i1, i1, i1, i1 } undef, float %empty, 0
  %mrv1 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_376, 1
  %mrv2 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_377, 2
  %mrv3 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_378, 3
  %mrv4 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_379, 4
  %mrv5 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_380, 5
  %mrv6 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_381, 6
  ret { float, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float*, i4*, i4*, i1*, i1*, i1*, i1*, float, i4, i4, i1, i1, i1, i1) {
entry:
  store float %7, float* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

declare i576 @llvm.part.set.i576.i96(i576, i96, i32, i32) nounwind readnone

declare i576 @llvm.part.set.i576.i480(i576, i480, i32, i32) nounwind readnone

declare i576 @llvm.part.select.i576(i576, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"ins.data", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 299, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 3, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"ins.keep.V", metadata !11, metadata !"uint4", i32 0, i32 3}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"ins.strb.V", metadata !11, metadata !"uint4", i32 0, i32 3}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"ins.user.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"ins.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"ins.id.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"ins.dest.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"outs.data", metadata !41, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 59, i32 1}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"outs.keep.V", metadata !41, metadata !"uint4", i32 0, i32 3}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 3, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"outs.strb.V", metadata !41, metadata !"uint4", i32 0, i32 3}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"outs.user.V", metadata !41, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"outs.last.V", metadata !41, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"outs.id.V", metadata !41, metadata !"uint1", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"outs.dest.V", metadata !41, metadata !"uint1", i32 0, i32 0}
