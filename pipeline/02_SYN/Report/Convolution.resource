 
****************************************
Report : resources
Design : Convolution
Version: T-2022.03
Date   : Fri Jan 19 16:03:09 2024
****************************************

Resource Sharing Report for design Convolution in file ../01_RTL/Convolution.v

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r503     | DW01_inc     | width=2    |               | add_59               |
| r1318    | DW01_add     | width=5    |               | add_89_6             |
| r1320    | DW01_add     | width=5    |               | add_89_4             |
| r1322    | DW01_add     | width=5    |               | add_89_2             |
| r1324    | DW01_add     | width=5    |               | add_89               |
| r1326    | DW01_add     | width=7    |               | add_2_root_add_0_root_add_89_7 |
| r1328    | DW01_add     | width=7    |               | add_1_root_add_0_root_add_89_7 |
| r1330    | DW01_add     | width=7    |               | add_0_root_add_0_root_add_89_7 |
| r2083    | DW01_add     | width=7    |               | add_6_root_add_0_root_add_88_7 |
| r2085    | DW01_add     | width=7    |               | add_5_root_add_0_root_add_88_7 |
| r2087    | DW01_add     | width=6    |               | add_3_root_add_0_root_add_88_7 |
| r2089    | DW01_add     | width=7    |               | add_2_root_add_0_root_add_88_7 |
| r2091    | DW01_add     | width=7    |               | add_4_root_add_0_root_add_88_7 |
| r2093    | DW01_add     | width=7    |               | add_1_root_add_0_root_add_88_7 |
| r2095    | DW01_add     | width=7    |               | add_0_root_add_0_root_add_88_7 |
| r2842    | DW01_add     | width=7    |               | add_5_root_add_0_root_add_87_6 |
| r2844    | DW01_add     | width=6    |               | add_4_root_add_0_root_add_87_6 |
| r2846    | DW01_add     | width=7    |               | add_2_root_add_0_root_add_87_6 |
| r2848    | DW01_add     | width=7    |               | add_3_root_add_0_root_add_87_6 |
| r2850    | DW01_add     | width=7    |               | add_1_root_add_0_root_add_87_6 |
| r2852    | DW01_add     | width=7    |               | add_0_root_add_0_root_add_87_6 |
| r3611    | DW01_add     | width=7    |               | add_5_root_add_0_root_add_86_8 |
| r3613    | DW01_add     | width=7    |               | add_3_root_add_0_root_add_86_8 |
| r3615    | DW01_add     | width=7    |               | add_2_root_add_0_root_add_86_8 |
| r3617    | DW01_add     | width=6    |               | add_7_root_add_0_root_add_86_8 |
| r3619    | DW01_add     | width=7    |               | add_1_root_add_0_root_add_86_8 |
| r3621    | DW01_add     | width=7    |               | add_6_root_add_0_root_add_86_8 |
| r3623    | DW01_add     | width=7    |               | add_4_root_add_0_root_add_86_8 |
| r3625    | DW01_add     | width=7    |               | add_0_root_add_0_root_add_86_8 |
| r4360    | DW01_add     | width=8    |               | add_93_2             |
| r4362    | DW01_add     | width=8    |               | add_93               |
| r4364    | DW01_add     | width=9    |               | add_93_3             |
| r4366    | DW_leftsh    | A_width=12 |               | sll_93               |
|          |              | SH_width=2 |               |                      |
| r4368    | DW01_add     | width=13   |               | add_93_4             |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_93_3           | DW01_add         | pparch (area,speed)                 |
| add_93_2           | DW01_add         | pparch (area,speed)                 |
| add_93             | DW01_add         | pparch (area,speed)                 |
| add_93_4           | DW01_add         | pparch (area,speed)                 |
| add_0_root_add_0_root_add_89_7        |                    |                |
|                    | DW01_add         | rpl                |                |
| add_0_root_add_0_root_add_87_6        |                    |                |
|                    | DW01_add         | rpl                |                |
===============================================================================

1
