// ***************************************************************************
// ***************************************************************************
// Copyright (C) 2023 Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/main/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module system_top (

  output          fan_en_b,
  inout           iic_scl_io,
  inout           iic_sda_io,
  output          rpi_en,
  input   [ 1:0]  mipi_phy_if_0_data_n,
  input   [ 1:0]  mipi_phy_if_0_data_p,
  input           mipi_phy_if_0_clk_n,
  input           mipi_phy_if_0_clk_p
);

  wire    [94:0]  gpio_i;
  wire    [94:0]  gpio_o;
  wire            ap_rstn_frmbuf_0;
  wire            ap_rstn_frmbuf_1;
  wire            ap_rstn_frmbuf_2;
  wire            ap_rstn_frmbuf_3;
  wire            csirxss_rstn;

  assign gpio_i[94:0] = gpio_o[94:0];

  assign fan_en_b = gpio_o[0];
  assign csirxss_rstn = gpio_o[1];
  assign ap_rstn_frmbuf_0 = gpio_o[2];
  assign ap_rstn_frmbuf_1 = gpio_o[3];
  assign ap_rstn_frmbuf_2 = gpio_o[4];
  assign ap_rstn_frmbuf_3 = gpio_o[5];
  assign rpi_en = gpio_o[6];

  // instantiations
  system_wrapper i_system_wrapper (
    .IIC_0_scl_io (iic_scl_io),
    .IIC_0_sda_io (iic_sda_io),
    .ap_rstn_frmbuf_0 (ap_rstn_frmbuf_0),
    .ap_rstn_frmbuf_1 (ap_rstn_frmbuf_1),
    .ap_rstn_frmbuf_2 (ap_rstn_frmbuf_2),
    .ap_rstn_frmbuf_3 (ap_rstn_frmbuf_3),
    .csirxss_rstn (csirxss_rstn),
    .mipi_phy_if_0_data_n (mipi_phy_if_0_data_n),
    .mipi_phy_if_0_data_p (mipi_phy_if_0_data_p),
    .mipi_phy_if_0_clk_n (mipi_phy_if_0_clk_n),
    .mipi_phy_if_0_clk_p (mipi_phy_if_0_clk_p),

    .gpio_i (gpio_i),
    .gpio_o (gpio_o),
    .gpio_t (),

    .spi0_csn (),
    .spi0_miso (1'b0),
    .spi0_mosi (),
    .spi0_sclk ());

endmodule
