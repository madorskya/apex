// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:xsdbm:3.0
// IP Revision: 0

(* X_CORE_INFO = "xsdbm_v3_0_0_xsdbm,Vivado 2019.1.3" *)
(* CHECK_LICENSE_TYPE = "bd_0482_xsdbm_0,xsdbm_v3_0_0_xsdbm,{}" *)
(* CORE_GENERATION_INFO = "bd_0482_xsdbm_0,xsdbm_v3_0_0_xsdbm,{x_ipProduct=Vivado 2019.1.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xsdbm,x_ipVersion=3.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FIFO_STYLE=SUBCORE,C_XDEVICEFAMILY=zynq,C_MAJOR_VERSION=14,C_MINOR_VERSION=1,C_BUILD_REVISION=0,C_CORE_MAJOR_VER=1,C_CORE_MINOR_VER=0,C_CORE_MINOR_ALPHA_VER=97,C_XSDB_NUM_SLAVES=0,C_XSDB_PERIOD_INT=10,C_XSDB_PERIOD_FRC=0,C_USE_BUFR=0,C_DCLK_HAS_RESET=0,C_EN_INT_SIM=1,C_CORE_TYPE=1,C_USER_SCAN_CHAIN=1,C_\
CLKFBOUT_MULT_F=10.000,C_DIVCLK_DIVIDE=3,C_CLKOUT0_DIVIDE_F=10.000,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=0,C_USE_EXT_BSCAN=1,C_USE_STARTUP_CLK=0,C_EN_BSCANID_VEC=0,C_TWO_PRIM_MODE=0,C_USER_SCAN_CHAIN1=1,C_BSCANID=76546592,C_BSCAN_MODE=0,C_BSCAN_MODE_WITH_CORE=0,C_NUM_BSCAN_MASTER_PORTS=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0482_xsdbm_0 (
  update,
  capture,
  reset,
  runtest,
  tck,
  tms,
  tdi,
  sel,
  shift,
  drck,
  tdo,
  bscanid_en,
  clk
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *)
input wire update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *)
input wire capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *)
input wire runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *)
input wire tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *)
input wire tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *)
input wire tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *)
input wire sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *)
input wire shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *)
input wire drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *)
output wire tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *)
input wire bscanid_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;

  xsdbm_v3_0_0_xsdbm #(
    .C_FIFO_STYLE("SUBCORE"),
    .C_XDEVICEFAMILY("zynq"),
    .C_MAJOR_VERSION(14),
    .C_MINOR_VERSION(1),
    .C_BUILD_REVISION(0),
    .C_CORE_MAJOR_VER(1),
    .C_CORE_MINOR_VER(0),
    .C_CORE_MINOR_ALPHA_VER(97),
    .C_XSDB_NUM_SLAVES(0),
    .C_XSDB_PERIOD_INT(10),
    .C_XSDB_PERIOD_FRC(0),
    .C_USE_BUFR(0),
    .C_DCLK_HAS_RESET(0),
    .C_EN_INT_SIM(1),
    .C_CORE_TYPE(1),
    .C_USER_SCAN_CHAIN(1),
    .C_CLKFBOUT_MULT_F(10.000),
    .C_DIVCLK_DIVIDE(3),
    .C_CLKOUT0_DIVIDE_F(10.000),
    .C_CLK_INPUT_FREQ_HZ(300000000),
    .C_ENABLE_CLK_DIVIDER(0),
    .C_USE_EXT_BSCAN(1),
    .C_USE_STARTUP_CLK(0),
    .C_EN_BSCANID_VEC(0),
    .C_TWO_PRIM_MODE(0),
    .C_USER_SCAN_CHAIN1(1),
    .C_BSCANID(76546592),
    .C_BSCAN_MODE(0),
    .C_BSCAN_MODE_WITH_CORE(0),
    .C_NUM_BSCAN_MASTER_PORTS(0)
  ) inst (
    .sl_iport0_o(),
    .sl_iport1_o(),
    .sl_iport2_o(),
    .sl_iport3_o(),
    .sl_iport4_o(),
    .sl_iport5_o(),
    .sl_iport6_o(),
    .sl_iport7_o(),
    .sl_iport8_o(),
    .sl_iport9_o(),
    .sl_iport10_o(),
    .sl_iport11_o(),
    .sl_iport12_o(),
    .sl_iport13_o(),
    .sl_iport14_o(),
    .sl_iport15_o(),
    .sl_iport16_o(),
    .sl_iport17_o(),
    .sl_iport18_o(),
    .sl_iport19_o(),
    .sl_iport20_o(),
    .sl_iport21_o(),
    .sl_iport22_o(),
    .sl_iport23_o(),
    .sl_iport24_o(),
    .sl_iport25_o(),
    .sl_iport26_o(),
    .sl_iport27_o(),
    .sl_iport28_o(),
    .sl_iport29_o(),
    .sl_iport30_o(),
    .sl_iport31_o(),
    .sl_iport32_o(),
    .sl_iport33_o(),
    .sl_iport34_o(),
    .sl_iport35_o(),
    .sl_iport36_o(),
    .sl_iport37_o(),
    .sl_iport38_o(),
    .sl_iport39_o(),
    .sl_iport40_o(),
    .sl_iport41_o(),
    .sl_iport42_o(),
    .sl_iport43_o(),
    .sl_iport44_o(),
    .sl_iport45_o(),
    .sl_iport46_o(),
    .sl_iport47_o(),
    .sl_iport48_o(),
    .sl_iport49_o(),
    .sl_iport50_o(),
    .sl_iport51_o(),
    .sl_iport52_o(),
    .sl_iport53_o(),
    .sl_iport54_o(),
    .sl_iport55_o(),
    .sl_iport56_o(),
    .sl_iport57_o(),
    .sl_iport58_o(),
    .sl_iport59_o(),
    .sl_iport60_o(),
    .sl_iport61_o(),
    .sl_iport62_o(),
    .sl_iport63_o(),
    .sl_iport64_o(),
    .sl_iport65_o(),
    .sl_iport66_o(),
    .sl_iport67_o(),
    .sl_iport68_o(),
    .sl_iport69_o(),
    .sl_iport70_o(),
    .sl_iport71_o(),
    .sl_iport72_o(),
    .sl_iport73_o(),
    .sl_iport74_o(),
    .sl_iport75_o(),
    .sl_iport76_o(),
    .sl_iport77_o(),
    .sl_iport78_o(),
    .sl_iport79_o(),
    .sl_iport80_o(),
    .sl_iport81_o(),
    .sl_iport82_o(),
    .sl_iport83_o(),
    .sl_iport84_o(),
    .sl_iport85_o(),
    .sl_iport86_o(),
    .sl_iport87_o(),
    .sl_iport88_o(),
    .sl_iport89_o(),
    .sl_iport90_o(),
    .sl_iport91_o(),
    .sl_iport92_o(),
    .sl_iport93_o(),
    .sl_iport94_o(),
    .sl_iport95_o(),
    .sl_iport96_o(),
    .sl_iport97_o(),
    .sl_iport98_o(),
    .sl_iport99_o(),
    .sl_iport100_o(),
    .sl_iport101_o(),
    .sl_iport102_o(),
    .sl_iport103_o(),
    .sl_iport104_o(),
    .sl_iport105_o(),
    .sl_iport106_o(),
    .sl_iport107_o(),
    .sl_iport108_o(),
    .sl_iport109_o(),
    .sl_iport110_o(),
    .sl_iport111_o(),
    .sl_iport112_o(),
    .sl_iport113_o(),
    .sl_iport114_o(),
    .sl_iport115_o(),
    .sl_iport116_o(),
    .sl_iport117_o(),
    .sl_iport118_o(),
    .sl_iport119_o(),
    .sl_iport120_o(),
    .sl_iport121_o(),
    .sl_iport122_o(),
    .sl_iport123_o(),
    .sl_iport124_o(),
    .sl_iport125_o(),
    .sl_iport126_o(),
    .sl_iport127_o(),
    .sl_iport128_o(),
    .sl_iport129_o(),
    .sl_iport130_o(),
    .sl_iport131_o(),
    .sl_iport132_o(),
    .sl_iport133_o(),
    .sl_iport134_o(),
    .sl_iport135_o(),
    .sl_iport136_o(),
    .sl_iport137_o(),
    .sl_iport138_o(),
    .sl_iport139_o(),
    .sl_iport140_o(),
    .sl_iport141_o(),
    .sl_iport142_o(),
    .sl_iport143_o(),
    .sl_iport144_o(),
    .sl_iport145_o(),
    .sl_iport146_o(),
    .sl_iport147_o(),
    .sl_iport148_o(),
    .sl_iport149_o(),
    .sl_iport150_o(),
    .sl_iport151_o(),
    .sl_iport152_o(),
    .sl_iport153_o(),
    .sl_iport154_o(),
    .sl_iport155_o(),
    .sl_iport156_o(),
    .sl_iport157_o(),
    .sl_iport158_o(),
    .sl_iport159_o(),
    .sl_iport160_o(),
    .sl_iport161_o(),
    .sl_iport162_o(),
    .sl_iport163_o(),
    .sl_iport164_o(),
    .sl_iport165_o(),
    .sl_iport166_o(),
    .sl_iport167_o(),
    .sl_iport168_o(),
    .sl_iport169_o(),
    .sl_iport170_o(),
    .sl_iport171_o(),
    .sl_iport172_o(),
    .sl_iport173_o(),
    .sl_iport174_o(),
    .sl_iport175_o(),
    .sl_iport176_o(),
    .sl_iport177_o(),
    .sl_iport178_o(),
    .sl_iport179_o(),
    .sl_iport180_o(),
    .sl_iport181_o(),
    .sl_iport182_o(),
    .sl_iport183_o(),
    .sl_iport184_o(),
    .sl_iport185_o(),
    .sl_iport186_o(),
    .sl_iport187_o(),
    .sl_iport188_o(),
    .sl_iport189_o(),
    .sl_iport190_o(),
    .sl_iport191_o(),
    .sl_iport192_o(),
    .sl_iport193_o(),
    .sl_iport194_o(),
    .sl_iport195_o(),
    .sl_iport196_o(),
    .sl_iport197_o(),
    .sl_iport198_o(),
    .sl_iport199_o(),
    .sl_iport200_o(),
    .sl_iport201_o(),
    .sl_iport202_o(),
    .sl_iport203_o(),
    .sl_iport204_o(),
    .sl_iport205_o(),
    .sl_iport206_o(),
    .sl_iport207_o(),
    .sl_iport208_o(),
    .sl_iport209_o(),
    .sl_iport210_o(),
    .sl_iport211_o(),
    .sl_iport212_o(),
    .sl_iport213_o(),
    .sl_iport214_o(),
    .sl_iport215_o(),
    .sl_iport216_o(),
    .sl_iport217_o(),
    .sl_iport218_o(),
    .sl_iport219_o(),
    .sl_iport220_o(),
    .sl_iport221_o(),
    .sl_iport222_o(),
    .sl_iport223_o(),
    .sl_iport224_o(),
    .sl_iport225_o(),
    .sl_iport226_o(),
    .sl_iport227_o(),
    .sl_iport228_o(),
    .sl_iport229_o(),
    .sl_iport230_o(),
    .sl_iport231_o(),
    .sl_iport232_o(),
    .sl_iport233_o(),
    .sl_iport234_o(),
    .sl_iport235_o(),
    .sl_iport236_o(),
    .sl_iport237_o(),
    .sl_iport238_o(),
    .sl_iport239_o(),
    .sl_iport240_o(),
    .sl_iport241_o(),
    .sl_iport242_o(),
    .sl_iport243_o(),
    .sl_iport244_o(),
    .sl_iport245_o(),
    .sl_iport246_o(),
    .sl_iport247_o(),
    .sl_iport248_o(),
    .sl_iport249_o(),
    .sl_iport250_o(),
    .sl_iport251_o(),
    .sl_iport252_o(),
    .sl_iport253_o(),
    .sl_iport254_o(),
    .sl_iport255_o(),
    .sl_oport0_i(1'B0),
    .sl_oport1_i(1'B0),
    .sl_oport2_i(1'B0),
    .sl_oport3_i(1'B0),
    .sl_oport4_i(1'B0),
    .sl_oport5_i(1'B0),
    .sl_oport6_i(1'B0),
    .sl_oport7_i(1'B0),
    .sl_oport8_i(1'B0),
    .sl_oport9_i(1'B0),
    .sl_oport10_i(1'B0),
    .sl_oport11_i(1'B0),
    .sl_oport12_i(1'B0),
    .sl_oport13_i(1'B0),
    .sl_oport14_i(1'B0),
    .sl_oport15_i(1'B0),
    .sl_oport16_i(1'B0),
    .sl_oport17_i(1'B0),
    .sl_oport18_i(1'B0),
    .sl_oport19_i(1'B0),
    .sl_oport20_i(1'B0),
    .sl_oport21_i(1'B0),
    .sl_oport22_i(1'B0),
    .sl_oport23_i(1'B0),
    .sl_oport24_i(1'B0),
    .sl_oport25_i(1'B0),
    .sl_oport26_i(1'B0),
    .sl_oport27_i(1'B0),
    .sl_oport28_i(1'B0),
    .sl_oport29_i(1'B0),
    .sl_oport30_i(1'B0),
    .sl_oport31_i(1'B0),
    .sl_oport32_i(1'B0),
    .sl_oport33_i(1'B0),
    .sl_oport34_i(1'B0),
    .sl_oport35_i(1'B0),
    .sl_oport36_i(1'B0),
    .sl_oport37_i(1'B0),
    .sl_oport38_i(1'B0),
    .sl_oport39_i(1'B0),
    .sl_oport40_i(1'B0),
    .sl_oport41_i(1'B0),
    .sl_oport42_i(1'B0),
    .sl_oport43_i(1'B0),
    .sl_oport44_i(1'B0),
    .sl_oport45_i(1'B0),
    .sl_oport46_i(1'B0),
    .sl_oport47_i(1'B0),
    .sl_oport48_i(1'B0),
    .sl_oport49_i(1'B0),
    .sl_oport50_i(1'B0),
    .sl_oport51_i(1'B0),
    .sl_oport52_i(1'B0),
    .sl_oport53_i(1'B0),
    .sl_oport54_i(1'B0),
    .sl_oport55_i(1'B0),
    .sl_oport56_i(1'B0),
    .sl_oport57_i(1'B0),
    .sl_oport58_i(1'B0),
    .sl_oport59_i(1'B0),
    .sl_oport60_i(1'B0),
    .sl_oport61_i(1'B0),
    .sl_oport62_i(1'B0),
    .sl_oport63_i(1'B0),
    .sl_oport64_i(1'B0),
    .sl_oport65_i(1'B0),
    .sl_oport66_i(1'B0),
    .sl_oport67_i(1'B0),
    .sl_oport68_i(1'B0),
    .sl_oport69_i(1'B0),
    .sl_oport70_i(1'B0),
    .sl_oport71_i(1'B0),
    .sl_oport72_i(1'B0),
    .sl_oport73_i(1'B0),
    .sl_oport74_i(1'B0),
    .sl_oport75_i(1'B0),
    .sl_oport76_i(1'B0),
    .sl_oport77_i(1'B0),
    .sl_oport78_i(1'B0),
    .sl_oport79_i(1'B0),
    .sl_oport80_i(1'B0),
    .sl_oport81_i(1'B0),
    .sl_oport82_i(1'B0),
    .sl_oport83_i(1'B0),
    .sl_oport84_i(1'B0),
    .sl_oport85_i(1'B0),
    .sl_oport86_i(1'B0),
    .sl_oport87_i(1'B0),
    .sl_oport88_i(1'B0),
    .sl_oport89_i(1'B0),
    .sl_oport90_i(1'B0),
    .sl_oport91_i(1'B0),
    .sl_oport92_i(1'B0),
    .sl_oport93_i(1'B0),
    .sl_oport94_i(1'B0),
    .sl_oport95_i(1'B0),
    .sl_oport96_i(1'B0),
    .sl_oport97_i(1'B0),
    .sl_oport98_i(1'B0),
    .sl_oport99_i(1'B0),
    .sl_oport100_i(1'B0),
    .sl_oport101_i(1'B0),
    .sl_oport102_i(1'B0),
    .sl_oport103_i(1'B0),
    .sl_oport104_i(1'B0),
    .sl_oport105_i(1'B0),
    .sl_oport106_i(1'B0),
    .sl_oport107_i(1'B0),
    .sl_oport108_i(1'B0),
    .sl_oport109_i(1'B0),
    .sl_oport110_i(1'B0),
    .sl_oport111_i(1'B0),
    .sl_oport112_i(1'B0),
    .sl_oport113_i(1'B0),
    .sl_oport114_i(1'B0),
    .sl_oport115_i(1'B0),
    .sl_oport116_i(1'B0),
    .sl_oport117_i(1'B0),
    .sl_oport118_i(1'B0),
    .sl_oport119_i(1'B0),
    .sl_oport120_i(1'B0),
    .sl_oport121_i(1'B0),
    .sl_oport122_i(1'B0),
    .sl_oport123_i(1'B0),
    .sl_oport124_i(1'B0),
    .sl_oport125_i(1'B0),
    .sl_oport126_i(1'B0),
    .sl_oport127_i(1'B0),
    .sl_oport128_i(1'B0),
    .sl_oport129_i(1'B0),
    .sl_oport130_i(1'B0),
    .sl_oport131_i(1'B0),
    .sl_oport132_i(1'B0),
    .sl_oport133_i(1'B0),
    .sl_oport134_i(1'B0),
    .sl_oport135_i(1'B0),
    .sl_oport136_i(1'B0),
    .sl_oport137_i(1'B0),
    .sl_oport138_i(1'B0),
    .sl_oport139_i(1'B0),
    .sl_oport140_i(1'B0),
    .sl_oport141_i(1'B0),
    .sl_oport142_i(1'B0),
    .sl_oport143_i(1'B0),
    .sl_oport144_i(1'B0),
    .sl_oport145_i(1'B0),
    .sl_oport146_i(1'B0),
    .sl_oport147_i(1'B0),
    .sl_oport148_i(1'B0),
    .sl_oport149_i(1'B0),
    .sl_oport150_i(1'B0),
    .sl_oport151_i(1'B0),
    .sl_oport152_i(1'B0),
    .sl_oport153_i(1'B0),
    .sl_oport154_i(1'B0),
    .sl_oport155_i(1'B0),
    .sl_oport156_i(1'B0),
    .sl_oport157_i(1'B0),
    .sl_oport158_i(1'B0),
    .sl_oport159_i(1'B0),
    .sl_oport160_i(1'B0),
    .sl_oport161_i(1'B0),
    .sl_oport162_i(1'B0),
    .sl_oport163_i(1'B0),
    .sl_oport164_i(1'B0),
    .sl_oport165_i(1'B0),
    .sl_oport166_i(1'B0),
    .sl_oport167_i(1'B0),
    .sl_oport168_i(1'B0),
    .sl_oport169_i(1'B0),
    .sl_oport170_i(1'B0),
    .sl_oport171_i(1'B0),
    .sl_oport172_i(1'B0),
    .sl_oport173_i(1'B0),
    .sl_oport174_i(1'B0),
    .sl_oport175_i(1'B0),
    .sl_oport176_i(1'B0),
    .sl_oport177_i(1'B0),
    .sl_oport178_i(1'B0),
    .sl_oport179_i(1'B0),
    .sl_oport180_i(1'B0),
    .sl_oport181_i(1'B0),
    .sl_oport182_i(1'B0),
    .sl_oport183_i(1'B0),
    .sl_oport184_i(1'B0),
    .sl_oport185_i(1'B0),
    .sl_oport186_i(1'B0),
    .sl_oport187_i(1'B0),
    .sl_oport188_i(1'B0),
    .sl_oport189_i(1'B0),
    .sl_oport190_i(1'B0),
    .sl_oport191_i(1'B0),
    .sl_oport192_i(1'B0),
    .sl_oport193_i(1'B0),
    .sl_oport194_i(1'B0),
    .sl_oport195_i(1'B0),
    .sl_oport196_i(1'B0),
    .sl_oport197_i(1'B0),
    .sl_oport198_i(1'B0),
    .sl_oport199_i(1'B0),
    .sl_oport200_i(1'B0),
    .sl_oport201_i(1'B0),
    .sl_oport202_i(1'B0),
    .sl_oport203_i(1'B0),
    .sl_oport204_i(1'B0),
    .sl_oport205_i(1'B0),
    .sl_oport206_i(1'B0),
    .sl_oport207_i(1'B0),
    .sl_oport208_i(1'B0),
    .sl_oport209_i(1'B0),
    .sl_oport210_i(1'B0),
    .sl_oport211_i(1'B0),
    .sl_oport212_i(1'B0),
    .sl_oport213_i(1'B0),
    .sl_oport214_i(1'B0),
    .sl_oport215_i(1'B0),
    .sl_oport216_i(1'B0),
    .sl_oport217_i(1'B0),
    .sl_oport218_i(1'B0),
    .sl_oport219_i(1'B0),
    .sl_oport220_i(1'B0),
    .sl_oport221_i(1'B0),
    .sl_oport222_i(1'B0),
    .sl_oport223_i(1'B0),
    .sl_oport224_i(1'B0),
    .sl_oport225_i(1'B0),
    .sl_oport226_i(1'B0),
    .sl_oport227_i(1'B0),
    .sl_oport228_i(1'B0),
    .sl_oport229_i(1'B0),
    .sl_oport230_i(1'B0),
    .sl_oport231_i(1'B0),
    .sl_oport232_i(1'B0),
    .sl_oport233_i(1'B0),
    .sl_oport234_i(1'B0),
    .sl_oport235_i(1'B0),
    .sl_oport236_i(1'B0),
    .sl_oport237_i(1'B0),
    .sl_oport238_i(1'B0),
    .sl_oport239_i(1'B0),
    .sl_oport240_i(1'B0),
    .sl_oport241_i(1'B0),
    .sl_oport242_i(1'B0),
    .sl_oport243_i(1'B0),
    .sl_oport244_i(1'B0),
    .sl_oport245_i(1'B0),
    .sl_oport246_i(1'B0),
    .sl_oport247_i(1'B0),
    .sl_oport248_i(1'B0),
    .sl_oport249_i(1'B0),
    .sl_oport250_i(1'B0),
    .sl_oport251_i(1'B0),
    .sl_oport252_i(1'B0),
    .sl_oport253_i(1'B0),
    .sl_oport254_i(1'B0),
    .sl_oport255_i(1'B0),
    .update_0(),
    .capture_0(),
    .reset_0(),
    .runtest_0(),
    .tms_0(),
    .tck_0(),
    .tdi_0(),
    .sel_0(),
    .shift_0(),
    .drck_0(),
    .tdo_0(1'B0),
    .update_1(),
    .capture_1(),
    .reset_1(),
    .runtest_1(),
    .tms_1(),
    .tck_1(),
    .tdi_1(),
    .sel_1(),
    .shift_1(),
    .drck_1(),
    .tdo_1(1'B0),
    .update_2(),
    .capture_2(),
    .reset_2(),
    .runtest_2(),
    .tms_2(),
    .tck_2(),
    .tdi_2(),
    .sel_2(),
    .shift_2(),
    .drck_2(),
    .tdo_2(1'B0),
    .update_3(),
    .capture_3(),
    .reset_3(),
    .runtest_3(),
    .tms_3(),
    .tck_3(),
    .tdi_3(),
    .sel_3(),
    .shift_3(),
    .drck_3(),
    .tdo_3(1'B0),
    .update_4(),
    .capture_4(),
    .reset_4(),
    .runtest_4(),
    .tms_4(),
    .tck_4(),
    .tdi_4(),
    .sel_4(),
    .shift_4(),
    .drck_4(),
    .tdo_4(1'B0),
    .update_5(),
    .capture_5(),
    .reset_5(),
    .runtest_5(),
    .tms_5(),
    .tck_5(),
    .tdi_5(),
    .sel_5(),
    .shift_5(),
    .drck_5(),
    .tdo_5(1'B0),
    .update_6(),
    .capture_6(),
    .reset_6(),
    .runtest_6(),
    .tms_6(),
    .tck_6(),
    .tdi_6(),
    .sel_6(),
    .shift_6(),
    .drck_6(),
    .tdo_6(1'B0),
    .update_7(),
    .capture_7(),
    .reset_7(),
    .runtest_7(),
    .tms_7(),
    .tck_7(),
    .tdi_7(),
    .sel_7(),
    .shift_7(),
    .drck_7(),
    .tdo_7(1'B0),
    .update_8(),
    .capture_8(),
    .reset_8(),
    .runtest_8(),
    .tms_8(),
    .tck_8(),
    .tdi_8(),
    .sel_8(),
    .shift_8(),
    .drck_8(),
    .tdo_8(1'B0),
    .update_9(),
    .capture_9(),
    .reset_9(),
    .runtest_9(),
    .tms_9(),
    .tck_9(),
    .tdi_9(),
    .sel_9(),
    .shift_9(),
    .drck_9(),
    .tdo_9(1'B0),
    .update_10(),
    .capture_10(),
    .reset_10(),
    .runtest_10(),
    .tms_10(),
    .tck_10(),
    .tdi_10(),
    .sel_10(),
    .shift_10(),
    .drck_10(),
    .tdo_10(1'B0),
    .update_11(),
    .capture_11(),
    .reset_11(),
    .runtest_11(),
    .tms_11(),
    .tck_11(),
    .tdi_11(),
    .sel_11(),
    .shift_11(),
    .drck_11(),
    .tdo_11(1'B0),
    .update_12(),
    .capture_12(),
    .reset_12(),
    .runtest_12(),
    .tms_12(),
    .tck_12(),
    .tdi_12(),
    .sel_12(),
    .shift_12(),
    .drck_12(),
    .tdo_12(1'B0),
    .update_13(),
    .capture_13(),
    .reset_13(),
    .runtest_13(),
    .tms_13(),
    .tck_13(),
    .tdi_13(),
    .sel_13(),
    .shift_13(),
    .drck_13(),
    .tdo_13(1'B0),
    .update_14(),
    .capture_14(),
    .reset_14(),
    .runtest_14(),
    .tms_14(),
    .tck_14(),
    .tdi_14(),
    .sel_14(),
    .shift_14(),
    .drck_14(),
    .tdo_14(1'B0),
    .update_15(),
    .capture_15(),
    .reset_15(),
    .runtest_15(),
    .tms_15(),
    .tck_15(),
    .tdi_15(),
    .sel_15(),
    .shift_15(),
    .drck_15(),
    .tdo_15(1'B0),
    .bscanid_en_0(),
    .bscanid_en_1(),
    .bscanid_en_2(),
    .bscanid_en_3(),
    .bscanid_en_4(),
    .bscanid_en_5(),
    .bscanid_en_6(),
    .bscanid_en_7(),
    .bscanid_en_8(),
    .bscanid_en_9(),
    .bscanid_en_10(),
    .bscanid_en_11(),
    .bscanid_en_12(),
    .bscanid_en_13(),
    .bscanid_en_14(),
    .bscanid_en_15(),
    .bscanid_0(32'B0),
    .bscanid_1(32'B0),
    .bscanid_2(32'B0),
    .bscanid_3(32'B0),
    .bscanid_4(32'B0),
    .bscanid_5(32'B0),
    .bscanid_6(32'B0),
    .bscanid_7(32'B0),
    .bscanid_8(32'B0),
    .bscanid_9(32'B0),
    .bscanid_10(32'B0),
    .bscanid_11(32'B0),
    .bscanid_12(32'B0),
    .bscanid_13(32'B0),
    .bscanid_14(32'B0),
    .bscanid_15(32'B0),
    .update(update),
    .capture(capture),
    .reset(reset),
    .runtest(runtest),
    .tck(tck),
    .tms(tms),
    .tdi(tdi),
    .sel(sel),
    .shift(shift),
    .drck(drck),
    .tdo(tdo),
    .bscanid_en(bscanid_en),
    .bscanid(),
    .clk(clk)
  );
endmodule
