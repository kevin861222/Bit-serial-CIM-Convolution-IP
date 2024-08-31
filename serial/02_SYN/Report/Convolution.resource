 
****************************************
Report : resources
Design : Convolution
Version: T-2022.03
Date   : Thu Jan 18 22:52:07 2024
****************************************

Resource Sharing Report for design Convolution in file
        ./../01_RTL/Convolution.v

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r650     | DW01_add     | width=2    |               | add_135              |
| r652     | DW_leftsh    | A_width=7  |               | sll_141              |
|          |              | SH_width=2 |               |                      |
| r654     | DW_leftsh    | A_width=7  |               | sll_142              |
|          |              | SH_width=2 |               |                      |
| r656     | DW_leftsh    | A_width=7  |               | sll_143              |
|          |              | SH_width=2 |               |                      |
| r658     | DW_leftsh    | A_width=7  |               | sll_144              |
|          |              | SH_width=2 |               |                      |
| r660     | DW_leftsh    | A_width=7  |               | sll_145              |
|          |              | SH_width=2 |               |                      |
| r662     | DW_leftsh    | A_width=7  |               | sll_146              |
|          |              | SH_width=2 |               |                      |
| r664     | DW_leftsh    | A_width=7  |               | sll_147              |
|          |              | SH_width=2 |               |                      |
| r666     | DW_leftsh    | A_width=7  |               | sll_148              |
|          |              | SH_width=2 |               |                      |
| r668     | DW_leftsh    | A_width=7  |               | sll_149              |
|          |              | SH_width=2 |               |                      |
| r670     | DW_leftsh    | A_width=7  |               | sll_150              |
|          |              | SH_width=2 |               |                      |
| r672     | DW_leftsh    | A_width=7  |               | sll_151              |
|          |              | SH_width=2 |               |                      |
| r674     | DW_leftsh    | A_width=7  |               | sll_152              |
|          |              | SH_width=2 |               |                      |
| r676     | DW_leftsh    | A_width=7  |               | sll_153              |
|          |              | SH_width=2 |               |                      |
| r678     | DW_leftsh    | A_width=7  |               | sll_154              |
|          |              | SH_width=2 |               |                      |
| r680     | DW_leftsh    | A_width=7  |               | sll_155              |
|          |              | SH_width=2 |               |                      |
| r682     | DW_leftsh    | A_width=7  |               | sll_156              |
|          |              | SH_width=2 |               |                      |
| r684     | DW_leftsh    | A_width=7  |               | sll_157              |
|          |              | SH_width=2 |               |                      |
| r686     | DW_leftsh    | A_width=7  |               | sll_158              |
|          |              | SH_width=2 |               |                      |
| r688     | DW_leftsh    | A_width=7  |               | sll_159              |
|          |              | SH_width=2 |               |                      |
| r690     | DW_leftsh    | A_width=7  |               | sll_160              |
|          |              | SH_width=2 |               |                      |
| r692     | DW_leftsh    | A_width=7  |               | sll_161              |
|          |              | SH_width=2 |               |                      |
| r694     | DW_leftsh    | A_width=7  |               | sll_162              |
|          |              | SH_width=2 |               |                      |
| r696     | DW_leftsh    | A_width=7  |               | sll_163              |
|          |              | SH_width=2 |               |                      |
| r698     | DW_leftsh    | A_width=7  |               | sll_164              |
|          |              | SH_width=2 |               |                      |
| r700     | DW_leftsh    | A_width=7  |               | sll_165              |
|          |              | SH_width=2 |               |                      |
| r702     | DW_leftsh    | A_width=7  |               | sll_166              |
|          |              | SH_width=2 |               |                      |
| r704     | DW_leftsh    | A_width=7  |               | sll_167              |
|          |              | SH_width=2 |               |                      |
| r706     | DW_leftsh    | A_width=7  |               | sll_168              |
|          |              | SH_width=2 |               |                      |
| r708     | DW_leftsh    | A_width=7  |               | sll_169              |
|          |              | SH_width=2 |               |                      |
| r710     | DW_leftsh    | A_width=7  |               | sll_170              |
|          |              | SH_width=2 |               |                      |
| r712     | DW_leftsh    | A_width=7  |               | sll_171              |
|          |              | SH_width=2 |               |                      |
| r714     | DW_leftsh    | A_width=7  |               | sll_172              |
|          |              | SH_width=2 |               |                      |
| r1681    | DW01_add     | width=13   |               | add_31_root_add_0_root_add_175_32 |
| r1683    | DW01_add     | width=13   |               | add_4_root_add_0_root_add_175_32 |
| r1685    | DW01_add     | width=13   |               | add_5_root_add_0_root_add_175_32 |
| r1687    | DW01_add     | width=13   |               | add_7_root_add_0_root_add_175_32 |
| r1689    | DW01_add     | width=13   |               | add_8_root_add_0_root_add_175_32 |
| r1691    | DW01_add     | width=13   |               | add_11_root_add_0_root_add_175_32 |
| r1693    | DW01_add     | width=13   |               | add_12_root_add_0_root_add_175_32 |
| r1695    | DW01_add     | width=13   |               | add_14_root_add_0_root_add_175_32 |
| r1697    | DW01_add     | width=13   |               | add_15_root_add_0_root_add_175_32 |
| r1699    | DW01_add     | width=13   |               | add_19_root_add_0_root_add_175_32 |
| r1701    | DW01_add     | width=13   |               | add_20_root_add_0_root_add_175_32 |
| r1703    | DW01_add     | width=13   |               | add_22_root_add_0_root_add_175_32 |
| r1705    | DW01_add     | width=13   |               | add_23_root_add_0_root_add_175_32 |
| r1707    | DW01_add     | width=13   |               | add_26_root_add_0_root_add_175_32 |
| r1709    | DW01_add     | width=13   |               | add_27_root_add_0_root_add_175_32 |
| r1711    | DW01_add     | width=13   |               | add_29_root_add_0_root_add_175_32 |
| r1713    | DW01_add     | width=13   |               | add_30_root_add_0_root_add_175_32 |
| r1715    | DW01_add     | width=13   |               | add_3_root_add_0_root_add_175_32 |
| r1717    | DW01_add     | width=13   |               | add_6_root_add_0_root_add_175_32 |
| r1719    | DW01_add     | width=13   |               | add_10_root_add_0_root_add_175_32 |
| r1721    | DW01_add     | width=13   |               | add_13_root_add_0_root_add_175_32 |
| r1723    | DW01_add     | width=13   |               | add_18_root_add_0_root_add_175_32 |
| r1725    | DW01_add     | width=13   |               | add_21_root_add_0_root_add_175_32 |
| r1727    | DW01_add     | width=13   |               | add_25_root_add_0_root_add_175_32 |
| r1729    | DW01_add     | width=13   |               | add_28_root_add_0_root_add_175_32 |
| r1731    | DW01_add     | width=13   |               | add_2_root_add_0_root_add_175_32 |
| r1733    | DW01_add     | width=13   |               | add_9_root_add_0_root_add_175_32 |
| r1735    | DW01_add     | width=13   |               | add_17_root_add_0_root_add_175_32 |
| r1737    | DW01_add     | width=13   |               | add_24_root_add_0_root_add_175_32 |
| r1739    | DW01_add     | width=13   |               | add_1_root_add_0_root_add_175_32 |
| r1741    | DW01_add     | width=13   |               | add_16_root_add_0_root_add_175_32 |
| r1743    | DW01_add     | width=13   |               | add_0_root_add_0_root_add_175_32 |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_0_root_add_0_root_add_175_32      |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| add_1_root_add_0_root_add_175_32      |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| add_4_root_add_0_root_add_175_32      |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
===============================================================================

1
