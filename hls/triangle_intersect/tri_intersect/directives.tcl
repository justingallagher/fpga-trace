############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_interface -mode ap_ctrl_none "tri_intersect"
set_directive_interface -mode axis "tri_intersect" ins
set_directive_interface -mode axis "tri_intersect" outs
set_directive_unroll "tri_intersect/LOAD"
set_directive_unroll "tri_intersect/READ"
set_directive_pipeline "tri_intersect/WORK"
set_directive_unroll "tri_intersect/WRITE"
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v1x
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v0y
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v0x
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v2z
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rez
set_directive_array_map -instance data_array -mode vertical "tri_intersect" beta
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v1z
set_directive_array_map -instance data_array -mode vertical "tri_intersect" t
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v1y
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rey
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rdy
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rdx
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v2x
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rex
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v0z
set_directive_array_map -instance data_array -mode vertical "tri_intersect" v2y
set_directive_array_map -instance data_array -mode vertical "tri_intersect" rdz
set_directive_array_map -instance data_array -mode vertical "tri_intersect" gamma
