wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/dic/dic107/DICHW5/clk_gating/03_GATE/Convolution_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BUFx4_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/SDFLx4_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/ConvState} \
{/TESTBED/u_Convolution/EN_IN1} \
{/TESTBED/u_Convolution/In_IFM_1\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_1_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_2\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_2_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_3\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_3_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_4\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_4_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_5\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_5_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_6\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_6_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_7\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_7_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_8\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_8_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_9\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_9_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_1\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_1_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_2\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_2_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_3\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_3_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_4\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_4_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_5\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_5_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_6\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_6_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_7\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_7_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_8\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_8_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_9\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_9_buf\[7:0\]} \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/Out_OFM_reg\[20:0\]} \
{/TESTBED/u_Convolution/WhetherCG_IN1} \
{/TESTBED/u_Convolution/WhetherCG_OUT} \
{/TESTBED/u_Convolution/clk} \
{/TESTBED/u_Convolution/clk_gate_IN1} \
{/TESTBED/u_Convolution/clk_gate_OUT} \
{/TESTBED/u_Convolution/clk_gate_W} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/out_count\[4:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/rst_n} \
{/TESTBED/u_Convolution/weight_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/ConvState} \
{/TESTBED/u_Convolution/EN_IN1} \
{/TESTBED/u_Convolution/In_IFM_1\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_1_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_2\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_2_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_3\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_3_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_4\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_4_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_5\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_5_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_6\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_6_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_7\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_7_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_8\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_8_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_9\[7:0\]} \
{/TESTBED/u_Convolution/In_IFM_9_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_1\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_1_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_2\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_2_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_3\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_3_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_4\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_4_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_5\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_5_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_6\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_6_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_7\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_7_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_8\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_8_buf\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_9\[7:0\]} \
{/TESTBED/u_Convolution/In_Weight_9_buf\[7:0\]} \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/Out_OFM_reg\[20:0\]} \
{/TESTBED/u_Convolution/WhetherCG_IN1} \
{/TESTBED/u_Convolution/WhetherCG_OUT} \
{/TESTBED/u_Convolution/clk} \
{/TESTBED/u_Convolution/clk_gate_IN1} \
{/TESTBED/u_Convolution/clk_gate_OUT} \
{/TESTBED/u_Convolution/clk_gate_W} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/out_count\[4:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/rst_n} \
{/TESTBED/u_Convolution/weight_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 7
wvExit
