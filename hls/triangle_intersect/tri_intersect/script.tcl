############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project triangle_intersect
set_top tri_intersect
add_files triangle_intersect.cpp
add_files triangle_intersect.h
add_files -tb testbench.cpp
open_solution "tri_intersect"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
source "./triangle_intersect/tri_intersect/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog -description "Calculates the intersection point between a ray and a triangle." -version "0.1" -display_name "Triangle Intersect"
