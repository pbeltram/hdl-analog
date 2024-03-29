###############################################################################
## Copyright (C) 2017-2023 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

# c5soc carrier qsys
set system_type c5soc

# system clock

add_instance sys_clk clock_source
set_instance_parameter_value sys_clk {clockFrequency} {50000000.0}
set_instance_parameter_value sys_clk {clockFrequencyKnown} {1}
set_instance_parameter_value sys_clk {resetSynchronousEdges} {NONE}
add_interface sys_clk clock sink
add_interface sys_rst reset sink
set_interface_property sys_clk EXPORT_OF sys_clk.clk_in
set_interface_property sys_rst EXPORT_OF sys_clk.clk_in_reset

# hps

add_instance sys_hps altera_hps
set_instance_parameter_value sys_hps {MPU_EVENTS_Enable} {0}
set_instance_parameter_value sys_hps {F2SDRAM_Type} {AXI-3 AXI-3 AXI-3}
set_instance_parameter_value sys_hps {F2SDRAM_Width} {64 64 64}
set_instance_parameter_value sys_hps {F2SINTERRUPT_Enable} {1}
set_instance_parameter_value sys_hps {EMAC0_PinMuxing} {Unused}
set_instance_parameter_value sys_hps {EMAC0_Mode} {N/A}
set_instance_parameter_value sys_hps {EMAC1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {EMAC1_Mode} {RGMII}
set_instance_parameter_value sys_hps {QSPI_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {QSPI_Mode} {1 SS}
set_instance_parameter_value sys_hps {SDIO_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {SDIO_Mode} {4-bit Data}
set_instance_parameter_value sys_hps {USB0_PinMuxing} {Unused}
set_instance_parameter_value sys_hps {USB0_Mode} {N/A}
set_instance_parameter_value sys_hps {USB1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {USB1_Mode} {SDR}
set_instance_parameter_value sys_hps {SPIM0_PinMuxing} {Unused}
set_instance_parameter_value sys_hps {SPIM0_Mode} {N/A}
set_instance_parameter_value sys_hps {SPIM1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {SPIM1_Mode} {Single Slave Select}
set_instance_parameter_value sys_hps {UART0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value sys_hps {UART0_Mode} {No Flow Control}
set_instance_parameter_value sys_hps {UART1_PinMuxing} {Unused}
set_instance_parameter_value sys_hps {UART1_Mode} {N/A}
set_instance_parameter_value sys_hps {I2C0_PinMuxing} {FPGA}
set_instance_parameter_value sys_hps {I2C0_Mode} {Full}
set_instance_parameter_value sys_hps {desired_cfg_clk_mhz} {80.0}
set_instance_parameter_value sys_hps {S2FCLK_USER0CLK_Enable} {1}
set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_Enable} {0}
set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_FREQ} {100.0}
set_instance_parameter_value sys_hps {S2FCLK_USER2CLK_FREQ} {100.0}
set_instance_parameter_value sys_hps {HPS_PROTOCOL} {DDR3}
set_instance_parameter_value sys_hps {MEM_CLK_FREQ} {400.0}
set_instance_parameter_value sys_hps {REF_CLK_FREQ} {25.0}
set_instance_parameter_value sys_hps {MEM_VOLTAGE} {1.5V DDR3}
set_instance_parameter_value sys_hps {MEM_CLK_FREQ_MAX} {800.0}
set_instance_parameter_value sys_hps {MEM_DQ_WIDTH} {32}
set_instance_parameter_value sys_hps {MEM_ROW_ADDR_WIDTH} {15}
set_instance_parameter_value sys_hps {MEM_COL_ADDR_WIDTH} {10}
set_instance_parameter_value sys_hps {MEM_BANKADDR_WIDTH} {3}
set_instance_parameter_value sys_hps {MEM_TCL} {11}
set_instance_parameter_value sys_hps {MEM_DRV_STR} {RZQ/7}
set_instance_parameter_value sys_hps {MEM_RTT_NOM} {RZQ/4}
set_instance_parameter_value sys_hps {MEM_WTCL} {8}
set_instance_parameter_value sys_hps {MEM_RTT_WR} {RZQ/4}
set_instance_parameter_value sys_hps {TIMING_TIS} {180}
set_instance_parameter_value sys_hps {TIMING_TIH} {140}
set_instance_parameter_value sys_hps {TIMING_TDS} {30}
set_instance_parameter_value sys_hps {TIMING_TDH} {65}
set_instance_parameter_value sys_hps {TIMING_TDQSQ} {125}
set_instance_parameter_value sys_hps {TIMING_TQH} {0.38}
set_instance_parameter_value sys_hps {TIMING_TDQSCK} {255}
set_instance_parameter_value sys_hps {TIMING_TDQSS} {0.25}
set_instance_parameter_value sys_hps {TIMING_TQSH} {0.4}
set_instance_parameter_value sys_hps {TIMING_TDSH} {0.2}
set_instance_parameter_value sys_hps {TIMING_TDSS} {0.2}
set_instance_parameter_value sys_hps {MEM_TINIT_US} {500}
set_instance_parameter_value sys_hps {MEM_TMRD_CK} {4}
set_instance_parameter_value sys_hps {MEM_TRAS_NS} {35.0}
set_instance_parameter_value sys_hps {MEM_TRCD_NS} {13.75}
set_instance_parameter_value sys_hps {MEM_TRP_NS} {13.75}
set_instance_parameter_value sys_hps {MEM_TREFI_US} {7.8}
set_instance_parameter_value sys_hps {MEM_TRFC_NS} {260.0}
set_instance_parameter_value sys_hps {MEM_TWR_NS} {15.0}
set_instance_parameter_value sys_hps {MEM_TWTR} {4}
set_instance_parameter_value sys_hps {MEM_TFAW_NS} {30.0}
set_instance_parameter_value sys_hps {MEM_TRRD_NS} {7.5}
set_instance_parameter_value sys_hps {MEM_TRTP_NS} {7.5}
set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_CK_DELAY} {0.03}
set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_DQS_DELAY} {0.02}
set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {0.09}
set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.16}
set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_WITHIN_DQS} {0.01}
set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.08}
set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.0}
set_instance_parameter_value sys_hps {TIMING_BOARD_AC_SKEW} {0.03}
set_instance_parameter_value sys_hps {TIMING_BOARD_AC_TO_CK_SKEW} {0.0}
add_interface sys_hps_memory conduit end
set_interface_property sys_hps_memory EXPORT_OF sys_hps.memory
add_interface sys_hps_hps_io conduit end
set_interface_property sys_hps_hps_io EXPORT_OF sys_hps.hps_io
add_interface sys_hps_h2f_reset reset source
set_interface_property sys_hps_h2f_reset EXPORT_OF sys_hps.h2f_reset
add_connection sys_clk.clk sys_hps.f2h_sdram0_clock
add_connection sys_clk.clk sys_hps.h2f_axi_clock
add_connection sys_clk.clk sys_hps.f2h_axi_clock
add_connection sys_clk.clk sys_hps.h2f_lw_axi_clock
add_interface sys_hps_i2c0 conduit end
set_interface_property sys_hps_i2c0 EXPORT_OF sys_hps.i2c0
add_interface sys_hps_i2c0_clk clock source
set_interface_property sys_hps_i2c0_clk EXPORT_OF sys_hps.i2c0_clk
add_interface sys_hps_i2c0_scl_in clock sink
set_interface_property sys_hps_i2c0_scl_in EXPORT_OF sys_hps.i2c0_scl_in

# cpu/hps handling

proc ad_cpu_interrupt {m_irq m_port} {

  add_connection sys_hps.f2h_irq0 ${m_port}
  set_connection_parameter_value sys_hps.f2h_irq0/${m_port} irqNumber ${m_irq}
}

proc ad_cpu_interconnect {m_base m_port} {

  add_connection sys_hps.h2f_lw_axi_master ${m_port}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/${m_port} baseAddress ${m_base}
}

proc ad_dma_interconnect {m_port m_id} {

  if {${m_id} == 0} {
    add_connection ${m_port} sys_hps.f2h_sdram0_data
    set_connection_parameter_value ${m_port}/sys_hps.f2h_sdram0_data baseAddress {0x0000}
    return
  }
  
  if {${m_id} == 1} {
    add_connection ${m_port} sys_hps.f2h_sdram1_data
    set_connection_parameter_value ${m_port}/sys_hps.f2h_sdram1_data baseAddress {0x0000}
    return
  }

  add_connection ${m_port} sys_hps.f2h_sdram2_data
  set_connection_parameter_value ${m_port}/sys_hps.f2h_sdram2_data baseAddress {0x0000}
}

# common dma interfaces

add_instance sys_dma_clk clock_source
add_connection sys_hps.h2f_user0_clock sys_dma_clk.clk_in
add_connection sys_clk.clk_reset sys_dma_clk.clk_in_reset
add_connection sys_dma_clk.clk sys_hps.f2h_sdram1_clock
add_connection sys_dma_clk.clk sys_hps.f2h_sdram2_clock

# internal memory

add_instance sys_int_mem altera_avalon_onchip_memory2
set_instance_parameter_value sys_int_mem {dualPort} {0}
set_instance_parameter_value sys_int_mem {dataWidth} {64}
set_instance_parameter_value sys_int_mem {memorySize} {65536.0}
set_instance_parameter_value sys_int_mem {initMemContent} {0}
add_connection sys_clk.clk sys_int_mem.clk1
add_connection sys_clk.clk_reset sys_int_mem.reset1
add_connection sys_hps.h2f_axi_master sys_int_mem.s1
set_connection_parameter_value sys_hps.h2f_axi_master/sys_int_mem.s1 baseAddress {0x0000}

# display (vga-out)

add_instance vga_out axi_hdmi_tx 
set_instance_parameter_value vga_out {CR_CB_N} {0}
set_instance_parameter_value vga_out {INTERFACE} {VGA_INTERFACE}
set_instance_parameter_value vga_out {ID} {0}
add_interface vga_out_vga_if conduit end
set_interface_property vga_out_vga_if EXPORT_OF vga_out.vga_if
add_connection sys_clk.clk           vga_out.s_axi_clock
add_connection sys_clk.clk_reset     vga_out.s_axi_reset

# display (pixel-clk-pll)

add_instance pixel_clk_pll altera_pll
set_instance_parameter_value pixel_clk_pll {gui_device_speed_grade} {2}
set_instance_parameter_value pixel_clk_pll {gui_reference_clock_frequency} {50.0}
set_instance_parameter_value pixel_clk_pll {gui_use_locked} {0}
set_instance_parameter_value pixel_clk_pll {gui_number_of_clocks} {2}
set_instance_parameter_value pixel_clk_pll {gui_output_clock_frequency0} {65.00}
set_instance_parameter_value pixel_clk_pll {gui_output_clock_frequency1} {100.0}
set_instance_parameter_value pixel_clk_pll {gui_en_reconf} {1}
add_connection sys_clk.clk           pixel_clk_pll.refclk
add_connection sys_clk.clk_reset     pixel_clk_pll.reset
add_connection pixel_clk_pll.outclk1 sys_hps.f2h_sdram0_clock
add_connection pixel_clk_pll.outclk1 vga_out.vdma_clock
add_connection pixel_clk_pll.outclk0 vga_out.reference_clk


# display (pixel-clk-pll-reconfig)

add_instance pixel_clk_pll_reconfig altera_pll_reconfig
set_instance_parameter_value pixel_clk_pll_reconfig {ENABLE_BYTEENABLE} {0}
set_instance_parameter_value pixel_clk_pll_reconfig {ENABLE_MIF} {0}
add_connection pixel_clk_pll.reconfig_from_pll pixel_clk_pll_reconfig.reconfig_from_pll
set_connection_parameter_value pixel_clk_pll.reconfig_from_pll/pixel_clk_pll_reconfig.reconfig_from_pll endPortLSB {0}
set_connection_parameter_value pixel_clk_pll.reconfig_from_pll/pixel_clk_pll_reconfig.reconfig_from_pll startPortLSB {0}
set_connection_parameter_value pixel_clk_pll.reconfig_from_pll/pixel_clk_pll_reconfig.reconfig_from_pll width {0}
add_connection pixel_clk_pll.reconfig_to_pll pixel_clk_pll_reconfig.reconfig_to_pll
set_connection_parameter_value pixel_clk_pll.reconfig_to_pll/pixel_clk_pll_reconfig.reconfig_to_pll endPortLSB {0}
set_connection_parameter_value pixel_clk_pll.reconfig_to_pll/pixel_clk_pll_reconfig.reconfig_to_pll startPortLSB {0}
set_connection_parameter_value pixel_clk_pll.reconfig_to_pll/pixel_clk_pll_reconfig.reconfig_to_pll width {0}
add_connection sys_clk.clk           pixel_clk_pll_reconfig.mgmt_clk
add_connection sys_clk.clk_reset     pixel_clk_pll_reconfig.mgmt_reset

#display (video-dmac)

add_instance video_dmac axi_dmac
set_instance_parameter_value video_dmac {AUTO_ASYNC_CLK} {1}
set_instance_parameter_value video_dmac {AXI_SLICE_DEST} {0}
set_instance_parameter_value video_dmac {AXI_SLICE_SRC} {0}
set_instance_parameter_value video_dmac {CYCLIC} {1}
set_instance_parameter_value video_dmac {HAS_AXIS_TLAST} {1}
set_instance_parameter_value video_dmac {DMA_2D_TRANSFER} {1}
set_instance_parameter_value video_dmac {DMA_DATA_WIDTH_DEST} {64}
set_instance_parameter_value video_dmac {DMA_DATA_WIDTH_SRC} {64}
set_instance_parameter_value video_dmac {DMA_LENGTH_WIDTH} {24}
set_instance_parameter_value video_dmac {DMA_TYPE_DEST} {1}
set_instance_parameter_value video_dmac {DMA_TYPE_SRC} {0}
set_instance_parameter_value video_dmac {FIFO_SIZE} {8}
set_instance_parameter_value video_dmac {ID} {0}
set_instance_parameter_value video_dmac {SYNC_TRANSFER_START} {0}
add_connection video_dmac.m_axis vga_out.vdma_if axi4stream
add_connection pixel_clk_pll.outclk1 video_dmac.m_src_axi_clock 
add_connection pixel_clk_pll.outclk1 video_dmac.if_m_axis_aclk  
add_connection sys_clk.clk           video_dmac.s_axi_clock
add_connection sys_clk.clk_reset     video_dmac.m_src_axi_reset
add_connection sys_clk.clk_reset     video_dmac.s_axi_reset

# id

add_instance sys_id altera_avalon_sysid_qsys
set_instance_parameter_value sys_id {id} {-1395322110}
add_connection sys_clk.clk sys_id.clk
add_connection sys_clk.clk_reset sys_id.reset

# gpio-bd

add_instance sys_gpio_bd altera_avalon_pio
set_instance_parameter_value sys_gpio_bd {direction} {InOut}
set_instance_parameter_value sys_gpio_bd {generateIRQ} {1}
set_instance_parameter_value sys_gpio_bd {width} {32}
add_connection sys_clk.clk sys_gpio_bd.clk
add_connection sys_clk.clk_reset sys_gpio_bd.reset
add_interface sys_gpio_bd conduit end
set_interface_property sys_gpio_bd EXPORT_OF sys_gpio_bd.external_connection

# gpio-in

add_instance sys_gpio_in altera_avalon_pio
set_instance_parameter_value sys_gpio_in {direction} {Input}
set_instance_parameter_value sys_gpio_in {generateIRQ} {1}
set_instance_parameter_value sys_gpio_in {width} {32}
add_connection sys_clk.clk_reset sys_gpio_in.reset
add_connection sys_clk.clk sys_gpio_in.clk
add_interface sys_gpio_in conduit end
set_interface_property sys_gpio_in EXPORT_OF sys_gpio_in.external_connection

# gpio-out

add_instance sys_gpio_out altera_avalon_pio
set_instance_parameter_value sys_gpio_out {direction} {Output}
set_instance_parameter_value sys_gpio_out {generateIRQ} {0}
set_instance_parameter_value sys_gpio_out {width} {32}
add_connection sys_clk.clk_reset sys_gpio_out.reset
add_connection sys_clk.clk sys_gpio_out.clk
add_interface sys_gpio_out conduit end
set_interface_property sys_gpio_out EXPORT_OF sys_gpio_out.external_connection

# spi

add_instance sys_spi altera_avalon_spi
set_instance_parameter_value sys_spi {clockPhase} {0}
set_instance_parameter_value sys_spi {clockPolarity} {1}
set_instance_parameter_value sys_spi {dataWidth} {8}
set_instance_parameter_value sys_spi {masterSPI} {1}
set_instance_parameter_value sys_spi {numberOfSlaves} {1}
set_instance_parameter_value sys_spi {targetClockRate} {50000000.0}
add_connection sys_clk.clk sys_spi.clk
add_connection sys_clk.clk_reset sys_spi.reset
add_interface sys_spi conduit end
set_interface_property sys_spi EXPORT_OF sys_spi.external

# system id

add_instance axi_sysid_0 axi_sysid
add_instance rom_sys_0 sysid_rom
add_connection axi_sysid_0.if_rom_addr rom_sys_0.if_rom_addr
add_connection rom_sys_0.if_rom_data axi_sysid_0.if_sys_rom_data
add_connection sys_clk.clk rom_sys_0.if_clk
add_connection sys_clk.clk axi_sysid_0.s_axi_clock
add_connection sys_clk.clk_reset axi_sysid_0.s_axi_reset
add_interface pr_rom_data_nc conduit end
set_interface_property pr_rom_data_nc EXPORT_OF axi_sysid_0.if_pr_rom_data

# interrupts

ad_cpu_interrupt 0 sys_gpio_bd.irq
ad_cpu_interrupt 1 sys_spi.irq
ad_cpu_interrupt 4 video_dmac.interrupt_sender

# cpu interconnects

ad_cpu_interconnect 0x00108000 sys_spi.spi_control_port
ad_cpu_interconnect 0x00010000 sys_id.control_slave
ad_cpu_interconnect 0x00010080 sys_gpio_bd.s1
ad_cpu_interconnect 0x00010100 sys_gpio_in.s1
ad_cpu_interconnect 0x00109000 sys_gpio_out.s1
ad_cpu_interconnect 0x00018000 axi_sysid_0.s_axi
ad_cpu_interconnect 0x00110800 video_dmac.s_axi
ad_cpu_interconnect 0x00130000 vga_out.s_axi
ad_cpu_interconnect 0x00118900 pixel_clk_pll_reconfig.mgmt_avalon_slave

# mem interconnects

ad_dma_interconnect video_dmac.m_src_axi 0


