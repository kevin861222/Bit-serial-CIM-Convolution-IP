`timescale 1ns/1ps
`ifdef RTL
`include "../01_RTL/Convolution.v"
`elsif GATE
`include "../02_SYN/Netlist/Convolution_SYN.v"
`endif
`include "../00_TESTBED/PATTERN.v"

module TESTBED;
wire clk;
wire rst_n;
wire in_valid;
wire [31:0] In_IFM;
wire out_valid;
wire [12:0]Out_OFM;

initial begin
	`ifdef RTL
		$fsdbDumpfile("Convolution.fsdb");
		$fsdbDumpvars();
		$fsdbDumpvars(0,"+mda");
	`elsif GATE
		$fsdbDumpfile("Convolution_SYN.fsdb");
        $sdf_annotate("Convolution_SYN.sdf",u_Convolution);   	
		$fsdbDumpvars(0,"+mda");
		$fsdbDumpvars();
	`endif
end

Convolution u_Convolution(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
	.In_IFM(In_IFM),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );

PATTERN u_Pattern(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
    .In_IFM(In_IFM),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );
endmodule 