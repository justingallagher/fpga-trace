proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.cache/wt [current_project]
  set_property parent.project_path C:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.xpr [current_project]
  set_property ip_repo_paths {
  c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.cache/ip
  C:/Users/Justin/Documents/GitHub/fpga-trace/hls/triangle_intersect/tri_intersect/impl/ip
} [current_project]
  set_property ip_output_repo c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.cache/ip [current_project]
  add_files -quiet C:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.runs/synth_1/triangle_intersect_wrapper.dcp
  read_xdc -ref triangle_intersect_processing_system7_0_0 -cells inst c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_processing_system7_0_0/triangle_intersect_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_processing_system7_0_0/triangle_intersect_processing_system7_0_0.xdc]
  read_xdc -ref triangle_intersect_axi_dma_0_0 -cells U0 c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_axi_dma_0_0/triangle_intersect_axi_dma_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_axi_dma_0_0/triangle_intersect_axi_dma_0_0.xdc]
  read_xdc -prop_thru_buffers -ref triangle_intersect_rst_processing_system7_0_100M_0 c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_rst_processing_system7_0_100M_0/triangle_intersect_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_rst_processing_system7_0_100M_0/triangle_intersect_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref triangle_intersect_rst_processing_system7_0_100M_0 c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_rst_processing_system7_0_100M_0/triangle_intersect_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_rst_processing_system7_0_100M_0/triangle_intersect_rst_processing_system7_0_100M_0.xdc]
  read_xdc -ref triangle_intersect_axi_dma_0_0 -cells U0 c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_axi_dma_0_0/triangle_intersect_axi_dma_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_axi_dma_0_0/triangle_intersect_axi_dma_0_0_clocks.xdc]
  read_xdc -ref triangle_intersect_auto_us_0 -cells inst c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_0/triangle_intersect_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_0/triangle_intersect_auto_us_0_clocks.xdc]
  read_xdc -ref triangle_intersect_auto_us_1 -cells inst c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_1/triangle_intersect_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_1/triangle_intersect_auto_us_1_clocks.xdc]
  read_xdc -ref triangle_intersect_auto_us_2 -cells inst c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_2/triangle_intersect_auto_us_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/Justin/Documents/GitHub/fpga-trace/design/raytracer_design.srcs/sources_1/bd/triangle_intersect/ip/triangle_intersect_auto_us_2/triangle_intersect_auto_us_2_clocks.xdc]
  link_design -top triangle_intersect_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force triangle_intersect_wrapper_opt.dcp
  catch {report_drc -file triangle_intersect_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file triangle_intersect_wrapper.hwdef}
  place_design 
  write_checkpoint -force triangle_intersect_wrapper_placed.dcp
  catch { report_io -file triangle_intersect_wrapper_io_placed.rpt }
  catch { report_utilization -file triangle_intersect_wrapper_utilization_placed.rpt -pb triangle_intersect_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file triangle_intersect_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force triangle_intersect_wrapper_routed.dcp
  catch { report_drc -file triangle_intersect_wrapper_drc_routed.rpt -pb triangle_intersect_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file triangle_intersect_wrapper_timing_summary_routed.rpt -rpx triangle_intersect_wrapper_timing_summary_routed.rpx }
  catch { report_power -file triangle_intersect_wrapper_power_routed.rpt -pb triangle_intersect_wrapper_power_summary_routed.pb }
  catch { report_route_status -file triangle_intersect_wrapper_route_status.rpt -pb triangle_intersect_wrapper_route_status.pb }
  catch { report_clock_utilization -file triangle_intersect_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force triangle_intersect_wrapper.bit 
  catch { write_sysdef -hwdef triangle_intersect_wrapper.hwdef -bitfile triangle_intersect_wrapper.bit -meminfo triangle_intersect_wrapper.mmi -ltxfile debug_nets.ltx -file triangle_intersect_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

