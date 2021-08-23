// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:reg_bank:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_reg_bank_0_0 (
  prbs_clk,
  reg_rw,
  ipmb_en_1_0,
  id_4_2,
  payload_on_5,
  prbs_sel_8_6,
  aurora_pma_init_9,
  tx_polarity_13_10,
  gtp_reset_14,
  channel_up_top_15,
  c2c_slave_reset_top_16,
  channel_up_bot_17,
  c2c_slave_reset_bot_18,
  ha_7_0,
  ready_ipmb_zynq_9_8,
  los_10g_10,
  pim_alarm_11,
  link_stat_top_12,
  channel_up_top_13,
  link_stat_bot_14,
  channel_up_bot_15,
  hot_swap_handle_16,
  prbs_err_20_17,
  reg_ro
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME prbs_clk, FREQ_HZ 93750000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_axi_c2c_phy_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 prbs_clk CLK" *)
input wire prbs_clk;
input wire [19 : 0] reg_rw;
output wire [1 : 0] ipmb_en_1_0;
output wire [2 : 0] id_4_2;
output wire payload_on_5;
output wire [2 : 0] prbs_sel_8_6;
output wire aurora_pma_init_9;
output wire [3 : 0] tx_polarity_13_10;
output wire gtp_reset_14;
output wire channel_up_top_15;
output wire c2c_slave_reset_top_16;
output wire channel_up_bot_17;
output wire c2c_slave_reset_bot_18;
input wire [7 : 0] ha_7_0;
input wire [1 : 0] ready_ipmb_zynq_9_8;
input wire los_10g_10;
input wire pim_alarm_11;
input wire link_stat_top_12;
input wire channel_up_top_13;
input wire link_stat_bot_14;
input wire channel_up_bot_15;
input wire hot_swap_handle_16;
input wire [3 : 0] prbs_err_20_17;
output wire [24 : 0] reg_ro;

  reg_bank inst (
    .prbs_clk(prbs_clk),
    .reg_rw(reg_rw),
    .ipmb_en_1_0(ipmb_en_1_0),
    .id_4_2(id_4_2),
    .payload_on_5(payload_on_5),
    .prbs_sel_8_6(prbs_sel_8_6),
    .aurora_pma_init_9(aurora_pma_init_9),
    .tx_polarity_13_10(tx_polarity_13_10),
    .gtp_reset_14(gtp_reset_14),
    .channel_up_top_15(channel_up_top_15),
    .c2c_slave_reset_top_16(c2c_slave_reset_top_16),
    .channel_up_bot_17(channel_up_bot_17),
    .c2c_slave_reset_bot_18(c2c_slave_reset_bot_18),
    .ha_7_0(ha_7_0),
    .ready_ipmb_zynq_9_8(ready_ipmb_zynq_9_8),
    .los_10g_10(los_10g_10),
    .pim_alarm_11(pim_alarm_11),
    .link_stat_top_12(link_stat_top_12),
    .channel_up_top_13(channel_up_top_13),
    .link_stat_bot_14(link_stat_bot_14),
    .channel_up_bot_15(channel_up_bot_15),
    .hot_swap_handle_16(hot_swap_handle_16),
    .prbs_err_20_17(prbs_err_20_17),
    .reg_ro(reg_ro)
  );
endmodule
