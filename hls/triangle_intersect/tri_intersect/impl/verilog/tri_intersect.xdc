create_clock -name ap_clk -period 5.000 -waveform {0.000 2.500} [get_ports ap_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports ap_clk]

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]


