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
	{ ins_data float 32 regular {axi_s 0 volatile  { ins data } }  }
	{ ins_keep_V int 4 regular {axi_s 0 volatile  { ins keep } }  }
	{ ins_strb_V int 4 regular {axi_s 0 volatile  { ins strb } }  }
	{ ins_user_V int 1 regular {axi_s 0 volatile  { ins user } }  }
	{ ins_last_V int 1 regular {axi_s 0 volatile  { ins last } }  }
	{ ins_id_V int 1 regular {axi_s 0 volatile  { ins id } }  }
	{ ins_dest_V int 1 regular {axi_s 0 volatile  { ins dest } }  }
	{ outs_data float 32 regular {axi_s 1 volatile  { outs data } }  }
	{ outs_keep_V int 4 regular {axi_s 1 volatile  { outs keep } }  }
	{ outs_strb_V int 4 regular {axi_s 1 volatile  { outs strb } }  }
	{ outs_user_V int 1 regular {axi_s 1 volatile  { outs user } }  }
	{ outs_last_V int 1 regular {axi_s 1 volatile  { outs last } }  }
	{ outs_id_V int 1 regular {axi_s 1 volatile  { outs id } }  }
	{ outs_dest_V int 1 regular {axi_s 1 volatile  { outs dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ins_data", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ins.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "ins.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "ins.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_user_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ins.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ins.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_id_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ins.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "ins_dest_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ins.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_data", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outs.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_keep_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "outs.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_strb_V", "interface" : "axis", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "outs.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_user_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outs.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outs.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_id_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outs.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "outs_dest_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outs.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ins_TDATA sc_in sc_lv 32 signal 0 } 
	{ ins_TVALID sc_in sc_logic 1 invld 0 } 
	{ ins_TREADY sc_out sc_logic 1 inacc 6 } 
	{ ins_TKEEP sc_in sc_lv 4 signal 1 } 
	{ ins_TSTRB sc_in sc_lv 4 signal 2 } 
	{ ins_TUSER sc_in sc_lv 1 signal 3 } 
	{ ins_TLAST sc_in sc_lv 1 signal 4 } 
	{ ins_TID sc_in sc_lv 1 signal 5 } 
	{ ins_TDEST sc_in sc_lv 1 signal 6 } 
	{ outs_TDATA sc_out sc_lv 32 signal 7 } 
	{ outs_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outs_TREADY sc_in sc_logic 1 outacc 13 } 
	{ outs_TKEEP sc_out sc_lv 4 signal 8 } 
	{ outs_TSTRB sc_out sc_lv 4 signal 9 } 
	{ outs_TUSER sc_out sc_lv 1 signal 10 } 
	{ outs_TLAST sc_out sc_lv 1 signal 11 } 
	{ outs_TID sc_out sc_lv 1 signal 12 } 
	{ outs_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ins_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ins_data", "role": "" }} , 
 	{ "name": "ins_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ins_data", "role": "D" }} , 
 	{ "name": "ins_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "ins_dest_V", "role": "default" }} , 
 	{ "name": "ins_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_keep_V", "role": "default" }} , 
 	{ "name": "ins_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_strb_V", "role": "default" }} , 
 	{ "name": "ins_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_user_V", "role": "default" }} , 
 	{ "name": "ins_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_last_V", "role": "default" }} , 
 	{ "name": "ins_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_id_V", "role": "default" }} , 
 	{ "name": "ins_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_dest_V", "role": "default" }} , 
 	{ "name": "outs_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outs_data", "role": "" }} , 
 	{ "name": "outs_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outs_dest_V", "role": "default" }} , 
 	{ "name": "outs_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outs_dest_V", "role": "default" }} , 
 	{ "name": "outs_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outs_keep_V", "role": "default" }} , 
 	{ "name": "outs_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outs_strb_V", "role": "default" }} , 
 	{ "name": "outs_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outs_user_V", "role": "default" }} , 
 	{ "name": "outs_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outs_last_V", "role": "default" }} , 
 	{ "name": "outs_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outs_id_V", "role": "default" }} , 
 	{ "name": "outs_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outs_dest_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	ins_data { axis {  { ins_TDATA in_data 0 32 }  { ins_TVALID in_vld 0 1 } } }
	ins_keep_V { axis {  { ins_TKEEP in_data 0 4 } } }
	ins_strb_V { axis {  { ins_TSTRB in_data 0 4 } } }
	ins_user_V { axis {  { ins_TUSER in_data 0 1 } } }
	ins_last_V { axis {  { ins_TLAST in_data 0 1 } } }
	ins_id_V { axis {  { ins_TID in_data 0 1 } } }
	ins_dest_V { axis {  { ins_TREADY in_acc 1 1 }  { ins_TDEST in_data 0 1 } } }
	outs_data { axis {  { outs_TDATA out_data 1 32 } } }
	outs_keep_V { axis {  { outs_TKEEP out_data 1 4 } } }
	outs_strb_V { axis {  { outs_TSTRB out_data 1 4 } } }
	outs_user_V { axis {  { outs_TUSER out_data 1 1 } } }
	outs_last_V { axis {  { outs_TLAST out_data 1 1 } } }
	outs_id_V { axis {  { outs_TID out_data 1 1 } } }
	outs_dest_V { axis {  { outs_TVALID out_vld 1 1 }  { outs_TREADY out_acc 0 1 }  { outs_TDEST out_data 1 1 } } }
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
