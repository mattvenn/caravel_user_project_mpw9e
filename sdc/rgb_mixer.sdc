###############################################################################
# Created by write_sdc
# Wed Oct  4 15:01:49 2023
###############################################################################
current_design rgb_mixer
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 10.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {clk}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc0_a}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc0_b}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc1_a}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc1_b}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc2_a}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {enc2_b}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {io_oeb[0]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {io_oeb[1]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {io_oeb[2]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {io_oeb[3]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {pwm0_out}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {pwm1_out}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {pwm2_out}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sync}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {pwm0_out}]
set_load -pin_load 0.0334 [get_ports {pwm1_out}]
set_load -pin_load 0.0334 [get_ports {pwm2_out}]
set_load -pin_load 0.0334 [get_ports {sync}]
set_load -pin_load 0.0334 [get_ports {io_oeb[3]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[2]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[1]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc0_a}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc0_b}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc1_a}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc1_b}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc2_a}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enc2_b}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
