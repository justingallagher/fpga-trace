set moduleName tri_intersect
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {tri_intersect}
set C_modelType { void 0 }
set C_modelArgList { 
	{ A_data_V int 32 regular {axi_s 0 volatile  { A data } }  }
	{ A_keep_V int 4 regular {axi_s 0 volatile  { A keep } }  }
	{ A_strb_V int 4 regular {axi_s 0 volatile  { A strb } }  }
	{ A_user_V int 2 regular {axi_s 0 volatile  { A user } }  }
	{ A_last_V int 1 regular {axi_s 0 volatile  { A last } }  }
	{ A_id_V int 5 regular {axi_s 0 volatile  { A id } }  }
	{ A_dest_V int 6 regular {axi_s 0 volatile  { A dest } }  }
	{ B_data_V int 32 regular {axi_s 1 volatile  { B data } }  }
	{ B_keep_V int 4 regular {axi_s 1 volatile  { B keep } }  }
	{ B_strb_V int 4 regular {axi_s 1 volatile  { B strb } }  }
	{ B_user_V int 2 regular {axi_s 1 volatile  { B user } }  }
	{ B_last_V int 1 regular {axi_s 1 volatile  { B last } }  }
	{ B_id_V int 5 regular {axi_s 1 volatile  { B id } }  }
	{ B_dest_V int 6 regular {axi_s 1 volatile  { B dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_data_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "A.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "A.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_user_V", "interface" : "axis", "bitwidth" : 2,"bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "A.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_id_V", "interface" : "axis", "bitwidth" : 5,"bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "A.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "A_dest_V", "interface" : "axis", "bitwidth" : 6,"bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "A.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_data_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "B.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "B.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "B.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_user_V", "interface" : "axis", "bitwidth" : 2,"bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "B.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_id_V", "interface" : "axis", "bitwidth" : 5,"bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "B.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B_dest_V", "interface" : "axis", "bitwidth" : 6,"bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "B.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ A_TDATA sc_in sc_lv 32 signal 0 } 
	{ A_TVALID sc_in sc_logic 1 invld 0 } 
	{ A_TREADY sc_out sc_logic 1 inacc 6 } 
	{ A_TKEEP sc_in sc_lv 4 signal 1 } 
	{ A_TSTRB sc_in sc_lv 4 signal 2 } 
	{ A_TUSER sc_in sc_lv 2 signal 3 } 
	{ A_TLAST sc_in sc_lv 1 signal 4 } 
	{ A_TID sc_in sc_lv 5 signal 5 } 
	{ A_TDEST sc_in sc_lv 6 signal 6 } 
	{ B_TDATA sc_out sc_lv 32 signal 7 } 
	{ B_TVALID sc_out sc_logic 1 outvld 13 } 
	{ B_TREADY sc_in sc_logic 1 outacc 13 } 
	{ B_TKEEP sc_out sc_lv 4 signal 8 } 
	{ B_TSTRB sc_out sc_lv 4 signal 9 } 
	{ B_TUSER sc_out sc_lv 2 signal 10 } 
	{ B_TLAST sc_out sc_lv 1 signal 11 } 
	{ B_TID sc_out sc_lv 5 signal 12 } 
	{ B_TDEST sc_out sc_lv 6 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_data_V", "role": "default" }} , 
 	{ "name": "A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A_data_V", "role": "default" }} , 
 	{ "name": "A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "A_dest_V", "role": "default" }} , 
 	{ "name": "A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_keep_V", "role": "default" }} , 
 	{ "name": "A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_strb_V", "role": "default" }} , 
 	{ "name": "A_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_user_V", "role": "default" }} , 
 	{ "name": "A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_last_V", "role": "default" }} , 
 	{ "name": "A_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "A_id_V", "role": "default" }} , 
 	{ "name": "A_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "A_dest_V", "role": "default" }} , 
 	{ "name": "B_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_data_V", "role": "default" }} , 
 	{ "name": "B_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_dest_V", "role": "default" }} , 
 	{ "name": "B_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "B_dest_V", "role": "default" }} , 
 	{ "name": "B_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_keep_V", "role": "default" }} , 
 	{ "name": "B_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_strb_V", "role": "default" }} , 
 	{ "name": "B_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_user_V", "role": "default" }} , 
 	{ "name": "B_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_last_V", "role": "default" }} , 
 	{ "name": "B_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_id_V", "role": "default" }} , 
 	{ "name": "B_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "B_dest_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	A_data_V { axis {  { A_TDATA in_data 0 32 }  { A_TVALID in_vld 0 1 } } }
	A_keep_V { axis {  { A_TKEEP in_data 0 4 } } }
	A_strb_V { axis {  { A_TSTRB in_data 0 4 } } }
	A_user_V { axis {  { A_TUSER in_data 0 2 } } }
	A_last_V { axis {  { A_TLAST in_data 0 1 } } }
	A_id_V { axis {  { A_TID in_data 0 5 } } }
	A_dest_V { axis {  { A_TREADY in_acc 1 1 }  { A_TDEST in_data 0 6 } } }
	B_data_V { axis {  { B_TDATA out_data 1 32 } } }
	B_keep_V { axis {  { B_TKEEP out_data 1 4 } } }
	B_strb_V { axis {  { B_TSTRB out_data 1 4 } } }
	B_user_V { axis {  { B_TUSER out_data 1 2 } } }
	B_last_V { axis {  { B_TLAST out_data 1 1 } } }
	B_id_V { axis {  { B_TID out_data 1 5 } } }
	B_dest_V { axis {  { B_TVALID out_vld 1 1 }  { B_TREADY out_acc 0 1 }  { B_TDEST out_data 1 6 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
