// synopsys translate_off
`include "../01_RTL/asap7sc7p5t_SEQ_RVT_TT_08302018.v"
// synopsys translate_on


/*
Serial input , 32 Input per cycle .
pipeline   : none
clock gate : in_valid only .
*/
module Convolution (
    input clk,
    input rst_n,
    input in_valid,
    input In_IFM00,
	input In_IFM01,
	input In_IFM02,
	input In_IFM03,
	input In_IFM04,
	input In_IFM05,
	input In_IFM06,
	input In_IFM07,
	input In_IFM08,
	input In_IFM09,
	input In_IFM0A,
	input In_IFM0B,
	input In_IFM0C,
	input In_IFM0D,
	input In_IFM0E,
	input In_IFM0F,
	input In_IFM10,
	input In_IFM11,
	input In_IFM12,
	input In_IFM13,
	input In_IFM14,
	input In_IFM15,
	input In_IFM16,
	input In_IFM17,
	input In_IFM18,
	input In_IFM19,
    input In_IFM1A,
	input In_IFM1B,
	input In_IFM1C,
	input In_IFM1D,
	input In_IFM1E,
	input In_IFM1F,
    output out_valid,
    output [12:0] Out_OFM //
);
wire clk_gate_IN1 ;
wire clear = 1 ;
wire [12:0] Out_OFM_d ;
reg [12:0] Out_OFM_q ;
assign Out_OFM = Out_OFM_q ;
reg [3:0] W_1 ;
reg [3:0] W_2 ;
reg [3:0] W_3 ;
reg [3:0] W_4 ;
reg [3:0] W_5 ;
reg [3:0] W_6 ;
reg [3:0] W_7 ;
reg [3:0] W_8 ;
reg [3:0] W_9 ;
reg [3:0] W_10;
reg [3:0] W_11;
reg [3:0] W_12;
reg [3:0] W_13;
reg [3:0] W_14;
reg [3:0] W_15;
reg [3:0] W_16;
reg [3:0] W_17;
reg [3:0] W_18;
reg [3:0] W_19;
reg [3:0] W_20;
reg [3:0] W_21;
reg [3:0] W_22;
reg [3:0] W_23;
reg [3:0] W_24;
reg [3:0] W_25;
reg [3:0] W_26;
reg [3:0] W_27;
reg [3:0] W_28;
reg [3:0] W_29;
reg [3:0] W_30;
reg [3:0] W_31;
reg [3:0] W_32;	
// shift_adder
reg [6:0] stage_1_1 ;
reg [6:0] stage_1_2 ;
reg [6:0] stage_1_3 ;
reg [6:0] stage_1_4 ;
reg [6:0] stage_1_5 ;
reg [6:0] stage_1_6 ;
reg [6:0] stage_1_7 ;
reg [6:0] stage_1_8 ;
reg [6:0] stage_1_9 ;
reg [6:0] stage_1_10;
reg [6:0] stage_1_11;
reg [6:0] stage_1_12;
reg [6:0] stage_1_13;
reg [6:0] stage_1_14;
reg [6:0] stage_1_15;
reg [6:0] stage_1_16;
reg [6:0] stage_1_17;
reg [6:0] stage_1_18;
reg [6:0] stage_1_19;
reg [6:0] stage_1_20;
reg [6:0] stage_1_21;
reg [6:0] stage_1_22;
reg [6:0] stage_1_23;
reg [6:0] stage_1_24;
reg [6:0] stage_1_25;
reg [6:0] stage_1_26;
reg [6:0] stage_1_27;
reg [6:0] stage_1_28;
reg [6:0] stage_1_29;
reg [6:0] stage_1_30;
reg [6:0] stage_1_31;
reg [6:0] stage_1_32;

reg [1:0] state_counter ;
reg workstate ;

reg out_valid_q , out_valid_qq ;
assign out_valid=out_valid_qq ;
always @(posedge clk_gate_IN1) begin
    out_valid_q <= workstate & ~(|(state_counter)) ;
    out_valid_qq <= out_valid_q ;
end


always @(posedge clk_gate_IN1 or negedge rst_n) begin
    if (~rst_n) begin
        workstate <= 0 ;
    end else begin
        if (state_counter==2'b11)begin
            workstate <= 1 ;
        end else begin
            workstate <= 0 ;
        end
    end
end

always @(negedge rst_n) begin
    out_valid_qq <= 0 ;
    Out_OFM_q <= 0 ;
    W_1 <= 4'd6;
    W_2 <= 4'd14;
    W_3 <= 4'd13;
    W_4 <= 4'd10;
    W_5 <= 4'd10;
    W_6 <= 4'd14;
    W_7 <= 4'd3;
    W_8 <= 4'd4;
    W_9 <= 4'd0;
    W_10 <= 4'd6;
    W_11 <= 4'd7;
    W_12 <= 4'd9;
    W_13 <= 4'd11;
    W_14 <= 4'd12;
    W_15 <= 4'd6;
    W_16 <= 4'd3;
    W_17 <= 4'd2;
    W_18 <= 4'd1;
    W_19 <= 4'd5;
    W_20 <= 4'd8;
    W_21 <= 4'd7;
    W_22 <= 4'd13;
    W_23 <= 4'd1;
    W_24 <= 4'd8;
    W_25 <= 4'd7;
    W_26 <= 4'd12;
    W_27 <= 4'd13;
    W_28 <= 4'd10;
    W_29 <= 4'd10;
    W_30 <= 4'd9;
    W_31 <= 4'd7;
    W_32 <= 4'd7;	

    stage_1_1 <= 0 ;
    stage_1_2 <= 0 ;
    stage_1_3 <= 0 ;
    stage_1_4 <= 0 ;
    stage_1_5 <= 0 ;
    stage_1_6 <= 0 ;
    stage_1_7 <= 0 ;
    stage_1_8 <= 0 ;
    stage_1_9 <= 0 ;
    stage_1_10 <= 0 ;
    stage_1_11 <= 0 ;
    stage_1_12 <= 0 ;
    stage_1_13 <= 0 ;
    stage_1_14 <= 0 ;
    stage_1_15 <= 0 ;
    stage_1_16 <= 0 ;
    stage_1_17 <= 0 ;
    stage_1_18 <= 0 ;
    stage_1_19 <= 0 ;
    stage_1_20 <= 0 ;
    stage_1_21 <= 0 ;
    stage_1_22 <= 0 ;
    stage_1_23 <= 0 ;
    stage_1_24 <= 0 ;
    stage_1_25 <= 0 ;
    stage_1_26 <= 0 ;
    stage_1_27 <= 0 ;
    stage_1_28 <= 0 ;
    stage_1_29 <= 0 ;
    stage_1_30 <= 0 ;
    stage_1_31 <= 0 ;
    stage_1_32 <= 0 ;
end

always @(posedge clk_gate_IN1 or negedge rst_n) begin
    if (~rst_n) begin
        state_counter <= 0 ;
    end else begin
        state_counter <= state_counter + in_valid ;
    end
end


always @(posedge clk_gate_IN1) begin
    stage_1_1 <= ((W_1)  & {4{In_IFM00}}) << (state_counter) ;
    stage_1_2 <= ((W_2)  & {4{In_IFM01}}) << (state_counter) ;
    stage_1_3 <= ((W_3)  & {4{In_IFM02}}) << (state_counter) ;
    stage_1_4 <= ((W_4)  & {4{In_IFM03}}) << (state_counter) ;
    stage_1_5 <= ((W_5)  & {4{In_IFM04}}) << (state_counter) ;
    stage_1_6 <= ((W_6)  & {4{In_IFM05}}) << (state_counter) ;
    stage_1_7 <= ((W_7)  & {4{In_IFM06}}) << (state_counter) ;
    stage_1_8 <= ((W_8)  & {4{In_IFM07}}) << (state_counter) ;
    stage_1_9 <= ((W_9)  & {4{In_IFM08}}) << (state_counter) ;
    stage_1_10 <= ((W_10) & {4{In_IFM09}}) << (state_counter) ;
    stage_1_11 <= ((W_11) & {4{In_IFM0A}}) << (state_counter) ;
    stage_1_12 <= ((W_12) & {4{In_IFM0B}}) << (state_counter) ;
    stage_1_13 <= ((W_13) & {4{In_IFM0C}}) << (state_counter) ;
    stage_1_14 <= ((W_14) & {4{In_IFM0D}}) << (state_counter) ;
    stage_1_15 <= ((W_15) & {4{In_IFM0E}}) << (state_counter) ;
    stage_1_16 <= ((W_16) & {4{In_IFM0F}}) << (state_counter) ;
    stage_1_17 <= ((W_17) & {4{In_IFM10}}) << (state_counter) ;
    stage_1_18 <= ((W_18) & {4{In_IFM11}}) << (state_counter) ;
    stage_1_19 <= ((W_19) & {4{In_IFM12}}) << (state_counter) ;
    stage_1_20 <= ((W_20) & {4{In_IFM13}}) << (state_counter) ;
    stage_1_21 <= ((W_21) & {4{In_IFM14}}) << (state_counter) ;
    stage_1_22 <= ((W_22) & {4{In_IFM15}}) << (state_counter) ;
    stage_1_23 <= ((W_23) & {4{In_IFM16}}) << (state_counter) ;
    stage_1_24 <= ((W_24) & {4{In_IFM17}}) << (state_counter) ;
    stage_1_25 <= ((W_25) & {4{In_IFM18}}) << (state_counter) ;
    stage_1_26 <= ((W_26) & {4{In_IFM19}}) << (state_counter) ;
    stage_1_27 <= ((W_27) & {4{In_IFM1A}}) << (state_counter) ;
    stage_1_28 <= ((W_28) & {4{In_IFM1B}}) << (state_counter) ;
    stage_1_29 <= ((W_29) & {4{In_IFM1C}}) << (state_counter) ;
    stage_1_30 <= ((W_30) & {4{In_IFM1D}}) << (state_counter) ;
    stage_1_31 <= ((W_31) & {4{In_IFM1E}}) << (state_counter) ;
    stage_1_32 <= ((W_32) & {4{In_IFM1F}}) << (state_counter) ;
    Out_OFM_q <= Out_OFM_q + Out_OFM_d ;
end 



// CG 
ICGx3_ASAP7_75t_R CG_U1(
    .CLK(clk),
    .ENA(0),
    .SE(in_valid),
    .GCLK(clk_gate_IN1)
);

add u0(
    .clk(clk_gate_IN1),
    .stage_1_1(stage_1_1),
    .stage_1_2(stage_1_2),
    .stage_1_3(stage_1_3),
    .stage_1_4(stage_1_4),
    .stage_1_5(stage_1_5),
    .stage_1_6(stage_1_6),
    .stage_1_7(stage_1_7),
    .stage_1_8(stage_1_8),
    .stage_1_9(stage_1_9),
    .stage_1_10(stage_1_10),
    .stage_1_11(stage_1_11),
    .stage_1_12(stage_1_12),
    .stage_1_13(stage_1_13),
    .stage_1_14(stage_1_14),
    .stage_1_15(stage_1_15),
    .stage_1_16(stage_1_16),
    .stage_1_17(stage_1_17),
    .stage_1_18(stage_1_18),
    .stage_1_19(stage_1_19),
    .stage_1_20(stage_1_20),
    .stage_1_21(stage_1_21),
    .stage_1_22(stage_1_22),
    .stage_1_23(stage_1_23),
    .stage_1_24(stage_1_24),
    .stage_1_25(stage_1_25),
    .stage_1_26(stage_1_26),
    .stage_1_27(stage_1_27),
    .stage_1_28(stage_1_28),
    .stage_1_29(stage_1_29),
    .stage_1_30(stage_1_30),
    .stage_1_31(stage_1_31),
    .stage_1_32(stage_1_32),
    .Out_OFM_q(Out_OFM_d));
    
endmodule

module add (
    input clk,
    input [6:0] stage_1_1  ,
    input [6:0] stage_1_2  ,
    input [6:0] stage_1_3  ,
    input [6:0] stage_1_4  ,
    input [6:0] stage_1_5  ,
    input [6:0] stage_1_6  ,
    input [6:0] stage_1_7  ,
    input [6:0] stage_1_8  ,
    input [6:0] stage_1_9  ,
    input [6:0] stage_1_10 ,
    input [6:0] stage_1_11 ,
    input [6:0] stage_1_12 ,
    input [6:0] stage_1_13 ,
    input [6:0] stage_1_14 ,
    input [6:0] stage_1_15 ,
    input [6:0] stage_1_16 ,
    input [6:0] stage_1_17 ,
    input [6:0] stage_1_18 ,
    input [6:0] stage_1_19 ,
    input [6:0] stage_1_20 ,
    input [6:0] stage_1_21 ,
    input [6:0] stage_1_22 ,
    input [6:0] stage_1_23 ,
    input [6:0] stage_1_24 ,
    input [6:0] stage_1_25 ,
    input [6:0] stage_1_26 ,
    input [6:0] stage_1_27 ,
    input [6:0] stage_1_28 ,
    input [6:0] stage_1_29 ,
    input [6:0] stage_1_30 ,
    input [6:0] stage_1_31 ,
    input [6:0] stage_1_32 ,
    output reg [12:0] Out_OFM_q 
);
initial begin
    Out_OFM_q=0;
end

    always @(posedge clk) begin
        Out_OFM_q <=stage_1_1 +
                 stage_1_2 +
                 stage_1_3 +
                 stage_1_4 +
                 stage_1_5 +
                 stage_1_6 +
                 stage_1_7 +
                 stage_1_8 +
                 stage_1_9 +
                 stage_1_10 +
                 stage_1_11 +
                 stage_1_12 +
                 stage_1_13 +
                 stage_1_14 +
                 stage_1_15 +
                 stage_1_16 +
                 stage_1_17 +
                 stage_1_18 +
                 stage_1_19 +
                 stage_1_20 +
                 stage_1_21 +
                 stage_1_22 +
                 stage_1_23 +
                 stage_1_24 +
                 stage_1_25 +
                 stage_1_26 +
                 stage_1_27 +
                 stage_1_28 +
                 stage_1_29 +
                 stage_1_30 +
                 stage_1_31 +
                 stage_1_32 ;
    end
    
endmodule



