wvResizeWindow -win $_nWave1 72 64 1848 1016
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dic/dic107/DICFP/serial/01_RTL/FP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ASYNC_DFFHx1_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/U_final"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/U_final/In_IFM0A} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/U_final/In_IFM0A} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ASYNC_DFFHx1_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/U_final"
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
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 72 64 1848 1016
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetCursor -win $_nWave1 2233.647703 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ASYNC_DFFHx1_ASAP7_75t_R"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/U_final"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/U_final"
wvSetPosition -win $_nWave1 {("G1" 69)}
wvSetPosition -win $_nWave1 {("G1" 69)}
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
{/TESTBED/U_final/Out_OFM_q\[12:0\]} \
{/TESTBED/U_final/clk} \
{/TESTBED/U_final/clk_gate_IN1} \
{/TESTBED/U_final/in_valid} \
{/TESTBED/U_final/Out_OFM\[12:0\]} \
{/TESTBED/U_final/W_1\[3:0\]} \
{/TESTBED/U_final/W_2\[3:0\]} \
{/TESTBED/U_final/W_3\[3:0\]} \
{/TESTBED/U_final/W_4\[3:0\]} \
{/TESTBED/U_final/W_5\[3:0\]} \
{/TESTBED/U_final/W_6\[3:0\]} \
{/TESTBED/U_final/W_7\[3:0\]} \
{/TESTBED/U_final/W_8\[3:0\]} \
{/TESTBED/U_final/W_9\[3:0\]} \
{/TESTBED/U_final/W_10\[3:0\]} \
{/TESTBED/U_final/W_11\[3:0\]} \
{/TESTBED/U_final/W_12\[3:0\]} \
{/TESTBED/U_final/W_13\[3:0\]} \
{/TESTBED/U_final/W_14\[3:0\]} \
{/TESTBED/U_final/W_15\[3:0\]} \
{/TESTBED/U_final/W_16\[3:0\]} \
{/TESTBED/U_final/W_17\[3:0\]} \
{/TESTBED/U_final/W_18\[3:0\]} \
{/TESTBED/U_final/W_19\[3:0\]} \
{/TESTBED/U_final/W_20\[3:0\]} \
{/TESTBED/U_final/W_21\[3:0\]} \
{/TESTBED/U_final/W_22\[3:0\]} \
{/TESTBED/U_final/W_23\[3:0\]} \
{/TESTBED/U_final/W_24\[3:0\]} \
{/TESTBED/U_final/W_25\[3:0\]} \
{/TESTBED/U_final/W_26\[3:0\]} \
{/TESTBED/U_final/W_27\[3:0\]} \
{/TESTBED/U_final/W_28\[3:0\]} \
{/TESTBED/U_final/W_29\[3:0\]} \
{/TESTBED/U_final/W_30\[3:0\]} \
{/TESTBED/U_final/W_31\[3:0\]} \
{/TESTBED/U_final/W_32\[3:0\]} \
{/TESTBED/U_final/out_valid} \
{/TESTBED/U_final/rst_n} \
{/TESTBED/U_final/state_counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 39 40 41 42 43 44 45 46 47 48 49 50 51 \
           52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 )} 
wvSetPosition -win $_nWave1 {("G1" 69)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetCursor -win $_nWave1 3365.353150 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 3418.648673 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
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
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 24 25 26 27 28 29 30 31 32 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSelectStuckSignals -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetCursor -win $_nWave1 2400.149819 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 2682.756344 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 32)}
wvSetPosition -win $_nWave1 {("G2" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/U_final/In_IFM0A} \
{/TESTBED/U_final/In_IFM0B} \
{/TESTBED/U_final/In_IFM0C} \
{/TESTBED/U_final/In_IFM0D} \
{/TESTBED/U_final/In_IFM0E} \
{/TESTBED/U_final/In_IFM0F} \
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
{/TESTBED/U_final/In_IFM1A} \
{/TESTBED/U_final/In_IFM1B} \
{/TESTBED/U_final/In_IFM1C} \
{/TESTBED/U_final/In_IFM1D} \
{/TESTBED/U_final/In_IFM1E} \
{/TESTBED/U_final/In_IFM1F} \
{/TESTBED/U_final/clk_gate_IN1} \
{/TESTBED/U_final/in_valid} \
{/TESTBED/U_final/Out_OFM\[12:0\]} \
{/TESTBED/U_final/out_valid} \
{/TESTBED/U_final/rst_n} \
{/TESTBED/U_final/state_counter\[1:0\]} \
{/TESTBED/U_final/Out_OFM_q\[12:0\]} \
{/TESTBED/U_final/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/U_final/stage_1_1\[3:0\]} \
{/TESTBED/U_final/stage_1_2\[3:0\]} \
{/TESTBED/U_final/stage_1_3\[3:0\]} \
{/TESTBED/U_final/stage_1_4\[3:0\]} \
{/TESTBED/U_final/stage_1_5\[3:0\]} \
{/TESTBED/U_final/stage_1_6\[3:0\]} \
{/TESTBED/U_final/stage_1_7\[3:0\]} \
{/TESTBED/U_final/stage_1_8\[3:0\]} \
{/TESTBED/U_final/stage_1_9\[3:0\]} \
{/TESTBED/U_final/stage_1_10\[3:0\]} \
{/TESTBED/U_final/stage_1_11\[3:0\]} \
{/TESTBED/U_final/stage_1_12\[3:0\]} \
{/TESTBED/U_final/stage_1_13\[3:0\]} \
{/TESTBED/U_final/stage_1_14\[3:0\]} \
{/TESTBED/U_final/stage_1_15\[3:0\]} \
{/TESTBED/U_final/stage_1_16\[3:0\]} \
{/TESTBED/U_final/stage_1_17\[3:0\]} \
{/TESTBED/U_final/stage_1_18\[3:0\]} \
{/TESTBED/U_final/stage_1_19\[3:0\]} \
{/TESTBED/U_final/stage_1_20\[3:0\]} \
{/TESTBED/U_final/stage_1_21\[3:0\]} \
{/TESTBED/U_final/stage_1_22\[3:0\]} \
{/TESTBED/U_final/stage_1_23\[3:0\]} \
{/TESTBED/U_final/stage_1_24\[3:0\]} \
{/TESTBED/U_final/stage_1_25\[3:0\]} \
{/TESTBED/U_final/stage_1_26\[3:0\]} \
{/TESTBED/U_final/stage_1_27\[3:0\]} \
{/TESTBED/U_final/stage_1_28\[3:0\]} \
{/TESTBED/U_final/stage_1_29\[3:0\]} \
{/TESTBED/U_final/stage_1_30\[3:0\]} \
{/TESTBED/U_final/stage_1_31\[3:0\]} \
{/TESTBED/U_final/stage_1_32\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 )} 
wvSetPosition -win $_nWave1 {("G2" 32)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetCursor -win $_nWave1 2419.631128 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/U_final/In_IFM0A} \
{/TESTBED/U_final/In_IFM0B} \
{/TESTBED/U_final/In_IFM0C} \
{/TESTBED/U_final/In_IFM0D} \
{/TESTBED/U_final/In_IFM0E} \
{/TESTBED/U_final/In_IFM0F} \
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
{/TESTBED/U_final/In_IFM1A} \
{/TESTBED/U_final/In_IFM1B} \
{/TESTBED/U_final/In_IFM1C} \
{/TESTBED/U_final/In_IFM1D} \
{/TESTBED/U_final/In_IFM1E} \
{/TESTBED/U_final/In_IFM1F} \
{/TESTBED/U_final/in_valid} \
{/TESTBED/U_final/Out_OFM\[12:0\]} \
{/TESTBED/U_final/out_valid} \
{/TESTBED/U_final/rst_n} \
{/TESTBED/U_final/state_counter\[1:0\]} \
{/TESTBED/U_final/Out_OFM_q\[12:0\]} \
{/TESTBED/U_final/clk} \
{/TESTBED/U_final/clk_gate_IN1} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2296.963520 -snap {("G1" 34)}
wvSelectGroup -win $_nWave1 {G1}
wvSetCursor -win $_nWave1 2239.915748 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2839.490386 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 2591.946705 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2609.478128 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 2755.339560 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2797.414973 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2804.853078 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 2902.327786 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2901.626529 -snap {("G1" 1)}
wvExit
