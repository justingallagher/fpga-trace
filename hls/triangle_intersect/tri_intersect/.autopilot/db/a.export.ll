; ModuleID = 'C:/Users/Justin/Documents/GitHub/fpga-trace/hls/triangle_intersect/tri_intersect/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [14 x i8] c"tri_intersect\00"

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define void @tri_intersect(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V, float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V) {
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
  %v0x = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty, 0
  %empty_2 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v0y = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_2, 0
  %empty_3 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v0z = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_3, 0
  %empty_4 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v1x = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_4, 0
  %empty_5 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v1y = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_5, 0
  %empty_6 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v1z = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_6, 0
  %empty_7 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v2x = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_7, 0
  %empty_8 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v2y = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_8, 0
  %empty_9 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %v2z = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_9, 0
  %empty_10 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rdx = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_10, 0
  %empty_11 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rdy = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_11, 0
  %empty_12 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rdz = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_12, 0
  %empty_13 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rex = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_13, 0
  %empty_14 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rey = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_14, 0
  %empty_15 = call { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %ins_data, i4* %ins_keep_V, i4* %ins_strb_V, i1* %ins_user_V, i1* %ins_last_V, i1* %ins_id_V, i1* %ins_dest_V)
  %rez = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 0
  %ins_keep_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 1
  %ins_strb_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 2
  %ins_user_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 3
  %ins_last_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 4
  %ins_id_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 5
  %ins_dest_V_val = extractvalue { float, i4, i4, i1, i1, i1, i1 } %empty_15, 6
  %a = fsub float %v0x, %v1x
  %b = fsub float %v0y, %v1y
  %c = fsub float %v0z, %v1z
  %d = fsub float %v0x, %v2x
  %e = fsub float %v0y, %v2y
  %f = fsub float %v0z, %v2z
  %j = fsub float %v0x, %rex
  %k = fsub float %v0y, %rey
  %l = fsub float %v0z, %rez
  %tmp = fmul float %e, %rdz
  %tmp_1 = fmul float %rdy, %f
  %tmp_2 = fsub float %tmp, %tmp_1
  %tmp_3 = fmul float %a, %tmp_2
  %tmp_4 = fmul float %rdx, %f
  %tmp_5 = fmul float %d, %rdz
  %tmp_6 = fsub float %tmp_4, %tmp_5
  %tmp_7 = fmul float %b, %tmp_6
  %tmp_8 = fadd float %tmp_3, %tmp_7
  %tmp_9 = fmul float %d, %rdy
  %tmp_s = fmul float %e, %rdx
  %tmp_10 = fsub float %tmp_9, %tmp_s
  %tmp_11 = fmul float %c, %tmp_10
  %m = fadd float %tmp_8, %tmp_11
  %im = fdiv float 1.000000e+00, %m
  %tmp_12 = fmul float %a, %k
  %tmp_13 = fmul float %j, %b
  %tmp_14 = fsub float %tmp_12, %tmp_13
  %tmp_15 = fmul float %f, %tmp_14
  %tmp_16 = fmul float %j, %c
  %tmp_17 = fmul float %a, %l
  %tmp_18 = fsub float %tmp_16, %tmp_17
  %tmp_19 = fmul float %e, %tmp_18
  %tmp_20 = fadd float %tmp_15, %tmp_19
  %tmp_21 = fmul float %b, %l
  %tmp_22 = fmul float %k, %c
  %tmp_23 = fsub float %tmp_21, %tmp_22
  %tmp_24 = fmul float %d, %tmp_23
  %tmp_25 = fadd float %tmp_20, %tmp_24
  %tmp_26_to_int = bitcast float %tmp_25 to i32
  %tmp_26_neg = xor i32 %tmp_26_to_int, -2147483648
  %tmp_26 = bitcast i32 %tmp_26_neg to float
  %t = fmul float %tmp_26, %im
  %tmp_27 = fmul float %rdz, %tmp_14
  %tmp_28 = fmul float %rdy, %tmp_18
  %tmp_29 = fadd float %tmp_27, %tmp_28
  %tmp_30 = fmul float %rdx, %tmp_23
  %tmp_31 = fadd float %tmp_29, %tmp_30
  %gamma = fmul float %tmp_31, %im
  %tmp_32 = fmul float %j, %tmp_2
  %tmp_33 = fmul float %k, %tmp_6
  %tmp_34 = fadd float %tmp_32, %tmp_33
  %tmp_35 = fmul float %l, %tmp_10
  %tmp_36 = fadd float %tmp_34, %tmp_35
  %beta = fmul float %tmp_36, %im
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %t, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 %ins_last_V_val, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %gamma, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 %ins_last_V_val, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  call void @_ssdm_op_Write.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float* %outs_data, i4* %outs_keep_V, i4* %outs_strb_V, i1* %outs_user_V, i1* %outs_last_V, i1* %outs_id_V, i1* %outs_dest_V, float %beta, i4 %ins_keep_V_val, i4 %ins_strb_V_val, i1 %ins_user_V_val, i1 %ins_last_V_val, i1 %ins_id_V_val, i1 %ins_dest_V_val)
  ret void
}

define weak { float, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.floatP.i4P.i4P.i1P.i1P.i1P.i1P(float*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load float* %0
  %empty_16 = load i4* %1
  %empty_17 = load i4* %2
  %empty_18 = load i1* %3
  %empty_19 = load i1* %4
  %empty_20 = load i1* %5
  %empty_21 = load i1* %6
  %mrv_0 = insertvalue { float, i4, i4, i1, i1, i1, i1 } undef, float %empty, 0
  %mrv1 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_16, 1
  %mrv2 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_17, 2
  %mrv3 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_18, 3
  %mrv4 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_19, 4
  %mrv5 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_20, 5
  %mrv6 = insertvalue { float, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_21, 6
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
!12 = metadata !{i32 0, i32 14, i32 1}
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
!42 = metadata !{i32 0, i32 2, i32 1}
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
