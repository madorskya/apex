//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Tue Sep 15 16:36:53 2020
//Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
//Command     : generate_target apex_control_bd.bd
//Design      : apex_control_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "apex_control_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=apex_control_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,da_board_cnt=1,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "apex_control_bd.hwdef" *) 
module apex_control_bd
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
    mdio_phy_mdc,
    mdio_phy_mdio_i,
    mdio_phy_mdio_o,
    mdio_phy_mdio_t,
    phy_rst,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc);
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
  output mdio_phy_mdc;
  input mdio_phy_mdio_i;
  output mdio_phy_mdio_o;
  output mdio_phy_mdio_t;
  output [0:0]phy_rst;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;

  wire gmii_to_rgmii_0_MDIO_PHY_MDC;
  wire gmii_to_rgmii_0_MDIO_PHY_MDIO_I;
  wire gmii_to_rgmii_0_MDIO_PHY_MDIO_O;
  wire gmii_to_rgmii_0_MDIO_PHY_MDIO_T;
  wire [3:0]gmii_to_rgmii_0_RGMII_RD;
  wire gmii_to_rgmii_0_RGMII_RXC;
  wire gmii_to_rgmii_0_RGMII_RX_CTL;
  wire [3:0]gmii_to_rgmii_0_RGMII_TD;
  wire gmii_to_rgmii_0_RGMII_TXC;
  wire gmii_to_rgmii_0_RGMII_TX_CTL;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_GMII_ETHERNET_1_COL;
  wire processing_system7_0_GMII_ETHERNET_1_CRS;
  wire [7:0]processing_system7_0_GMII_ETHERNET_1_RXD;
  wire processing_system7_0_GMII_ETHERNET_1_RX_CLK;
  wire processing_system7_0_GMII_ETHERNET_1_RX_DV;
  wire processing_system7_0_GMII_ETHERNET_1_RX_ER;
  wire [7:0]processing_system7_0_GMII_ETHERNET_1_TXD;
  wire processing_system7_0_GMII_ETHERNET_1_TX_CLK;
  wire [0:0]processing_system7_0_GMII_ETHERNET_1_TX_EN;
  wire [0:0]processing_system7_0_GMII_ETHERNET_1_TX_ER;
  wire processing_system7_0_MDIO_ETHERNET_1_MDC;
  wire processing_system7_0_MDIO_ETHERNET_1_MDIO_I;
  wire processing_system7_0_MDIO_ETHERNET_1_MDIO_O;
  wire processing_system7_0_MDIO_ETHERNET_1_MDIO_T;
  wire [0:0]xlconstant_0_dout;

  assign gmii_to_rgmii_0_MDIO_PHY_MDIO_I = mdio_phy_mdio_i;
  assign gmii_to_rgmii_0_RGMII_RD = rgmii_rd[3:0];
  assign gmii_to_rgmii_0_RGMII_RXC = rgmii_rxc;
  assign gmii_to_rgmii_0_RGMII_RX_CTL = rgmii_rx_ctl;
  assign mdio_phy_mdc = gmii_to_rgmii_0_MDIO_PHY_MDC;
  assign mdio_phy_mdio_o = gmii_to_rgmii_0_MDIO_PHY_MDIO_O;
  assign mdio_phy_mdio_t = gmii_to_rgmii_0_MDIO_PHY_MDIO_T;
  assign phy_rst[0] = proc_sys_reset_0_peripheral_aresetn;
  assign rgmii_td[3:0] = gmii_to_rgmii_0_RGMII_TD;
  assign rgmii_tx_ctl = gmii_to_rgmii_0_RGMII_TX_CTL;
  assign rgmii_txc = gmii_to_rgmii_0_RGMII_TXC;
  apex_control_bd_gmii_to_rgmii_0_0 gmii_to_rgmii_0
       (.clkin(processing_system7_0_FCLK_CLK1),
        .gmii_col(processing_system7_0_GMII_ETHERNET_1_COL),
        .gmii_crs(processing_system7_0_GMII_ETHERNET_1_CRS),
        .gmii_rx_clk(processing_system7_0_GMII_ETHERNET_1_RX_CLK),
        .gmii_rx_dv(processing_system7_0_GMII_ETHERNET_1_RX_DV),
        .gmii_rx_er(processing_system7_0_GMII_ETHERNET_1_RX_ER),
        .gmii_rxd(processing_system7_0_GMII_ETHERNET_1_RXD),
        .gmii_tx_clk(processing_system7_0_GMII_ETHERNET_1_TX_CLK),
        .gmii_tx_en(processing_system7_0_GMII_ETHERNET_1_TX_EN),
        .gmii_tx_er(processing_system7_0_GMII_ETHERNET_1_TX_ER),
        .gmii_txd(processing_system7_0_GMII_ETHERNET_1_TXD),
        .mdio_gem_i(processing_system7_0_MDIO_ETHERNET_1_MDIO_I),
        .mdio_gem_mdc(processing_system7_0_MDIO_ETHERNET_1_MDC),
        .mdio_gem_o(processing_system7_0_MDIO_ETHERNET_1_MDIO_O),
        .mdio_gem_t(processing_system7_0_MDIO_ETHERNET_1_MDIO_T),
        .mdio_phy_i(gmii_to_rgmii_0_MDIO_PHY_MDIO_I),
        .mdio_phy_mdc(gmii_to_rgmii_0_MDIO_PHY_MDC),
        .mdio_phy_o(gmii_to_rgmii_0_MDIO_PHY_MDIO_O),
        .mdio_phy_t(gmii_to_rgmii_0_MDIO_PHY_MDIO_T),
        .rgmii_rx_ctl(gmii_to_rgmii_0_RGMII_RX_CTL),
        .rgmii_rxc(gmii_to_rgmii_0_RGMII_RXC),
        .rgmii_rxd(gmii_to_rgmii_0_RGMII_RD),
        .rgmii_tx_ctl(gmii_to_rgmii_0_RGMII_TX_CTL),
        .rgmii_txc(gmii_to_rgmii_0_RGMII_TXC),
        .rgmii_txd(gmii_to_rgmii_0_RGMII_TD),
        .rx_reset(proc_sys_reset_0_peripheral_reset),
        .tx_reset(proc_sys_reset_0_peripheral_reset));
  apex_control_bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  apex_control_bd_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET1_EXT_INTIN(1'b0),
        .ENET1_GMII_COL(processing_system7_0_GMII_ETHERNET_1_COL),
        .ENET1_GMII_CRS(processing_system7_0_GMII_ETHERNET_1_CRS),
        .ENET1_GMII_RXD(processing_system7_0_GMII_ETHERNET_1_RXD),
        .ENET1_GMII_RX_CLK(processing_system7_0_GMII_ETHERNET_1_RX_CLK),
        .ENET1_GMII_RX_DV(processing_system7_0_GMII_ETHERNET_1_RX_DV),
        .ENET1_GMII_RX_ER(processing_system7_0_GMII_ETHERNET_1_RX_ER),
        .ENET1_GMII_TXD(processing_system7_0_GMII_ETHERNET_1_TXD),
        .ENET1_GMII_TX_CLK(processing_system7_0_GMII_ETHERNET_1_TX_CLK),
        .ENET1_GMII_TX_EN(processing_system7_0_GMII_ETHERNET_1_TX_EN),
        .ENET1_GMII_TX_ER(processing_system7_0_GMII_ETHERNET_1_TX_ER),
        .ENET1_MDIO_I(processing_system7_0_MDIO_ETHERNET_1_MDIO_I),
        .ENET1_MDIO_MDC(processing_system7_0_MDIO_ETHERNET_1_MDC),
        .ENET1_MDIO_O(processing_system7_0_MDIO_ETHERNET_1_MDIO_O),
        .ENET1_MDIO_T(processing_system7_0_MDIO_ETHERNET_1_MDIO_T),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_CDN(xlconstant_0_dout),
        .SDIO0_WP(xlconstant_0_dout),
        .SDIO1_CDN(xlconstant_0_dout),
        .SDIO1_WP(xlconstant_0_dout));
  apex_control_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
