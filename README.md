# bit-serial-CIM-Convolution-IP

### performance
- Process: asap7sc7p5t (7nm-FinFET virtual process)
- Clock period 	: 449 ps
- Area : 1112.279034 μ𝑚2
- Throughputs	: 0.709 GOPS
- Power efficiency	:3.5 TOPS/W
- Area efficiency 	:6.376 E-13 TOPS/𝑚𝑚2 

### System Structure
![截圖 2024-08-31 下午4 14 38](https://github.com/user-attachments/assets/8d32e447-0c55-4ced-baa1-2123f0b72a9a)


### Bit serial
- Bit serial 的設計具有小體積、小功耗、節省I/O等特性，是硬體資源受限的場景最好選擇。
- 每個 IP 都能獨立運算，因此具有非常好的拓展性，本專案實現了 4-core 架構。
- 此特化 IP 發想源自於最小的 RISC-V CPU [SERV](https://github.com/olofk/serv/tree/main)

### CIM (Computing in Memory)
- 為縮短神經模型於邊緣運算體之推演延遲，本專案結合 CIM 將 Kernel weight 內嵌於運算硬體。
- 可根據不同神經模型更改 RTL 重新燒錄於 FPGA
- 此設計能大幅降低帶寬需求

### Report
[report](bit_serial_conv_report.pdf)

 ### Note
 遵守 TSRI 保密協議，本專案不開源製程檔案，僅開源 RTL 設計。



