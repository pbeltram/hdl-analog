// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2021 (c) Analog Devices, Inc. All rights reserved.
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
//      https://github.com/analogdevicesinc/hdl/blob/master/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************

`timescale 1ns/100ps

module phy_mac_link  #(
  parameter RATE_10_100 = 0
  ) (
  input             ref_clk,
  input             reset_n,
  input   [1:0]     phy_rxd,
  input             phy_crs_dv,
  input             phy_rx_er,
  output  [3:0]     mii_rxd,
  output            mii_rx_dv,
  output            mii_rx_er,
  output            mii_crs,
  output            mii_col,
  output            mii_rx_clk
  );

  wire    [3:0]      num_w;
  wire               falling_edge_rx_clk_w;
  wire               sopack_w;
  wire               eopack_w;

  reg     [3:0]      num_r = 4'b0;
  reg                mii_rx_clk_10_100_r = 1'b0;

  reg     [1:0]      sopack_r = 2'b0;
  reg     [1:0]      eopack_r = 2'b0;
  reg                data_valid = 1'b0;

  reg     [3:0]      mii_rxd_r0 = 4'b0;
  reg     [3:0]      mii_rxd_r1 = 4'b0;
  reg     [3:0]      mii_rxd_r2 = 4'b0;
  reg     [3:0]      mii_rxd_rr = 4'b0;

  reg                mii_rx_er_r0 = 1'b0;
  reg                mii_rx_er_r1 = 1'b0;
  reg                mii_rx_er_r2 = 1'b0;
  reg                mii_rx_er_rr = 1'b0;

  reg                mii_rx_dv_rr = 1'b0;

  reg                mii_crs_r0 = 1'b0;
  reg                mii_crs_r1 = 1'b0;
  reg                mii_crs_r2 = 1'b0;
  reg                mii_crs_r3 = 1'b0;
  reg                mii_crs_r4 = 1'b0;
  reg                mii_crs_r5 = 1'b0;
  reg                mii_crs_r6 = 1'b0;
  reg                mii_crs_r7 = 1'b0;

  reg                falling_edge_rx_clk_r0 = 1'b0;
  reg                falling_edge_rx_clk_r1 = 1'b0;

  localparam         DIV_M2 = RATE_10_100 ? 10 : 1;

  always @(posedge ref_clk) begin
    if (!reset_n) begin
      num_r <= 0;
      mii_rx_clk_10_100_r <= 1'b0;
    end else if (num_w == DIV_M2) begin
      num_r <= 0;
      mii_rx_clk_10_100_r <= ~mii_rx_clk_10_100_r;
      falling_edge_rx_clk_r1 <= falling_edge_rx_clk_r0;
      if (mii_rx_clk_10_100_r ==1'b0) begin
        falling_edge_rx_clk_r0 <= 1'b0;
      end else begin
        falling_edge_rx_clk_r0 <= 1'b1;
      end
    end else begin
      num_r <= num_w;
    end
  end

  always @(posedge ref_clk) begin
    if (!reset_n) begin
      mii_rxd_r0 <= 4'b0;
      mii_rxd_r1 <= 4'b0;
      mii_rxd_r2 <= 4'b0;
    end else begin
      mii_rxd_r0[3:2] <= phy_rxd;
      mii_rxd_r0[1:0] <= mii_rxd_r0[3:2];
      mii_rxd_r1 <= mii_rxd_r0;
      mii_rxd_r2 <= mii_rxd_r1;
    end
  end

  always @(posedge ref_clk) begin
    if (!reset_n) begin
      mii_rx_er_r0 <= 1'b0;
      mii_rx_er_r1 <= 1'b0;
      mii_rx_er_r2 <= 1'b0;
    end else begin
      mii_rx_er_r0 <= phy_rx_er;
      mii_rx_er_r1 <= mii_rx_er_r0;
      mii_rx_er_r2 <= mii_rx_er_r1;
    end
  end

  always @(posedge ref_clk) begin
    if (!reset_n) begin
      mii_crs_r0 <= 1'b0;
      mii_crs_r1 <= 1'b0;
      mii_crs_r2 <= 1'b0;
      mii_crs_r3 <= 1'b0;
      mii_crs_r4 <= 1'b0;
      mii_crs_r5 <= 1'b0;
      mii_crs_r6 <= 1'b0;
      mii_crs_r7 <= 1'b0;
    end else begin
      mii_crs_r0 <= phy_crs_dv;
      mii_crs_r1 <= mii_crs_r0;
      mii_crs_r2 <= mii_crs_r1;
      mii_crs_r3 <= mii_crs_r2;
      mii_crs_r4 <= mii_crs_r3;
      mii_crs_r5 <= mii_crs_r4;
      mii_crs_r6 <= mii_crs_r5;
      mii_crs_r7 <= mii_crs_r6;
    end
  end

  always @(posedge ref_clk) begin
    if (!reset_n) begin
      mii_rx_er_rr <= 1'b0;
      mii_rx_dv_rr <= 1'b0;
      mii_rxd_rr <= 4'b0;
    end else begin
      if (falling_edge_rx_clk_w == 1'b1) begin
        if (data_valid_w) begin
          mii_rx_er_rr <= mii_rx_er_r2;
          mii_rxd_rr <= mii_rxd_r2;
          mii_rx_dv_rr <= 1'b1;
        end else begin
          mii_rx_er_rr <= mii_rx_er_r2;
          mii_rxd_rr <= 4'b0;
          mii_rx_dv_rr <= 1'b0;
        end
      end
    end
  end

  always @(posedge ref_clk) begin
    if ((reset_n == 1'b0) || (eopack_w == 1'b1)) begin
      sopack_r[1:0] <= 2'b0;
    end else begin
      sopack_r[1] <= sopack_r[0];
      if ((mii_rxd_r1[3:2] == 2'b01) && (mii_crs_r1 == 1'b1) && (sopack_w == 1'b0)) begin
        sopack_r[0] <= 1'b1;
      end
    end
  end

  always @(posedge ref_clk) begin
    if ((reset_n == 1'b0) || (sopack_w == 1'b1)) begin
      eopack_r[1:0] <= 2'b0;
    end else begin
      eopack_r[1] <= eopack_r[0];
      if ((mii_crs_r1 == 1'b0) && (mii_crs_r2 == 1'b0) && (eopack_w == 1'b0)) begin
        eopack_r[0] <= 1'b1;
      end
    end
  end

  always @(posedge ref_clk) begin
    if (reset_n == 1'b0) begin
      data_valid <= 1'b0;
    end else if (sopack_w == 1'b1) begin
      data_valid <= 1'b1;
    end else if ((mii_crs_r1 == 1'b0) && (mii_crs_r2 == 1'b0)) begin
      data_valid <= 1'b0;
    end
  end

  assign sopack_w = sopack_r[0] & (!sopack_r[1]);
  assign eopack_w = eopack_r[0] & (!eopack_r[1]);
  assign data_valid_w = data_valid;
  assign mii_rxd = mii_rxd_rr;
  assign mii_rx_er = mii_rx_er_rr;
  assign mii_crs = mii_crs_r7;
  assign falling_edge_rx_clk_w = falling_edge_rx_clk_r1;
  assign mii_rx_dv = mii_rx_dv_rr;
  assign mii_rx_clk = mii_rx_clk_10_100_r;
  assign num_w = num_r + 1;

endmodule
