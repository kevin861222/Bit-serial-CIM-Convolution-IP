/*
Serial input , 32 Input per cycle .
pipeline   : none
clock gate : in_valid only .
*/
module Convolution (
    input clk,
    input rst_n,
    input in_valid,
    input [31:0] In_IFM,
    output reg out_valid,
    output reg [12:0] Out_OFM
);
wire clk_gate_IN1 ;
wire [3:0] W[31:0];
reg [1:0] state1_counter;
reg [1:0] state2_counter;
wire [3:0] stage1 [31:0];
reg [6:0] stage2 [3:0];

// Kernel weight 
assign W[0]  = 4'd6;
assign W[1]  = 4'd14;
assign W[2]  = 4'd13;
assign W[3]  = 4'd10;
assign W[4]  = 4'd10;
assign W[5]  = 4'd14;
assign W[6]  = 4'd3;
assign W[7]  = 4'd4;
assign W[8]  = 4'd0;
assign W[9]  = 4'd6;
assign W[10] = 4'd7;
assign W[11] = 4'd9;
assign W[12] = 4'd11;
assign W[13] = 4'd12;
assign W[14] = 4'd6;
assign W[15] = 4'd3;
assign W[16] = 4'd2;
assign W[17] = 4'd1;
assign W[18] = 4'd5;
assign W[19] = 4'd8;
assign W[20] = 4'd7;
assign W[21] = 4'd13;
assign W[22] = 4'd1;
assign W[23] = 4'd8;
assign W[24] = 4'd7;
assign W[25] = 4'd12;
assign W[26] = 4'd13;
assign W[27] = 4'd10;
assign W[28] = 4'd10;
assign W[29] = 4'd9;
assign W[30] = 4'd7;
assign W[31] = 4'd7;


always @(posedge clk_gate_IN1 or negedge rst_n) begin
    if (!rst_n) begin
        state1_counter <= 0 ;
    end else begin
        state1_counter <= state1_counter + 1;
    end
end

always @(posedge clk_gate_IN1) begin
    state2_counter <= state1_counter;
end

always @(posedge clk_gate_IN1 or negedge rst_n) begin
    if (!rst_n) begin
        out_valid <= 0;
    end
    else begin
        out_valid <= (&state2_counter);
    end
end

// shift_adder
genvar i;
generate
    for(i=0;i<32;i=i+1) begin
        assign stage1[i] = (W[i] & {4{In_IFM[i]}});
    end
endgenerate


always @(posedge clk_gate_IN1) begin
    stage2[0] <= stage1[0]+stage1[1]+stage1[2]+stage1[3]+stage1[4]+stage1[5]+stage1[6]+stage1[7]+stage1[8];
    stage2[1] <= stage1[9]+stage1[10]+stage1[11]+stage1[12]+stage1[13]+stage1[14]+stage1[15];
    stage2[2] <= stage1[16]+stage1[17]+stage1[18]+stage1[19]+stage1[20]+stage1[21]+stage1[22]+stage1[23];
    stage2[3] <= (stage1[24]+stage1[25])+(stage1[26]+stage1[27])+(stage1[28]+stage1[29])+(stage1[30]+stage1[31]);
end

always @(posedge clk_gate_IN1) begin
    Out_OFM <= (Out_OFM & {13{|(state2_counter)}}) +
                (((stage2[0]+stage2[1])+(stage2[2]+stage2[3])) << (state2_counter));
end

// CG 
ICGx3_ASAP7_75t_R CG_U1(
    .CLK(clk),
    .ENA(1'b0),
    .SE(in_valid),
    .GCLK(clk_gate_IN1)
);
endmodule



