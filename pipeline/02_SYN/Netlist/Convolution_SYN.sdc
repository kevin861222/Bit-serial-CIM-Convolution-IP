###################################################################

# Created by write_sdc on Fri Jan 19 16:03:09 2024

###################################################################
set sdc_version 2.1

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_load -pin_load 0.05 [get_ports out_valid]
set_load -pin_load 0.05 [get_ports {Out_OFM[12]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[11]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[10]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[9]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[8]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[7]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[6]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[5]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[4]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[3]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[2]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[1]}]
set_load -pin_load 0.05 [get_ports {Out_OFM[0]}]
create_clock [get_ports clk]  -period 449  -waveform {0 224.5}
set_max_delay 449  -from [list [get_ports clk] [get_ports rst_n] [get_ports in_valid] [get_ports \
{In_IFM[31]}] [get_ports {In_IFM[30]}] [get_ports {In_IFM[29]}] [get_ports     \
{In_IFM[28]}] [get_ports {In_IFM[27]}] [get_ports {In_IFM[26]}] [get_ports     \
{In_IFM[25]}] [get_ports {In_IFM[24]}] [get_ports {In_IFM[23]}] [get_ports     \
{In_IFM[22]}] [get_ports {In_IFM[21]}] [get_ports {In_IFM[20]}] [get_ports     \
{In_IFM[19]}] [get_ports {In_IFM[18]}] [get_ports {In_IFM[17]}] [get_ports     \
{In_IFM[16]}] [get_ports {In_IFM[15]}] [get_ports {In_IFM[14]}] [get_ports     \
{In_IFM[13]}] [get_ports {In_IFM[12]}] [get_ports {In_IFM[11]}] [get_ports     \
{In_IFM[10]}] [get_ports {In_IFM[9]}] [get_ports {In_IFM[8]}] [get_ports       \
{In_IFM[7]}] [get_ports {In_IFM[6]}] [get_ports {In_IFM[5]}] [get_ports        \
{In_IFM[4]}] [get_ports {In_IFM[3]}] [get_ports {In_IFM[2]}] [get_ports        \
{In_IFM[1]}] [get_ports {In_IFM[0]}]]  -to [list [get_ports out_valid] [get_ports {Out_OFM[12]}] [get_ports          \
{Out_OFM[11]}] [get_ports {Out_OFM[10]}] [get_ports {Out_OFM[9]}] [get_ports   \
{Out_OFM[8]}] [get_ports {Out_OFM[7]}] [get_ports {Out_OFM[6]}] [get_ports     \
{Out_OFM[5]}] [get_ports {Out_OFM[4]}] [get_ports {Out_OFM[3]}] [get_ports     \
{Out_OFM[2]}] [get_ports {Out_OFM[1]}] [get_ports {Out_OFM[0]}]]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  0  [get_ports in_valid]
set_input_delay -clock clk  0  [get_ports {In_IFM[31]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[30]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[29]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[28]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[27]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[26]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[25]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[24]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[23]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[22]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[21]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[20]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[19]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[18]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[17]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[16]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[15]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[14]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[13]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[12]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[11]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[10]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[9]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[8]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[7]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[6]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[5]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[4]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[3]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[2]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[1]}]
set_input_delay -clock clk  0  [get_ports {In_IFM[0]}]
set_output_delay -clock clk  0  [get_ports out_valid]
set_output_delay -clock clk  0  [get_ports {Out_OFM[12]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[11]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[10]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[9]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[8]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[7]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[6]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[5]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[4]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[3]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[2]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[1]}]
set_output_delay -clock clk  0  [get_ports {Out_OFM[0]}]
