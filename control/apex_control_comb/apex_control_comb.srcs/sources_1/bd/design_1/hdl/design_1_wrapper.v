//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
//Date        : Sun Dec 13 20:12:44 2020
//Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    c2c_rx_0_rxn,
    c2c_rx_0_rxp,
    c2c_rx_1_rxn,
    c2c_rx_1_rxp,
    c2c_tx_0_txn,
    c2c_tx_0_txp,
    c2c_tx_1_txn,
    c2c_tx_1_txp,
    en_ipmb_zynq,
    ha,
    hot_swap_sw,
    i2c_10g_scl_io,
    i2c_10g_sda_io,
    id,
    ipmc_scl_0,
    ipmc_scl_1,
    ipmc_sda_0,
    ipmc_sda_1,
    local_i2c_scl_io,
    local_i2c_sda_io,
    los_10g,
    mdio_phy_mdc,
    mdio_phy_mdio_io,
    mgtrefclk_clk_n,
    mgtrefclk_clk_p,
    phy_rst,
    pim_alarm,
    qbv_on_off,
    ready_ipmb_zynq,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    scf_i2c_0_scl_io,
    scf_i2c_0_sda_io,
    scf_i2c_1_scl_io,
    scf_i2c_1_sda_io,
    scf_i2c_2_scl_io,
    scf_i2c_2_sda_io,
    scf_tck_0,
    scf_tck_1,
    scf_tdi_0,
    scf_tdi_1,
    scf_tdo_0,
    scf_tdo_1,
    scf_tms_0,
    scf_tms_1);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [0:0]c2c_rx_0_rxn;
  input [0:0]c2c_rx_0_rxp;
  input [0:0]c2c_rx_1_rxn;
  input [0:0]c2c_rx_1_rxp;
  output [0:0]c2c_tx_0_txn;
  output [0:0]c2c_tx_0_txp;
  output [0:0]c2c_tx_1_txn;
  output [0:0]c2c_tx_1_txp;
  output [1:0]en_ipmb_zynq;
  input [7:0]ha;
  input [0:0]hot_swap_sw;
  inout i2c_10g_scl_io;
  inout i2c_10g_sda_io;
  output [2:0]id;
  inout ipmc_scl_0;
  inout ipmc_scl_1;
  inout ipmc_sda_0;
  inout ipmc_sda_1;
  inout local_i2c_scl_io;
  inout local_i2c_sda_io;
  input [0:0]los_10g;
  output mdio_phy_mdc;
  inout mdio_phy_mdio_io;
  input [0:0]mgtrefclk_clk_n;
  input [0:0]mgtrefclk_clk_p;
  output [0:0]phy_rst;
  input [0:0]pim_alarm;
  output [0:0]qbv_on_off;
  input [1:0]ready_ipmb_zynq;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;
  inout scf_i2c_0_scl_io;
  inout scf_i2c_0_sda_io;
  inout scf_i2c_1_scl_io;
  inout scf_i2c_1_sda_io;
  inout scf_i2c_2_scl_io;
  inout scf_i2c_2_sda_io;
  output scf_tck_0;
  output scf_tck_1;
  output scf_tdi_0;
  output scf_tdi_1;
  input scf_tdo_0;
  input scf_tdo_1;
  output scf_tms_0;
  output scf_tms_1;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]c2c_rx_0_rxn;
  wire [0:0]c2c_rx_0_rxp;
  wire [0:0]c2c_rx_1_rxn;
  wire [0:0]c2c_rx_1_rxp;
  wire [0:0]c2c_tx_0_txn;
  wire [0:0]c2c_tx_0_txp;
  wire [0:0]c2c_tx_1_txn;
  wire [0:0]c2c_tx_1_txp;
  wire [1:0]en_ipmb_zynq;
  wire [7:0]ha;
  wire [0:0]hot_swap_sw;
  wire i2c_10g_scl_i;
  wire i2c_10g_scl_io;
  wire i2c_10g_scl_o;
  wire i2c_10g_scl_t;
  wire i2c_10g_sda_i;
  wire i2c_10g_sda_io;
  wire i2c_10g_sda_o;
  wire i2c_10g_sda_t;
  wire [2:0]id;
  wire ipmc_scl_0;
  wire ipmc_scl_1;
  wire ipmc_sda_0;
  wire ipmc_sda_1;
  wire local_i2c_scl_i;
  wire local_i2c_scl_io;
  wire local_i2c_scl_o;
  wire local_i2c_scl_t;
  wire local_i2c_sda_i;
  wire local_i2c_sda_io;
  wire local_i2c_sda_o;
  wire local_i2c_sda_t;
  wire [0:0]los_10g;
  wire mdio_phy_mdc;
  wire mdio_phy_mdio_i;
  wire mdio_phy_mdio_io;
  wire mdio_phy_mdio_o;
  wire mdio_phy_mdio_t;
  wire [0:0]mgtrefclk_clk_n;
  wire [0:0]mgtrefclk_clk_p;
  wire [0:0]phy_rst;
  wire [0:0]pim_alarm;
  wire [0:0]qbv_on_off;
  wire [1:0]ready_ipmb_zynq;
  wire [3:0]rgmii_rd;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire scf_i2c_0_scl_i;
  wire scf_i2c_0_scl_io;
  wire scf_i2c_0_scl_o;
  wire scf_i2c_0_scl_t;
  wire scf_i2c_0_sda_i;
  wire scf_i2c_0_sda_io;
  wire scf_i2c_0_sda_o;
  wire scf_i2c_0_sda_t;
  wire scf_i2c_1_scl_i;
  wire scf_i2c_1_scl_io;
  wire scf_i2c_1_scl_o;
  wire scf_i2c_1_scl_t;
  wire scf_i2c_1_sda_i;
  wire scf_i2c_1_sda_io;
  wire scf_i2c_1_sda_o;
  wire scf_i2c_1_sda_t;
  wire scf_i2c_2_scl_i;
  wire scf_i2c_2_scl_io;
  wire scf_i2c_2_scl_o;
  wire scf_i2c_2_scl_t;
  wire scf_i2c_2_sda_i;
  wire scf_i2c_2_sda_io;
  wire scf_i2c_2_sda_o;
  wire scf_i2c_2_sda_t;
  wire scf_tck_0;
  wire scf_tck_1;
  wire scf_tdi_0;
  wire scf_tdi_1;
  wire scf_tdo_0;
  wire scf_tdo_1;
  wire scf_tms_0;
  wire scf_tms_1;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .c2c_rx_0_rxn(c2c_rx_0_rxn),
        .c2c_rx_0_rxp(c2c_rx_0_rxp),
        .c2c_rx_1_rxn(c2c_rx_1_rxn),
        .c2c_rx_1_rxp(c2c_rx_1_rxp),
        .c2c_tx_0_txn(c2c_tx_0_txn),
        .c2c_tx_0_txp(c2c_tx_0_txp),
        .c2c_tx_1_txn(c2c_tx_1_txn),
        .c2c_tx_1_txp(c2c_tx_1_txp),
        .en_ipmb_zynq(en_ipmb_zynq),
        .ha(ha),
        .hot_swap_sw(hot_swap_sw),
        .i2c_10g_scl_i(i2c_10g_scl_i),
        .i2c_10g_scl_o(i2c_10g_scl_o),
        .i2c_10g_scl_t(i2c_10g_scl_t),
        .i2c_10g_sda_i(i2c_10g_sda_i),
        .i2c_10g_sda_o(i2c_10g_sda_o),
        .i2c_10g_sda_t(i2c_10g_sda_t),
        .id(id),
        .ipmc_scl_0(ipmc_scl_0),
        .ipmc_scl_1(ipmc_scl_1),
        .ipmc_sda_0(ipmc_sda_0),
        .ipmc_sda_1(ipmc_sda_1),
        .local_i2c_scl_i(local_i2c_scl_i),
        .local_i2c_scl_o(local_i2c_scl_o),
        .local_i2c_scl_t(local_i2c_scl_t),
        .local_i2c_sda_i(local_i2c_sda_i),
        .local_i2c_sda_o(local_i2c_sda_o),
        .local_i2c_sda_t(local_i2c_sda_t),
        .los_10g(los_10g),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_mdio_i(mdio_phy_mdio_i),
        .mdio_phy_mdio_o(mdio_phy_mdio_o),
        .mdio_phy_mdio_t(mdio_phy_mdio_t),
        .mgtrefclk_clk_n(mgtrefclk_clk_n),
        .mgtrefclk_clk_p(mgtrefclk_clk_p),
        .phy_rst(phy_rst),
        .pim_alarm(pim_alarm),
        .qbv_on_off(qbv_on_off),
        .ready_ipmb_zynq(ready_ipmb_zynq),
        .rgmii_rd(rgmii_rd),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_td(rgmii_td),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .scf_i2c_0_scl_i(scf_i2c_0_scl_i),
        .scf_i2c_0_scl_o(scf_i2c_0_scl_o),
        .scf_i2c_0_scl_t(scf_i2c_0_scl_t),
        .scf_i2c_0_sda_i(scf_i2c_0_sda_i),
        .scf_i2c_0_sda_o(scf_i2c_0_sda_o),
        .scf_i2c_0_sda_t(scf_i2c_0_sda_t),
        .scf_i2c_1_scl_i(scf_i2c_1_scl_i),
        .scf_i2c_1_scl_o(scf_i2c_1_scl_o),
        .scf_i2c_1_scl_t(scf_i2c_1_scl_t),
        .scf_i2c_1_sda_i(scf_i2c_1_sda_i),
        .scf_i2c_1_sda_o(scf_i2c_1_sda_o),
        .scf_i2c_1_sda_t(scf_i2c_1_sda_t),
        .scf_i2c_2_scl_i(scf_i2c_2_scl_i),
        .scf_i2c_2_scl_o(scf_i2c_2_scl_o),
        .scf_i2c_2_scl_t(scf_i2c_2_scl_t),
        .scf_i2c_2_sda_i(scf_i2c_2_sda_i),
        .scf_i2c_2_sda_o(scf_i2c_2_sda_o),
        .scf_i2c_2_sda_t(scf_i2c_2_sda_t),
        .scf_tck_0(scf_tck_0),
        .scf_tck_1(scf_tck_1),
        .scf_tdi_0(scf_tdi_0),
        .scf_tdi_1(scf_tdi_1),
        .scf_tdo_0(scf_tdo_0),
        .scf_tdo_1(scf_tdo_1),
        .scf_tms_0(scf_tms_0),
        .scf_tms_1(scf_tms_1));
  IOBUF i2c_10g_scl_iobuf
       (.I(i2c_10g_scl_o),
        .IO(i2c_10g_scl_io),
        .O(i2c_10g_scl_i),
        .T(i2c_10g_scl_t));
  IOBUF i2c_10g_sda_iobuf
       (.I(i2c_10g_sda_o),
        .IO(i2c_10g_sda_io),
        .O(i2c_10g_sda_i),
        .T(i2c_10g_sda_t));
  IOBUF local_i2c_scl_iobuf
       (.I(local_i2c_scl_o),
        .IO(local_i2c_scl_io),
        .O(local_i2c_scl_i),
        .T(local_i2c_scl_t));
  IOBUF local_i2c_sda_iobuf
       (.I(local_i2c_sda_o),
        .IO(local_i2c_sda_io),
        .O(local_i2c_sda_i),
        .T(local_i2c_sda_t));
  IOBUF mdio_phy_mdio_iobuf
       (.I(mdio_phy_mdio_o),
        .IO(mdio_phy_mdio_io),
        .O(mdio_phy_mdio_i),
        .T(mdio_phy_mdio_t));
  IOBUF scf_i2c_0_scl_iobuf
       (.I(scf_i2c_0_scl_o),
        .IO(scf_i2c_0_scl_io),
        .O(scf_i2c_0_scl_i),
        .T(scf_i2c_0_scl_t));
  IOBUF scf_i2c_0_sda_iobuf
       (.I(scf_i2c_0_sda_o),
        .IO(scf_i2c_0_sda_io),
        .O(scf_i2c_0_sda_i),
        .T(scf_i2c_0_sda_t));
  IOBUF scf_i2c_1_scl_iobuf
       (.I(scf_i2c_1_scl_o),
        .IO(scf_i2c_1_scl_io),
        .O(scf_i2c_1_scl_i),
        .T(scf_i2c_1_scl_t));
  IOBUF scf_i2c_1_sda_iobuf
       (.I(scf_i2c_1_sda_o),
        .IO(scf_i2c_1_sda_io),
        .O(scf_i2c_1_sda_i),
        .T(scf_i2c_1_sda_t));
  IOBUF scf_i2c_2_scl_iobuf
       (.I(scf_i2c_2_scl_o),
        .IO(scf_i2c_2_scl_io),
        .O(scf_i2c_2_scl_i),
        .T(scf_i2c_2_scl_t));
  IOBUF scf_i2c_2_sda_iobuf
       (.I(scf_i2c_2_sda_o),
        .IO(scf_i2c_2_sda_io),
        .O(scf_i2c_2_sda_i),
        .T(scf_i2c_2_sda_t));
endmodule
