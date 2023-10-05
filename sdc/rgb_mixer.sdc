###############################################################################
# Created by write_sdc
# Thu Oct  5 08:26:26 2023
###############################################################################
current_design rgb_mixer
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 20.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
set_input_delay 0.1800 -clock [get_clocks {clk}] -min -add_delay [get_ports {reset}]
set_input_delay 1.8700 -clock [get_clocks {clk}] -max -add_delay [get_ports {reset}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {pwm0_out}]
set_load -pin_load 0.1900 [get_ports {pwm1_out}]
set_load -pin_load 0.1900 [get_ports {pwm2_out}]
set_load -pin_load 0.1900 [get_ports {sync}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[5]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[4]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[3]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[2]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[1]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_high[0]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_low[3]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_low[2]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_low[1]}]
set_load -pin_load 0.1900 [get_ports {io_oeb_low[0]}]
set_input_transition 0.6100 [get_ports {clk}]
set_input_transition -min 0.0700 [get_ports {reset}]
set_input_transition -max 0.8600 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
