`timescale 1ns/1ps
`ifdef RTL
`include "../01_RTL/Convolution.sv"
`elsif GATE
`include "../02_SYN/Convolution_SYN.v"
`endif
`include "../00_TESTBED/PATTERN.sv"

module TESTBED;
wire clk;
wire rst_n;
wire in_valid;
wire [3:0] In_IFM [31:0];
wire out_valid;
wire [12:0]Out_OFM;

initial begin
	`ifdef RTL
		$fsdbDumpfile("FP.fsdb");
		$fsdbDumpvars();
		$fsdbDumpvars(0,"+mda");
	`elsif GATE
		$fsdbDumpfile("FP.fsdb");
		$sdf_annotate("FP_SYN.sdf",U_final);   	
		$fsdbDumpvars(0,"+mda");
		$fsdbDumpvars();
	`endif
end

Convolution U_final(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
	.In_IFM(In_IFM),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );

PATTERN U_PATTERN(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
    .In_IFM(In_IFM),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );
endmodule 