`timescale 1ns / 1ps
module apex_control_mgt_top
(
  inout [14:0]DDR_addr,
  inout [2:0]DDR_ba,
  inout DDR_cas_n,
  inout DDR_ck_n,
  inout DDR_ck_p,
  inout DDR_cke,
  inout DDR_cs_n,
  inout [3:0]DDR_dm,
  inout [31:0]DDR_dq,
  inout [3:0]DDR_dqs_n,
  inout [3:0]DDR_dqs_p,
  inout DDR_odt,
  inout DDR_ras_n,
  inout DDR_reset_n,
  inout DDR_we_n,
  inout FIXED_IO_ddr_vrn,
  inout FIXED_IO_ddr_vrp,
  inout [53:0]FIXED_IO_mio,
  inout FIXED_IO_ps_clk,
  inout FIXED_IO_ps_porb,
  inout FIXED_IO_ps_srstb,
  output [1:0]en_ipmb_zynq,
  input [7:0]ha,
  input [0:0]hot_swap_sw,
  inout i2c_10g_scl_io,
  inout i2c_10g_sda_io,
  output [2:0]id,
  inout ipmc_scl_0,
  inout ipmc_scl_1,
  inout ipmc_sda_0,
  inout ipmc_sda_1,
  inout local_i2c_scl_io,
  inout local_i2c_sda_io,
  input [0:0]los_10g,
  output mdio_phy_mdc,
  inout mdio_phy_mdio_io,
  output [0:0]phy_rst,
  input [0:0]pim_alarm,
  output [0:0]qbv_on_off,
  input [1:0]ready_ipmb_zynq,
  input [3:0]rgmii_rd,
  input rgmii_rx_ctl,
  input rgmii_rxc,
  output [3:0]rgmii_td,
  output rgmii_tx_ctl,
  output rgmii_txc,
  inout scf_i2c_0_scl_io,
  inout scf_i2c_0_sda_io,
  inout scf_i2c_1_scl_io,
  inout scf_i2c_1_sda_io,
  inout scf_i2c_2_scl_io,
  inout scf_i2c_2_sda_io,
  output scf_tck_0,
  output scf_tck_1,
  output scf_tdi_0,
  output scf_tdi_1,
  input scf_tdo_0,
  input scf_tdo_1,
  output scf_tms_0,
  output scf_tms_1,
  input [2:0] pok_change, // 2 = QSFP, 1 = TOP, 0 = BOTTOM
  input pok_payload, // from +12V brick

    input wire  Q0_CLK1_GTREFCLK_PAD_N_IN,
    input wire  Q0_CLK1_GTREFCLK_PAD_P_IN,
    input  wire [3:0]   RXN_IN,
    input  wire [3:0]   RXP_IN,
    output wire [3:0]   TXN_OUT,
    output wire [3:0]   TXP_OUT
);

  wire i2c_10g_scl_i;
  wire i2c_10g_scl_o;
  wire i2c_10g_scl_t;
  wire i2c_10g_sda_i;
  wire i2c_10g_sda_o;
  wire i2c_10g_sda_t;
  wire local_i2c_scl_i;
  wire local_i2c_scl_o;
  wire local_i2c_scl_t;
  wire local_i2c_sda_i;
  wire local_i2c_sda_o;
  wire local_i2c_sda_t;
  wire mdio_phy_mdio_i;
  wire mdio_phy_mdio_o;
  wire mdio_phy_mdio_t;
  wire scf_i2c_0_scl_i;
  wire scf_i2c_0_scl_o;
  wire scf_i2c_0_scl_t;
  wire scf_i2c_0_sda_i;
  wire scf_i2c_0_sda_o;
  wire scf_i2c_0_sda_t;
  wire scf_i2c_1_scl_i;
  wire scf_i2c_1_scl_o;
  wire scf_i2c_1_scl_t;
  wire scf_i2c_1_sda_i;
  wire scf_i2c_1_sda_o;
  wire scf_i2c_1_sda_t;
  wire scf_i2c_2_scl_i;
  wire scf_i2c_2_scl_o;
  wire scf_i2c_2_scl_t;
  wire scf_i2c_2_sda_i;
  wire scf_i2c_2_sda_o;
  wire scf_i2c_2_sda_t;
  
    wire soft_reset;
    
    // interface for c2c TX
    wire [31:0] txdata [3:0];
    wire [ 3:0] txvalid;
    wire [ 3:0] txready;
    wire [ 3:0] do_cc;
    
    // interface for c2c RX
    wire [31:0] rxdata [3:0];
    wire [ 3:0] rxvalid;
    
    wire [3:0] channel_up;
    wire [2:0] prbs_sel;
    wire [3:0] prbs_err;
    wire [3:0] tx_polarity;
    
    wire usr_clk; // single user clock for tx and rx
    wire [31:0] rxd_raw [3:0];
    wire [ 3:0] rxk_raw [3:0];
    wire [31:0] gt_txdata [3:0];
    wire [ 3:0] gt_txcharisk [3:0];
    wire [ 3:0] align_b0;
    wire [ 3:0] align_lock;
    wire axi_clk;
    wire [1:0] rxclkcorcnt [3:0];
    wire link_up_top;
    wire link_up_bot;
    wire c2c_slave_reset_top;
    wire c2c_slave_reset_bot;

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
        .axi_c2c_phy_clk(usr_clk),
        
        // for index mapping see file Firefly_map.xlsx
`ifdef AXI0 // C2C link on AXI0 link
        .rxdata_bot  (rxdata  [0]), 
        .rxvalid_bot (rxvalid [0]),
        
        .txdata_bot  (txdata  [3]),
        .txready_bot (txready [3]),
        .txvalid_bot (txvalid [3]),
        .do_cc_bot   (do_cc   [3]),
        
        .rxdata_top  (rxdata  [2]),
        .rxvalid_top (rxvalid [2]),
        
        .txdata_top  (txdata  [1]),
        .txready_top (txready [1]),
        .txvalid_top (txvalid [1]),
        .do_cc_top   (do_cc   [1]),

        .mgt_chup_bot     ( channel_up[0]),
        .mgt_chup_top     ( channel_up[2]),
        .mgt_unlocked_bot (~channel_up[0]),
        .mgt_unlocked_top (~channel_up[2]),
        .rxclkcorcnt_bot  (rxclkcorcnt [0]),
        .rxclkcorcnt_top  (rxclkcorcnt [2]),
`else // C2C link on AXI1 link
        .rxdata_bot  (rxdata  [3]),
        .rxvalid_bot (rxvalid [3]),
        
        .txdata_bot  (txdata  [0]),
        .txready_bot (txready [0]),
        .txvalid_bot (txvalid [0]),
        .do_cc_bot   (do_cc   [0]),
        
        .rxdata_top  (rxdata  [1]),
        .rxvalid_top (rxvalid [1]),
        
        .txdata_top  (txdata  [2]),
        .txready_top (txready [2]),
        .txvalid_top (txvalid [2]),
        .do_cc_top   (do_cc   [2]),

        .mgt_chup_bot     ( channel_up[3]),
        .mgt_chup_top     ( channel_up[1]),
        .mgt_unlocked_bot (~channel_up[3]),
        .mgt_unlocked_top (~channel_up[1]),
        .rxclkcorcnt_bot  (rxclkcorcnt [3]),
        .rxclkcorcnt_top  (rxclkcorcnt [1]),
`endif        
        .link_up_top      (link_up_top),
        .link_up_bot      (link_up_bot),

        .prbs_sel       (prbs_sel),
        .prbs_err       (prbs_err),
        .tx_polarity    (tx_polarity),
        .c2c_slave_reset_top (c2c_slave_reset_top),
        .c2c_slave_reset_bot (c2c_slave_reset_bot),

        .rxd_raw0    (rxd_raw [0]  ),
        .rxd_raw1    (rxd_raw [1]  ),
        .rxd_raw2    (rxd_raw [2]  ),
        .rxd_raw3    (rxd_raw [3]  ),
        .rxk_raw0    (rxk_raw [0]  ),
        .rxk_raw1    (rxk_raw [1]  ),
        .rxk_raw2    (rxk_raw [2]  ),
        .rxk_raw3    (rxk_raw [3]  ),
        
        .txd_raw0    (gt_txdata[0]),
        .txd_raw1    (gt_txdata[1]),
        .txd_raw2    (gt_txdata[2]),
        .txd_raw3    (gt_txdata[3]),
        .txk_raw0    (gt_txcharisk[0]),
        .txk_raw1    (gt_txcharisk[1]),
        .txk_raw2    (gt_txcharisk[2]),
        .txk_raw3    (gt_txcharisk[3]),
        
        .align_b0   (align_b0  ),
        .align_lock (align_lock),
        .gtp_reset  (soft_reset),

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
        .phy_rst(phy_rst),
        .pim_alarm(pim_alarm),
        .qbv_on_off(qbv_on_off),
        .pok_change(pok_change),
        .pok_payload (pok_payload),
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
        .scf_tms_1(scf_tms_1),
        .axi_clk  (axi_clk)
        );
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
        
    c2c_mgt_tux c2c_mgt 
    (
        .Q0_CLK1_GTREFCLK_PAD_N_IN (Q0_CLK1_GTREFCLK_PAD_N_IN),
        .Q0_CLK1_GTREFCLK_PAD_P_IN (Q0_CLK1_GTREFCLK_PAD_P_IN),
        .DRP_CLK_IN (axi_clk),
    
        .RXN_IN  (RXN_IN ),
        .RXP_IN  (RXP_IN ),
        .TXN_OUT (TXN_OUT),
        .TXP_OUT (TXP_OUT),
        
        .soft_reset_i (soft_reset),
        
        // interface for c2c TX
        .txdata  (txdata ),
        .txvalid (txvalid),
        .txready (txready),
        .do_cc   (do_cc),
        
        // interface for c2c RX
        .rxdata  (rxdata ),
        .rxvalid (rxvalid),
        
        .rxd_raw    (rxd_raw   ),
        .rxk_raw    (rxk_raw   ),
        .gt_txdata    (gt_txdata   ),
        .gt_txcharisk (gt_txcharisk),
        .align_b0   (align_b0  ),
        .align_lock (align_lock),

        .channel_up (channel_up),
        .prbs_sel   (prbs_sel), 
        .prbs_err   (prbs_err),
        .tx_polarity    (tx_polarity),
        .link_up    ({link_up_bot, link_up_top, link_up_top, link_up_bot}),
        .c2c_slave_reset_top (c2c_slave_reset_top),
        .c2c_slave_reset_bot (c2c_slave_reset_bot),
        
        .usr_clk (usr_clk)// single user clock for tx and rx
    );
            
        
endmodule
