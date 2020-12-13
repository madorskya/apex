`timescale 1ns / 1ps

module apex_control_tf;

`define ZYNQM apex_control_tf.wrp.design_1_i.cpu.design_1_processing_system7_0_0.inst

    reg tb_ACLK;
    reg tb_ARESETn;

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
  reg [0:0]c2c_rx_0_rxn;
  reg [0:0]c2c_rx_0_rxp;
  reg [0:0]c2c_rx_1_rxn;
  reg [0:0]c2c_rx_1_rxp;
  wire [0:0]c2c_tx_0_txn;
  wire [0:0]c2c_tx_0_txp;
  wire [0:0]c2c_tx_1_txn;
  wire [0:0]c2c_tx_1_txp;
  wire [1:0]en_ipmb_zynq;
  reg [7:0]ha;
  reg [0:0]hot_swap_sw;
  wire i2c_10g_scl_io;
  wire i2c_10g_sda_io;
  wire [2:0]id;
  wire ipmc_scl_0;
  wire ipmc_scl_1;
  wire ipmc_sda_0;
  wire ipmc_sda_1;
  wire local_i2c_scl_io;
  wire local_i2c_sda_io;
  reg [0:0]los_10g;
  wire mdio_phy_mdc;
  wire mdio_phy_mdio_io;
  reg [0:0]mgtrefclk_clk_n;
  reg [0:0]mgtrefclk_clk_p;
  wire [0:0]phy_rst;
  reg [0:0]pim_alarm;
  wire [0:0]qbv_on_off;
  reg [1:0]ready_ipmb_zynq;
  reg [3:0]rgmii_rd;
  reg rgmii_rx_ctl;
  reg rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire scf_i2c_0_scl_io;
  wire scf_i2c_0_sda_io;
  wire scf_i2c_1_scl_io;
  wire scf_i2c_1_sda_io;
  wire scf_i2c_2_scl_io;
  wire scf_i2c_2_sda_io;
  wire scf_tck_0;
  wire scf_tck_1;
  wire scf_tdi_0;
  wire scf_tdi_1;
  reg scf_tdo_0;
  reg scf_tdo_1;
  wire scf_tms_0;
  wire scf_tms_1;

design_1_wrapper wrp
(
    .DDR_addr          (DDR_addr         ),
    .DDR_ba            (DDR_ba           ),
    .DDR_cas_n         (DDR_cas_n        ),
    .DDR_ck_n          (DDR_ck_n         ),
    .DDR_ck_p          (DDR_ck_p         ),
    .DDR_cke           (DDR_cke          ),
    .DDR_cs_n          (DDR_cs_n         ),
    .DDR_dm            (DDR_dm           ),
    .DDR_dq            (DDR_dq           ),
    .DDR_dqs_n         (DDR_dqs_n        ),
    .DDR_dqs_p         (DDR_dqs_p        ),
    .DDR_odt           (DDR_odt          ),
    .DDR_ras_n         (DDR_ras_n        ),
    .DDR_reset_n       (DDR_reset_n      ),
    .DDR_we_n          (DDR_we_n         ),
    .FIXED_IO_ddr_vrn  (FIXED_IO_ddr_vrn ),
    .FIXED_IO_ddr_vrp  (FIXED_IO_ddr_vrp ),
    .FIXED_IO_mio      (FIXED_IO_mio     ),
    .FIXED_IO_ps_clk   (FIXED_IO_ps_clk  ),
    .FIXED_IO_ps_porb  (FIXED_IO_ps_porb ),
    .FIXED_IO_ps_srstb (FIXED_IO_ps_srstb),
    .c2c_rx_0_rxn      (c2c_rx_0_rxn     ),
    .c2c_rx_0_rxp      (c2c_rx_0_rxp     ),
    .c2c_rx_1_rxn      (c2c_rx_1_rxn     ),
    .c2c_rx_1_rxp      (c2c_rx_1_rxp     ),
    .c2c_tx_0_txn      (c2c_tx_0_txn     ),
    .c2c_tx_0_txp      (c2c_tx_0_txp     ),
    .c2c_tx_1_txn      (c2c_tx_1_txn     ),
    .c2c_tx_1_txp      (c2c_tx_1_txp     ),
    .en_ipmb_zynq      (en_ipmb_zynq     ),
    .ha                (ha               ),
    .hot_swap_sw       (hot_swap_sw      ),
    .i2c_10g_scl_io    (i2c_10g_scl_io   ),
    .i2c_10g_sda_io    (i2c_10g_sda_io   ),
    .id                (id               ),
    .ipmc_scl_0        (ipmc_scl_0       ),
    .ipmc_scl_1        (ipmc_scl_1       ),
    .ipmc_sda_0        (ipmc_sda_0       ),
    .ipmc_sda_1        (ipmc_sda_1       ),
    .local_i2c_scl_io  (local_i2c_scl_io ),
    .local_i2c_sda_io  (local_i2c_sda_io ),
    .los_10g           (los_10g          ),
    .mdio_phy_mdc      (mdio_phy_mdc     ),
    .mdio_phy_mdio_io  (mdio_phy_mdio_io ),
    .mgtrefclk_clk_n   (mgtrefclk_clk_n  ),
    .mgtrefclk_clk_p   (mgtrefclk_clk_p  ),
    .phy_rst           (phy_rst          ),
    .pim_alarm         (pim_alarm        ),
    .qbv_on_off        (qbv_on_off       ),
    .ready_ipmb_zynq   (ready_ipmb_zynq  ),
    .rgmii_rd          (rgmii_rd         ),
    .rgmii_rx_ctl      (rgmii_rx_ctl     ),
    .rgmii_rxc         (rgmii_rxc        ),
    .rgmii_td          (rgmii_td         ),
    .rgmii_tx_ctl      (rgmii_tx_ctl     ),
    .rgmii_txc         (rgmii_txc        ),
    .scf_i2c_0_scl_io  (scf_i2c_0_scl_io ),
    .scf_i2c_0_sda_io  (scf_i2c_0_sda_io ),
    .scf_i2c_1_scl_io  (scf_i2c_1_scl_io ),
    .scf_i2c_1_sda_io  (scf_i2c_1_sda_io ),
    .scf_i2c_2_scl_io  (scf_i2c_2_scl_io ),
    .scf_i2c_2_sda_io  (scf_i2c_2_sda_io ),
    .scf_tck_0         (scf_tck_0        ),
    .scf_tck_1         (scf_tck_1        ),
    .scf_tdi_0         (scf_tdi_0        ),
    .scf_tdi_1         (scf_tdi_1        ),
    .scf_tdo_0         (scf_tdo_0        ),
    .scf_tdo_1         (scf_tdo_1        ),
    .scf_tms_0         (scf_tms_0        ),
    .scf_tms_1         (scf_tms_1        ) 
);

initial 
begin       
    tb_ACLK = 1'b0;
    tb_ARESETn = 1'b1;
end

always #10 tb_ACLK = !tb_ACLK;

initial
begin

    $display ("running the tb");
    
    tb_ARESETn = 1'b0;
    repeat(200)@(posedge tb_ACLK);        
    tb_ARESETn = 1'b1;

    `ZYNQM.por_srstb_reset(1'b0);
    `ZYNQM.fpga_soft_reset(32'h1);   
    #200;  // This delay depends on your clock frequency. It should be at least 16 clock cycles. 
    `ZYNQM.por_srstb_reset(1'b1);
    `ZYNQM.fpga_soft_reset(32'h0);
    
    // Set debug level info to off. For more info, set to 1.
    `ZYNQM.set_debug_level_info(0);
    `ZYNQM.set_stop_on_error(1);
    // Set minimum port verbosity. Change to 32'd400 for maximum.
    `ZYNQM.M_AXI_HPM0_FPD.set_verbosity(32'd0);
    `ZYNQM.S_AXI_HP0_FPD.set_verbosity(32'd0);

end

endmodule
