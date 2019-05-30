# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.10-p007_1 on Thu May 30 14:29:40 IST 2019

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design EC_1

create_clock -name "Clock" -add -period 2.072 -waveform {0.0 0.856} [get_ports Clock]
set_clock_transition 0.1 [get_clocks Clock]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[7]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[6]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[5]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[4]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[3]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[2]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[1]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Input[0]}]
set_input_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports Reset]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports Halt]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[7]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[6]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[5]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[4]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[3]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[2]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[1]}]
set_output_delay -clock [get_clocks Clock] -add_delay -max 1.0 [get_ports {Output[0]}]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow_vdd1v0/HOLDX1]
set_clock_uncertainty -setup 0.01 [get_ports Clock]
set_clock_uncertainty -hold 0.01 [get_ports Clock]
