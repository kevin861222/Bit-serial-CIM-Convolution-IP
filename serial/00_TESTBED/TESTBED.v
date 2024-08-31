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
wire In_IFM00;
wire In_IFM01;
wire In_IFM02;
wire In_IFM03;
wire In_IFM04;
wire In_IFM05;
wire In_IFM06;
wire In_IFM07;
wire In_IFM08;
wire In_IFM09;
wire In_IFM0A;
wire In_IFM0B;
wire In_IFM0C;
wire In_IFM0D;
wire In_IFM0E;
wire In_IFM0F;
wire In_IFM10;
wire In_IFM11;
wire In_IFM12;
wire In_IFM13;
wire In_IFM14;
wire In_IFM15;
wire In_IFM16;
wire In_IFM17;
wire In_IFM18;
wire In_IFM19;
wire In_IFM1A;
wire In_IFM1B;
wire In_IFM1C;
wire In_IFM1D;
wire In_IFM1E;
wire In_IFM1F;
wire out_valid;
wire [12:0]Out_OFM;

initial begin
	`ifdef RTL
		$fsdbDumpfile("FP.fsdb");
		$fsdbDumpvars();
		$fsdbDumpvars(0,"+mda");
	`elsif GATE
		$fsdbDumpfile("FP.fsdb");
		//`endif
		$sdf_annotate("FP_SYN.sdf",U_final);   	
		$fsdbDumpvars(0,"+mda");
		$fsdbDumpvars();
	`endif
end
  
Convolution U_final(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
  	.In_IFM00(In_IFM00),
  	.In_IFM01(In_IFM01),
  	.In_IFM02(In_IFM02),
  	.In_IFM03(In_IFM03),
  	.In_IFM04(In_IFM04),
  	.In_IFM05(In_IFM05),
  	.In_IFM06(In_IFM06),
  	.In_IFM07(In_IFM07),
  	.In_IFM08(In_IFM08),
  	.In_IFM09(In_IFM09),
  	.In_IFM0A(In_IFM0A),
  	.In_IFM0B(In_IFM0B),
  	.In_IFM0C(In_IFM0C),
  	.In_IFM0D(In_IFM0D),
  	.In_IFM0E(In_IFM0E),
  	.In_IFM0F(In_IFM0F),
  	.In_IFM10(In_IFM10),
  	.In_IFM11(In_IFM11),
  	.In_IFM12(In_IFM12),
  	.In_IFM13(In_IFM13),
  	.In_IFM14(In_IFM14),
  	.In_IFM15(In_IFM15),
  	.In_IFM16(In_IFM16),
  	.In_IFM17(In_IFM17),
  	.In_IFM18(In_IFM18),
  	.In_IFM19(In_IFM19),
  	.In_IFM1A(In_IFM1A),
  	.In_IFM1B(In_IFM1B),
  	.In_IFM1C(In_IFM1C),
  	.In_IFM1D(In_IFM1D),
  	.In_IFM1E(In_IFM1E),
  	.In_IFM1F(In_IFM1F),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );

PATTERN U_PATTERN(
    .clk(clk),
    .rst_n(rst_n),
    .in_valid(in_valid),
    .In_IFM00(In_IFM00),
  	.In_IFM01(In_IFM01),
  	.In_IFM02(In_IFM02),
  	.In_IFM03(In_IFM03),
  	.In_IFM04(In_IFM04),
  	.In_IFM05(In_IFM05),
  	.In_IFM06(In_IFM06),
  	.In_IFM07(In_IFM07),
  	.In_IFM08(In_IFM08),
  	.In_IFM09(In_IFM09),
  	.In_IFM0A(In_IFM0A),
  	.In_IFM0B(In_IFM0B),
  	.In_IFM0C(In_IFM0C),
  	.In_IFM0D(In_IFM0D),
  	.In_IFM0E(In_IFM0E),
  	.In_IFM0F(In_IFM0F),
  	.In_IFM10(In_IFM10),
  	.In_IFM11(In_IFM11),
  	.In_IFM12(In_IFM12),
  	.In_IFM13(In_IFM13),
  	.In_IFM14(In_IFM14),
  	.In_IFM15(In_IFM15),
  	.In_IFM16(In_IFM16),
  	.In_IFM17(In_IFM17),
  	.In_IFM18(In_IFM18),
  	.In_IFM19(In_IFM19),
  	.In_IFM1A(In_IFM1A),
  	.In_IFM1B(In_IFM1B),
  	.In_IFM1C(In_IFM1C),
  	.In_IFM1D(In_IFM1D),
  	.In_IFM1E(In_IFM1E),
  	.In_IFM1F(In_IFM1F),
    .out_valid(out_valid),
    .Out_OFM(Out_OFM)
    );
  
endmodule 