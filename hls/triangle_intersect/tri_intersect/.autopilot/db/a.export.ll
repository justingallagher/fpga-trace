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
  %data_array = alloca [2 x i576], align 8
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
  %data_array_addr = getelementptr [2 x i576]* %data_array, i64 0, i64 0
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
  %rez_addr149150_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp, i32 0, i32 479)
  store i576 %rez_addr149150_part_set, i576* %data_array_addr, align 8
  %empty_25 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %ins_data_val15 = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_25, 0
  %data_array_addr_1 = getelementptr [2 x i576]* %data_array, i64 0, i64 1
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
  %ins_keep_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 1
  %ins_strb_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 2
  %ins_user_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 3
  %ins_last_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 4
  %ins_id_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 5
  %ins_dest_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_39, 6
  %ins_data_tmp_load_29_toint = bitcast float %ins_data_val29 to i32
  %tmp_1 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %ins_data_tmp_load_29_toint, i32 %ins_data_tmp_load_28_toint, i32 %ins_data_tmp_load_27_toint, i32 %ins_data_tmp_load_26_toint, i32 %ins_data_tmp_load_25_toint, i32 %ins_data_tmp_load_24_toint, i32 %ins_data_tmp_load_23_toint, i32 %ins_data_tmp_load_22_toint, i32 %ins_data_tmp_load_21_toint, i32 %ins_data_tmp_load_20_toint, i32 %ins_data_tmp_load_19_toint, i32 %ins_data_tmp_load_18_toint, i32 %ins_data_tmp_load_17_toint, i32 %ins_data_tmp_load_16_toint, i32 %ins_data_tmp_load_15_toint)
  %rez_addr_1146147_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576 undef, i480 %tmp_1, i32 0, i32 479)
  store i576 %rez_addr_1146147_part_set, i576* %data_array_addr_1, align 8
  br label %.preheader59

.preheader59:                                     ; preds = %0, %.preheader59.preheader
  %i1 = phi i2 [ %i, %0 ], [ 0, %.preheader59.preheader ]
  %exitcond2 = icmp eq i2 %i1, -2
  %i = add i2 %i1, 1
  br i1 %exitcond2, label %.preheader.preheader, label %0

.preheader.preheader:                             ; preds = %.preheader59
  %data_array_load = load i576* %data_array_addr, align 8
  %t_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load, i32 480, i32 511)
  %t_load = bitcast i32 %t_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load, i32 512, i32 543)
  %gamma_load = bitcast i32 %gamma_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load, i32 544, i32 575)
  %beta_load = bitcast i32 %beta_load_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %data_array_load_1 = load i576* %data_array_addr_1, align 8
  %t_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_1, i32 480, i32 511)
  %t_load_s = bitcast i32 %t_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %gamma_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_1, i32 512, i32 543)
  %gamma_load_s = bitcast i32 %gamma_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 false, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  %beta_load_1_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_1, i32 544, i32 575)
  %beta_load_s = bitcast i32 %beta_load_1_new to float
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta_load_s, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 %ins_last_V_val, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  ret void

; <label>:0                                       ; preds = %.preheader59
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i2 %i1 to i64
  %data_array_addr_2 = getelementptr [2 x i576]* %data_array, i64 0, i64 %tmp_s
  %data_array_load_2 = load i576* %data_array_addr_2, align 8
  %tmp_3 = trunc i576 %data_array_load_2 to i32
  %v0x_assign4 = bitcast i32 %tmp_3 to float
  %v0y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 32, i32 63)
  %v0y_assign = bitcast i32 %v0y_assign_new to float
  %v0z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 64, i32 95)
  %v0z_assign = bitcast i32 %v0z_assign_new to float
  %v1x_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 96, i32 127)
  %v1x_assign = bitcast i32 %v1x_assign_new to float
  %v1y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 128, i32 159)
  %v1y_assign = bitcast i32 %v1y_assign_new to float
  %v1z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 160, i32 191)
  %v1z_assign = bitcast i32 %v1z_assign_new to float
  %v2x_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 192, i32 223)
  %v2x_assign = bitcast i32 %v2x_assign_new to float
  %v2y_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 224, i32 255)
  %v2y_assign = bitcast i32 %v2y_assign_new to float
  %v2z_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 256, i32 287)
  %v2z_assign = bitcast i32 %v2z_assign_new to float
  %rdx_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 288, i32 319)
  %g = bitcast i32 %rdx_assign_new to float
  %rdy_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 320, i32 351)
  %h = bitcast i32 %rdy_assign_new to float
  %rdz_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 352, i32 383)
  %i_1 = bitcast i32 %rdz_assign_new to float
  %rex_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 384, i32 415)
  %rex_assign = bitcast i32 %rex_assign_new to float
  %rey_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 416, i32 447)
  %rey_assign = bitcast i32 %rey_assign_new to float
  %rez_assign_new = call i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576 %data_array_load_2, i32 448, i32 479)
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
  %tmp_i_41 = fmul float %f, %h
  %tmp_1_i = fsub float %tmp_i, %tmp_i_41
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
  %tmp_2 = call i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32 %beta_write_assign_toint, i32 %gamma_write_assign_toint, i32 %t_write_assign_toint)
  %beta_addr_1174175_part_set = call i576 @_ssdm_op_PartSet.i576.i576.i96.i32.i32(i576 %data_array_load_2, i96 %tmp_2, i32 480, i32 575)
  store i576 %beta_addr_1174175_part_set, i576* %data_array_addr_2, align 8
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_4)
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
  %empty_43 = zext i32 %2 to i64
  %empty_44 = shl i64 %empty, 32
  %empty_45 = or i64 %empty_44, %empty_43
  %empty_46 = zext i32 %0 to i96
  %empty_47 = zext i64 %empty_45 to i96
  %empty_48 = shl i96 %empty_46, 64
  %empty_49 = or i96 %empty_48, %empty_47
  ret i96 %empty_49
}

define weak i576 @_ssdm_op_PartSet.i576.i576.i480.i32.i32(i576, i480, i32, i32) nounwind readnone {
entry:
  %empty = call i576 @llvm.part.set.i576.i480(i576 %0, i480 %1, i32 %2, i32 %3)
  ret i576 %empty
}

define weak i480 @_ssdm_op_BitConcatenate.i480.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %13 to i64
  %empty_50 = zext i32 %14 to i64
  %empty_51 = shl i64 %empty, 32
  %empty_52 = or i64 %empty_51, %empty_50
  %empty_53 = zext i32 %12 to i96
  %empty_54 = zext i64 %empty_52 to i96
  %empty_55 = shl i96 %empty_53, 64
  %empty_56 = or i96 %empty_55, %empty_54
  %empty_57 = zext i32 %11 to i128
  %empty_58 = zext i96 %empty_56 to i128
  %empty_59 = shl i128 %empty_57, 96
  %empty_60 = or i128 %empty_59, %empty_58
  %empty_61 = zext i32 %10 to i160
  %empty_62 = zext i128 %empty_60 to i160
  %empty_63 = shl i160 %empty_61, 128
  %empty_64 = or i160 %empty_63, %empty_62
  %empty_65 = zext i32 %9 to i192
  %empty_66 = zext i160 %empty_64 to i192
  %empty_67 = shl i192 %empty_65, 160
  %empty_68 = or i192 %empty_67, %empty_66
  %empty_69 = zext i32 %8 to i224
  %empty_70 = zext i192 %empty_68 to i224
  %empty_71 = shl i224 %empty_69, 192
  %empty_72 = or i224 %empty_71, %empty_70
  %empty_73 = zext i32 %7 to i256
  %empty_74 = zext i224 %empty_72 to i256
  %empty_75 = shl i256 %empty_73, 224
  %empty_76 = or i256 %empty_75, %empty_74
  %empty_77 = zext i32 %6 to i288
  %empty_78 = zext i256 %empty_76 to i288
  %empty_79 = shl i288 %empty_77, 256
  %empty_80 = or i288 %empty_79, %empty_78
  %empty_81 = zext i32 %5 to i320
  %empty_82 = zext i288 %empty_80 to i320
  %empty_83 = shl i320 %empty_81, 288
  %empty_84 = or i320 %empty_83, %empty_82
  %empty_85 = zext i32 %4 to i352
  %empty_86 = zext i320 %empty_84 to i352
  %empty_87 = shl i352 %empty_85, 320
  %empty_88 = or i352 %empty_87, %empty_86
  %empty_89 = zext i32 %3 to i384
  %empty_90 = zext i352 %empty_88 to i384
  %empty_91 = shl i384 %empty_89, 352
  %empty_92 = or i384 %empty_91, %empty_90
  %empty_93 = zext i32 %2 to i416
  %empty_94 = zext i384 %empty_92 to i416
  %empty_95 = shl i416 %empty_93, 384
  %empty_96 = or i416 %empty_95, %empty_94
  %empty_97 = zext i32 %1 to i448
  %empty_98 = zext i416 %empty_96 to i448
  %empty_99 = shl i448 %empty_97, 416
  %empty_100 = or i448 %empty_99, %empty_98
  %empty_101 = zext i32 %0 to i480
  %empty_102 = zext i448 %empty_100 to i480
  %empty_103 = shl i480 %empty_101, 448
  %empty_104 = or i480 %empty_103, %empty_102
  ret i480 %empty_104
}

define weak i32 @_ssdm_op_PartSelect.i32.i576.i32.i32(i576, i32, i32) nounwind readnone {
entry:
  %empty = call i576 @llvm.part.select.i576(i576 %0, i32 %1, i32 %2)
  %empty_105 = trunc i576 %empty to i32
  ret i32 %empty_105
}

define weak { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load float* %0
  %empty_106 = load i4* %1
  %empty_107 = load i4* %2
  %empty_108 = load i1* %3
  %empty_109 = load i1* %4
  %empty_110 = load i1* %5
  %empty_111 = load i1* %6
  %mrv_0 = insertvalue { float, i4, i4, i1, i1, i1, i1 } undef, float %empty, 0
  %mrv1 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_106, 1
  %mrv2 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_107, 2
  %mrv3 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_108, 3
  %mrv4 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_109, 4
  %mrv5 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_110, 5
  %mrv6 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_111, 6
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
!12 = metadata !{i32 0, i32 29, i32 1}
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
!42 = metadata !{i32 0, i32 5, i32 1}
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
