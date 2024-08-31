wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dic/dic107/DICFP/serial/01_RTL/FP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ASYNC_DFFHx1_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/U_final"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/U_final/stage_1_1\[3:0\]} \
{/TESTBED/U_final/stage_1_2\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/U_final/In_IFM0A} \
{/TESTBED/U_final/In_IFM0B} \
{/TESTBED/U_final/In_IFM0C} \
{/TESTBED/U_final/In_IFM0D} \
{/TESTBED/U_final/In_IFM0E} \
{/TESTBED/U_final/In_IFM0F} \
{/TESTBED/U_final/In_IFM1A} \
{/TESTBED/U_final/In_IFM1B} \
{/TESTBED/U_final/In_IFM1C} \
{/TESTBED/U_final/In_IFM1D} \
{/TESTBED/U_final/In_IFM1E} \
{/TESTBED/U_final/In_IFM1F} \
{/TESTBED/U_final/In_IFM00} \
{/TESTBED/U_final/In_IFM01} \
{/TESTBED/U_final/In_IFM02} \
{/TESTBED/U_final/In_IFM03} \
{/TESTBED/U_final/In_IFM04} \
{/TESTBED/U_final/In_IFM05} \
{/TESTBED/U_final/In_IFM06} \
{/TESTBED/U_final/In_IFM07} \
{/TESTBED/U_final/In_IFM08} \
{/TESTBED/U_final/In_IFM09} \
{/TESTBED/U_final/In_IFM10} \
{/TESTBED/U_final/In_IFM11} \
{/TESTBED/U_final/In_IFM12} \
{/TESTBED/U_final/In_IFM13} \
{/TESTBED/U_final/In_IFM14} \
{/TESTBED/U_final/In_IFM15} \
{/TESTBED/U_final/In_IFM16} \
{/TESTBED/U_final/In_IFM17} \
{/TESTBED/U_final/In_IFM18} \
{/TESTBED/U_final/In_IFM19} \
{/TESTBED/U_final/Out_OFM\[12:0\]} \
{/TESTBED/U_final/Out_OFM_q\[12:0\]} \
{/TESTBED/U_final/clk} \
{/TESTBED/U_final/clk_gate_IN1} \
{/TESTBED/U_final/in_valid} \
{/TESTBED/U_final/out_valid} \
{/TESTBED/U_final/rst_n} \
{/TESTBED/U_final/state_counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/U_final/In_IFM0A} \
{/TESTBED/U_final/In_IFM0B} \
{/TESTBED/U_final/In_IFM0C} \
{/TESTBED/U_final/In_IFM0D} \
{/TESTBED/U_final/In_IFM0E} \
{/TESTBED/U_final/In_IFM0F} \
{/TESTBED/U_final/In_IFM1A} \
{/TESTBED/U_final/In_IFM1B} \
{/TESTBED/U_final/In_IFM1C} \
{/TESTBED/U_final/In_IFM1D} \
{/TESTBED/U_final/In_IFM1E} \
{/TESTBED/U_final/In_IFM1F} \
{/TESTBED/U_final/In_IFM00} \
{/TESTBED/U_final/In_IFM01} \
{/TESTBED/U_final/In_IFM02} \
{/TESTBED/U_final/In_IFM03} \
{/TESTBED/U_final/In_IFM04} \
{/TESTBED/U_final/In_IFM05} \
{/TESTBED/U_final/In_IFM06} \
{/TESTBED/U_final/In_IFM07} \
{/TESTBED/U_final/In_IFM08} \
{/TESTBED/U_final/In_IFM09} \
{/TESTBED/U_final/In_IFM10} \
{/TESTBED/U_final/In_IFM11} \
{/TESTBED/U_final/In_IFM12} \
{/TESTBED/U_final/In_IFM13} \
{/TESTBED/U_final/In_IFM14} \
{/TESTBED/U_final/In_IFM15} \
{/TESTBED/U_final/In_IFM16} \
{/TESTBED/U_final/In_IFM17} \
{/TESTBED/U_final/In_IFM18} \
{/TESTBED/U_final/In_IFM19} \
{/TESTBED/U_final/Out_OFM\[12:0\]} \
{/TESTBED/U_final/Out_OFM_q\[12:0\]} \
{/TESTBED/U_final/clk} \
{/TESTBED/U_final/clk_gate_IN1} \
{/TESTBED/U_final/in_valid} \
{/TESTBED/U_final/out_valid} \
{/TESTBED/U_final/rst_n} \
{/TESTBED/U_final/state_counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 24 25 26 27 28 29 30 31 32 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2651.804366 -snap {("G1" 22)}
wvExit
