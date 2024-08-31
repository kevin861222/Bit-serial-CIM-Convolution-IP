/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri Jan 19 16:03:09 2024
/////////////////////////////////////////////////////////////


module Convolution ( clk, rst_n, in_valid, In_IFM, out_valid, Out_OFM );
  input [31:0] In_IFM;
  output [12:0] Out_OFM;
  input clk, rst_n, in_valid;
  output out_valid;
  wire   clk_gate_IN1, N89, N90, N91, N92, N93, N94, N95, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N232, N233, N234, N235, N236,
         N237, N238, N239, N240, N241, N242, N243, N244, N30, N80, N79, N78,
         N77, N76, N75, N69, N107, N102, N170, N168, N167, N166, N165, N164,
         N163, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222,
         N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211,
         N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200,
         N199, N198, N197, N196, N195, add_1_root_add_0_root_add_89_7_SUM_0_,
         add_1_root_add_0_root_add_89_7_SUM_1_,
         add_1_root_add_0_root_add_89_7_SUM_2_,
         add_1_root_add_0_root_add_89_7_SUM_3_,
         add_1_root_add_0_root_add_89_7_SUM_4_,
         add_1_root_add_0_root_add_89_7_SUM_5_,
         add_2_root_add_0_root_add_87_6_SUM_0_,
         add_2_root_add_0_root_add_87_6_SUM_1_,
         add_2_root_add_0_root_add_87_6_SUM_2_,
         add_2_root_add_0_root_add_87_6_SUM_3_,
         add_2_root_add_0_root_add_87_6_SUM_4_,
         add_2_root_add_0_root_add_87_6_SUM_5_, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384;
  wire   [1:0] state1_counter;
  wire   [1:0] state2_counter;
  wire   [26:0] stage2;

  ICGx3_ASAP7_75t_R CG_U1 ( .CLK(clk), .ENA(n384), .SE(in_valid), .GCLK(
        clk_gate_IN1) );
  DFFHQNx1_ASAP7_75t_R state2_counter_reg_1_ ( .D(n382), .CLK(clk_gate_IN1), 
        .QN(state2_counter[1]) );
  DFFHQNx1_ASAP7_75t_R state2_counter_reg_0_ ( .D(n380), .CLK(clk_gate_IN1), 
        .QN(state2_counter[0]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__6_ ( .D(n373), .CLK(clk_gate_IN1), .QN(
        stage2[26]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__5_ ( .D(n374), .CLK(clk_gate_IN1), .QN(
        stage2[25]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__4_ ( .D(n375), .CLK(clk_gate_IN1), .QN(
        stage2[24]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__3_ ( .D(n376), .CLK(clk_gate_IN1), .QN(
        stage2[23]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__2_ ( .D(n377), .CLK(clk_gate_IN1), .QN(
        stage2[22]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__0_ ( .D(n379), .CLK(clk_gate_IN1), .QN(
        stage2[20]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__5_ ( .D(n367), .CLK(clk_gate_IN1), .QN(
        stage2[19]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__4_ ( .D(n368), .CLK(clk_gate_IN1), .QN(
        stage2[18]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__3_ ( .D(n369), .CLK(clk_gate_IN1), .QN(
        stage2[17]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__2_ ( .D(n370), .CLK(clk_gate_IN1), .QN(
        stage2[16]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__6_ ( .D(n360), .CLK(clk_gate_IN1), .QN(
        stage2[13]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__5_ ( .D(n361), .CLK(clk_gate_IN1), .QN(
        stage2[12]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__4_ ( .D(n362), .CLK(clk_gate_IN1), .QN(
        stage2[11]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__3_ ( .D(n363), .CLK(clk_gate_IN1), .QN(
        stage2[10]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__2_ ( .D(n364), .CLK(clk_gate_IN1), .QN(
        stage2[9]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__0_ ( .D(n366), .CLK(clk_gate_IN1), .QN(
        stage2[7]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__6_ ( .D(n353), .CLK(clk_gate_IN1), .QN(
        stage2[6]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__5_ ( .D(n354), .CLK(clk_gate_IN1), .QN(
        stage2[5]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__4_ ( .D(n355), .CLK(clk_gate_IN1), .QN(
        stage2[4]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__3_ ( .D(n356), .CLK(clk_gate_IN1), .QN(
        stage2[3]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__2_ ( .D(n357), .CLK(clk_gate_IN1), .QN(
        stage2[2]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__1_ ( .D(n358), .CLK(clk_gate_IN1), .QN(
        stage2[1]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_0__0_ ( .D(n54), .CLK(clk_gate_IN1), .QN(
        stage2[0]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_2_ ( .D(n350), .CLK(clk_gate_IN1), .QN(
        Out_OFM[2]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_1_ ( .D(n351), .CLK(clk_gate_IN1), .QN(
        Out_OFM[1]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_0_ ( .D(n352), .CLK(clk_gate_IN1), .QN(
        Out_OFM[0]) );
  Convolution_DW01_add_14 add_0_root_add_0_root_add_87_6 ( .A({n384, 
        add_2_root_add_0_root_add_87_6_SUM_5_, 
        add_2_root_add_0_root_add_87_6_SUM_4_, 
        add_2_root_add_0_root_add_87_6_SUM_3_, 
        add_2_root_add_0_root_add_87_6_SUM_2_, 
        add_2_root_add_0_root_add_87_6_SUM_1_, 
        add_2_root_add_0_root_add_87_6_SUM_0_}), .B({n384, N80, N79, N78, N77, 
        N76, N75}), .CI(n384), .SUM({N95, N94, N93, N92, N91, N90, N89}) );
  Convolution_DW01_add_0 add_0_root_add_0_root_add_89_7 ( .A({n384, N168, N167, 
        N166, N165, N164, N163}), .B({n384, 
        add_1_root_add_0_root_add_89_7_SUM_5_, 
        add_1_root_add_0_root_add_89_7_SUM_4_, 
        add_1_root_add_0_root_add_89_7_SUM_3_, 
        add_1_root_add_0_root_add_89_7_SUM_2_, 
        add_1_root_add_0_root_add_89_7_SUM_1_, 
        add_1_root_add_0_root_add_89_7_SUM_0_}), .CI(n384), .SUM({N181, N180, 
        N179, N178, N177, N176, N175}) );
  FAx1_ASAP7_75t_R add_89_6_U1_1 ( .A(In_IFM[30]), .B(In_IFM[31]), .CI(n58), 
        .CON(n331), .SN(n330) );
  FAx1_ASAP7_75t_R add_89_6_U1_2 ( .A(In_IFM[30]), .B(In_IFM[31]), .CI(n334), 
        .CON(n333), .SN(n332) );
  FAx1_ASAP7_75t_R add_3_root_add_0_root_add_86_8_U1_3 ( .A(In_IFM[2]), .B(
        In_IFM[1]), .CI(n60), .CON(n299), .SN(n298) );
  Convolution_DW01_add_38 add_93_4 ( .A({N182, N183, N184, N185, N186, N187, 
        N188, N189, N190, N191, N192, N193, N194}), .B({n384, N231, N230, N229, 
        N228, N227, N226, N225, N224, N223, N222, N221, N220}), .CI(n384), 
        .SUM({N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, 
        N233, N232}) );
  Convolution_DW01_add_39 add_93 ( .A({n384, stage2[6:0]}), .B({n384, 
        stage2[13:7]}), .CI(n384), .SUM({N202, N201, N200, N199, N198, N197, 
        N196, N195}) );
  Convolution_DW01_add_36 add_93_2 ( .A({n384, n384, stage2[19:14]}), .B({n384, 
        stage2[26:20]}), .CI(n384), .SUM({N210, N209, N208, N207, N206, N205, 
        N204, N203}) );
  Convolution_DW01_add_41 add_93_3 ( .A({n384, N202, N201, N200, N199, N198, 
        N197, N196, N195}), .B({n384, N210, N209, N208, N207, N206, N205, N204, 
        N203}), .CI(n384), .SUM({N219, N218, N217, N216, N215, N214, N213, 
        N212, N211}) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__0_ ( .D(n372), .CLK(clk_gate_IN1), .QN(
        stage2[14]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_1__1_ ( .D(n365), .CLK(clk_gate_IN1), .QN(
        stage2[8]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_2__1_ ( .D(n371), .CLK(clk_gate_IN1), .QN(
        stage2[15]) );
  DFFHQNx1_ASAP7_75t_R stage2_reg_3__1_ ( .D(n378), .CLK(clk_gate_IN1), .QN(
        stage2[21]) );
  DFFHQx4_ASAP7_75t_R Out_OFM_reg_11_ ( .D(N243), .CLK(clk_gate_IN1), .Q(
        Out_OFM[11]) );
  DFFHQx4_ASAP7_75t_R Out_OFM_reg_9_ ( .D(N241), .CLK(clk_gate_IN1), .Q(
        Out_OFM[9]) );
  DFFHQx4_ASAP7_75t_R Out_OFM_reg_12_ ( .D(N244), .CLK(clk_gate_IN1), .Q(
        Out_OFM[12]) );
  DFFHQx4_ASAP7_75t_R Out_OFM_reg_10_ ( .D(N242), .CLK(clk_gate_IN1), .Q(
        Out_OFM[10]) );
  DFFHQNx2_ASAP7_75t_R Out_OFM_reg_7_ ( .D(n345), .CLK(clk_gate_IN1), .QN(
        Out_OFM[7]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_6_ ( .D(n346), .CLK(clk_gate_IN1), .QN(
        Out_OFM[6]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_8_ ( .D(n344), .CLK(clk_gate_IN1), .QN(
        Out_OFM[8]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_5_ ( .D(n347), .CLK(clk_gate_IN1), .QN(
        Out_OFM[5]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_4_ ( .D(n348), .CLK(clk_gate_IN1), .QN(
        Out_OFM[4]) );
  DFFHQNx1_ASAP7_75t_R Out_OFM_reg_3_ ( .D(n349), .CLK(clk_gate_IN1), .QN(
        Out_OFM[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R state1_counter_reg_0_ ( .D(state1_counter[0]), 
        .CLK(clk_gate_IN1), .RESET(n293), .SET(n384), .QN(state1_counter[0])
         );
  ASYNC_DFFHx1_ASAP7_75t_R state1_counter_reg_1_ ( .D(n381), .CLK(clk_gate_IN1), .RESET(n293), .SET(n384), .QN(state1_counter[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R out_valid_reg ( .D(n383), .CLK(clk_gate_IN1), 
        .RESET(n293), .SET(n384), .QN(out_valid) );
  TIELOx1_ASAP7_75t_R U71 ( .L(n384) );
  HB1xp67_ASAP7_75t_R U72 ( .A(n359), .Y(n54) );
  NAND2xp33_ASAP7_75t_R U73 ( .A(n76), .B(N215), .Y(n284) );
  NOR2xp33_ASAP7_75t_R U74 ( .A(n383), .B(n258), .Y(N231) );
  NAND2xp5_ASAP7_75t_R U75 ( .A(n76), .B(N212), .Y(n291) );
  HB1xp67_ASAP7_75t_R U76 ( .A(N212), .Y(n55) );
  AND2x2_ASAP7_75t_R U77 ( .A(n272), .B(n273), .Y(n56) );
  AND3x1_ASAP7_75t_R U78 ( .A(n275), .B(n276), .C(n277), .Y(n57) );
  AND2x2_ASAP7_75t_R U79 ( .A(In_IFM[30]), .B(In_IFM[31]), .Y(n58) );
  AND2x2_ASAP7_75t_R U80 ( .A(In_IFM[15]), .B(In_IFM[14]), .Y(n59) );
  AND2x2_ASAP7_75t_R U81 ( .A(In_IFM[2]), .B(In_IFM[1]), .Y(n60) );
  AND2x2_ASAP7_75t_R U82 ( .A(In_IFM[6]), .B(In_IFM[0]), .Y(n61) );
  AND2x2_ASAP7_75t_R U83 ( .A(n189), .B(n188), .Y(n62) );
  AND2x2_ASAP7_75t_R U84 ( .A(In_IFM[12]), .B(In_IFM[9]), .Y(n63) );
  AND2x2_ASAP7_75t_R U85 ( .A(In_IFM[24]), .B(In_IFM[25]), .Y(n64) );
  AND2x2_ASAP7_75t_R U86 ( .A(In_IFM[7]), .B(In_IFM[5]), .Y(n65) );
  AND2x2_ASAP7_75t_R U87 ( .A(In_IFM[9]), .B(n63), .Y(n66) );
  AND2x2_ASAP7_75t_R U88 ( .A(n125), .B(n124), .Y(n67) );
  INVxp33_ASAP7_75t_R U89 ( .A(N238), .Y(n346) );
  INVxp33_ASAP7_75t_R U90 ( .A(N214), .Y(n68) );
  INVx1_ASAP7_75t_R U91 ( .A(n68), .Y(n69) );
  NAND2xp33_ASAP7_75t_R U92 ( .A(n55), .B(n286), .Y(n283) );
  NAND2xp5_ASAP7_75t_R U93 ( .A(n70), .B(n78), .Y(n277) );
  BUFx2_ASAP7_75t_R U94 ( .A(N215), .Y(n70) );
  NAND2xp33_ASAP7_75t_R U95 ( .A(N217), .B(n286), .Y(n265) );
  NAND2xp33_ASAP7_75t_R U96 ( .A(n78), .B(n55), .Y(n290) );
  NAND2xp5_ASAP7_75t_R U97 ( .A(n274), .B(n57), .Y(N226) );
  NAND2xp33_ASAP7_75t_R U98 ( .A(N217), .B(n76), .Y(n274) );
  NAND2xp33_ASAP7_75t_R U99 ( .A(N218), .B(n77), .Y(n267) );
  NAND2xp33_ASAP7_75t_R U100 ( .A(N216), .B(n76), .Y(n280) );
  NAND2xp5_ASAP7_75t_R U101 ( .A(n269), .B(n268), .Y(n71) );
  NAND3xp33_ASAP7_75t_R U102 ( .A(n72), .B(n267), .C(n266), .Y(N228) );
  INVx1_ASAP7_75t_R U103 ( .A(n71), .Y(n72) );
  NAND2xp33_ASAP7_75t_R U104 ( .A(N216), .B(n286), .Y(n269) );
  NAND2xp5_ASAP7_75t_R U105 ( .A(N219), .B(n76), .Y(n266) );
  NAND3xp33_ASAP7_75t_R U106 ( .A(n56), .B(n271), .C(n270), .Y(N227) );
  INVxp67_ASAP7_75t_R U107 ( .A(N240), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U108 ( .A(n77), .B(N217), .Y(n271) );
  NAND2xp33_ASAP7_75t_R U109 ( .A(N216), .B(n77), .Y(n276) );
  NAND2xp33_ASAP7_75t_R U110 ( .A(n70), .B(n77), .Y(n281) );
  NAND2xp33_ASAP7_75t_R U111 ( .A(N214), .B(n77), .Y(n285) );
  NOR2x1_ASAP7_75t_R U112 ( .A(state2_counter[0]), .B(state2_counter[1]), .Y(
        n76) );
  NAND2xp33_ASAP7_75t_R U113 ( .A(state2_counter[1]), .B(state2_counter[0]), 
        .Y(n383) );
  NOR2xp33_ASAP7_75t_R U114 ( .A(n138), .B(n146), .Y(n99) );
  NOR2xp33_ASAP7_75t_R U115 ( .A(n102), .B(n101), .Y(n130) );
  NOR2xp33_ASAP7_75t_R U116 ( .A(n98), .B(n139), .Y(n101) );
  NOR2xp33_ASAP7_75t_R U117 ( .A(n100), .B(n99), .Y(n102) );
  NOR2xp33_ASAP7_75t_R U118 ( .A(n76), .B(n79), .Y(N182) );
  NAND2xp5_ASAP7_75t_R U119 ( .A(n292), .B(n291), .Y(N221) );
  NAND4xp25_ASAP7_75t_R U120 ( .A(n281), .B(n280), .C(n279), .D(n278), .Y(N225) );
  OR3x1_ASAP7_75t_R U121 ( .A(n73), .B(n74), .C(n75), .Y(N222) );
  AND2x2_ASAP7_75t_R U122 ( .A(n78), .B(N211), .Y(n73) );
  AND2x2_ASAP7_75t_R U123 ( .A(N212), .B(n77), .Y(n74) );
  AND2x2_ASAP7_75t_R U124 ( .A(N213), .B(n76), .Y(n75) );
  NAND4xp25_ASAP7_75t_R U125 ( .A(n284), .B(n285), .C(n283), .D(n282), .Y(N224) );
  NOR2xp33_ASAP7_75t_R U126 ( .A(n336), .B(n252), .Y(
        add_1_root_add_0_root_add_89_7_SUM_5_) );
  NOR2xp33_ASAP7_75t_R U127 ( .A(n315), .B(n163), .Y(
        add_2_root_add_0_root_add_87_6_SUM_5_) );
  NOR2xp33_ASAP7_75t_R U128 ( .A(n318), .B(n178), .Y(N80) );
  NOR2xp33_ASAP7_75t_R U129 ( .A(n76), .B(n91), .Y(N194) );
  AND2x2_ASAP7_75t_R U130 ( .A(state2_counter[0]), .B(n262), .Y(n77) );
  NOR2xp33_ASAP7_75t_R U131 ( .A(n76), .B(n90), .Y(N193) );
  AND2x2_ASAP7_75t_R U132 ( .A(state2_counter[1]), .B(n259), .Y(n78) );
  NOR2xp33_ASAP7_75t_R U133 ( .A(n76), .B(n89), .Y(N192) );
  NOR2xp33_ASAP7_75t_R U134 ( .A(n76), .B(n88), .Y(N191) );
  NOR2xp33_ASAP7_75t_R U135 ( .A(n76), .B(n87), .Y(N190) );
  NOR2xp33_ASAP7_75t_R U136 ( .A(n76), .B(n86), .Y(N189) );
  NOR2xp33_ASAP7_75t_R U137 ( .A(n76), .B(n85), .Y(N188) );
  NOR2xp33_ASAP7_75t_R U138 ( .A(n76), .B(n84), .Y(N187) );
  NOR2xp33_ASAP7_75t_R U139 ( .A(n76), .B(n82), .Y(N185) );
  NOR2xp33_ASAP7_75t_R U140 ( .A(n76), .B(n83), .Y(N186) );
  NOR2xp33_ASAP7_75t_R U141 ( .A(n76), .B(n81), .Y(N184) );
  NOR2xp33_ASAP7_75t_R U142 ( .A(n76), .B(n80), .Y(N183) );
  NOR2xp33_ASAP7_75t_R U143 ( .A(n201), .B(n184), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U144 ( .A(In_IFM[23]), .B(n183), .Y(n184) );
  NAND2xp33_ASAP7_75t_R U145 ( .A(N219), .B(n78), .Y(n261) );
  INVxp33_ASAP7_75t_R U146 ( .A(N219), .Y(n258) );
  NAND2xp33_ASAP7_75t_R U147 ( .A(N218), .B(n78), .Y(n264) );
  NAND2xp33_ASAP7_75t_R U148 ( .A(N218), .B(n286), .Y(n260) );
  NAND2xp33_ASAP7_75t_R U149 ( .A(n69), .B(n78), .Y(n278) );
  NAND2xp33_ASAP7_75t_R U150 ( .A(n69), .B(n286), .Y(n275) );
  NAND2xp33_ASAP7_75t_R U151 ( .A(N213), .B(n286), .Y(n279) );
  NAND2xp33_ASAP7_75t_R U152 ( .A(N213), .B(n78), .Y(n282) );
  NAND2xp33_ASAP7_75t_R U153 ( .A(N213), .B(n77), .Y(n289) );
  INVx1_ASAP7_75t_R U154 ( .A(n300), .Y(N30) );
  INVx1_ASAP7_75t_R U155 ( .A(n309), .Y(N69) );
  INVx1_ASAP7_75t_R U156 ( .A(n319), .Y(n321) );
  INVx1_ASAP7_75t_R U157 ( .A(n322), .Y(N107) );
  INVx1_ASAP7_75t_R U158 ( .A(n325), .Y(n327) );
  INVx1_ASAP7_75t_R U159 ( .A(n324), .Y(N102) );
  INVx1_ASAP7_75t_R U160 ( .A(n329), .Y(N170) );
  INVx1_ASAP7_75t_R U161 ( .A(rst_n), .Y(n293) );
  XNOR2xp5_ASAP7_75t_R U162 ( .A(state1_counter[1]), .B(state1_counter[0]), 
        .Y(n381) );
  INVx1_ASAP7_75t_R U163 ( .A(state1_counter[1]), .Y(n382) );
  INVx1_ASAP7_75t_R U164 ( .A(state1_counter[0]), .Y(n380) );
  INVx1_ASAP7_75t_R U165 ( .A(Out_OFM[12]), .Y(n79) );
  INVx1_ASAP7_75t_R U166 ( .A(Out_OFM[11]), .Y(n80) );
  INVx1_ASAP7_75t_R U167 ( .A(Out_OFM[10]), .Y(n81) );
  INVx1_ASAP7_75t_R U168 ( .A(Out_OFM[9]), .Y(n82) );
  INVx1_ASAP7_75t_R U169 ( .A(Out_OFM[8]), .Y(n83) );
  INVx1_ASAP7_75t_R U170 ( .A(N239), .Y(n345) );
  INVx1_ASAP7_75t_R U171 ( .A(Out_OFM[7]), .Y(n84) );
  INVx1_ASAP7_75t_R U172 ( .A(Out_OFM[6]), .Y(n85) );
  INVx1_ASAP7_75t_R U173 ( .A(N237), .Y(n347) );
  INVx1_ASAP7_75t_R U174 ( .A(Out_OFM[5]), .Y(n86) );
  INVx1_ASAP7_75t_R U175 ( .A(N236), .Y(n348) );
  INVx1_ASAP7_75t_R U176 ( .A(Out_OFM[4]), .Y(n87) );
  INVx1_ASAP7_75t_R U177 ( .A(N235), .Y(n349) );
  INVx1_ASAP7_75t_R U178 ( .A(Out_OFM[3]), .Y(n88) );
  INVx1_ASAP7_75t_R U179 ( .A(N234), .Y(n350) );
  INVx1_ASAP7_75t_R U180 ( .A(Out_OFM[2]), .Y(n89) );
  INVx1_ASAP7_75t_R U181 ( .A(N233), .Y(n351) );
  INVx1_ASAP7_75t_R U182 ( .A(Out_OFM[1]), .Y(n90) );
  INVx1_ASAP7_75t_R U183 ( .A(Out_OFM[0]), .Y(n91) );
  XNOR2xp5_ASAP7_75t_R U184 ( .A(In_IFM[5]), .B(n300), .Y(n147) );
  FAx1_ASAP7_75t_R U185 ( .A(In_IFM[1]), .B(n305), .CI(n308), .SN(n149) );
  INVx1_ASAP7_75t_R U186 ( .A(n149), .Y(n92) );
  NAND2xp5_ASAP7_75t_R U187 ( .A(n147), .B(n92), .Y(n151) );
  INVx1_ASAP7_75t_R U188 ( .A(n151), .Y(n100) );
  INVx1_ASAP7_75t_R U189 ( .A(In_IFM[1]), .Y(n93) );
  NAND2xp5_ASAP7_75t_R U190 ( .A(n305), .B(n93), .Y(n97) );
  INVx1_ASAP7_75t_R U191 ( .A(n305), .Y(n94) );
  NAND2xp5_ASAP7_75t_R U192 ( .A(In_IFM[1]), .B(n94), .Y(n95) );
  NAND2xp5_ASAP7_75t_R U193 ( .A(n308), .B(n95), .Y(n96) );
  NAND2xp5_ASAP7_75t_R U194 ( .A(n97), .B(n96), .Y(n103) );
  FAx1_ASAP7_75t_R U195 ( .A(n306), .B(n297), .CI(n103), .SN(n98) );
  INVx1_ASAP7_75t_R U196 ( .A(n98), .Y(n138) );
  FAx1_ASAP7_75t_R U197 ( .A(n301), .B(n294), .CI(n304), .SN(n139) );
  INVx1_ASAP7_75t_R U198 ( .A(n139), .Y(n146) );
  NAND2xp5_ASAP7_75t_R U199 ( .A(n306), .B(n297), .Y(n106) );
  OR2x2_ASAP7_75t_R U200 ( .A(n306), .B(n297), .Y(n104) );
  NAND2xp5_ASAP7_75t_R U201 ( .A(n104), .B(n103), .Y(n105) );
  NAND2xp5_ASAP7_75t_R U202 ( .A(n106), .B(n105), .Y(n107) );
  FAx1_ASAP7_75t_R U203 ( .A(n307), .B(n298), .CI(n107), .SN(n145) );
  MAJx2_ASAP7_75t_R U204 ( .A(n301), .B(n304), .C(n294), .Y(n136) );
  FAx1_ASAP7_75t_R U205 ( .A(n302), .B(n295), .CI(n136), .SN(n131) );
  MAJx2_ASAP7_75t_R U206 ( .A(n130), .B(n145), .C(n131), .Y(n122) );
  NAND2xp5_ASAP7_75t_R U207 ( .A(n307), .B(n298), .Y(n110) );
  OR2x2_ASAP7_75t_R U208 ( .A(n307), .B(n298), .Y(n108) );
  NAND2xp5_ASAP7_75t_R U209 ( .A(n108), .B(n107), .Y(n109) );
  NAND2xp5_ASAP7_75t_R U210 ( .A(n110), .B(n109), .Y(n111) );
  NAND2xp5_ASAP7_75t_R U211 ( .A(n299), .B(n111), .Y(n114) );
  INVx1_ASAP7_75t_R U212 ( .A(n111), .Y(n113) );
  INVx1_ASAP7_75t_R U213 ( .A(n299), .Y(n112) );
  NAND2xp5_ASAP7_75t_R U214 ( .A(n113), .B(n112), .Y(n118) );
  AND2x2_ASAP7_75t_R U215 ( .A(n114), .B(n118), .Y(n132) );
  NAND2xp5_ASAP7_75t_R U216 ( .A(n302), .B(n295), .Y(n117) );
  OR2x2_ASAP7_75t_R U217 ( .A(n302), .B(n295), .Y(n115) );
  NAND2xp5_ASAP7_75t_R U218 ( .A(n115), .B(n136), .Y(n116) );
  NAND2xp5_ASAP7_75t_R U219 ( .A(n117), .B(n116), .Y(n129) );
  FAx1_ASAP7_75t_R U220 ( .A(n303), .B(n296), .CI(n129), .SN(n121) );
  MAJx2_ASAP7_75t_R U221 ( .A(n122), .B(n132), .C(n121), .Y(n120) );
  MAJIxp5_ASAP7_75t_R U222 ( .A(n296), .B(n303), .C(n129), .Y(n119) );
  INVx1_ASAP7_75t_R U223 ( .A(n118), .Y(n126) );
  MAJIxp5_ASAP7_75t_R U224 ( .A(n120), .B(n119), .C(n126), .Y(n353) );
  MAJIxp5_ASAP7_75t_R U225 ( .A(n122), .B(n121), .C(n132), .Y(n128) );
  NAND2xp5_ASAP7_75t_R U226 ( .A(n303), .B(n296), .Y(n125) );
  OR2x2_ASAP7_75t_R U227 ( .A(n303), .B(n296), .Y(n123) );
  NAND2xp5_ASAP7_75t_R U228 ( .A(n123), .B(n129), .Y(n124) );
  XOR2xp5_ASAP7_75t_R U229 ( .A(n126), .B(n67), .Y(n127) );
  XOR2xp5_ASAP7_75t_R U230 ( .A(n128), .B(n127), .Y(n354) );
  FAx1_ASAP7_75t_R U231 ( .A(n303), .B(n296), .CI(n129), .SN(n135) );
  MAJIxp5_ASAP7_75t_R U232 ( .A(n131), .B(n145), .C(n130), .Y(n134) );
  INVx1_ASAP7_75t_R U233 ( .A(n132), .Y(n133) );
  FAx1_ASAP7_75t_R U234 ( .A(n135), .B(n134), .CI(n133), .SN(n355) );
  INVx1_ASAP7_75t_R U235 ( .A(n136), .Y(n137) );
  FAx1_ASAP7_75t_R U236 ( .A(n302), .B(n295), .CI(n137), .SN(n144) );
  NAND2xp5_ASAP7_75t_R U237 ( .A(n146), .B(n138), .Y(n142) );
  NAND2xp5_ASAP7_75t_R U238 ( .A(n139), .B(n98), .Y(n140) );
  NAND2xp5_ASAP7_75t_R U239 ( .A(n140), .B(n151), .Y(n141) );
  NAND2xp5_ASAP7_75t_R U240 ( .A(n142), .B(n141), .Y(n143) );
  FAx1_ASAP7_75t_R U241 ( .A(n145), .B(n144), .CI(n143), .SN(n356) );
  FAx1_ASAP7_75t_R U242 ( .A(n98), .B(n146), .CI(n151), .SN(n357) );
  INVx1_ASAP7_75t_R U243 ( .A(n147), .Y(n148) );
  NAND2xp5_ASAP7_75t_R U244 ( .A(n149), .B(n148), .Y(n150) );
  NAND2xp5_ASAP7_75t_R U245 ( .A(n151), .B(n150), .Y(n358) );
  XNOR2xp5_ASAP7_75t_R U246 ( .A(In_IFM[2]), .B(In_IFM[6]), .Y(n359) );
  INVx1_ASAP7_75t_R U247 ( .A(In_IFM[10]), .Y(n153) );
  NAND2xp5_ASAP7_75t_R U248 ( .A(n313), .B(n153), .Y(n160) );
  INVx1_ASAP7_75t_R U249 ( .A(n313), .Y(n152) );
  NAND2xp5_ASAP7_75t_R U250 ( .A(In_IFM[10]), .B(n152), .Y(n158) );
  NAND2xp5_ASAP7_75t_R U251 ( .A(n312), .B(n153), .Y(n157) );
  INVx1_ASAP7_75t_R U252 ( .A(n312), .Y(n154) );
  NAND2xp5_ASAP7_75t_R U253 ( .A(In_IFM[10]), .B(n154), .Y(n155) );
  NAND2xp5_ASAP7_75t_R U254 ( .A(n316), .B(n155), .Y(n156) );
  NAND2xp5_ASAP7_75t_R U255 ( .A(n157), .B(n156), .Y(n167) );
  NAND2xp5_ASAP7_75t_R U256 ( .A(n158), .B(n167), .Y(n159) );
  NAND2xp5_ASAP7_75t_R U257 ( .A(n160), .B(n159), .Y(n166) );
  INVx1_ASAP7_75t_R U258 ( .A(n166), .Y(n162) );
  INVx1_ASAP7_75t_R U259 ( .A(n314), .Y(n161) );
  NAND2xp5_ASAP7_75t_R U260 ( .A(n162), .B(n161), .Y(n163) );
  INVx1_ASAP7_75t_R U261 ( .A(n315), .Y(n165) );
  INVx1_ASAP7_75t_R U262 ( .A(n163), .Y(n164) );
  XOR2xp5_ASAP7_75t_R U263 ( .A(n165), .B(n164), .Y(
        add_2_root_add_0_root_add_87_6_SUM_4_) );
  XOR2xp5_ASAP7_75t_R U264 ( .A(n166), .B(n314), .Y(
        add_2_root_add_0_root_add_87_6_SUM_3_) );
  FAx1_ASAP7_75t_R U265 ( .A(n313), .B(In_IFM[10]), .CI(n167), .SN(n168) );
  INVx1_ASAP7_75t_R U266 ( .A(n168), .Y(add_2_root_add_0_root_add_87_6_SUM_2_)
         );
  INVx1_ASAP7_75t_R U267 ( .A(n316), .Y(n169) );
  FAx1_ASAP7_75t_R U268 ( .A(In_IFM[10]), .B(n312), .CI(n169), .SN(
        add_2_root_add_0_root_add_87_6_SUM_1_) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(In_IFM[12]), .B(In_IFM[10]), .Y(
        add_2_root_add_0_root_add_87_6_SUM_0_) );
  NAND2xp5_ASAP7_75t_R U270 ( .A(n311), .B(n317), .Y(n177) );
  OR2x2_ASAP7_75t_R U271 ( .A(n311), .B(n317), .Y(n175) );
  INVx1_ASAP7_75t_R U272 ( .A(In_IFM[13]), .Y(n170) );
  NAND2xp5_ASAP7_75t_R U273 ( .A(n310), .B(n170), .Y(n174) );
  INVx1_ASAP7_75t_R U274 ( .A(n310), .Y(n171) );
  NAND2xp5_ASAP7_75t_R U275 ( .A(In_IFM[13]), .B(n171), .Y(n172) );
  NAND2xp5_ASAP7_75t_R U276 ( .A(n320), .B(n172), .Y(n173) );
  NAND2xp5_ASAP7_75t_R U277 ( .A(n174), .B(n173), .Y(n181) );
  NAND2xp5_ASAP7_75t_R U278 ( .A(n175), .B(n181), .Y(n176) );
  NAND2xp5_ASAP7_75t_R U279 ( .A(n177), .B(n176), .Y(n178) );
  INVx1_ASAP7_75t_R U280 ( .A(n318), .Y(n180) );
  INVx1_ASAP7_75t_R U281 ( .A(n178), .Y(n179) );
  XOR2xp5_ASAP7_75t_R U282 ( .A(n180), .B(n179), .Y(N79) );
  FAx1_ASAP7_75t_R U283 ( .A(n311), .B(n317), .CI(n181), .SN(N78) );
  INVx1_ASAP7_75t_R U284 ( .A(n320), .Y(n182) );
  FAx1_ASAP7_75t_R U285 ( .A(In_IFM[13]), .B(n310), .CI(n182), .SN(N77) );
  XOR2xp5_ASAP7_75t_R U286 ( .A(n319), .B(n309), .Y(N76) );
  XOR2xp5_ASAP7_75t_R U287 ( .A(In_IFM[11]), .B(In_IFM[15]), .Y(N75) );
  INVx1_ASAP7_75t_R U288 ( .A(N95), .Y(n360) );
  INVx1_ASAP7_75t_R U289 ( .A(N94), .Y(n361) );
  INVx1_ASAP7_75t_R U290 ( .A(N93), .Y(n362) );
  INVx1_ASAP7_75t_R U291 ( .A(N92), .Y(n363) );
  INVx1_ASAP7_75t_R U292 ( .A(N91), .Y(n364) );
  INVx1_ASAP7_75t_R U293 ( .A(N90), .Y(n365) );
  INVx1_ASAP7_75t_R U294 ( .A(N89), .Y(n366) );
  INVx1_ASAP7_75t_R U295 ( .A(n326), .Y(n183) );
  NAND2xp5_ASAP7_75t_R U296 ( .A(In_IFM[23]), .B(n183), .Y(n214) );
  INVx1_ASAP7_75t_R U297 ( .A(n214), .Y(n201) );
  INVx1_ASAP7_75t_R U298 ( .A(In_IFM[20]), .Y(n185) );
  NAND2xp5_ASAP7_75t_R U299 ( .A(n323), .B(n185), .Y(n189) );
  INVx1_ASAP7_75t_R U300 ( .A(n323), .Y(n186) );
  NAND2xp5_ASAP7_75t_R U301 ( .A(In_IFM[20]), .B(n186), .Y(n187) );
  NAND2xp5_ASAP7_75t_R U302 ( .A(n328), .B(n187), .Y(n188) );
  MAJIxp5_ASAP7_75t_R U303 ( .A(In_IFM[21]), .B(In_IFM[20]), .C(n62), .Y(n199)
         );
  FAx1_ASAP7_75t_R U304 ( .A(In_IFM[19]), .B(In_IFM[21]), .CI(n199), .SN(n212)
         );
  XNOR2xp5_ASAP7_75t_R U305 ( .A(In_IFM[18]), .B(n325), .Y(n197) );
  INVx1_ASAP7_75t_R U306 ( .A(n197), .Y(n221) );
  FAx1_ASAP7_75t_R U307 ( .A(In_IFM[20]), .B(n323), .CI(n328), .SN(n190) );
  XNOR2xp5_ASAP7_75t_R U308 ( .A(In_IFM[16]), .B(n324), .Y(n191) );
  INVx1_ASAP7_75t_R U309 ( .A(n191), .Y(n222) );
  NAND2xp5_ASAP7_75t_R U310 ( .A(n190), .B(n222), .Y(n195) );
  INVx1_ASAP7_75t_R U311 ( .A(n190), .Y(n223) );
  NAND2xp5_ASAP7_75t_R U312 ( .A(n191), .B(n223), .Y(n193) );
  XNOR2xp5_ASAP7_75t_R U313 ( .A(In_IFM[20]), .B(n322), .Y(n224) );
  XNOR2xp5_ASAP7_75t_R U314 ( .A(In_IFM[18]), .B(In_IFM[22]), .Y(n225) );
  INVx1_ASAP7_75t_R U315 ( .A(n225), .Y(n192) );
  NAND2xp5_ASAP7_75t_R U316 ( .A(n224), .B(n192), .Y(n228) );
  NAND2xp5_ASAP7_75t_R U317 ( .A(n193), .B(n228), .Y(n194) );
  NAND2xp5_ASAP7_75t_R U318 ( .A(n195), .B(n194), .Y(n196) );
  NAND2xp5_ASAP7_75t_R U319 ( .A(n221), .B(n196), .Y(n211) );
  INVx1_ASAP7_75t_R U320 ( .A(n196), .Y(n220) );
  NAND2xp5_ASAP7_75t_R U321 ( .A(n220), .B(n197), .Y(n198) );
  FAx1_ASAP7_75t_R U322 ( .A(In_IFM[21]), .B(In_IFM[20]), .CI(n62), .SN(n219)
         );
  NAND2xp5_ASAP7_75t_R U323 ( .A(n198), .B(n219), .Y(n210) );
  AND2x2_ASAP7_75t_R U324 ( .A(n211), .B(n210), .Y(n206) );
  MAJx2_ASAP7_75t_R U325 ( .A(n207), .B(n212), .C(n206), .Y(n203) );
  OR2x2_ASAP7_75t_R U326 ( .A(In_IFM[19]), .B(In_IFM[21]), .Y(n205) );
  NAND2xp5_ASAP7_75t_R U327 ( .A(In_IFM[19]), .B(In_IFM[21]), .Y(n200) );
  NAND2xp5_ASAP7_75t_R U328 ( .A(n200), .B(n199), .Y(n204) );
  AND2x2_ASAP7_75t_R U329 ( .A(n205), .B(n204), .Y(n202) );
  MAJIxp5_ASAP7_75t_R U330 ( .A(n203), .B(n202), .C(n201), .Y(n367) );
  NAND2xp5_ASAP7_75t_R U331 ( .A(n205), .B(n204), .Y(n209) );
  MAJIxp5_ASAP7_75t_R U332 ( .A(n207), .B(n212), .C(n206), .Y(n208) );
  FAx1_ASAP7_75t_R U333 ( .A(n209), .B(n201), .CI(n208), .SN(n368) );
  AND2x2_ASAP7_75t_R U334 ( .A(n211), .B(n210), .Y(n218) );
  INVx1_ASAP7_75t_R U335 ( .A(n212), .Y(n217) );
  INVx1_ASAP7_75t_R U336 ( .A(In_IFM[23]), .Y(n213) );
  NAND2xp5_ASAP7_75t_R U337 ( .A(n326), .B(n213), .Y(n215) );
  NAND2xp5_ASAP7_75t_R U338 ( .A(n215), .B(n214), .Y(n216) );
  FAx1_ASAP7_75t_R U339 ( .A(n218), .B(n217), .CI(n216), .SN(n369) );
  FAx1_ASAP7_75t_R U340 ( .A(n221), .B(n220), .CI(n219), .SN(n370) );
  FAx1_ASAP7_75t_R U341 ( .A(n223), .B(n222), .CI(n228), .SN(n371) );
  INVx1_ASAP7_75t_R U342 ( .A(n224), .Y(n226) );
  NAND2xp5_ASAP7_75t_R U343 ( .A(n226), .B(n225), .Y(n227) );
  NAND2xp5_ASAP7_75t_R U344 ( .A(n228), .B(n227), .Y(n372) );
  NAND2xp5_ASAP7_75t_R U345 ( .A(n337), .B(n340), .Y(n237) );
  OR2x2_ASAP7_75t_R U346 ( .A(n337), .B(n340), .Y(n235) );
  INVx1_ASAP7_75t_R U347 ( .A(In_IFM[26]), .Y(n229) );
  NAND2xp5_ASAP7_75t_R U348 ( .A(n339), .B(n229), .Y(n234) );
  INVx1_ASAP7_75t_R U349 ( .A(n339), .Y(n230) );
  NAND2xp5_ASAP7_75t_R U350 ( .A(In_IFM[26]), .B(n230), .Y(n232) );
  INVx1_ASAP7_75t_R U351 ( .A(n342), .Y(n231) );
  MAJIxp5_ASAP7_75t_R U352 ( .A(In_IFM[24]), .B(In_IFM[27]), .C(n231), .Y(n240) );
  NAND2xp5_ASAP7_75t_R U353 ( .A(n232), .B(n240), .Y(n233) );
  NAND2xp5_ASAP7_75t_R U354 ( .A(n234), .B(n233), .Y(n239) );
  NAND2xp5_ASAP7_75t_R U355 ( .A(n235), .B(n239), .Y(n236) );
  NAND2xp5_ASAP7_75t_R U356 ( .A(n237), .B(n236), .Y(n238) );
  MAJIxp5_ASAP7_75t_R U357 ( .A(n338), .B(n341), .C(n238), .Y(N168) );
  FAx1_ASAP7_75t_R U358 ( .A(n338), .B(n341), .CI(n238), .SN(N167) );
  FAx1_ASAP7_75t_R U359 ( .A(n337), .B(n340), .CI(n239), .SN(N166) );
  FAx1_ASAP7_75t_R U360 ( .A(In_IFM[26]), .B(n339), .CI(n240), .SN(n241) );
  INVx1_ASAP7_75t_R U361 ( .A(n241), .Y(N165) );
  FAx1_ASAP7_75t_R U362 ( .A(In_IFM[24]), .B(In_IFM[27]), .CI(n342), .SN(N164)
         );
  XOR2xp5_ASAP7_75t_R U363 ( .A(In_IFM[26]), .B(In_IFM[24]), .Y(N163) );
  NAND2xp5_ASAP7_75t_R U364 ( .A(n335), .B(n333), .Y(n251) );
  OR2x2_ASAP7_75t_R U365 ( .A(n335), .B(n333), .Y(n249) );
  INVx1_ASAP7_75t_R U366 ( .A(In_IFM[28]), .Y(n242) );
  NAND2xp5_ASAP7_75t_R U367 ( .A(n330), .B(n242), .Y(n246) );
  INVx1_ASAP7_75t_R U368 ( .A(n330), .Y(n243) );
  NAND2xp5_ASAP7_75t_R U369 ( .A(In_IFM[28]), .B(n243), .Y(n244) );
  NAND2xp5_ASAP7_75t_R U370 ( .A(n343), .B(n244), .Y(n245) );
  NAND2xp5_ASAP7_75t_R U371 ( .A(n246), .B(n245), .Y(n256) );
  INVx1_ASAP7_75t_R U372 ( .A(n256), .Y(n248) );
  INVx1_ASAP7_75t_R U373 ( .A(n332), .Y(n247) );
  NAND2xp5_ASAP7_75t_R U374 ( .A(n248), .B(n247), .Y(n255) );
  NAND2xp5_ASAP7_75t_R U375 ( .A(n249), .B(n255), .Y(n250) );
  NAND2xp5_ASAP7_75t_R U376 ( .A(n251), .B(n250), .Y(n252) );
  INVx1_ASAP7_75t_R U377 ( .A(n336), .Y(n254) );
  INVx1_ASAP7_75t_R U378 ( .A(n252), .Y(n253) );
  XOR2xp5_ASAP7_75t_R U379 ( .A(n254), .B(n253), .Y(
        add_1_root_add_0_root_add_89_7_SUM_4_) );
  FAx1_ASAP7_75t_R U380 ( .A(n335), .B(n333), .CI(n255), .SN(
        add_1_root_add_0_root_add_89_7_SUM_3_) );
  XOR2xp5_ASAP7_75t_R U381 ( .A(n256), .B(n332), .Y(
        add_1_root_add_0_root_add_89_7_SUM_2_) );
  INVx1_ASAP7_75t_R U382 ( .A(n343), .Y(n257) );
  FAx1_ASAP7_75t_R U383 ( .A(In_IFM[28]), .B(n330), .CI(n257), .SN(
        add_1_root_add_0_root_add_89_7_SUM_1_) );
  XNOR2xp5_ASAP7_75t_R U384 ( .A(In_IFM[29]), .B(n329), .Y(
        add_1_root_add_0_root_add_89_7_SUM_0_) );
  INVx1_ASAP7_75t_R U385 ( .A(N181), .Y(n373) );
  INVx1_ASAP7_75t_R U386 ( .A(N180), .Y(n374) );
  INVx1_ASAP7_75t_R U387 ( .A(N179), .Y(n375) );
  INVx1_ASAP7_75t_R U388 ( .A(N178), .Y(n376) );
  INVx1_ASAP7_75t_R U389 ( .A(N177), .Y(n377) );
  INVx1_ASAP7_75t_R U390 ( .A(N176), .Y(n378) );
  INVx1_ASAP7_75t_R U391 ( .A(N175), .Y(n379) );
  INVx1_ASAP7_75t_R U392 ( .A(state2_counter[0]), .Y(n259) );
  INVx1_ASAP7_75t_R U393 ( .A(n383), .Y(n286) );
  NAND2xp5_ASAP7_75t_R U394 ( .A(n261), .B(n260), .Y(N230) );
  INVx1_ASAP7_75t_R U395 ( .A(state2_counter[1]), .Y(n262) );
  NAND2xp5_ASAP7_75t_R U396 ( .A(N219), .B(n77), .Y(n263) );
  NAND3xp33_ASAP7_75t_R U397 ( .A(n265), .B(n264), .C(n263), .Y(N229) );
  NAND2xp5_ASAP7_75t_R U398 ( .A(N217), .B(n78), .Y(n268) );
  NAND2xp5_ASAP7_75t_R U399 ( .A(n70), .B(n286), .Y(n273) );
  NAND2xp5_ASAP7_75t_R U400 ( .A(N216), .B(n78), .Y(n272) );
  NAND2xp5_ASAP7_75t_R U401 ( .A(N218), .B(n76), .Y(n270) );
  NAND2xp5_ASAP7_75t_R U402 ( .A(N211), .B(n286), .Y(n288) );
  NAND2xp5_ASAP7_75t_R U403 ( .A(N214), .B(n76), .Y(n287) );
  NAND4xp75_ASAP7_75t_R U404 ( .A(n287), .B(n289), .C(n288), .D(n290), .Y(N223) );
  NAND2xp5_ASAP7_75t_R U405 ( .A(n77), .B(N211), .Y(n292) );
  AND2x2_ASAP7_75t_R U406 ( .A(N211), .B(n76), .Y(N220) );
  INVx1_ASAP7_75t_R U407 ( .A(N232), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U408 ( .A(In_IFM[6]), .B(In_IFM[2]), .Y(n308) );
  NAND2xp33_ASAP7_75t_R U409 ( .A(In_IFM[0]), .B(n61), .Y(n307) );
  XNOR2xp5_ASAP7_75t_R U410 ( .A(In_IFM[0]), .B(n61), .Y(n306) );
  XNOR2xp5_ASAP7_75t_R U411 ( .A(In_IFM[6]), .B(In_IFM[0]), .Y(n305) );
  XNOR2xp5_ASAP7_75t_R U412 ( .A(In_IFM[2]), .B(In_IFM[1]), .Y(n297) );
  NAND2xp33_ASAP7_75t_R U413 ( .A(In_IFM[5]), .B(N30), .Y(n304) );
  NAND2xp33_ASAP7_75t_R U414 ( .A(In_IFM[4]), .B(In_IFM[3]), .Y(n301) );
  XNOR2xp5_ASAP7_75t_R U415 ( .A(In_IFM[4]), .B(In_IFM[3]), .Y(n300) );
  NAND2xp33_ASAP7_75t_R U416 ( .A(In_IFM[4]), .B(In_IFM[3]), .Y(n303) );
  XNOR2xp5_ASAP7_75t_R U417 ( .A(In_IFM[4]), .B(In_IFM[3]), .Y(n302) );
  NAND2xp33_ASAP7_75t_R U418 ( .A(In_IFM[5]), .B(n65), .Y(n296) );
  XNOR2xp5_ASAP7_75t_R U419 ( .A(In_IFM[5]), .B(n65), .Y(n295) );
  XNOR2xp5_ASAP7_75t_R U420 ( .A(In_IFM[7]), .B(In_IFM[5]), .Y(n294) );
  NAND2xp33_ASAP7_75t_R U421 ( .A(N69), .B(n321), .Y(n320) );
  NAND2xp33_ASAP7_75t_R U422 ( .A(In_IFM[15]), .B(In_IFM[11]), .Y(n319) );
  NAND2xp33_ASAP7_75t_R U423 ( .A(In_IFM[14]), .B(n59), .Y(n311) );
  XNOR2xp5_ASAP7_75t_R U424 ( .A(In_IFM[14]), .B(n59), .Y(n310) );
  XNOR2xp5_ASAP7_75t_R U425 ( .A(In_IFM[15]), .B(In_IFM[14]), .Y(n309) );
  NAND2xp33_ASAP7_75t_R U426 ( .A(In_IFM[11]), .B(In_IFM[13]), .Y(n318) );
  XNOR2xp5_ASAP7_75t_R U427 ( .A(In_IFM[11]), .B(In_IFM[13]), .Y(n317) );
  NAND2xp33_ASAP7_75t_R U428 ( .A(In_IFM[10]), .B(In_IFM[12]), .Y(n316) );
  NAND2xp33_ASAP7_75t_R U429 ( .A(In_IFM[12]), .B(n66), .Y(n315) );
  XNOR2xp5_ASAP7_75t_R U430 ( .A(In_IFM[12]), .B(n66), .Y(n314) );
  XNOR2xp5_ASAP7_75t_R U431 ( .A(In_IFM[9]), .B(n63), .Y(n313) );
  XNOR2xp5_ASAP7_75t_R U432 ( .A(In_IFM[12]), .B(In_IFM[9]), .Y(n312) );
  NAND2xp33_ASAP7_75t_R U433 ( .A(In_IFM[20]), .B(N107), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U434 ( .A(In_IFM[21]), .B(In_IFM[17]), .Y(n323) );
  XNOR2xp5_ASAP7_75t_R U435 ( .A(In_IFM[21]), .B(In_IFM[17]), .Y(n322) );
  NAND2xp33_ASAP7_75t_R U436 ( .A(In_IFM[18]), .B(n327), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U437 ( .A(In_IFM[16]), .B(N102), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U438 ( .A(In_IFM[18]), .B(In_IFM[22]), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U439 ( .A(In_IFM[29]), .B(N170), .Y(n343) );
  XNOR2xp5_ASAP7_75t_R U440 ( .A(In_IFM[30]), .B(In_IFM[31]), .Y(n329) );
  NAND2xp33_ASAP7_75t_R U441 ( .A(In_IFM[28]), .B(In_IFM[29]), .Y(n336) );
  XNOR2xp5_ASAP7_75t_R U442 ( .A(In_IFM[28]), .B(In_IFM[29]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U443 ( .A(In_IFM[24]), .B(In_IFM[26]), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U444 ( .A(In_IFM[26]), .B(In_IFM[27]), .Y(n338) );
  XNOR2xp5_ASAP7_75t_R U445 ( .A(In_IFM[26]), .B(In_IFM[27]), .Y(n337) );
  NAND2xp33_ASAP7_75t_R U446 ( .A(In_IFM[25]), .B(n64), .Y(n341) );
  XNOR2xp5_ASAP7_75t_R U447 ( .A(In_IFM[25]), .B(n64), .Y(n340) );
  XNOR2xp5_ASAP7_75t_R U448 ( .A(In_IFM[24]), .B(In_IFM[25]), .Y(n339) );
  INVx1_ASAP7_75t_R U449 ( .A(n331), .Y(n334) );
endmodule


module Convolution_DW01_add_41 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n10, n12, n13, n14, n15, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n34, n35, n36,
         n38, n39, n40, n42, n43, n44, n45, n47, n48, n49, n50, n51, n54, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108;

  NAND2xp5_ASAP7_75t_R U15 ( .A(n24), .B(n49), .Y(n10) );
  NAND2xp5_ASAP7_75t_R U30 ( .A(n31), .B(n51), .Y(n12) );
  NAND2xp5_ASAP7_75t_R U42 ( .A(A[3]), .B(B[3]), .Y(n36) );
  NAND2xp5_ASAP7_75t_R U46 ( .A(n39), .B(n92), .Y(n14) );
  NAND2xp5_ASAP7_75t_R U49 ( .A(B[2]), .B(A[2]), .Y(n39) );
  NOR2x1_ASAP7_75t_R U68 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2xp33_ASAP7_75t_R U69 ( .A(B[4]), .B(A[4]), .Y(n30) );
  XNOR2xp5_ASAP7_75t_R U70 ( .A(n105), .B(n20), .Y(SUM[7]) );
  XOR2xp5_ASAP7_75t_R U71 ( .A(n93), .B(n14), .Y(SUM[2]) );
  XNOR2xp5_ASAP7_75t_R U72 ( .A(n15), .B(n45), .Y(SUM[1]) );
  AND2x2_ASAP7_75t_R U73 ( .A(n47), .B(n91), .Y(SUM[0]) );
  OR2x2_ASAP7_75t_R U74 ( .A(B[0]), .B(A[0]), .Y(n91) );
  OR2x2_ASAP7_75t_R U75 ( .A(B[2]), .B(A[2]), .Y(n92) );
  NOR2xp33_ASAP7_75t_R U76 ( .A(n8), .B(n42), .Y(n93) );
  NOR2xp33_ASAP7_75t_R U77 ( .A(n8), .B(n42), .Y(n40) );
  INVxp67_ASAP7_75t_R U78 ( .A(n44), .Y(n42) );
  NAND2x1_ASAP7_75t_R U79 ( .A(n24), .B(n3), .Y(n22) );
  INVxp33_ASAP7_75t_R U80 ( .A(n34), .Y(n94) );
  NOR2xp33_ASAP7_75t_R U81 ( .A(n23), .B(n26), .Y(n21) );
  INVxp33_ASAP7_75t_R U82 ( .A(n23), .Y(n49) );
  INVxp33_ASAP7_75t_R U83 ( .A(n35), .Y(n95) );
  INVxp67_ASAP7_75t_R U84 ( .A(n35), .Y(n102) );
  NAND2xp33_ASAP7_75t_R U85 ( .A(n31), .B(n5), .Y(n96) );
  NAND2xp5_ASAP7_75t_R U86 ( .A(n31), .B(n5), .Y(n29) );
  NAND2xp33_ASAP7_75t_R U87 ( .A(B[6]), .B(A[6]), .Y(n24) );
  INVxp67_ASAP7_75t_R U88 ( .A(n43), .Y(n54) );
  NOR2xp67_ASAP7_75t_R U89 ( .A(n47), .B(n43), .Y(n8) );
  NOR2xp67_ASAP7_75t_R U90 ( .A(n18), .B(n20), .Y(n107) );
  XOR2xp5_ASAP7_75t_R U91 ( .A(n12), .B(n97), .Y(SUM[4]) );
  NAND2xp33_ASAP7_75t_R U92 ( .A(n94), .B(n95), .Y(n13) );
  NOR2xp33_ASAP7_75t_R U93 ( .A(B[2]), .B(A[2]), .Y(n38) );
  NAND2xp5_ASAP7_75t_R U94 ( .A(n44), .B(n54), .Y(n15) );
  NOR2xp33_ASAP7_75t_R U95 ( .A(n34), .B(n6), .Y(n97) );
  NAND2xp5_ASAP7_75t_R U96 ( .A(n7), .B(n100), .Y(n98) );
  NAND2xp5_ASAP7_75t_R U97 ( .A(n98), .B(n99), .Y(n32) );
  OR2x2_ASAP7_75t_R U98 ( .A(n34), .B(n102), .Y(n99) );
  AND2x2_ASAP7_75t_R U99 ( .A(n36), .B(n39), .Y(n100) );
  XNOR2x1_ASAP7_75t_R U100 ( .A(n101), .B(n104), .Y(SUM[5]) );
  AND2x2_ASAP7_75t_R U101 ( .A(n29), .B(n21), .Y(n2) );
  NAND2xp5_ASAP7_75t_R U102 ( .A(B[4]), .B(A[4]), .Y(n31) );
  AND2x2_ASAP7_75t_R U103 ( .A(n5), .B(n31), .Y(n101) );
  INVxp33_ASAP7_75t_R U104 ( .A(n19), .Y(n106) );
  NAND2xp5_ASAP7_75t_R U105 ( .A(n27), .B(n4), .Y(n25) );
  XNOR2xp5_ASAP7_75t_R U106 ( .A(n10), .B(n25), .Y(SUM[6]) );
  NOR2xp67_ASAP7_75t_R U107 ( .A(B[5]), .B(A[5]), .Y(n26) );
  NAND2xp5_ASAP7_75t_R U108 ( .A(B[7]), .B(A[7]), .Y(n19) );
  AND2x2_ASAP7_75t_R U109 ( .A(n103), .B(n95), .Y(n6) );
  NAND2xp5_ASAP7_75t_R U110 ( .A(n39), .B(n7), .Y(n103) );
  AND2x2_ASAP7_75t_R U111 ( .A(n27), .B(n50), .Y(n104) );
  AND2x2_ASAP7_75t_R U112 ( .A(n19), .B(n48), .Y(n105) );
  OR2x2_ASAP7_75t_R U113 ( .A(n106), .B(n107), .Y(SUM[8]) );
  NOR2xp33_ASAP7_75t_R U114 ( .A(A[3]), .B(B[3]), .Y(n35) );
  NAND2xp5_ASAP7_75t_R U115 ( .A(B[0]), .B(A[0]), .Y(n47) );
  NOR2xp33_ASAP7_75t_R U116 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2xp33_ASAP7_75t_R U117 ( .A(n7), .B(n39), .Y(n108) );
  NAND2x1_ASAP7_75t_R U118 ( .A(B[5]), .B(A[5]), .Y(n27) );
  XNOR2xp5_ASAP7_75t_R U119 ( .A(n13), .B(n108), .Y(SUM[3]) );
  NOR2xp67_ASAP7_75t_R U120 ( .A(B[1]), .B(A[1]), .Y(n43) );
  NAND2xp33_ASAP7_75t_R U121 ( .A(A[1]), .B(B[1]), .Y(n44) );
  NOR2x1p5_ASAP7_75t_R U122 ( .A(n22), .B(n2), .Y(n20) );
  OR2x2_ASAP7_75t_R U123 ( .A(n40), .B(n38), .Y(n7) );
  INVx1_ASAP7_75t_R U124 ( .A(n30), .Y(n51) );
  OR2x2_ASAP7_75t_R U125 ( .A(n30), .B(n32), .Y(n5) );
  INVx1_ASAP7_75t_R U126 ( .A(n18), .Y(n48) );
  INVx1_ASAP7_75t_R U127 ( .A(n47), .Y(n45) );
  NAND2xp5_ASAP7_75t_R U128 ( .A(n96), .B(n50), .Y(n4) );
  INVx1_ASAP7_75t_R U129 ( .A(n26), .Y(n50) );
  INVx1_ASAP7_75t_R U130 ( .A(n36), .Y(n34) );
  OR2x2_ASAP7_75t_R U131 ( .A(n27), .B(n23), .Y(n3) );
endmodule


module Convolution_DW01_add_36 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n15, n19, n20, n23,
         n25, n28, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96;

  NAND2xp5_ASAP7_75t_R U5 ( .A(n48), .B(n28), .Y(n19) );
  NAND2xp5_ASAP7_75t_R U22 ( .A(n31), .B(n49), .Y(n12) );
  NAND2xp5_ASAP7_75t_R U42 ( .A(B[3]), .B(A[3]), .Y(n38) );
  NAND2xp5_ASAP7_75t_R U46 ( .A(n41), .B(n52), .Y(n15) );
  NAND2xp5_ASAP7_75t_R U49 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2xp5_ASAP7_75t_R U57 ( .A(B[1]), .B(A[1]), .Y(n45) );
  INVx1_ASAP7_75t_R U66 ( .A(n48), .Y(n11) );
  INVx1_ASAP7_75t_R U67 ( .A(B[6]), .Y(n23) );
  INVx1_ASAP7_75t_R U68 ( .A(n3), .Y(n20) );
  NAND2xp67_ASAP7_75t_R U69 ( .A(n45), .B(n53), .Y(n91) );
  NOR2xp33_ASAP7_75t_R U70 ( .A(B[3]), .B(A[3]), .Y(n37) );
  XNOR2xp5_ASAP7_75t_R U71 ( .A(n94), .B(n1), .Y(SUM[4]) );
  NOR2xp33_ASAP7_75t_R U72 ( .A(B[2]), .B(A[2]), .Y(n40) );
  XNOR2xp5_ASAP7_75t_R U73 ( .A(n32), .B(n12), .Y(SUM[5]) );
  NAND2xp5_ASAP7_75t_R U74 ( .A(n34), .B(n6), .Y(n32) );
  INVxp33_ASAP7_75t_R U75 ( .A(n47), .Y(n90) );
  AND2x2_ASAP7_75t_R U76 ( .A(n47), .B(n54), .Y(SUM[0]) );
  NAND2xp5_ASAP7_75t_R U77 ( .A(n35), .B(n88), .Y(n93) );
  INVxp67_ASAP7_75t_R U78 ( .A(n44), .Y(n53) );
  NOR2xp33_ASAP7_75t_R U79 ( .A(B[1]), .B(A[1]), .Y(n87) );
  NOR2xp33_ASAP7_75t_R U80 ( .A(B[1]), .B(A[1]), .Y(n44) );
  NAND2xp5_ASAP7_75t_R U81 ( .A(n10), .B(n45), .Y(n88) );
  XNOR2xp5_ASAP7_75t_R U82 ( .A(n15), .B(n88), .Y(SUM[2]) );
  NAND2xp5_ASAP7_75t_R U83 ( .A(B[4]), .B(A[4]), .Y(n34) );
  NOR2xp33_ASAP7_75t_R U84 ( .A(B[5]), .B(A[5]), .Y(n30) );
  AND2x2_ASAP7_75t_R U85 ( .A(n38), .B(n51), .Y(n89) );
  INVx2_ASAP7_75t_R U86 ( .A(n1), .Y(n96) );
  XOR2xp5_ASAP7_75t_R U87 ( .A(n39), .B(n89), .Y(SUM[3]) );
  NAND2xp33_ASAP7_75t_R U88 ( .A(B[5]), .B(A[5]), .Y(n31) );
  XNOR2xp5_ASAP7_75t_R U89 ( .A(n90), .B(n91), .Y(SUM[1]) );
  AND2x2_ASAP7_75t_R U90 ( .A(n92), .B(n93), .Y(n1) );
  AND2x2_ASAP7_75t_R U91 ( .A(n38), .B(n8), .Y(n92) );
  NAND2xp5_ASAP7_75t_R U92 ( .A(n41), .B(n9), .Y(n39) );
  AND2x2_ASAP7_75t_R U93 ( .A(n34), .B(n50), .Y(n94) );
  NOR2xp33_ASAP7_75t_R U94 ( .A(n37), .B(n40), .Y(n35) );
  AND2x2_ASAP7_75t_R U95 ( .A(n31), .B(n5), .Y(n95) );
  NOR2xp33_ASAP7_75t_R U96 ( .A(n30), .B(n33), .Y(n28) );
  NAND2xp5_ASAP7_75t_R U97 ( .A(B[0]), .B(A[0]), .Y(n47) );
  XNOR2xp5_ASAP7_75t_R U98 ( .A(n25), .B(n11), .Y(SUM[6]) );
  NAND2xp5_ASAP7_75t_R U99 ( .A(n95), .B(n4), .Y(n25) );
  NAND2xp5_ASAP7_75t_R U100 ( .A(n20), .B(n2), .Y(SUM[7]) );
  NOR2xp33_ASAP7_75t_R U101 ( .A(n23), .B(n95), .Y(n3) );
  NOR2xp33_ASAP7_75t_R U102 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NAND2xp5_ASAP7_75t_R U103 ( .A(n45), .B(n10), .Y(n43) );
  NOR2xp33_ASAP7_75t_R U104 ( .A(B[0]), .B(A[0]), .Y(n46) );
  NAND2xp5_ASAP7_75t_R U105 ( .A(n43), .B(n52), .Y(n9) );
  OR2x2_ASAP7_75t_R U106 ( .A(n41), .B(n37), .Y(n8) );
  NAND2xp5_ASAP7_75t_R U107 ( .A(n96), .B(n50), .Y(n6) );
  INVx1_ASAP7_75t_R U108 ( .A(n46), .Y(n54) );
  INVx1_ASAP7_75t_R U109 ( .A(n40), .Y(n52) );
  INVx1_ASAP7_75t_R U110 ( .A(n37), .Y(n51) );
  INVx1_ASAP7_75t_R U111 ( .A(n33), .Y(n50) );
  OR2x2_ASAP7_75t_R U112 ( .A(n34), .B(n30), .Y(n5) );
  INVx1_ASAP7_75t_R U113 ( .A(n30), .Y(n49) );
  NAND2xp5_ASAP7_75t_R U114 ( .A(n28), .B(n96), .Y(n4) );
  INVx1_ASAP7_75t_R U115 ( .A(n23), .Y(n48) );
  OR2x2_ASAP7_75t_R U116 ( .A(n19), .B(n1), .Y(n2) );
  OR2x2_ASAP7_75t_R U117 ( .A(n87), .B(n47), .Y(n10) );
endmodule


module Convolution_DW01_add_39 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n8, n9, n10, n11, n12, n14, n16, n19, n22, n23,
         n24, n25, n28, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41,
         n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n98;

  NAND2xp5_ASAP7_75t_R U5 ( .A(n48), .B(n28), .Y(n19) );
  NAND2xp5_ASAP7_75t_R U10 ( .A(n24), .B(n48), .Y(n11) );
  NAND2xp5_ASAP7_75t_R U13 ( .A(B[6]), .B(A[6]), .Y(n24) );
  NAND2xp5_ASAP7_75t_R U22 ( .A(n31), .B(n49), .Y(n12) );
  NAND2xp5_ASAP7_75t_R U39 ( .A(n38), .B(n51), .Y(n14) );
  NAND2xp5_ASAP7_75t_R U42 ( .A(B[3]), .B(A[3]), .Y(n38) );
  NAND2xp5_ASAP7_75t_R U49 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2xp5_ASAP7_75t_R U54 ( .A(n45), .B(n53), .Y(n16) );
  NAND2xp5_ASAP7_75t_R U66 ( .A(B[0]), .B(A[0]), .Y(n88) );
  AND2x2_ASAP7_75t_R U67 ( .A(n41), .B(n52), .Y(n92) );
  NOR2xp33_ASAP7_75t_R U68 ( .A(B[3]), .B(A[3]), .Y(n37) );
  XNOR2xp5_ASAP7_75t_R U69 ( .A(n93), .B(n1), .Y(SUM[4]) );
  XNOR2xp5_ASAP7_75t_R U70 ( .A(n32), .B(n12), .Y(SUM[5]) );
  OR2x2_ASAP7_75t_R U71 ( .A(B[0]), .B(A[0]), .Y(n86) );
  XOR2x2_ASAP7_75t_R U72 ( .A(n92), .B(n87), .Y(SUM[2]) );
  NAND2x1_ASAP7_75t_R U73 ( .A(n89), .B(n10), .Y(n87) );
  NAND2xp5_ASAP7_75t_R U74 ( .A(n89), .B(n10), .Y(n43) );
  NAND2xp5_ASAP7_75t_R U75 ( .A(B[0]), .B(A[0]), .Y(n47) );
  BUFx2_ASAP7_75t_R U76 ( .A(n45), .Y(n89) );
  NAND2xp5_ASAP7_75t_R U77 ( .A(B[1]), .B(A[1]), .Y(n45) );
  NAND2xp5_ASAP7_75t_R U78 ( .A(n9), .B(n41), .Y(n39) );
  NOR2xp33_ASAP7_75t_R U79 ( .A(n23), .B(n94), .Y(n3) );
  NOR2xp33_ASAP7_75t_R U80 ( .A(B[2]), .B(A[2]), .Y(n40) );
  NAND2xp5_ASAP7_75t_R U81 ( .A(B[4]), .B(A[4]), .Y(n34) );
  NOR2xp33_ASAP7_75t_R U82 ( .A(B[5]), .B(A[5]), .Y(n30) );
  NAND2xp33_ASAP7_75t_R U83 ( .A(n35), .B(n87), .Y(n91) );
  NAND2xp33_ASAP7_75t_R U84 ( .A(B[5]), .B(A[5]), .Y(n31) );
  NAND2xp5_ASAP7_75t_R U85 ( .A(n34), .B(n6), .Y(n32) );
  AND2x2_ASAP7_75t_R U86 ( .A(n90), .B(n91), .Y(n1) );
  AND2x2_ASAP7_75t_R U87 ( .A(n38), .B(n8), .Y(n90) );
  XNOR2xp5_ASAP7_75t_R U88 ( .A(n25), .B(n11), .Y(SUM[6]) );
  NAND2xp5_ASAP7_75t_R U89 ( .A(n94), .B(n4), .Y(n25) );
  XNOR2xp5_ASAP7_75t_R U90 ( .A(n39), .B(n14), .Y(SUM[3]) );
  NOR2xp33_ASAP7_75t_R U91 ( .A(n37), .B(n40), .Y(n35) );
  AND2x2_ASAP7_75t_R U92 ( .A(n34), .B(n50), .Y(n93) );
  AND2x2_ASAP7_75t_R U93 ( .A(n31), .B(n5), .Y(n94) );
  OR2x2_ASAP7_75t_R U94 ( .A(n95), .B(n96), .Y(SUM[7]) );
  OR2x2_ASAP7_75t_R U95 ( .A(n22), .B(n3), .Y(n95) );
  NOR2xp33_ASAP7_75t_R U96 ( .A(n19), .B(n1), .Y(n96) );
  NOR2xp33_ASAP7_75t_R U97 ( .A(n30), .B(n33), .Y(n28) );
  AND2x2_ASAP7_75t_R U98 ( .A(n88), .B(n86), .Y(SUM[0]) );
  NOR2xp33_ASAP7_75t_R U99 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NOR2xp33_ASAP7_75t_R U100 ( .A(B[6]), .B(A[6]), .Y(n23) );
  XOR2xp5_ASAP7_75t_R U101 ( .A(n88), .B(n16), .Y(SUM[1]) );
  NOR2x1_ASAP7_75t_R U102 ( .A(B[1]), .B(A[1]), .Y(n44) );
  NAND2xp5_ASAP7_75t_R U103 ( .A(n43), .B(n52), .Y(n9) );
  OR2x2_ASAP7_75t_R U104 ( .A(n41), .B(n37), .Y(n8) );
  NAND2xp5_ASAP7_75t_R U105 ( .A(n98), .B(n50), .Y(n6) );
  INVx1_ASAP7_75t_R U106 ( .A(n44), .Y(n53) );
  INVx1_ASAP7_75t_R U107 ( .A(n40), .Y(n52) );
  INVx1_ASAP7_75t_R U108 ( .A(n37), .Y(n51) );
  INVx1_ASAP7_75t_R U109 ( .A(n33), .Y(n50) );
  OR2x2_ASAP7_75t_R U110 ( .A(n34), .B(n30), .Y(n5) );
  INVx1_ASAP7_75t_R U111 ( .A(n30), .Y(n49) );
  NAND2xp5_ASAP7_75t_R U112 ( .A(n28), .B(n98), .Y(n4) );
  INVx1_ASAP7_75t_R U113 ( .A(n1), .Y(n98) );
  INVx1_ASAP7_75t_R U114 ( .A(n24), .Y(n22) );
  INVx1_ASAP7_75t_R U115 ( .A(n23), .Y(n48) );
  OR2x2_ASAP7_75t_R U116 ( .A(n44), .B(n47), .Y(n10) );
endmodule


module Convolution_DW01_add_38 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n20, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34, n36, n39,
         n40, n42, n44, n45, n46, n47, n49, n50, n51, n52, n53, n54, n55, n56,
         n58, n59, n60, n61, n63, n64, n66, n67, n68, n69, n71, n72, n73, n74,
         n75, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87, n90, n91, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181;

  NAND2xp5_ASAP7_75t_R U7 ( .A(n34), .B(n166), .Y(n32) );
  NAND2xp5_ASAP7_75t_R U15 ( .A(n39), .B(n95), .Y(n18) );
  NAND2xp5_ASAP7_75t_R U18 ( .A(A[11]), .B(B[11]), .Y(n39) );
  NAND2xp5_ASAP7_75t_R U30 ( .A(A[10]), .B(B[10]), .Y(n46) );
  NAND2x1_ASAP7_75t_R U37 ( .A(n53), .B(n8), .Y(n51) );
  NAND2xp5_ASAP7_75t_R U39 ( .A(n53), .B(n97), .Y(n20) );
  NAND2xp5_ASAP7_75t_R U71 ( .A(n68), .B(n101), .Y(n24) );
  NAND2xp5_ASAP7_75t_R U93 ( .A(A[3]), .B(B[3]), .Y(n79) );
  NAND2xp5_ASAP7_75t_R U119 ( .A(A[0]), .B(B[0]), .Y(n94) );
  INVxp67_ASAP7_75t_R U123 ( .A(n84), .Y(n104) );
  NOR2xp67_ASAP7_75t_R U124 ( .A(A[1]), .B(B[1]), .Y(n90) );
  NOR2xp67_ASAP7_75t_R U125 ( .A(n60), .B(n63), .Y(n58) );
  NOR2xp33_ASAP7_75t_R U126 ( .A(A[11]), .B(B[11]), .Y(n36) );
  INVx1_ASAP7_75t_R U127 ( .A(n85), .Y(n83) );
  NOR2x1p5_ASAP7_75t_R U128 ( .A(n84), .B(n87), .Y(n16) );
  NOR2x1_ASAP7_75t_R U129 ( .A(A[3]), .B(B[3]), .Y(n78) );
  NOR2xp33_ASAP7_75t_R U130 ( .A(A[10]), .B(B[10]), .Y(n45) );
  NOR2x1_ASAP7_75t_R U131 ( .A(A[2]), .B(B[2]), .Y(n84) );
  XOR2xp5_ASAP7_75t_R U132 ( .A(n160), .B(n24), .Y(SUM[5]) );
  XNOR2xp5_ASAP7_75t_R U133 ( .A(n180), .B(n157), .Y(SUM[7]) );
  AND2x2_ASAP7_75t_R U134 ( .A(n94), .B(n154), .Y(SUM[0]) );
  OR2x2_ASAP7_75t_R U135 ( .A(A[0]), .B(B[0]), .Y(n154) );
  INVxp33_ASAP7_75t_R U136 ( .A(n16), .Y(n155) );
  INVx1_ASAP7_75t_R U137 ( .A(n155), .Y(n156) );
  NAND2xp33_ASAP7_75t_R U138 ( .A(A[7]), .B(B[7]), .Y(n61) );
  AND2x2_ASAP7_75t_R U139 ( .A(n61), .B(n99), .Y(n157) );
  NOR2xp33_ASAP7_75t_R U140 ( .A(A[8]), .B(B[8]), .Y(n55) );
  NAND2xp33_ASAP7_75t_R U141 ( .A(A[8]), .B(B[8]), .Y(n56) );
  NAND2xp5_ASAP7_75t_R U142 ( .A(n158), .B(n181), .Y(n5) );
  AND2x2_ASAP7_75t_R U143 ( .A(n96), .B(n50), .Y(n158) );
  INVx2_ASAP7_75t_R U144 ( .A(n1), .Y(n181) );
  NOR2xp67_ASAP7_75t_R U145 ( .A(A[5]), .B(B[5]), .Y(n67) );
  NOR2x1_ASAP7_75t_R U146 ( .A(n71), .B(n14), .Y(n69) );
  INVxp33_ASAP7_75t_R U147 ( .A(n69), .Y(n159) );
  INVx1_ASAP7_75t_R U148 ( .A(n159), .Y(n160) );
  NAND2xp5_ASAP7_75t_R U149 ( .A(A[2]), .B(B[2]), .Y(n85) );
  INVxp33_ASAP7_75t_R U150 ( .A(n49), .Y(n161) );
  INVx1_ASAP7_75t_R U151 ( .A(n161), .Y(n162) );
  INVxp33_ASAP7_75t_R U152 ( .A(n71), .Y(n163) );
  NOR2x1p5_ASAP7_75t_R U153 ( .A(n81), .B(n78), .Y(n15) );
  NAND2xp33_ASAP7_75t_R U154 ( .A(B[4]), .B(A[4]), .Y(n73) );
  NOR2x1_ASAP7_75t_R U155 ( .A(A[9]), .B(B[9]), .Y(n52) );
  INVxp33_ASAP7_75t_R U156 ( .A(n72), .Y(n102) );
  NOR2x1_ASAP7_75t_R U157 ( .A(n72), .B(n75), .Y(n14) );
  NOR2xp33_ASAP7_75t_R U158 ( .A(n83), .B(n156), .Y(n164) );
  NOR2x1p5_ASAP7_75t_R U159 ( .A(n10), .B(n59), .Y(n169) );
  NAND2x1p5_ASAP7_75t_R U160 ( .A(n61), .B(n11), .Y(n59) );
  NAND2xp33_ASAP7_75t_R U161 ( .A(B[9]), .B(A[9]), .Y(n53) );
  INVxp33_ASAP7_75t_R U162 ( .A(n75), .Y(n74) );
  NOR2x1p5_ASAP7_75t_R U163 ( .A(n77), .B(n15), .Y(n75) );
  NOR2xp67_ASAP7_75t_R U164 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NAND2xp33_ASAP7_75t_R U165 ( .A(A[8]), .B(B[8]), .Y(n165) );
  INVxp33_ASAP7_75t_R U166 ( .A(n63), .Y(n100) );
  NOR2xp33_ASAP7_75t_R U167 ( .A(n52), .B(n55), .Y(n166) );
  NOR2xp33_ASAP7_75t_R U168 ( .A(n52), .B(n55), .Y(n50) );
  AND2x4_ASAP7_75t_R U169 ( .A(n91), .B(n178), .Y(n87) );
  NAND2xp33_ASAP7_75t_R U170 ( .A(A[1]), .B(B[1]), .Y(n91) );
  NOR2xp33_ASAP7_75t_R U171 ( .A(n36), .B(n45), .Y(n34) );
  NAND2xp5_ASAP7_75t_R U172 ( .A(n165), .B(n9), .Y(n54) );
  HB1xp67_ASAP7_75t_R U173 ( .A(n168), .Y(n167) );
  XOR2xp5_ASAP7_75t_R U174 ( .A(n167), .B(n174), .Y(SUM[6]) );
  HB1xp67_ASAP7_75t_R U175 ( .A(n66), .Y(n168) );
  NAND2xp5_ASAP7_75t_R U176 ( .A(n7), .B(n162), .Y(n47) );
  NOR2x1p5_ASAP7_75t_R U177 ( .A(n59), .B(n10), .Y(n1) );
  NAND2xp33_ASAP7_75t_R U178 ( .A(n172), .B(n173), .Y(SUM[8]) );
  INVxp33_ASAP7_75t_R U179 ( .A(n179), .Y(n170) );
  NAND2xp5_ASAP7_75t_R U180 ( .A(n42), .B(n5), .Y(n40) );
  NAND2x1p5_ASAP7_75t_R U181 ( .A(n33), .B(n2), .Y(n31) );
  INVx1_ASAP7_75t_R U182 ( .A(n51), .Y(n49) );
  NAND2xp33_ASAP7_75t_R U183 ( .A(n169), .B(n179), .Y(n172) );
  NAND2xp5_ASAP7_75t_R U184 ( .A(n170), .B(n171), .Y(n173) );
  INVxp33_ASAP7_75t_R U185 ( .A(n169), .Y(n171) );
  INVxp33_ASAP7_75t_R U186 ( .A(n90), .Y(n105) );
  XNOR2xp5_ASAP7_75t_R U187 ( .A(n30), .B(n31), .Y(SUM[12]) );
  NOR2xp33_ASAP7_75t_R U188 ( .A(A[6]), .B(B[6]), .Y(n63) );
  NOR2xp33_ASAP7_75t_R U189 ( .A(n45), .B(n49), .Y(n6) );
  INVxp33_ASAP7_75t_R U190 ( .A(n52), .Y(n97) );
  AND2x2_ASAP7_75t_R U191 ( .A(n64), .B(n100), .Y(n174) );
  NOR2x1p5_ASAP7_75t_R U192 ( .A(n83), .B(n16), .Y(n81) );
  NAND2xp33_ASAP7_75t_R U193 ( .A(n163), .B(n102), .Y(n25) );
  NAND2xp33_ASAP7_75t_R U194 ( .A(n79), .B(n103), .Y(n26) );
  NAND2xp33_ASAP7_75t_R U195 ( .A(n85), .B(n104), .Y(n27) );
  XNOR2xp5_ASAP7_75t_R U196 ( .A(n40), .B(n18), .Y(SUM[11]) );
  NOR2xp33_ASAP7_75t_R U197 ( .A(n44), .B(n6), .Y(n42) );
  XNOR2xp5_ASAP7_75t_R U198 ( .A(n175), .B(n47), .Y(SUM[10]) );
  NAND2xp33_ASAP7_75t_R U199 ( .A(n46), .B(n96), .Y(n175) );
  AND2x2_ASAP7_75t_R U200 ( .A(n177), .B(n176), .Y(n33) );
  AND2x2_ASAP7_75t_R U201 ( .A(n39), .B(n4), .Y(n176) );
  NAND2xp33_ASAP7_75t_R U202 ( .A(n51), .B(n34), .Y(n177) );
  OR2x2_ASAP7_75t_R U203 ( .A(n94), .B(n90), .Y(n178) );
  AND2x2_ASAP7_75t_R U204 ( .A(n165), .B(n98), .Y(n179) );
  AND2x2_ASAP7_75t_R U205 ( .A(n64), .B(n12), .Y(n180) );
  XNOR2xp5_ASAP7_75t_R U206 ( .A(n25), .B(n74), .Y(SUM[4]) );
  XNOR2xp5_ASAP7_75t_R U207 ( .A(n26), .B(n80), .Y(SUM[3]) );
  XNOR2xp5_ASAP7_75t_R U208 ( .A(n27), .B(n86), .Y(SUM[2]) );
  XOR2xp5_ASAP7_75t_R U209 ( .A(n28), .B(n94), .Y(SUM[1]) );
  NOR2xp67_ASAP7_75t_R U210 ( .A(A[4]), .B(B[4]), .Y(n72) );
  NAND2x1p5_ASAP7_75t_R U211 ( .A(n68), .B(n13), .Y(n66) );
  NAND2xp5_ASAP7_75t_R U212 ( .A(A[5]), .B(B[5]), .Y(n68) );
  NAND2xp5_ASAP7_75t_R U213 ( .A(A[6]), .B(B[6]), .Y(n64) );
  INVxp33_ASAP7_75t_R U214 ( .A(n60), .Y(n99) );
  NAND2xp33_ASAP7_75t_R U215 ( .A(n91), .B(n105), .Y(n28) );
  NAND2xp33_ASAP7_75t_R U216 ( .A(n100), .B(n168), .Y(n12) );
  AND2x4_ASAP7_75t_R U217 ( .A(n58), .B(n66), .Y(n10) );
  XNOR2xp5_ASAP7_75t_R U218 ( .A(n20), .B(n54), .Y(SUM[9]) );
  NAND2xp5_ASAP7_75t_R U219 ( .A(n98), .B(n181), .Y(n9) );
  INVx1_ASAP7_75t_R U220 ( .A(n55), .Y(n98) );
  INVx1_ASAP7_75t_R U221 ( .A(n87), .Y(n86) );
  INVx1_ASAP7_75t_R U222 ( .A(n164), .Y(n80) );
  OR2x2_ASAP7_75t_R U223 ( .A(n52), .B(n56), .Y(n8) );
  INVx1_ASAP7_75t_R U224 ( .A(n79), .Y(n77) );
  INVx1_ASAP7_75t_R U225 ( .A(n73), .Y(n71) );
  NAND2xp5_ASAP7_75t_R U226 ( .A(n181), .B(n166), .Y(n7) );
  INVx1_ASAP7_75t_R U227 ( .A(n45), .Y(n96) );
  NAND2xp5_ASAP7_75t_R U228 ( .A(n44), .B(n95), .Y(n4) );
  INVx1_ASAP7_75t_R U229 ( .A(n36), .Y(n95) );
  INVx1_ASAP7_75t_R U230 ( .A(n46), .Y(n44) );
  INVx1_ASAP7_75t_R U231 ( .A(A[12]), .Y(n30) );
  OR2x2_ASAP7_75t_R U232 ( .A(n32), .B(n169), .Y(n2) );
  OR2x2_ASAP7_75t_R U233 ( .A(n67), .B(n69), .Y(n13) );
  OR2x2_ASAP7_75t_R U234 ( .A(n64), .B(n60), .Y(n11) );
  INVx1_ASAP7_75t_R U235 ( .A(n78), .Y(n103) );
  INVx1_ASAP7_75t_R U236 ( .A(n67), .Y(n101) );
endmodule


module Convolution_DW01_add_0 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n3), .CON(n7), .SN(n8) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n4), .CON(n9), .SN(n10) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n5), .CON(n11), .SN(n12) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n6), .CON(n13), .SN(n14) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n15), .SN(n16) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U3 ( .A(n9), .Y(n3) );
  INVx1_ASAP7_75t_R U4 ( .A(n11), .Y(n4) );
  INVx1_ASAP7_75t_R U5 ( .A(n13), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n15), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n7), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U8 ( .A(n8), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U9 ( .A(n10), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U10 ( .A(n12), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U11 ( .A(n14), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U12 ( .A(n16), .Y(SUM[1]) );
endmodule


module Convolution_DW01_add_14 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n3), .CON(n7), .SN(n8) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n4), .CON(n9), .SN(n10) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n5), .CON(n11), .SN(n12) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n6), .CON(n13), .SN(n14) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n15), .SN(n16) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U3 ( .A(n9), .Y(n3) );
  INVx1_ASAP7_75t_R U4 ( .A(n11), .Y(n4) );
  INVx1_ASAP7_75t_R U5 ( .A(n13), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n15), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n7), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U8 ( .A(n8), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U9 ( .A(n10), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U10 ( .A(n12), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U11 ( .A(n14), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U12 ( .A(n16), .Y(SUM[1]) );
endmodule

