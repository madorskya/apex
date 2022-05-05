`timescale 1ns / 1ps
module apex_control_mgt_top
(
    input som240_1_c24,
    input som240_1_b20,
    inout som240_1_b21,
    inout som240_1_b22,
    inout som240_1_b16,
    input som240_1_b17,
    inout som240_1_b18,
    inout som240_1_d21,
    inout som240_1_d22,
    inout som240_1_d11,
    inout som240_1_d13,
    input som240_1_d14,
    input som240_1_d20,
    inout som240_1_c20,
    inout som240_1_c22,
    output som240_1_c23,
    input som240_1_a15,
    inout som240_1_a16,
    inout som240_1_a17,
    output som240_1_c19,
    inout som240_1_d16,
    input som240_1_d17,
    input som240_1_d18,
    inout som240_1_c18,
    
    input som240_2_d5,
    input som240_2_d6,
    output som240_2_a3,
    output som240_2_a4,
    output som240_2_d9,
    output som240_2_d10,
    input som240_2_b9,
    input som240_2_b10,
    output som240_2_a51,
    output som240_2_a52,
    input som240_2_a54,
    output som240_2_a55,
    input som240_2_a58,
    inout som240_2_a59,
    inout som240_2_a60,
    output som240_2_b44,
    input som240_2_b45,
    output som240_2_b46,
    output som240_2_b48,
    output som240_2_a46,
    input som240_2_a47,
    output som240_2_a48,
    output som240_2_b49,
    input som240_2_d1,
    input som240_2_d2,
    input som240_2_d44,
    input som240_2_d45,
    inout som240_2_d46,
    output som240_2_d48,
    inout som240_2_d49,
    input som240_2_d50,
    output som240_2_c7,
    output som240_2_c8,
    output som240_2_c59,
    output som240_2_c60,
    input som240_2_a11,
    input som240_2_a12,
    input som240_2_a14,
    input som240_2_a15,
    input som240_2_a17,
    input som240_2_a18,
    input som240_2_a20,
    input som240_2_a21,
    output som240_2_d57,
    input som240_2_d58,
    input som240_2_c3,
    input som240_2_c4,

    input som240_2_a7, // using unconnected refclk temporarily for compile check
    input som240_2_a8
);

    wire dcdc_control_alarm;
    wire fpga_srv0_pok;
    wire fpga_srv0_sda;
    wire fpga_srv0_scl;
    wire fpga_srv1_scl;
    wire fpga_srv1_pok;
    wire fpga_srv1_sda;
    wire g10s_sda;
    wire g10s_scl;
    wire gem_mdio_mdc;
    wire gem_mdio_mdio;
    wire gem_mdio_mdint;
    wire ipmb_buf0_rdy;
    wire ipmb_buf0_sda;
    wire ipmb_buf0_scl;
    wire ipmb_buf0_en;
    wire ipmb_buf1_rdy;
    wire ipmb_buf1_sda;
    wire ipmb_buf1_scl;
    wire ipmb_buf1_en;
    wire qsfp_srv_sda;
    wire qsfp_srv_hot_swap;
    wire qsfp_srv_pok;
    wire qsfp_srv_scl;
    
    wire axi_link0_rx_n;
    wire axi_link0_rx_p;
    wire axi_link0_tx_n;
    wire axi_link0_tx_p;
    wire axi_link1_tx_n;
    wire axi_link1_tx_p;
    wire axi_link1_rx_n;
    wire axi_link1_rx_p;
    wire [1:0] bp_clk_sel;
    wire dcdc_control_payload_fault;
    wire dcdc_control_on_off;
    wire dcdc_control_pok;
    wire dcdc_control_sda;
    wire dcdc_control_scl;
    wire fpga_srv0_tdi;
    wire fpga_srv0_tdo;
    wire fpga_srv0_tms;
    wire fpga_srv0_tck;
    wire fpga_srv1_tdi;
    wire fpga_srv1_tdo;
    wire fpga_srv1_tms;
    wire fpga_srv1_tck;
    wire g10s_txp;
    wire g10s_txn;
    wire g10s_rxalarm;
    wire g10s_txalarm;
    wire g10s_mdc;
    wire g10s_resetn;
    wire g10s_mdio;
    wire g10s_lasi;
    wire g10s_rxp;
    wire g10s_rxn;
    wire gem_mdio_coma;
    wire gem_mdio_nreset;
    wire [7:0] ha;
    wire uart_dev2usb;
    wire uart_usb2dev;
    wire gth_refclk0_c2m_p;
    wire gth_refclk0_c2m_n;

    wire gth_refclk1_c2m_p;
    wire gth_refclk1_c2m_n;
    
    assign dcdc_control_alarm = som240_1_c24;
    assign fpga_srv0_pok = som240_1_b20;
    alias som240_1_b21 = fpga_srv0_sda;
    alias som240_1_b22 = fpga_srv0_scl;
    alias som240_1_b16 = fpga_srv1_scl;
    assign fpga_srv1_pok = som240_1_b17;
    alias som240_1_b18 = fpga_srv1_sda;
    alias som240_1_d21 = g10s_sda;
    alias som240_1_d22 = g10s_scl;
    alias som240_1_d11 = gem_mdio_mdc;
    alias som240_1_d13 = gem_mdio_mdio;
    assign gem_mdio_mdint = som240_1_d14;
    assign ipmb_buf0_rdy = som240_1_d20;
    alias som240_1_c20 = ipmb_buf0_sda;
    alias som240_1_c22 = ipmb_buf0_scl;
    assign som240_1_c23 = ipmb_buf0_en;
    assign ipmb_buf1_rdy = som240_1_a15;
    alias som240_1_a16 = ipmb_buf1_sda;
    alias som240_1_a17 = ipmb_buf1_scl;
    assign som240_1_c19 = ipmb_buf1_en;
    alias som240_1_d16 = qsfp_srv_sda;
    assign qsfp_srv_hot_swap = som240_1_d17;
    assign qsfp_srv_pok = som240_1_d18;
    alias som240_1_c18 = qsfp_srv_scl;
    
    assign axi_link1_rx_p = som240_2_d5; // inverted
    assign axi_link1_rx_n = som240_2_d6;
    assign som240_2_a3 = axi_link1_tx_p; // inverted
    assign som240_2_a4 = axi_link1_tx_n;
    
    assign som240_2_d9 = axi_link0_tx_p; // inverted
    assign som240_2_d10 = axi_link0_tx_n;
    assign axi_link0_rx_p = som240_2_b9; // inverted
    assign axi_link0_rx_n = som240_2_b10;
    
    assign som240_2_a51 = bp_clk_sel[0];
    assign som240_2_a52 = bp_clk_sel[1];
    assign dcdc_control_payload_fault = som240_2_a54;
    assign som240_2_a55 = dcdc_control_on_off;
    assign dcdc_control_pok = som240_2_a58;
    alias som240_2_a59 = dcdc_control_sda;
    alias som240_2_a60 = dcdc_control_scl;
    assign som240_2_b44 = fpga_srv0_tdi;
    assign fpga_srv0_tdo = som240_2_b45;
    assign som240_2_b46 = fpga_srv0_tms;
    assign som240_2_b48 = fpga_srv0_tck;
    assign som240_2_a46 = fpga_srv1_tdi;
    assign fpga_srv1_tdo = som240_2_a47;
    assign som240_2_a48 = fpga_srv1_tms;
    assign som240_2_b49 = fpga_srv1_tck;
    assign g10s_rxp = som240_2_d1;
    assign g10s_rxn = som240_2_d2;
    assign g10s_rxalarm = som240_2_d44;
    assign g10s_txalarm = som240_2_d45;
    alias som240_2_d46 = g10s_mdc;
    assign som240_2_d48 = g10s_resetn;
    alias som240_2_d49 = g10s_mdio;
    assign g10s_lasi = som240_2_d50;
    assign som240_2_c7 = g10s_txp;
    assign som240_2_c8 = g10s_txn;
    assign som240_2_c59 = gem_mdio_coma;
    assign som240_2_c60 = gem_mdio_nreset;
    assign ha[4] = som240_2_a11;
    assign ha[0] = som240_2_a12;
    assign ha[5] = som240_2_a14;
    assign ha[1] = som240_2_a15;
    assign ha[6] = som240_2_a17;
    assign ha[2] = som240_2_a18;
    assign ha[7] = som240_2_a20;
    assign ha[3] = som240_2_a21;
    assign som240_2_d57 = uart_dev2usb;
    assign uart_usb2dev = som240_2_d58;
    assign gth_refclk0_c2m_p = som240_2_c3;
    assign gth_refclk0_c2m_n = som240_2_c4;
    
    assign gth_refclk1_c2m_p = som240_2_a7;
    assign gth_refclk1_c2m_n = som240_2_a8;
    
    
    wire soft_reset;
    
    // interface for c2c TX
    wire [31:0] txdata [1:0];
    wire [ 1:0] txvalid;
    wire [ 1:0] txready;
    wire [ 1:0] do_cc;
    
    // interface for c2c RX
    wire [31:0] rxdata [1:0];
    wire [ 1:0] rxvalid;
    
    wire [1:0] channel_up;
    wire [2:0] prbs_sel;
    wire [1:0] prbs_err;
    wire [1:0] tx_polarity;
    
    wire usr_clk; // single user clock for tx and rx
    wire [31:0] rxd_raw [1:0];
    wire [ 3:0] rxk_raw [1:0];
    wire [31:0] gt_txdata [1:0];
    wire [ 3:0] gt_txcharisk [1:0];
    wire [ 1:0] align_b0;
    wire [ 1:0] align_lock;
    wire axi_clk;
    wire [1:0] rxclkcorcnt [1:0];
    wire link_up_top;
    wire link_up_bot;
    wire c2c_slave_reset_top;
    wire c2c_slave_reset_bot;

            
    design_1_wrapper bdw
    (
        .axi_c2c_phy_clk     (usr_clk),
        .axi_clk             (axi_clk),
        .c2c_slave_reset_bot (c2c_slave_reset_bot),
        .c2c_slave_reset_top (c2c_slave_reset_top),
        .do_cc_bot           (do_cc[0]),
        .do_cc_top           (do_cc[1]),
        .en_ipmb_zynq        ({ipmb_buf1_en, ipmb_buf0_en}),
        .gem_mdio_mdc        (gem_mdio_mdc),
        .gem_mdio_mdio_io    (gem_mdio_mdio),
        .gtp_reset           (soft_reset),
        .ha                  (ha),
        .hot_swap_sw         (qsfp_srv_hot_swap),
        .id                  (), // ELMA chip is removed
        .ipmc_scl_0          (ipmb_buf0_scl),
        .ipmc_scl_1          (ipmb_buf1_scl),
        .ipmc_sda_0          (ipmb_buf0_sda),
        .ipmc_sda_1          (ipmb_buf1_sda),
        .jtag_0_tck          (fpga_srv0_tck),
        .jtag_0_tdi          (fpga_srv0_tdi),
        .jtag_0_tdo          (fpga_srv0_tdo),
        .jtag_0_tms          (fpga_srv0_tms),
        .jtag_1_tck          (fpga_srv1_tck),
        .jtag_1_tdi          (fpga_srv1_tdi),
        .jtag_1_tdo          (fpga_srv1_tdo),
        .jtag_1_tms          (fpga_srv1_tms),
        .link_up_bot         (link_up_bot),
        .link_up_top         (link_up_top),
        .los_10g             (), // 10G CDR is removed
        .mgt_unlocked_bot    (~channel_up[0]),
        .mgt_unlocked_top    (~channel_up[1]),
        .pim_alarm           (dcdc_control_alarm),
        .pok_change          ({qsfp_srv_pok, fpga_srv1_pok, fpga_srv0_pok}),
        .pok_payload         (dcdc_control_pok),
        .prbs_err            (prbs_err),
        .prbs_sel            (prbs_sel),
        .qbv_on_off          (dcdc_control_on_off),
        .ready_ipmb_zynq     ({ipmb_buf1_rdy, ipmb_buf0_rdy}),
        .rxdata_bot          (rxdata[0]),
        .rxdata_top          (rxdata[1]),
        .rxvalid_bot         (rxvalid[0]),
        .rxvalid_top         (rxvalid[1]),
        .scf_i2c_0_scl_io    (fpga_srv0_scl),
        .scf_i2c_0_sda_io    (fpga_srv0_sda),
        .scf_i2c_1_scl_io    (fpga_srv1_scl),
        .scf_i2c_1_sda_io    (fpga_srv1_sda),
        .scf_i2c_2_scl_io    (qsfp_srv_scl),
        .scf_i2c_2_sda_io    (qsfp_srv_sda),
        .tx_polarity         (tx_polarity),
        .txdata_bot          (txdata[0]),
        .txdata_top          (txdata[1]),
        .txvalid_bot         (txvalid[0]),
        .txvalid_top         (txvalid[1]),
        .uart_rxd            (uart_usb2dev),
        .uart_txd            (uart_dev2usb),
        .xg_grx_n            (g10s_rxn),
        .xg_grx_p            (g10s_rxp),
        .xg_gtx_n            (g10s_txn),
        .xg_gtx_p            (g10s_txp),
        .xg_refclk_clk_n     (gth_refclk1_c2m_n), // this is temporary
        .xg_refclk_clk_p     (gth_refclk1_c2m_p) // this refclk is the same as for AXI
    );
            
        
    c2c_gth_7p8125g_tux c2c_mgt 
    (
        .mgtrefclk0_x0y1_n (gth_refclk0_c2m_n),
        .mgtrefclk0_x0y1_p (gth_refclk0_c2m_p),
    
        .ch0_gthrxn_in  (axi_link0_rx_n),
        .ch0_gthrxp_in  (axi_link0_rx_p),
        .ch0_gthtxn_out (axi_link0_tx_n),
        .ch0_gthtxp_out (axi_link0_tx_p),

        .ch1_gthrxn_in  (axi_link1_rx_n),
        .ch1_gthrxp_in  (axi_link1_rx_p),
        .ch1_gthtxn_out (axi_link1_tx_n),
        .ch1_gthtxp_out (axi_link1_tx_p),
        
        .drp_clk      (axi_clk),
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
        .link_up    ({link_up_top, link_up_bot}),
        .c2c_slave_reset_top (c2c_slave_reset_top),
        .c2c_slave_reset_bot (c2c_slave_reset_bot),
        
        .usr_clk (usr_clk)// single user clock for tx and rx
    );
            
        
endmodule
