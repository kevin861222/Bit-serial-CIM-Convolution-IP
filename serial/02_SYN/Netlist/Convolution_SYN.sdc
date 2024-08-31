###################################################################

# Created by write_sdc on Thu Jan 18 22:52:07 2024

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
create_clock [get_ports clk]  -period 670  -waveform {0 335}
set_max_delay 670  -from [list [get_ports clk] [get_ports rst_n] [get_ports in_valid] [get_ports \
In_IFM00] [get_ports In_IFM01] [get_ports In_IFM02] [get_ports In_IFM03]       \
[get_ports In_IFM04] [get_ports In_IFM05] [get_ports In_IFM06] [get_ports      \
In_IFM07] [get_ports In_IFM08] [get_ports In_IFM09] [get_ports In_IFM0A]       \
[get_ports In_IFM0B] [get_ports In_IFM0C] [get_ports In_IFM0D] [get_ports      \
In_IFM0E] [get_ports In_IFM0F] [get_ports In_IFM10] [get_ports In_IFM11]       \
[get_ports In_IFM12] [get_ports In_IFM13] [get_ports In_IFM14] [get_ports      \
In_IFM15] [get_ports In_IFM16] [get_ports In_IFM17] [get_ports In_IFM18]       \
[get_ports In_IFM19] [get_ports In_IFM1A] [get_ports In_IFM1B] [get_ports      \
In_IFM1C] [get_ports In_IFM1D] [get_ports In_IFM1E] [get_ports In_IFM1F]]  -to [list [get_ports out_valid] [get_ports {Out_OFM[12]}] [get_ports          \
{Out_OFM[11]}] [get_ports {Out_OFM[10]}] [get_ports {Out_OFM[9]}] [get_ports   \
{Out_OFM[8]}] [get_ports {Out_OFM[7]}] [get_ports {Out_OFM[6]}] [get_ports     \
{Out_OFM[5]}] [get_ports {Out_OFM[4]}] [get_ports {Out_OFM[3]}] [get_ports     \
{Out_OFM[2]}] [get_ports {Out_OFM[1]}] [get_ports {Out_OFM[0]}]]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  0  [get_ports in_valid]
set_input_delay -clock clk  0  [get_ports In_IFM00]
set_input_delay -clock clk  0  [get_ports In_IFM01]
set_input_delay -clock clk  0  [get_ports In_IFM02]
set_input_delay -clock clk  0  [get_ports In_IFM03]
set_input_delay -clock clk  0  [get_ports In_IFM04]
set_input_delay -clock clk  0  [get_ports In_IFM05]
set_input_delay -clock clk  0  [get_ports In_IFM06]
set_input_delay -clock clk  0  [get_ports In_IFM07]
set_input_delay -clock clk  0  [get_ports In_IFM08]
set_input_delay -clock clk  0  [get_ports In_IFM09]
set_input_delay -clock clk  0  [get_ports In_IFM0A]
set_input_delay -clock clk  0  [get_ports In_IFM0B]
set_input_delay -clock clk  0  [get_ports In_IFM0C]
set_input_delay -clock clk  0  [get_ports In_IFM0D]
set_input_delay -clock clk  0  [get_ports In_IFM0E]
set_input_delay -clock clk  0  [get_ports In_IFM0F]
set_input_delay -clock clk  0  [get_ports In_IFM10]
set_input_delay -clock clk  0  [get_ports In_IFM11]
set_input_delay -clock clk  0  [get_ports In_IFM12]
set_input_delay -clock clk  0  [get_ports In_IFM13]
set_input_delay -clock clk  0  [get_ports In_IFM14]
set_input_delay -clock clk  0  [get_ports In_IFM15]
set_input_delay -clock clk  0  [get_ports In_IFM16]
set_input_delay -clock clk  0  [get_ports In_IFM17]
set_input_delay -clock clk  0  [get_ports In_IFM18]
set_input_delay -clock clk  0  [get_ports In_IFM19]
set_input_delay -clock clk  0  [get_ports In_IFM1A]
set_input_delay -clock clk  0  [get_ports In_IFM1B]
set_input_delay -clock clk  0  [get_ports In_IFM1C]
set_input_delay -clock clk  0  [get_ports In_IFM1D]
set_input_delay -clock clk  0  [get_ports In_IFM1E]
set_input_delay -clock clk  0  [get_ports In_IFM1F]
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
