`timescale 1ps / 1ps
module apex_kria_port_tf;

    logic dcdc_control_alarm;
    logic fpga_srv0_pok;
    logic fpga_srv0_sda;
    logic fpga_srv0_scl;
    logic fpga_srv1_scl;
    logic fpga_srv1_pok;
    logic fpga_srv1_sda;
    logic g10s_sda;
    logic g10s_scl;
    logic gem_mdio_mdc;
    logic gem_mdio_mdio;
    logic gem_mdio_mdint;
    logic ipmb_buf0_rdy;
    logic ipmb_buf0_sda;
    logic ipmb_buf0_scl;
    logic ipmb_buf0_en;
    logic ipmb_buf1_rdy;
    logic ipmb_buf1_sda;
    logic ipmb_buf1_scl;
    logic ipmb_buf1_en;
    logic qsfp_srv_sda;
    logic qsfp_srv_hot_swap;
    logic qsfp_srv_pok;
    logic qsfp_srv_scl;
    
    logic axi_link0_rx_n;
    logic axi_link0_rx_p;
    logic axi_link0_tx_n;
    logic axi_link0_tx_p;
    logic axi_link1_tx_n;
    logic axi_link1_tx_p;
    logic axi_link1_rx_n;
    logic axi_link1_rx_p;
    logic [1:0] bp_clk_sel;
    logic dcdc_control_payload_fault;
    logic dcdc_control_on_off;
    logic dcdc_control_pok;
    logic dcdc_control_sda;
    logic dcdc_control_scl;
    logic fpga_srv0_tdi;
    logic fpga_srv0_tdo;
    logic fpga_srv0_tms;
    logic fpga_srv0_tck;
    logic fpga_srv1_tdi;
    logic fpga_srv1_tdo;
    logic fpga_srv1_tms;
    logic fpga_srv1_tck;
    logic g10s_txp;
    logic g10s_txn;
    logic g10s_rxalarm;
    logic g10s_txalarm;
    logic g10s_mdc;
    logic g10s_resetn;
    logic g10s_mdio;
    logic g10s_lasi;
    logic g10s_rxp;
    logic g10s_rxn;
    logic gem_mdio_coma;
    logic gem_mdio_nreset;
    logic [7:0] ha;
    logic uart_dev2usb;
    logic uart_usb2dev;
    logic gth_refclk0_c2m_p;
    logic gth_refclk0_c2m_n;

    logic gth_refclk1_c2m_p;
    logic gth_refclk1_c2m_n;

    apex_control_mgt_top uut
    (
        .som240_1_c24 (dcdc_control_alarm),
        .som240_1_b20 (fpga_srv0_pok),
        .som240_1_b21 (),
        .som240_1_b22 (),
        .som240_1_b16 (),
        .som240_1_b17 (fpga_srv1_pok),
        .som240_1_b18 (),
        .som240_1_d21 (),
        .som240_1_d22 (),
        .som240_1_d11 (),
        .som240_1_d13 (),
        .som240_1_d14 (gem_mdio_mdint),
        .som240_1_d20 (ipmb_buf0_rdy),
        .som240_1_c20 (),
        .som240_1_c22 (),
        .som240_1_c23 (ipmb_buf0_en),
        .som240_1_a15 (ipmb_buf1_rdy),
        .som240_1_a16 (),
        .som240_1_a17 (),
        .som240_1_c19 (ipmb_buf1_en),
        .som240_1_d16 (),
        .som240_1_d17 (qsfp_srv_hot_swap),
        .som240_1_d18 (qsfp_srv_pok),
        .som240_1_c18 (),
        
        .som240_2_d5 (axi_link1_rx_p), // inverted
        .som240_2_d6 (axi_link1_rx_n),
        .som240_2_a3 (axi_link1_tx_p), // inverted
        .som240_2_a4 (axi_link1_tx_n),
        
        .som240_2_d9 (axi_link0_tx_p), // inverted
        .som240_2_d10 (axi_link0_tx_n),
        .som240_2_b9 (axi_link0_rx_p), // inverted
        .som240_2_b10 (axi_link0_rx_n),
        
        .som240_2_a51 (bp_clk_sel[0]),
        .som240_2_a52 (bp_clk_sel[1]),
        .som240_2_a54 (dcdc_control_payload_fault),
        .som240_2_a55 (dcdc_control_on_off),
        .som240_2_a58 (dcdc_control_pok),
        .som240_2_a59 (),
        .som240_2_a60 (),
        .som240_2_b44 (fpga_srv0_tdi),
        .som240_2_b45 (fpga_srv0_tdo),
        .som240_2_b46 (fpga_srv0_tms),
        .som240_2_b48 (fpga_srv0_tck),
        .som240_2_a46 (fpga_srv1_tdi),
        .som240_2_a47 (fpga_srv1_tdo),
        .som240_2_a48 (fpga_srv1_tms),
        .som240_2_b49 (fpga_srv1_tck),
        .som240_2_d1 (g10s_rxp),
        .som240_2_d2 (g10s_rxn),
        .som240_2_d44 (g10s_rxalarm),
        .som240_2_d45 (g10s_txalarm),
        .som240_2_d46 (),
        .som240_2_d48 (g10s_resetn),
        .som240_2_d49 (),
        .som240_2_d50 (g10s_lasi),
        .som240_2_c7 (g10s_txp),
        .som240_2_c8 (g10s_txn),
        .som240_2_c59 (gem_mdio_coma),
        .som240_2_c60 (gem_mdio_nreset),
        .som240_2_a11 (ha[4]),
        .som240_2_a12 (ha[0]),
        .som240_2_a14 (ha[5]),
        .som240_2_a15 (ha[1]),
        .som240_2_a17 (ha[6]),
        .som240_2_a18 (ha[2]),
        .som240_2_a20 (ha[7]),
        .som240_2_a21 (ha[3]),
        .som240_2_d57 (uart_dev2usb),
        .som240_2_d58 (uart_usb2dev),
        .som240_2_c3 (gth_refclk0_c2m_p),
        .som240_2_c4 (gth_refclk0_c2m_n),
        .som240_2_a7 (gth_refclk1_c2m_p),
        .som240_2_a8 (gth_refclk1_c2m_n)
    );
    
    initial 
    begin
        gth_refclk0_c2m_p = 1'b0;
        forever
            gth_refclk0_c2m_p = #3200 ~gth_refclk0_c2m_p;
    end
    assign gth_refclk0_c2m_n = gth_refclk0_c2m_p;

endmodule
