
# constraints (pzsdr1.b)
# ad9361

set_property  -dict {PACKAGE_PIN  K17  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_clk_in_p]       ; ## IO_L12P_T1_MRCC_35           U1,K17,IO_L12_MRCC_35_DATA_CLK_P
set_property  -dict {PACKAGE_PIN  K18  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_clk_in_n]       ; ## IO_L12N_T1_MRCC_35           U1,K18,IO_L12_MRCC_35_DATA_CLK_N
set_property  -dict {PACKAGE_PIN  M19  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_frame_in_p]     ; ## IO_L7P_T1_AD2P_35            U1,M19,IO_L07_35_RX_FRAME_P
set_property  -dict {PACKAGE_PIN  M20  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_frame_in_n]     ; ## IO_L7N_T1_AD2N_35            U1,M20,IO_L07_35_RX_FRAME_N
set_property  -dict {PACKAGE_PIN  C20  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[0]]   ; ## IO_L1P_T0_AD0P_35            U1,C20,IO_L01_35_RX_D0_P
set_property  -dict {PACKAGE_PIN  B20  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[0]]   ; ## IO_L1N_T0_AD0N_35            U1,B20,IO_L01_35_RX_D0_N
set_property  -dict {PACKAGE_PIN  B19  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[1]]   ; ## IO_L2P_T0_AD8P_35            U1,B19,IO_L02_35_RX_D1_P
set_property  -dict {PACKAGE_PIN  A20  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[1]]   ; ## IO_L2N_T0_AD8N_35            U1,A20,IO_L02_35_RX_D1_N
set_property  -dict {PACKAGE_PIN  E17  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[2]]   ; ## IO_L3P_T0_DQS_AD1P_35        U1,E17,IO_L03_35_RX_D2_P
set_property  -dict {PACKAGE_PIN  D18  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[2]]   ; ## IO_L3N_T0_DQS_AD1N_35        U1,D18,IO_L03_35_RX_D2_N
set_property  -dict {PACKAGE_PIN  D19  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[3]]   ; ## IO_L4P_T0_35                 U1,D19,IO_L04_35_RX_D3_P
set_property  -dict {PACKAGE_PIN  D20  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[3]]   ; ## IO_L4N_T0_35                 U1,D20,IO_L04_35_RX_D3_N
set_property  -dict {PACKAGE_PIN  E18  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[4]]   ; ## IO_L5P_T0_AD9P_35            U1,E18,IO_L05_35_RX_D4_P
set_property  -dict {PACKAGE_PIN  E19  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[4]]   ; ## IO_L5N_T0_AD9N_35            U1,E19,IO_L05_35_RX_D4_N
set_property  -dict {PACKAGE_PIN  F16  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_p[5]]   ; ## IO_L6P_T0_35                 U1,F16,IO_L06_35_RX_D5_P
set_property  -dict {PACKAGE_PIN  F17  IOSTANDARD LVDS_25   DIFF_TERM TRUE} [get_ports rx_data_in_n[5]]   ; ## IO_L6N_T0_VREF_35            U1,F17,IO_L06_35_RX_D5_N
set_property  -dict {PACKAGE_PIN  M17  IOSTANDARD LVDS_25}  [get_ports tx_clk_out_p]                      ; ## IO_L8P_T1_AD10P_35           U1,M17,IO_L08_35_FB_CLK_P
set_property  -dict {PACKAGE_PIN  M18  IOSTANDARD LVDS_25}  [get_ports tx_clk_out_n]                      ; ## IO_L8N_T1_AD10N_35           U1,M18,IO_L08_35_FB_CLK_N
set_property  -dict {PACKAGE_PIN  L19  IOSTANDARD LVDS_25}  [get_ports tx_frame_out_p]                    ; ## IO_L9P_T1_DQS_AD3P_35        U1,L19,IO_L09_35_TX_FRAME_P
set_property  -dict {PACKAGE_PIN  L20  IOSTANDARD LVDS_25}  [get_ports tx_frame_out_n]                    ; ## IO_L9N_T1_DQS_AD3N_35        U1,L20,IO_L09_35_TX_FRAME_N
set_property  -dict {PACKAGE_PIN  H16  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[0]]                  ; ## IO_L13P_T2_MRCC_35           U1,H16,IO_L13_35_TX_D0_P
set_property  -dict {PACKAGE_PIN  H17  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[0]]                  ; ## IO_L13N_T2_MRCC_35           U1,H17,IO_L13_35_TX_D0_N
set_property  -dict {PACKAGE_PIN  J18  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[1]]                  ; ## IO_L14P_T2_AD4P_SRCC_35      U1,J18,IO_L14_35_TX_D1_P
set_property  -dict {PACKAGE_PIN  H18  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[1]]                  ; ## IO_L14N_T2_AD4N_SRCC_35      U1,H18,IO_L14_35_TX_D1_N
set_property  -dict {PACKAGE_PIN  F19  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[2]]                  ; ## IO_L15P_T2_DQS_AD12P_35      U1,F19,IO_L15_35_TX_D2_P
set_property  -dict {PACKAGE_PIN  F20  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[2]]                  ; ## IO_L15N_T2_DQS_AD12N_35      U1,F20,IO_L15_35_TX_D2_N
set_property  -dict {PACKAGE_PIN  G17  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[3]]                  ; ## IO_L16P_T2_35                U1,G17,IO_L16_35_TX_D3_P
set_property  -dict {PACKAGE_PIN  G18  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[3]]                  ; ## IO_L16N_T2_35                U1,G18,IO_L16_35_TX_D3_N
set_property  -dict {PACKAGE_PIN  J20  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[4]]                  ; ## IO_L17P_T2_AD5P_35           U1,J20,IO_L17_35_TX_D4_P
set_property  -dict {PACKAGE_PIN  H20  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[4]]                  ; ## IO_L17N_T2_AD5N_35           U1,H20,IO_L17_35_TX_D4_N
set_property  -dict {PACKAGE_PIN  G19  IOSTANDARD LVDS_25}  [get_ports tx_data_out_p[5]]                  ; ## IO_L18P_T2_AD13P_35          U1,G19,IO_L18_35_TX_D5_P
set_property  -dict {PACKAGE_PIN  G20  IOSTANDARD LVDS_25}  [get_ports tx_data_out_n[5]]                  ; ## IO_L18N_T2_AD13N_35          U1,G20,IO_L18_35_TX_D5_N

# clocks

create_clock -name rx_clk       -period  8 [get_ports rx_clk_in_p]
create_clock -name ad9361_clk   -period  8 [get_pins i_system_wrapper/system_i/axi_ad9361/clk]


## constraints (ccbrk.c + ccbrk_lb.a)
## ad9361 clkout forward

set_property  -dict {PACKAGE_PIN  W16     IOSTANDARD  LVCMOS25} [get_ports  clkout_out]   ; ## (lb: none)         U1,W16,IO_L18_34_JX4_N,JX4,70,IO_L18_34_JX4_N,P7,32

## push-buttons- led- dip-switches- loopbacks- (ps7 gpio)

set_property  -dict {PACKAGE_PIN  Y14     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[0]]   ; ## (lb: none)         U1,Y14,IO_L08_34_JX4_N,JX4,38,PB_GPIO_1,P6,19
set_property  -dict {PACKAGE_PIN  T16     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[1]]   ; ## (lb: none)         U1,T16,IO_L09_34_JX4_P,JX4,41,PB_GPIO_2,P6,26
set_property  -dict {PACKAGE_PIN  U17     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[2]]   ; ## (lb: none)         U1,U17,IO_L09_34_JX4_N,JX4,43,PB_GPIO_3,P6,28
set_property  -dict {PACKAGE_PIN  Y19     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[3]]   ; ## (lb: none)         U1,Y19,IO_L17_34_JX4_N,JX4,69,LED_GPIO_0,P7,16

## orphans- io- (ps7 gpio)

set_property  -dict {PACKAGE_PIN  V5      IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[4]]   ; ## (lb: none)         U1,V5,IO_L06_13_JX2_P,JX2,18,IO_L06_13_JX2_P
set_property  -dict {PACKAGE_PIN  V11     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[5]]   ; ## (lb: none)         U1,V11,IO_L21_13_JX2_P,JX2,67,IO_L21_13_JX2_P,P2,52
set_property  -dict {PACKAGE_PIN  V10     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[6]]   ; ## (lb: none)         U1,V10,IO_L21_13_JX2_N,JX2,69,IO_L21_13_JX2_N,P2,54
set_property  -dict {PACKAGE_PIN  V16     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[7]]   ; ## (lb: none)         U1,V16,IO_L18_34_JX4_P,JX4,68,IO_L18_34_JX4_P,P7,30

## ps7- fixed io- to- fpga regular io (ps7 gpio)

set_property  -dict {PACKAGE_PIN  V15     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[8]]   ; ## U1,V15,IO_L10_34_JX4_P,JX4,42,IO_L10_34_JX4_P,P6,25 (U1,E9,PS_MIO10_500_JX4,JX4,87,PS_MIO10_500_JX4,P6,23)
set_property  -dict {PACKAGE_PIN  Y18     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[9]]   ; ## U1,Y18,IO_L17_34_JX4_P,JX4,67,IO_L17_34_JX4_P,P6,9  (U1,B9,PS_MIO51_501_JX4,JX4,100,PS_MIO51_501_JX4,P6,11)
set_property  -dict {PACKAGE_PIN  Y17     IOSTANDARD  LVCMOS25} [get_ports  gpio_bd[10]]  ; ## U1,Y17,IO_L07_34_JX4_N,JX4,37,IO_L07_34_JX4_N,P6,20 (U1,C8,PS_MIO15_500_JX4,JX4,85,PS_MIO15_500_JX4,P6,21)

## ps7- fixed io- to- ps7- fixed io (reference only)
## U1,B14,PS_MIO47_501_JX4,JX4,94,PS_MIO47_501_JX4,P7,24 == U1,D16,PS_MIO46_501_JX4,JX4,92,PS_MIO46_501_JX4,P7,22

## ps7- fixed io- orphans (reference only)
## U1,E6,PS_MIO00_500_JX4,JX4,97,PS_MIO00_500_JX4,P5,21
## U1,E8,PS_MIO13_500_JX4,JX4,91,PS_MIO13_500_JX4,P5,9
## U1,C5,PS_MIO14_500_JX4,JX4,93,PS_MIO14_500_JX4,P5,11
## U1,D9,PS_MIO12_500_JX4,JX4,86,PS_MIO12_500_JX4,P7,10
## U1,C6,PS_MIO11_500_JX4,JX4,88,PS_MIO11_500_JX4,P7,12

## fpga- regular io

set_property  -dict {PACKAGE_PIN  U7      IOSTANDARD  LVCMOS25} [get_ports  gp_out[0]]    ; ## U1,U7,IO_L11_SRCC_13_JX2_P,JX2,35,IO_L11_SRCC_13_JX2_P,P2,28
set_property  -dict {PACKAGE_PIN  T9      IOSTANDARD  LVCMOS25} [get_ports  gp_in[0]]     ; ## U1,T9,IO_L12_MRCC_13_JX2_P,JX2,36,IO_L12_MRCC_13_JX2_P,P2,27
set_property  -dict {PACKAGE_PIN  V7      IOSTANDARD  LVCMOS25} [get_ports  gp_out[1]]    ; ## U1,V7,IO_L11_SRCC_13_JX2_N,JX2,37,IO_L11_SRCC_13_JX2_N,P2,30
set_property  -dict {PACKAGE_PIN  U10     IOSTANDARD  LVCMOS25} [get_ports  gp_in[1]]     ; ## U1,U10,IO_L12_MRCC_13_JX2_N,JX2,38,IO_L12_MRCC_13_JX2_N,P2,29
set_property  -dict {PACKAGE_PIN  Y7      IOSTANDARD  LVCMOS25} [get_ports  gp_out[2]]    ; ## U1,Y7,IO_L13_MRCC_13_JX2_P,JX2,41,IO_L13_MRCC_13_JX2_P,P2,32
set_property  -dict {PACKAGE_PIN  Y9      IOSTANDARD  LVCMOS25} [get_ports  gp_in[2]]     ; ## U1,Y9,IO_L14_SRCC_13_JX2_P,JX2,42,IO_L14_SRCC_13_JX2_P,P2,31
set_property  -dict {PACKAGE_PIN  Y6      IOSTANDARD  LVCMOS25} [get_ports  gp_out[3]]    ; ## U1,Y6,IO_L13_MRCC_13_JX2_N,JX2,43,IO_L13_MRCC_13_JX2_N,P2,34
set_property  -dict {PACKAGE_PIN  Y8      IOSTANDARD  LVCMOS25} [get_ports  gp_in[3]]     ; ## U1,Y8,IO_L14_SRCC_13_JX2_N,JX2,44,IO_L14_SRCC_13_JX2_N,P2,33
set_property  -dict {PACKAGE_PIN  V8      IOSTANDARD  LVCMOS25} [get_ports  gp_out[4]]    ; ## U1,V8,IO_L15_13_JX2_P,JX2,47,IO_L15_13_JX2_P,P2,38
set_property  -dict {PACKAGE_PIN  W10     IOSTANDARD  LVCMOS25} [get_ports  gp_in[4]]     ; ## U1,W10,IO_L16_13_JX2_P,JX2,48,IO_L16_13_JX2_P,P2,37
set_property  -dict {PACKAGE_PIN  W8      IOSTANDARD  LVCMOS25} [get_ports  gp_out[5]]    ; ## U1,W8,IO_L15_13_JX2_N,JX2,49,IO_L15_13_JX2_N,P2,40
set_property  -dict {PACKAGE_PIN  W9      IOSTANDARD  LVCMOS25} [get_ports  gp_in[5]]     ; ## U1,W9,IO_L16_13_JX2_N,JX2,50,IO_L16_13_JX2_N,P2,39
set_property  -dict {PACKAGE_PIN  U9      IOSTANDARD  LVCMOS25} [get_ports  gp_out[6]]    ; ## U1,U9,IO_L17_13_JX2_P,JX2,53,IO_L17_13_JX2_P,P2,42
set_property  -dict {PACKAGE_PIN  W11     IOSTANDARD  LVCMOS25} [get_ports  gp_in[6]]     ; ## U1,W11,IO_L18_13_JX2_P,JX2,54,IO_L18_13_JX2_P,P2,41
set_property  -dict {PACKAGE_PIN  U8      IOSTANDARD  LVCMOS25} [get_ports  gp_out[7]]    ; ## U1,U8,IO_L17_13_JX2_N,JX2,55,IO_L17_13_JX2_N,P2,44
set_property  -dict {PACKAGE_PIN  Y11     IOSTANDARD  LVCMOS25} [get_ports  gp_in[7]]     ; ## U1,Y11,IO_L18_13_JX2_N,JX2,56,IO_L18_13_JX2_N,P2,43
set_property  -dict {PACKAGE_PIN  T5      IOSTANDARD  LVCMOS25} [get_ports  gp_out[8]]    ; ## U1,T5,IO_L19_13_JX2_P,JX2,61,IO_L19_13_JX2_P,P2,46
set_property  -dict {PACKAGE_PIN  Y12     IOSTANDARD  LVCMOS25} [get_ports  gp_in[8]]     ; ## U1,Y12,IO_L20_13_JX2_P,JX2,62,IO_L20_13_JX2_P,P2,45
set_property  -dict {PACKAGE_PIN  U5      IOSTANDARD  LVCMOS25} [get_ports  gp_out[9]]    ; ## U1,U5,IO_L19_13_JX2_N,JX2,63,IO_L19_13_JX2_N,P2,48
set_property  -dict {PACKAGE_PIN  Y13     IOSTANDARD  LVCMOS25} [get_ports  gp_in[9]]     ; ## U1,Y13,IO_L20_13_JX2_N,JX2,64,IO_L20_13_JX2_N,P2,47
set_property  -dict {PACKAGE_PIN  W15     IOSTANDARD  LVCMOS25} [get_ports  gp_out[10]]   ; ## U1,W15,IO_L10_34_JX4_N,JX4,44,IO_L10_34_JX4_N,P6,27
set_property  -dict {PACKAGE_PIN  T19     IOSTANDARD  LVCMOS25} [get_ports  gp_in[10]]    ; ## U1,T19,IO_25_34_JX4,JX4,64,IO_25_34_JX4,P5,23
set_property  -dict {PACKAGE_PIN  T11     IOSTANDARD  LVCMOS25} [get_ports  gp_out[11]]   ; ## U1,T11,IO_L01_34_JX4_P,JX4,19,IO_L01_34_JX4_P,P6,2
set_property  -dict {PACKAGE_PIN  T12     IOSTANDARD  LVCMOS25} [get_ports  gp_in[11]]    ; ## U1,T12,IO_L02_34_JX4_P,JX4,20,IO_L02_34_JX4_P,P6,1
set_property  -dict {PACKAGE_PIN  T10     IOSTANDARD  LVCMOS25} [get_ports  gp_out[12]]   ; ## U1,T10,IO_L01_34_JX4_N,JX4,21,IO_L01_34_JX4_N,P6,4
set_property  -dict {PACKAGE_PIN  U12     IOSTANDARD  LVCMOS25} [get_ports  gp_in[12]]    ; ## U1,U12,IO_L02_34_JX4_N,JX4,22,IO_L02_34_JX4_N,P6,3
set_property  -dict {PACKAGE_PIN  U13     IOSTANDARD  LVCMOS25} [get_ports  gp_out[13]]   ; ## U1,U13,IO_L03_34_JX4_P,JX4,25,IO_L03_34_JX4_P,P6,6
set_property  -dict {PACKAGE_PIN  V12     IOSTANDARD  LVCMOS25} [get_ports  gp_in[13]]    ; ## U1,V12,IO_L04_34_JX4_P,JX4,26,IO_L04_34_JX4_P,P6,5
set_property  -dict {PACKAGE_PIN  V13     IOSTANDARD  LVCMOS25} [get_ports  gp_out[14]]   ; ## U1,V13,IO_L03_34_JX4_N,JX4,27,IO_L03_34_JX4_N,P6,8
set_property  -dict {PACKAGE_PIN  W13     IOSTANDARD  LVCMOS25} [get_ports  gp_in[14]]    ; ## U1,W13,IO_L04_34_JX4_N,JX4,28,IO_L04_34_JX4_N,P6,7
set_property  -dict {PACKAGE_PIN  T14     IOSTANDARD  LVCMOS25} [get_ports  gp_out[15]]   ; ## U1,T14,IO_L05_34_JX4_P,JX4,31,IO_L05_34_JX4_P,P6,14
set_property  -dict {PACKAGE_PIN  P14     IOSTANDARD  LVCMOS25} [get_ports  gp_in[15]]    ; ## U1,P14,IO_L06_34_JX4_P,JX4,32,IO_L06_34_JX4_P,P6,13
set_property  -dict {PACKAGE_PIN  T15     IOSTANDARD  LVCMOS25} [get_ports  gp_out[16]]   ; ## U1,T15,IO_L05_34_JX4_N,JX4,33,IO_L05_34_JX4_N,P6,16
set_property  -dict {PACKAGE_PIN  R14     IOSTANDARD  LVCMOS25} [get_ports  gp_in[16]]    ; ## U1,R14,IO_L06_34_JX4_N,JX4,34,IO_L06_34_JX4_N,P6,15
set_property  -dict {PACKAGE_PIN  Y16     IOSTANDARD  LVCMOS25} [get_ports  gp_out[17]]   ; ## U1,Y16,IO_L07_34_JX4_P,JX4,35,IO_L07_34_JX4_P,P6,18
set_property  -dict {PACKAGE_PIN  W14     IOSTANDARD  LVCMOS25} [get_ports  gp_in[17]]    ; ## U1,W14,IO_L08_34_JX4_P,JX4,36,IO_L08_34_JX4_P,P6,17
set_property  -dict {PACKAGE_PIN  U14     IOSTANDARD  LVCMOS25} [get_ports  gp_out[18]]   ; ## U1,U14,IO_L11_SRCC_34_JX4_P,JX4,45,IO_L11_SRCC_34_JX4_P,P6,30
set_property  -dict {PACKAGE_PIN  U18     IOSTANDARD  LVCMOS25} [get_ports  gp_in[18]]    ; ## U1,U18,IO_L12_MRCC_34_JX4_P,JX4,46,IO_L12_MRCC_34_JX4_P,P6,29
set_property  -dict {PACKAGE_PIN  U15     IOSTANDARD  LVCMOS25} [get_ports  gp_out[19]]   ; ## U1,U15,IO_L11_SRCC_34_JX4_N,JX4,47,IO_L11_SRCC_34_JX4_N,P6,32
set_property  -dict {PACKAGE_PIN  U19     IOSTANDARD  LVCMOS25} [get_ports  gp_in[19]]    ; ## U1,U19,IO_L12_MRCC_34_JX4_N,JX4,48,IO_L12_MRCC_34_JX4_N,P6,31
set_property  -dict {PACKAGE_PIN  N18     IOSTANDARD  LVCMOS25} [get_ports  gp_out[20]]   ; ## U1,N18,IO_L13_MRCC_34_JX4_P,JX4,51,IO_L13_MRCC_34_JX4_P,P7,2
set_property  -dict {PACKAGE_PIN  N20     IOSTANDARD  LVCMOS25} [get_ports  gp_in[20]]    ; ## U1,N20,IO_L14_SRCC_34_JX4_P,JX4,52,IO_L14_SRCC_34_JX4_P,P7,1
set_property  -dict {PACKAGE_PIN  P19     IOSTANDARD  LVCMOS25} [get_ports  gp_out[21]]   ; ## U1,P19,IO_L13_MRCC_34_JX4_N,JX4,53,IO_L13_MRCC_34_JX4_N,P7,4
set_property  -dict {PACKAGE_PIN  P20     IOSTANDARD  LVCMOS25} [get_ports  gp_in[21]]    ; ## U1,P20,IO_L14_SRCC_34_JX4_N,JX4,54,IO_L14_SRCC_34_JX4_N,P7,3
set_property  -dict {PACKAGE_PIN  T20     IOSTANDARD  LVCMOS25} [get_ports  gp_out[22]]   ; ## U1,T20,IO_L15_34_JX4_P,JX4,57,IO_L15_34_JX4_P,P7,6
set_property  -dict {PACKAGE_PIN  V20     IOSTANDARD  LVCMOS25} [get_ports  gp_in[22]]    ; ## U1,V20,IO_L16_34_JX4_P,JX4,58,IO_L16_34_JX4_P,P7,5
set_property  -dict {PACKAGE_PIN  U20     IOSTANDARD  LVCMOS25} [get_ports  gp_out[23]]   ; ## U1,U20,IO_L15_34_JX4_N,JX4,59,IO_L15_34_JX4_N,P7,8
set_property  -dict {PACKAGE_PIN  W20     IOSTANDARD  LVCMOS25} [get_ports  gp_in[23]]    ; ## U1,W20,IO_L16_34_JX4_N,JX4,60,IO_L16_34_JX4_N,P7,7
set_property  -dict {PACKAGE_PIN  R16     IOSTANDARD  LVCMOS25} [get_ports  gp_out[24]]   ; ## U1,R16,IO_L19_34_JX4_P,JX4,73,IO_L19_34_JX4_P,P7,18
set_property  -dict {PACKAGE_PIN  T17     IOSTANDARD  LVCMOS25} [get_ports  gp_in[24]]    ; ## U1,T17,IO_L20_34_JX4_P,JX4,74,IO_L20_34_JX4_P,P7,17
set_property  -dict {PACKAGE_PIN  R17     IOSTANDARD  LVCMOS25} [get_ports  gp_out[25]]   ; ## U1,R17,IO_L19_34_JX4_N,JX4,75,IO_L19_34_JX4_N,P7,20
set_property  -dict {PACKAGE_PIN  R18     IOSTANDARD  LVCMOS25} [get_ports  gp_in[25]]    ; ## U1,R18,IO_L20_34_JX4_N,JX4,76,IO_L20_34_JX4_N,P7,19
set_property  -dict {PACKAGE_PIN  V17     IOSTANDARD  LVCMOS25} [get_ports  gp_out[26]]   ; ## U1,V17,IO_L21_34_JX4_P,JX4,77,IO_L21_34_JX4_P,P7,26
set_property  -dict {PACKAGE_PIN  W18     IOSTANDARD  LVCMOS25} [get_ports  gp_in[26]]    ; ## U1,W18,IO_L22_34_JX4_P,JX4,78,IO_L22_34_JX4_P,P7,25
set_property  -dict {PACKAGE_PIN  V18     IOSTANDARD  LVCMOS25} [get_ports  gp_out[27]]   ; ## U1,V18,IO_L21_34_JX4_N,JX4,79,IO_L21_34_JX4_N,P7,28
set_property  -dict {PACKAGE_PIN  W19     IOSTANDARD  LVCMOS25} [get_ports  gp_in[27]]    ; ## U1,W19,IO_L22_34_JX4_N,JX4,80,IO_L22_34_JX4_N,P7,27

# constraints (pzsdr1.b)
# ad9361

set_property  -dict {PACKAGE_PIN  K19  IOSTANDARD LVCMOS25} [get_ports enable]                            ; ## IO_L10P_T1_AD11P_35          U1,L16,IO_L11_35_ENABLE
set_property  -dict {PACKAGE_PIN  L17  IOSTANDARD LVCMOS25} [get_ports txnrx]                             ; ## IO_L11N_T1_SRCC_35           U1,L17,IO_L11_35_TXNRX

set_property  -dict {PACKAGE_PIN  H15  IOSTANDARD LVCMOS25} [get_ports gpio_status[0]]                    ; ## IO_L19P_T3_35                U1,H15,IO_L19_35_CTRL_OUT0
set_property  -dict {PACKAGE_PIN  G15  IOSTANDARD LVCMOS25} [get_ports gpio_status[1]]                    ; ## IO_L19N_T3_VREF_35           U1,G15,IO_L19_35_CTRL_OUT1
set_property  -dict {PACKAGE_PIN  K14  IOSTANDARD LVCMOS25} [get_ports gpio_status[2]]                    ; ## IO_L20P_T3_AD6P_35           U1,K14,IO_L20_35_CTRL_OUT2
set_property  -dict {PACKAGE_PIN  J14  IOSTANDARD LVCMOS25} [get_ports gpio_status[3]]                    ; ## IO_L20N_T3_AD6N_35           U1,J14,IO_L20_35_CTRL_OUT3
set_property  -dict {PACKAGE_PIN  N15  IOSTANDARD LVCMOS25} [get_ports gpio_status[4]]                    ; ## IO_L21P_T3_DQS_AD14P_35      U1,N15,IO_L21_35_CTRL_OUT4
set_property  -dict {PACKAGE_PIN  N16  IOSTANDARD LVCMOS25} [get_ports gpio_status[5]]                    ; ## IO_L21N_T3_DQS_AD14N_35      U1,N16,IO_L21_35_CTRL_OUT5
set_property  -dict {PACKAGE_PIN  L14  IOSTANDARD LVCMOS25} [get_ports gpio_status[6]]                    ; ## IO_L22P_T3_AD7P_35           U1,L14,IO_L22_35_CTRL_OUT6
set_property  -dict {PACKAGE_PIN  L15  IOSTANDARD LVCMOS25} [get_ports gpio_status[7]]                    ; ## IO_L22N_T3_AD7N_35           U1,L15,IO_L22_35_CTRL_OUT7
set_property  -dict {PACKAGE_PIN  N17  IOSTANDARD LVCMOS25} [get_ports gpio_ctl[0]]                       ; ## IO_L23P_T3_34                U1,N17,IO_L23_34_CTRL_IN0
set_property  -dict {PACKAGE_PIN  P18  IOSTANDARD LVCMOS25} [get_ports gpio_ctl[1]]                       ; ## IO_L23N_T3_34                U1,P18,IO_L23_34_CTRL_IN1
set_property  -dict {PACKAGE_PIN  P15  IOSTANDARD LVCMOS25} [get_ports gpio_ctl[2]]                       ; ## IO_L24P_T3_34                U1,P15,IO_L24_34_CTRL_IN2
set_property  -dict {PACKAGE_PIN  P16  IOSTANDARD LVCMOS25} [get_ports gpio_ctl[3]]                       ; ## IO_L24N_T3_34                U1,P16,IO_L24_34_CTRL_IN3
set_property  -dict {PACKAGE_PIN  L16  IOSTANDARD LVCMOS25} [get_ports gpio_en_agc]                       ; ## IO_L11P_T1_SRCC_35           U1,K19,IO_L10_35_EN_AGC
set_property  -dict {PACKAGE_PIN  J19  IOSTANDARD LVCMOS25} [get_ports gpio_sync]                         ; ## IO_L10N_T1_AD11N_35          U1,J19,IO_L10_35_SYNC_IN
set_property  -dict {PACKAGE_PIN  G14  IOSTANDARD LVCMOS25} [get_ports gpio_resetb]                       ; ## IO_0_35                      U1,G14,IO_00_35_AD9364_RST
set_property  -dict {PACKAGE_PIN  R19  IOSTANDARD LVCMOS25} [get_ports gpio_clksel]                       ; ## IO_0_34                      U1,R19,IO_00_34_AD9364_CLKSEL

set_property  -dict {PACKAGE_PIN  M14  IOSTANDARD LVCMOS25  PULLTYPE PULLUP} [get_ports spi_csn]          ; ## IO_L23P_T3_35                U1,M14,IO_L23_35_SPI_ENB
set_property  -dict {PACKAGE_PIN  M15  IOSTANDARD LVCMOS25} [get_ports spi_clk]                           ; ## IO_L23N_T3_35                U1,M15,IO_L23_35_SPI_CLK
set_property  -dict {PACKAGE_PIN  K16  IOSTANDARD LVCMOS25} [get_ports spi_mosi]                          ; ## IO_L24P_T3_AD15P_35          U1,K16,IO_L24_35_SPI_DI
set_property  -dict {PACKAGE_PIN  J16  IOSTANDARD LVCMOS25} [get_ports spi_miso]                          ; ## IO_L24N_T3_AD15N_35          U1,J16,IO_L24_35_SPI_DO

set_property  -dict {PACKAGE_PIN  J15  IOSTANDARD LVCMOS25} [get_ports clkout_in]                         ; ## IO_25_35                     U1,J15,IO_25_35_AD9364_CLKOUT

# iic

set_property  -dict {PACKAGE_PIN  W6   IOSTANDARD LVCMOS25 PULLTYPE PULLUP} [get_ports iic_scl]           ; ## IO_L22N_T3_13                U1,W6,SCL,JX2,17,I2C_SCL
set_property  -dict {PACKAGE_PIN  V6   IOSTANDARD LVCMOS25 PULLTYPE PULLUP} [get_ports iic_sda]           ; ## IO_L22P_T3_13                U1,V6,SDA,JX2,19,I2C_SDA

##    reference-only
##    --------------
##    ad9361 (optional rf-card)
##    --------------------------
##    JX4,1,GPO0
##    JX4,2,GPO1
##    JX4,3,GPO2
##    JX4,4,GPO3
##    JX4,7,AUXADC
##    JX4,8,AUXDAC1
##    JX4,10,AUXDAC2
##    JX4,63,AD9364_CLK

##    fixed-io (ps7) (som only, others are carrier specific)
##    ------------------------------------------------------
##    U1,A7,PS_MIO01_500_QSPI0_SS_B
##    U1,A5,PS_MIO06_500_QSPI0_SCLK
##    U1,B8,PS_MIO02_500_QSPI0_IO0
##    U1,D6,PS_MIO03_500_QSPI0_IO1
##    U1,B7,PS_MIO04_500_QSPI0_IO2
##    U1,A6,PS_MIO05_500_QSPI0_IO3
##    U1,D5,PS_MIO08_500_ETH0_RESETN                (magnetics-RJ45- JX3,47,ETH_PHY_LED0)
##    U1,C11,PS_MIO53_501_ETH0_MDIO                 (magnetics-RJ45- JX3,48,ETH_PHY_LED1)
##    U1,C10,PS_MIO52_501_ETH0_MDC                  (magnetics-RJ45- JX3,51,ETH_MD1_P)
##    U1,B17,PS_MIO22_501_ETH0_RX_CLK               (magnetics-RJ45- JX3,53,ETH_MD1_N)
##    U1,D13,PS_MIO27_501_ETH0_RX_CTL               (magnetics-RJ45- JX3,52,ETH_MD2_P)
##    U1,D11,PS_MIO23_501_ETH0_RX_D0                (magnetics-RJ45- JX3,54,ETH_MD2_N)
##    U1,A16,PS_MIO24_501_ETH0_RX_D1                (magnetics-RJ45- JX3,57,ETH_MD3_P)
##    U1,F15,PS_MIO25_501_ETH0_RX_D2                (magnetics-RJ45- JX3,59,ETH_MD3_P)
##    U1,A15,PS_MIO26_501_ETH0_RX_D3                (magnetics-RJ45- JX3,58,ETH_MD4_P)
##    U1,A19,PS_MIO16_501_ETH0_TX_CLK               (magnetics-RJ45- JX3,60,ETH_MD4_P)
##    U1,F14,PS_MIO21_501_ETH0_TX_CTL
##    U1,E14,PS_MIO17_501_ETH0_TX_D0
##    U1,B18,PS_MIO18_501_ETH0_TX_D1
##    U1,D10,PS_MIO19_501_ETH0_TX_D2
##    U1,A17,PS_MIO20_501_ETH0_TX_D3
##    U1,B12,PS_MIO48_501_JX4,JX4,99,USB_UART_RXD
##    U1,C12,PS_MIO49_501_JX4,JX4,98,USB_UART_TXD
##    U1,D14,PS_MIO40_501_SD0_CLK                   (off-board- JX3,43,SDIO_CLKB1)
##    U1,C17,PS_MIO41_501_SD0_CMD                   (off-board- JX3,34,SDIO_CMDB1)
##    U1,E12,PS_MIO42_501_SD0_DATA0                 (off-board- JX3,37,SDIO_DAT0B1)
##    U1,A9,PS_MIO43_501_SD0_DATA1                  (off-board- JX3,36,SDIO_DAT1B1)
##    U1,F13,PS_MIO44_501_SD0_DATA2                 (off-board- JX3,39,SDIO_DAT2B1)
##    U1,B15,PS_MIO45_501_SD0_DATA3                 (off-board- JX3,38,SDIO_DAT3B1)
##    U1,B13,PS_MIO50_501_SD0_CD                    (off-board- JX3,41,JX3_SD1_CDN)
##    U1,D8,PS_MIO07_500_USB_RESET_B                (usb- JX3,63,USB_ID)
##    U1,B5,PS_MIO09_500_USB_CLK_PD                 (usb- JX3,67,USB_OTG_P)
##    U1,C13,PS_MIO29_501_USB0_DIR                  (usb- JX3,69,USB_OTG_N)
##    U1,C15,PS_MIO30_501_USB0_STP                  (usb- JX3,68,USB_VBUS_OTG)
##    U1,E16,PS_MIO31_501_USB0_NXT                  (usb- JX3,70,USB_OTG_CPEN)
##    U1,A11,PS_MIO36_501_USB0_CLK
##    U1,A14,PS_MIO32_501_USB0_D0
##    U1,D15,PS_MIO33_501_USB0_D1
##    U1,A12,PS_MIO34_501_USB0_D2
##    U1,F12,PS_MIO35_501_USB0_D3
##    U1,C16,PS_MIO28_501_USB0_D4
##    U1,A10,PS_MIO37_501_USB0_D5
##    U1,E13,PS_MIO38_501_USB0_D6
##    U1,C18,PS_MIO39_501_USB0_D7

##    ddr (fixed-io)
##    --------------
##    U1,C2,DDR3_DQS0_P
##    U1,B2,DDR3_DQS0_N
##    U1,G2,DDR3_DQS1_P
##    U1,F2,DDR3_DQS1_N
##    U1,R2,DDR3_DQS2_P
##    U1,T2,DDR3_DQS2_N
##    U1,W5,DDR3_DQS3_P
##    U1,W4,DDR3_DQS3_N
##    U1,C3,DDR3_DQ0
##    U1,B3,DDR3_DQ1
##    U1,A2,DDR3_DQ2
##    U1,A4,DDR3_DQ3
##    U1,D3,DDR3_DQ4
##    U1,D1,DDR3_DQ5
##    U1,C1,DDR3_DQ6
##    U1,E1,DDR3_DQ7
##    U1,E2,DDR3_DQ8
##    U1,E3,DDR3_DQ9
##    U1,G3,DDR3_DQ10
##    U1,H3,DDR3_DQ11
##    U1,J3,DDR3_DQ12
##    U1,H2,DDR3_DQ13
##    U1,H1,DDR3_DQ14
##    U1,J1,DDR3_DQ15
##    U1,P1,DDR3_DQ16
##    U1,P3,DDR3_DQ17
##    U1,R3,DDR3_DQ18
##    U1,R1,DDR3_DQ19
##    U1,T4,DDR3_DQ20
##    U1,U4,DDR3_DQ21
##    U1,U2,DDR3_DQ22
##    U1,U3,DDR3_DQ23
##    U1,V1,DDR3_DQ24
##    U1,Y3,DDR3_DQ25
##    U1,W1,DDR3_DQ26
##    U1,Y4,DDR3_DQ27
##    U1,Y2,DDR3_DQ28
##    U1,W3,DDR3_DQ29
##    U1,V2,DDR3_DQ30
##    U1,V3,DDR3_DQ31
##    U1,A1,DDR3_DM0
##    U1,F1,DDR3_DM1
##    U1,T1,DDR3_DM2
##    U1,Y1,DDR3_DM3
##    U1,N2,DDR3_A0
##    U1,K2,DDR3_A1
##    U1,M3,DDR3_A2
##    U1,K3,DDR3_A3
##    U1,M4,DDR3_A4
##    U1,L1,DDR3_A5
##    U1,L4,DDR3_A6
##    U1,K4,DDR3_A7
##    U1,K1,DDR3_A8
##    U1,J4,DDR3_A9
##    U1,F5,DDR3_A10
##    U1,G4,DDR3_A11
##    U1,E4,DDR3_A12
##    U1,D4,DDR3_A13
##    U1,F4,DDR3_A14
##    U1,L5,DDR3_BA0
##    U1,R4,DDR3_BA1
##    U1,J5,DDR3_BA2
##    U1,L2,DDR3_CK_P
##    U1,M2,DDR3_CK_N
##    U1,N3,DDR3_CKE
##    U1,B4,DDR3_RST#
##    U1,N1,DDR3_CS#
##    U1,M5,DDR3_WE#
##    U1,P4,DDR3_RAS#
##    U1,P5,DDR3_CAS#
##    U1,N5,DDR3_ODT

##    resets, clock and power controls
##    --------------------------------
##    U1,E7,UNNAMED_3_ICXC7Z20_I217_PSCLK50,33.33MEGHZ
##    U1,B10,PS-SRST#
##    U1,C7,PWR_GD_1.35V
##    JX2,10,PG_1P8V
##    JX2,11,PG_MODULE
##    JX1,5,PWR_ENABLE
##    JX1,6,CARRIER_RESET

##    JTAG
##    ----
##    U1,J6,JTAG_TMS,JX1,2,JTAG_TMS
##    U1,F9,JTAG_TCK,JX1,1,JTAG_TCK
##    U1,F6,JTAG_TDO,JX1,3,JTAG_TDO
##    U1,G6,JTAG_TDI,JX1,4,JTAG_TDI
##    U1,R11,FPGA_DONE,JX1,8,CFG_DONE
