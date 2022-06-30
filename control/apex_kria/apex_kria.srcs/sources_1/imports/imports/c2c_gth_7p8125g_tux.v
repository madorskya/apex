`timescale 1ps/1ps

module c2c_gth_7p8125g_tux 
(

  // Differential reference clock inputs
  input  wire mgtrefclk0_x0y1_p,
  input  wire mgtrefclk0_x0y1_n,

  // Serial data ports for transceiver channel 0
  input  wire ch0_gthrxn_in,
  input  wire ch0_gthrxp_in,
  output wire ch0_gthtxn_out,
  output wire ch0_gthtxp_out,

  // Serial data ports for transceiver channel 1
  input  wire ch1_gthrxn_in,
  input  wire ch1_gthrxp_in,
  output wire ch1_gthtxn_out,
  output wire ch1_gthtxp_out,

    input drp_clk,

    input soft_reset_i,
    
    // interface for c2c TX
    input  [31:0] txdata [1:0],
    input  [ 1:0] txvalid,
    output reg [ 1:0] txready,
    input  [ 1:0] do_cc,
    
    // interface for c2c RX
    output reg [31:0] rxdata [1:0],
    output reg [ 1:0] rxvalid,
    
    // raw data for debugging
    output [31:0] rxd_raw [1:0],
    output [ 3:0] rxk_raw [1:0],
    output reg [31:0] gt_txdata [1:0],
    output reg [ 3:0] gt_txcharisk [1:0],


    output [ 1:0] align_b0,
    output [ 1:0] align_lock,
    
    output [1:0] channel_up,
    input  [2:0] prbs_sel, 
    output [1:0] prbs_err,
    input  [1:0] tx_polarity,
    output [1:0] rxclkcorcnt [1:0],
    input  [1:0] link_up,
    input  c2c_slave_reset_top,
    input  c2c_slave_reset_bot,
    
    output usr_clk // single user clock for tx and rx

);

  // User-provided ports for reset helper block(s)
  wire hb_gtwiz_reset_clk_freerun_in = drp_clk;
  wire hb_gtwiz_reset_all_in = soft_reset_i;

  // PRBS-based link status ports
  wire link_down_latched_reset_in;
  wire link_status_out;
  reg  link_down_latched_out = 1'b1;

  // ===================================================================================================================
  // PER-CHANNEL SIGNAL ASSIGNMENTS
  // ===================================================================================================================

  // The core and example design wrapper vectorize ports across all enabled transceiver channel and common instances for
  // simplicity and compactness. This example design top module assigns slices of each vector to individual, per-channel
  // signal vectors for use if desired. Signals which connect to helper blocks are prefixed "hb#", signals which connect
  // to transceiver common primitives are prefixed "cm#", and signals which connect to transceiver channel primitives
  // are prefixed "ch#", where "#" is the sequential resource number.

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gthrxn_int;
  assign gthrxn_int[0:0] = ch0_gthrxn_in;
  assign gthrxn_int[1:1] = ch1_gthrxn_in;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gthrxp_int;
  assign gthrxp_int[0:0] = ch0_gthrxp_in;
  assign gthrxp_int[1:1] = ch1_gthrxp_in;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gthtxn_int;
  assign ch0_gthtxn_out = gthtxn_int[0:0];
  assign ch1_gthtxn_out = gthtxn_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gthtxp_int;
  assign ch0_gthtxp_out = gthtxp_int[0:0];
  assign ch1_gthtxp_out = gthtxp_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_reset_int;
  wire [0:0] hb0_gtwiz_userclk_tx_reset_int;
  assign gtwiz_userclk_tx_reset_int[0:0] = hb0_gtwiz_userclk_tx_reset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_srcclk_int;
  wire [0:0] hb0_gtwiz_userclk_tx_srcclk_int;
  assign hb0_gtwiz_userclk_tx_srcclk_int = gtwiz_userclk_tx_srcclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_usrclk_int;
  wire [0:0] hb0_gtwiz_userclk_tx_usrclk_int;
  assign hb0_gtwiz_userclk_tx_usrclk_int = gtwiz_userclk_tx_usrclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_usrclk2_int;
  wire [0:0] hb0_gtwiz_userclk_tx_usrclk2_int;
  assign hb0_gtwiz_userclk_tx_usrclk2_int = gtwiz_userclk_tx_usrclk2_int[0:0];
  assign usr_clk = gtwiz_userclk_tx_usrclk2_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_active_int;
  wire [0:0] hb0_gtwiz_userclk_tx_active_int;
  assign hb0_gtwiz_userclk_tx_active_int = gtwiz_userclk_tx_active_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_reset_int;
  wire [0:0] hb0_gtwiz_userclk_rx_reset_int;
  assign gtwiz_userclk_rx_reset_int[0:0] = hb0_gtwiz_userclk_rx_reset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_srcclk_int;
  wire [0:0] hb0_gtwiz_userclk_rx_srcclk_int;
  assign hb0_gtwiz_userclk_rx_srcclk_int = gtwiz_userclk_rx_srcclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_usrclk_int;
  wire [0:0] hb0_gtwiz_userclk_rx_usrclk_int;
  assign hb0_gtwiz_userclk_rx_usrclk_int = gtwiz_userclk_rx_usrclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_usrclk2_int;
  wire [0:0] hb0_gtwiz_userclk_rx_usrclk2_int;
  assign hb0_gtwiz_userclk_rx_usrclk2_int = gtwiz_userclk_rx_usrclk2_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_active_int;
  wire [0:0] hb0_gtwiz_userclk_rx_active_int;
  assign hb0_gtwiz_userclk_rx_active_int = gtwiz_userclk_rx_active_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_clk_freerun_int;
  wire [0:0] hb0_gtwiz_reset_clk_freerun_int = 1'b0;
  assign gtwiz_reset_clk_freerun_int[0:0] = hb0_gtwiz_reset_clk_freerun_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_all_int;
  wire [0:0] hb0_gtwiz_reset_all_int = 1'b0;
  assign gtwiz_reset_all_int[0:0] = hb0_gtwiz_reset_all_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_pll_and_datapath_int;
  wire [0:0] hb0_gtwiz_reset_tx_pll_and_datapath_int;
  assign gtwiz_reset_tx_pll_and_datapath_int[0:0] = hb0_gtwiz_reset_tx_pll_and_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_datapath_int;
  wire [0:0] hb0_gtwiz_reset_tx_datapath_int;
  assign gtwiz_reset_tx_datapath_int[0:0] = hb0_gtwiz_reset_tx_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_pll_and_datapath_int;
  wire [0:0] hb0_gtwiz_reset_rx_pll_and_datapath_int = 1'b0;
  assign gtwiz_reset_rx_pll_and_datapath_int[0:0] = hb0_gtwiz_reset_rx_pll_and_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_datapath_int;
  wire [0:0] hb0_gtwiz_reset_rx_datapath_int = 1'b0;
  assign gtwiz_reset_rx_datapath_int[0:0] = hb0_gtwiz_reset_rx_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_cdr_stable_int;
  wire [0:0] hb0_gtwiz_reset_rx_cdr_stable_int;
  assign hb0_gtwiz_reset_rx_cdr_stable_int = gtwiz_reset_rx_cdr_stable_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_done_int;
  wire [0:0] hb0_gtwiz_reset_tx_done_int;
  assign hb0_gtwiz_reset_tx_done_int = gtwiz_reset_tx_done_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_done_int;
  wire [0:0] hb0_gtwiz_reset_rx_done_int;
  assign hb0_gtwiz_reset_rx_done_int = gtwiz_reset_rx_done_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [63:0] gtwiz_userdata_tx_int;
  wire [31:0] hb0_gtwiz_userdata_tx_int;
  wire [31:0] hb1_gtwiz_userdata_tx_int;
  assign gtwiz_userdata_tx_int[31:0] = hb0_gtwiz_userdata_tx_int;
  assign gtwiz_userdata_tx_int[63:32] = hb1_gtwiz_userdata_tx_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [63:0] gtwiz_userdata_rx_int;
  wire [31:0] hb0_gtwiz_userdata_rx_int;
  wire [31:0] hb1_gtwiz_userdata_rx_int;
  assign hb0_gtwiz_userdata_rx_int = gtwiz_userdata_rx_int[31:0];
  assign hb1_gtwiz_userdata_rx_int = gtwiz_userdata_rx_int[63:32];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] drpclk_int;
  wire [0:0] ch0_drpclk_int;
  wire [0:0] ch1_drpclk_int;
  assign drpclk_int[0:0] = ch0_drpclk_int;
  assign drpclk_int[1:1] = ch1_drpclk_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gtrefclk0_int;
  wire [0:0] ch0_gtrefclk0_int;
  wire [0:0] ch1_gtrefclk0_int;
  assign gtrefclk0_int[0:0] = ch0_gtrefclk0_int;
  assign gtrefclk0_int[1:1] = ch1_gtrefclk0_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rx8b10ben_int;
  wire [0:0] ch0_rx8b10ben_int = 1'b1;
  wire [0:0] ch1_rx8b10ben_int = 1'b1;
  assign rx8b10ben_int[0:0] = ch0_rx8b10ben_int;
  assign rx8b10ben_int[1:1] = ch1_rx8b10ben_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxbufreset_int;
  wire [0:0] ch0_rxbufreset_int = 1'b0;
  wire [0:0] ch1_rxbufreset_int = 1'b0;
  assign rxbufreset_int[0:0] = ch0_rxbufreset_int;
  assign rxbufreset_int[1:1] = ch1_rxbufreset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxcommadeten_int;
  wire [0:0] ch0_rxcommadeten_int = 1'b1;
  wire [0:0] ch1_rxcommadeten_int = 1'b1;
  assign rxcommadeten_int[0:0] = ch0_rxcommadeten_int;
  assign rxcommadeten_int[1:1] = ch1_rxcommadeten_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxmcommaalignen_int;
  wire [0:0] ch0_rxmcommaalignen_int = 1'b0;
  wire [0:0] ch1_rxmcommaalignen_int = 1'b0;
  assign rxmcommaalignen_int[0:0] = ch0_rxmcommaalignen_int;
  assign rxmcommaalignen_int[1:1] = ch1_rxmcommaalignen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxpcommaalignen_int;
  wire [0:0] ch0_rxpcommaalignen_int = 1'b1;
  wire [0:0] ch1_rxpcommaalignen_int = 1'b1;
  assign rxpcommaalignen_int[0:0] = ch0_rxpcommaalignen_int;
  assign rxpcommaalignen_int[1:1] = ch1_rxpcommaalignen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxpolarity_int;
  wire [0:0] ch0_rxpolarity_int = 1'b0;
  wire [0:0] ch1_rxpolarity_int = 1'b0;
  assign rxpolarity_int[0:0] = ch0_rxpolarity_int;
  assign rxpolarity_int[1:1] = ch1_rxpolarity_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [7:0] rxprbssel_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] tx8b10ben_int;
  wire [0:0] ch0_tx8b10ben_int = 1'b1;
  wire [0:0] ch1_tx8b10ben_int = 1'b1;
  assign tx8b10ben_int[0:0] = ch0_tx8b10ben_int;
  assign tx8b10ben_int[1:1] = ch1_tx8b10ben_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [31:0] txctrl0_int;
  wire [15:0] ch0_txctrl0_int;
  wire [15:0] ch1_txctrl0_int;
  assign txctrl0_int[15:0] = ch0_txctrl0_int;
  assign txctrl0_int[31:16] = ch1_txctrl0_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [31:0] txctrl1_int;
  wire [15:0] ch0_txctrl1_int;
  wire [15:0] ch1_txctrl1_int;
  assign txctrl1_int[15:0] = ch0_txctrl1_int;
  assign txctrl1_int[31:16] = ch1_txctrl1_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] txctrl2_int;
  wire [7:0] ch0_txctrl2_int;
  wire [7:0] ch1_txctrl2_int;
  assign txctrl2_int[7:0] = ch0_txctrl2_int;
  assign txctrl2_int[15:8] = ch1_txctrl2_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] txpolarity_int;
  wire [0:0] ch0_txpolarity_int = 1'b0;
  wire [0:0] ch1_txpolarity_int = 1'b0;
  assign txpolarity_int[0:0] = ch0_txpolarity_int;
  assign txpolarity_int[1:1] = ch1_txpolarity_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [7:0] txprbssel_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] gtpowergood_int;
  wire [0:0] ch0_gtpowergood_int;
  wire [0:0] ch1_gtpowergood_int;
  assign ch0_gtpowergood_int = gtpowergood_int[0:0];
  assign ch1_gtpowergood_int = gtpowergood_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [5:0] rxbufstatus_int;
  wire [2:0] ch0_rxbufstatus_int;
  wire [2:0] ch1_rxbufstatus_int;
  assign ch0_rxbufstatus_int = rxbufstatus_int[2:0];
  assign ch1_rxbufstatus_int = rxbufstatus_int[5:3];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxbyteisaligned_int;
  wire [0:0] ch0_rxbyteisaligned_int;
  wire [0:0] ch1_rxbyteisaligned_int;
  assign ch0_rxbyteisaligned_int = rxbyteisaligned_int[0:0];
  assign ch1_rxbyteisaligned_int = rxbyteisaligned_int[1:1];
  assign channel_up = rxbyteisaligned_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxbyterealign_int;
  wire [0:0] ch0_rxbyterealign_int;
  wire [0:0] ch1_rxbyterealign_int;
  assign ch0_rxbyterealign_int = rxbyterealign_int[0:0];
  assign ch1_rxbyterealign_int = rxbyterealign_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [3:0] rxclkcorcnt_int;
  wire [1:0] ch0_rxclkcorcnt_int;
  wire [1:0] ch1_rxclkcorcnt_int;
  assign ch0_rxclkcorcnt_int = rxclkcorcnt_int[1:0];
  assign ch1_rxclkcorcnt_int = rxclkcorcnt_int[3:2];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxcommadet_int;
  wire [0:0] ch0_rxcommadet_int;
  wire [0:0] ch1_rxcommadet_int;
  assign ch0_rxcommadet_int = rxcommadet_int[0:0];
  assign ch1_rxcommadet_int = rxcommadet_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [31:0] rxctrl0_int;
  wire [15:0] ch0_rxctrl0_int;
  wire [15:0] ch1_rxctrl0_int;
  assign ch0_rxctrl0_int = rxctrl0_int[15:0];
  assign ch1_rxctrl0_int = rxctrl0_int[31:16];

  //--------------------------------------------------------------------------------------------------------------------
  wire [31:0] rxctrl1_int;
  wire [15:0] ch0_rxctrl1_int;
  wire [15:0] ch1_rxctrl1_int;
  assign ch0_rxctrl1_int = rxctrl1_int[15:0];
  assign ch1_rxctrl1_int = rxctrl1_int[31:16];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] rxctrl2_int;
  wire [7:0] ch0_rxctrl2_int;
  wire [7:0] ch1_rxctrl2_int;
  assign ch0_rxctrl2_int = rxctrl2_int[7:0];
  assign ch1_rxctrl2_int = rxctrl2_int[15:8];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] rxctrl3_int;
  wire [7:0] ch0_rxctrl3_int;
  wire [7:0] ch1_rxctrl3_int;
  assign ch0_rxctrl3_int = rxctrl3_int[7:0];
  assign ch1_rxctrl3_int = rxctrl3_int[15:8];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxpmaresetdone_int;
  wire [0:0] ch0_rxpmaresetdone_int;
  wire [0:0] ch1_rxpmaresetdone_int;
  assign ch0_rxpmaresetdone_int = rxpmaresetdone_int[0:0];
  assign ch1_rxpmaresetdone_int = rxpmaresetdone_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxprbserr_int;
  wire [0:0] ch0_rxprbserr_int;
  wire [0:0] ch1_rxprbserr_int;
  assign ch0_rxprbserr_int = rxprbserr_int[0:0];
  assign ch1_rxprbserr_int = rxprbserr_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] rxprbslocked_int;
  wire [0:0] ch0_rxprbslocked_int;
  wire [0:0] ch1_rxprbslocked_int;
  assign ch0_rxprbslocked_int = rxprbslocked_int[0:0];
  assign ch1_rxprbslocked_int = rxprbslocked_int[1:1];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] txpmaresetdone_int;
  wire [0:0] ch0_txpmaresetdone_int;
  wire [0:0] ch1_txpmaresetdone_int;
  assign ch0_txpmaresetdone_int = txpmaresetdone_int[0:0];
  assign ch1_txpmaresetdone_int = txpmaresetdone_int[1:1];


  // ===================================================================================================================
  // BUFFERS
  // ===================================================================================================================

  // Buffer the hb_gtwiz_reset_all_in input and logically combine it with the internal signal from the example
  // initialization block as well as the VIO-sourced reset
  wire hb_gtwiz_reset_all_vio_int;
  wire hb_gtwiz_reset_all_buf_int;
  wire hb_gtwiz_reset_all_init_int;
  wire hb_gtwiz_reset_all_int;

  IBUF ibuf_hb_gtwiz_reset_all_inst (
    .I (hb_gtwiz_reset_all_in),
    .O (hb_gtwiz_reset_all_buf_int)
  );

  assign hb_gtwiz_reset_all_int = 
    hb_gtwiz_reset_all_buf_int || 
    hb_gtwiz_reset_all_init_int || 
    hb_gtwiz_reset_all_vio_int;

  // Globally buffer the free-running input clock
  wire hb_gtwiz_reset_clk_freerun_buf_int;

  BUFG bufg_clk_freerun_inst (
    .I (hb_gtwiz_reset_clk_freerun_in),
    .O (hb_gtwiz_reset_clk_freerun_buf_int)
  );

  // For GTH core configurations which utilize the transceiver channel CPLL, the drpclk_in port must be driven by
  // the free-running clock at the exact frequency specified during core customization, for reliable bring-up
  assign ch0_drpclk_int = hb_gtwiz_reset_clk_freerun_buf_int;
  assign ch1_drpclk_int = hb_gtwiz_reset_clk_freerun_buf_int;

  // Instantiate a differential reference clock buffer for each reference clock differential pair in this configuration,
  // and assign the single-ended output of each differential reference clock buffer to the appropriate PLL input signal

  // Differential reference clock buffer for MGTREFCLK0_X0Y1
  wire mgtrefclk0_x0y1_int;

  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH  (1'b0),
    .REFCLK_HROW_CK_SEL (2'b00),
    .REFCLK_ICNTL_RX    (2'b00)
  ) IBUFDS_GTE4_MGTREFCLK0_X0Y1_INST (
    .I     (mgtrefclk0_x0y1_p),
    .IB    (mgtrefclk0_x0y1_n),
    .CEB   (1'b0),
    .O     (mgtrefclk0_x0y1_int),
    .ODIV2 ()
  );

  assign ch0_gtrefclk0_int = mgtrefclk0_x0y1_int;
  assign ch1_gtrefclk0_int = mgtrefclk0_x0y1_int;


  // ===================================================================================================================
  // USER CLOCKING RESETS
  // ===================================================================================================================

  // The TX user clocking helper block should be held in reset until the clock source of that block is known to be
  // stable. The following assignment is an example of how that stability can be determined, based on the selected TX
  // user clock source. Replace the assignment with the appropriate signal or logic to achieve that behavior as needed.
  assign hb0_gtwiz_userclk_tx_reset_int = ~(&txpmaresetdone_int);

  // The RX user clocking helper block should be held in reset until the clock source of that block is known to be
  // stable. The following assignment is an example of how that stability can be determined, based on the selected RX
  // user clock source. Replace the assignment with the appropriate signal or logic to achieve that behavior as needed.
  assign hb0_gtwiz_userclk_rx_reset_int = ~(&rxpmaresetdone_int);

  assign ch0_txctrl0_int = 16'b0;
  assign ch0_txctrl1_int = 16'b0;
  assign ch0_txctrl2_int = gt_txcharisk [0];
  assign hb0_gtwiz_userdata_tx_int = gt_txdata [0];
    
  assign ch1_txctrl0_int = 16'b0;
  assign ch1_txctrl1_int = 16'b0;
  assign ch1_txctrl2_int = gt_txcharisk [1];
  assign hb1_gtwiz_userdata_tx_int = gt_txdata [1];

  wire [3:0] gt0_rxcharisk_i, gt1_rxcharisk_i;
  wire [31:0] gt0_rxdata_i, gt1_rxdata_i;

  assign gt0_rxcharisk_i = ch0_rxctrl0_int;
  assign gt0_rxdata_i    = hb0_gtwiz_userdata_rx_int;
  
  assign gt1_rxcharisk_i = ch1_rxctrl0_int;
  assign gt1_rxdata_i    = hb1_gtwiz_userdata_rx_int;

  // PRBS match and related link management
  // -------------------------------------------------------------------------------------------------------------------

  // Perform a bitwise NAND of all PRBS match indicators, creating a combinatorial indication of any PRBS mismatch
  // across all transceiver channels
  wire prbs_error_any_async = 1'b0;
  wire prbs_error_any_sync;

  // Synchronize the PRBS mismatch indicator the free-running clock domain, using a reset synchronizer with asynchronous
  // reset and synchronous removal
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_reset_synchronizer reset_synchronizer_prbs_match_all_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .rst_in (prbs_error_any_async),
    .rst_out(prbs_error_any_sync)
  );

  // Implement an example link status state machine using a simple leaky bucket mechanism. The link status indicates
  // the continual PRBS match status to both the top-level observer and the initialization state machine, while being
  // tolerant of occasional bit errors. This is an example and can be modified as necessary.
  localparam ST_LINK_DOWN = 1'b0;
  localparam ST_LINK_UP   = 1'b1;
  reg        sm_link      = ST_LINK_UP;
  reg [6:0]  link_ctr     = 7'd0;

  // Synchronize the latched link down reset input and the VIO-driven signal into the free-running clock domain
  wire link_down_latched_reset_vio_int;
  wire link_down_latched_reset_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_link_down_latched_reset_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (link_down_latched_reset_in || link_down_latched_reset_vio_int),
    .o_out  (link_down_latched_reset_sync)
  );


  // ===================================================================================================================
  // INITIALIZATION
  // ===================================================================================================================

  // Declare the receiver reset signals that interface to the reset controller helper block. For this configuration,
  // which uses the same PLL type for transmitter and receiver, the "reset RX PLL and datapath" feature is not used.
  wire hb_gtwiz_reset_rx_pll_and_datapath_int = 1'b0;
  wire hb_gtwiz_reset_rx_datapath_int;

  // Declare signals which connect the VIO instance to the initialization module for debug purposes
  wire       init_done_int;
  wire [3:0] init_retry_ctr_int;

  // Combine the receiver reset signals form the initialization module and the VIO to drive the appropriate reset
  // controller helper block reset input
  wire hb_gtwiz_reset_rx_pll_and_datapath_vio_int;
  wire hb_gtwiz_reset_rx_datapath_vio_int;
  wire hb_gtwiz_reset_rx_datapath_init_int;

  assign hb_gtwiz_reset_rx_datapath_int = hb_gtwiz_reset_rx_datapath_init_int || hb_gtwiz_reset_rx_datapath_vio_int;

  // The example initialization module interacts with the reset controller helper block and other example design logic
  // to retry failed reset attempts in order to mitigate bring-up issues such as initially-unavilable reference clocks
  // or data connections. It also resets the receiver in the event of link loss in an attempt to regain link, so please
  // note the possibility that this behavior can have the effect of overriding or disturbing user-provided inputs that
  // destabilize the data stream. It is a demonstration only and can be modified to suit your system needs.
  c2c_gth_7p8125g_example_init example_init_inst (
    .clk_freerun_in  (hb_gtwiz_reset_clk_freerun_buf_int),
    .reset_all_in    (hb_gtwiz_reset_all_int),
    .tx_init_done_in (gtwiz_reset_tx_done_int),
    .rx_init_done_in (gtwiz_reset_rx_done_int),
    .rx_data_good_in (sm_link),
    .reset_all_out   (hb_gtwiz_reset_all_init_int),
    .reset_rx_out    (hb_gtwiz_reset_rx_datapath_init_int),
    .init_done_out   (init_done_int),
    .retry_ctr_out   (init_retry_ctr_int)
  );


  // ===================================================================================================================
  // VIO FOR HARDWARE BRING-UP AND DEBUG
  // ===================================================================================================================

  // Synchronize gtpowergood into the free-running clock domain for VIO usage
  wire [1:0] gtpowergood_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_gtpowergood_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtpowergood_int[0]),
    .o_out  (gtpowergood_vio_sync[0])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_gtpowergood_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtpowergood_int[1]),
    .o_out  (gtpowergood_vio_sync[1])
  );

  // Synchronize txpmaresetdone into the free-running clock domain for VIO usage
  wire [1:0] txpmaresetdone_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txpmaresetdone_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (txpmaresetdone_int[0]),
    .o_out  (txpmaresetdone_vio_sync[0])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txpmaresetdone_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (txpmaresetdone_int[1]),
    .o_out  (txpmaresetdone_vio_sync[1])
  );

  // Synchronize rxpmaresetdone into the free-running clock domain for VIO usage
  wire [1:0] rxpmaresetdone_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxpmaresetdone_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxpmaresetdone_int[0]),
    .o_out  (rxpmaresetdone_vio_sync[0])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxpmaresetdone_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxpmaresetdone_int[1]),
    .o_out  (rxpmaresetdone_vio_sync[1])
  );

  // Synchronize gtwiz_reset_tx_done into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_reset_tx_done_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_gtwiz_reset_tx_done_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_reset_tx_done_int[0]),
    .o_out  (gtwiz_reset_tx_done_vio_sync[0])
  );

  // Synchronize gtwiz_reset_rx_done into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_reset_rx_done_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_gtwiz_reset_rx_done_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_reset_rx_done_int[0]),
    .o_out  (gtwiz_reset_rx_done_vio_sync[0])
  );

  // Synchronize rxbufstatus into the free-running clock domain for VIO usage
  wire [5:0] rxbufstatus_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[0]),
    .o_out  (rxbufstatus_vio_sync[0])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[1]),
    .o_out  (rxbufstatus_vio_sync[1])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_2_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[2]),
    .o_out  (rxbufstatus_vio_sync[2])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_3_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[3]),
    .o_out  (rxbufstatus_vio_sync[3])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_4_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[4]),
    .o_out  (rxbufstatus_vio_sync[4])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxbufstatus_5_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxbufstatus_int[5]),
    .o_out  (rxbufstatus_vio_sync[5])
  );

  // Synchronize rxprbserr into the free-running clock domain for VIO usage
  wire [1:0] rxprbserr_vio_sync;
  assign prbs_err = rxprbserr_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbserr_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbserr_int[0]),
    .o_out  (rxprbserr_vio_sync[0])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbserr_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbserr_int[1]),
    .o_out  (rxprbserr_vio_sync[1])
  );

  // Synchronize rxprbslocked into the free-running clock domain for VIO usage
  wire [1:0] rxprbslocked_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbslocked_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbslocked_int[0]),
    .o_out  (rxprbslocked_vio_sync[0])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbslocked_1_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbslocked_int[1]),
    .o_out  (rxprbslocked_vio_sync[1])
  );

  // Synchronize txprbssel into the TXUSRCLK2 clock domain from VIO usage
  wire [7:0] txprbssel_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_0_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[0]),
    .o_out  (txprbssel_int[0])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_1_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[1]),
    .o_out  (txprbssel_int[1])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_2_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[2]),
    .o_out  (txprbssel_int[2])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_3_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[3]),
    .o_out  (txprbssel_int[3])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_4_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[4]),
    .o_out  (txprbssel_int[4])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_5_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[5]),
    .o_out  (txprbssel_int[5])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_6_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[6]),
    .o_out  (txprbssel_int[6])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_txprbssel_7_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[7]),
    .o_out  (txprbssel_int[7])
  );

  // Synchronize rxprbssel into the RXUSRCLK2 clock domain from VIO usage
  wire [7:0] rxprbssel_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_0_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[0]),
    .o_out  (rxprbssel_int[0])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_1_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[1]),
    .o_out  (rxprbssel_int[1])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_2_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[2]),
    .o_out  (rxprbssel_int[2])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_3_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[3]),
    .o_out  (rxprbssel_int[3])
  );

  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_4_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[4]),
    .o_out  (rxprbssel_int[4])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_5_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[5]),
    .o_out  (rxprbssel_int[5])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_6_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[6]),
    .o_out  (rxprbssel_int[6])
  );
  (* DONT_TOUCH = "TRUE" *)
  c2c_gth_7p8125g_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_7_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[7]),
    .o_out  (rxprbssel_int[7])
  );


  // Instantiate the VIO IP core for hardware bring-up and debug purposes, connecting relevant debug and analysis
  // signals which have been enabled during Wizard IP customization. This initial set of connected signals is
  // provided as a convenience and example, but more or fewer ports can be used as needed; simply re-customize and
  // re-generate the VIO instance, then connect any exposed signals that are needed. Signals which are synchronous to
  // clocks other than the free-running clock will require synchronization. For usage, refer to Vivado Design Suite
  // User Guide: Programming and Debugging (UG908)
  c2c_gth_7p8125g_vio_0 c2c_gth_7p8125g_vio_0_inst (
    .clk (hb_gtwiz_reset_clk_freerun_buf_int)
    ,.probe_in0 (link_status_out)
    ,.probe_in1 (link_down_latched_out)
    ,.probe_in2 (init_done_int)
    ,.probe_in3 (init_retry_ctr_int)
    ,.probe_in4 (gtpowergood_vio_sync)
    ,.probe_in5 (txpmaresetdone_vio_sync)
    ,.probe_in6 (rxpmaresetdone_vio_sync)
    ,.probe_in7 (gtwiz_reset_tx_done_vio_sync)
    ,.probe_in8 (gtwiz_reset_rx_done_vio_sync)
    ,.probe_in9 (rxbufstatus_vio_sync)
    ,.probe_in10 (rxprbserr_vio_sync)
    ,.probe_in11 (rxprbslocked_vio_sync)
    ,.probe_out0 (hb_gtwiz_reset_all_vio_int)
    ,.probe_out1 (hb0_gtwiz_reset_tx_pll_and_datapath_int)
    ,.probe_out2 (hb0_gtwiz_reset_tx_datapath_int)
    ,.probe_out3 (hb_gtwiz_reset_rx_pll_and_datapath_vio_int)
    ,.probe_out4 (hb_gtwiz_reset_rx_datapath_vio_int)
    ,.probe_out5 (link_down_latched_reset_vio_int)
    ,.probe_out6 (txprbssel_vio_async)
    ,.probe_out7 (rxprbssel_vio_async)
  );


  // ===================================================================================================================
  // EXAMPLE WRAPPER INSTANCE
  // ===================================================================================================================

  // Instantiate the example design wrapper, mapping its enabled ports to per-channel internal signals and example
  // resources as appropriate
  c2c_gth_7p8125g_example_wrapper example_wrapper_inst (
    .gthrxn_in                               (gthrxn_int)
   ,.gthrxp_in                               (gthrxp_int)
   ,.gthtxn_out                              (gthtxn_int)
   ,.gthtxp_out                              (gthtxp_int)
   ,.gtwiz_userclk_tx_reset_in               (gtwiz_userclk_tx_reset_int)
   ,.gtwiz_userclk_tx_srcclk_out             (gtwiz_userclk_tx_srcclk_int)
   ,.gtwiz_userclk_tx_usrclk_out             (gtwiz_userclk_tx_usrclk_int)
   ,.gtwiz_userclk_tx_usrclk2_out            (gtwiz_userclk_tx_usrclk2_int)
   ,.gtwiz_userclk_tx_active_out             (gtwiz_userclk_tx_active_int)
   ,.gtwiz_userclk_rx_reset_in               (gtwiz_userclk_rx_reset_int)
   ,.gtwiz_userclk_rx_srcclk_out             (gtwiz_userclk_rx_srcclk_int)
   ,.gtwiz_userclk_rx_usrclk_out             (gtwiz_userclk_rx_usrclk_int)
   ,.gtwiz_userclk_rx_usrclk2_out            (gtwiz_userclk_rx_usrclk2_int)
   ,.gtwiz_userclk_rx_active_out             (gtwiz_userclk_rx_active_int)
   ,.gtwiz_reset_clk_freerun_in              ({1{hb_gtwiz_reset_clk_freerun_buf_int}})
   ,.gtwiz_reset_all_in                      ({1{hb_gtwiz_reset_all_int}})
   ,.gtwiz_reset_tx_pll_and_datapath_in      (gtwiz_reset_tx_pll_and_datapath_int)
   ,.gtwiz_reset_tx_datapath_in              (gtwiz_reset_tx_datapath_int)
   ,.gtwiz_reset_rx_pll_and_datapath_in      ({1{hb_gtwiz_reset_rx_pll_and_datapath_int}})
   ,.gtwiz_reset_rx_datapath_in              ({1{hb_gtwiz_reset_rx_datapath_int}})
   ,.gtwiz_reset_rx_cdr_stable_out           (gtwiz_reset_rx_cdr_stable_int)
   ,.gtwiz_reset_tx_done_out                 (gtwiz_reset_tx_done_int)
   ,.gtwiz_reset_rx_done_out                 (gtwiz_reset_rx_done_int)
   ,.gtwiz_userdata_tx_in                    (gtwiz_userdata_tx_int)
   ,.gtwiz_userdata_rx_out                   (gtwiz_userdata_rx_int)
   ,.drpclk_in                               (drpclk_int)
   ,.gtrefclk0_in                            (gtrefclk0_int)
   ,.rx8b10ben_in                            (rx8b10ben_int)
   ,.rxbufreset_in                           (rxbufreset_int)
   ,.rxcommadeten_in                         (rxcommadeten_int)
   ,.rxmcommaalignen_in                      (rxmcommaalignen_int)
   ,.rxpcommaalignen_in                      (rxpcommaalignen_int)
   ,.rxpolarity_in                           (rxpolarity_int)
   ,.rxprbssel_in                            (rxprbssel_int)
   ,.tx8b10ben_in                            (tx8b10ben_int)
   ,.txctrl0_in                              (txctrl0_int)
   ,.txctrl1_in                              (txctrl1_int)
   ,.txctrl2_in                              (txctrl2_int)
   ,.txpolarity_in                           (txpolarity_int)
   ,.txprbssel_in                            (txprbssel_int)
   ,.gtpowergood_out                         (gtpowergood_int)
   ,.rxbufstatus_out                         (rxbufstatus_int)
   ,.rxbyteisaligned_out                     (rxbyteisaligned_int)
   ,.rxbyterealign_out                       (rxbyterealign_int)
   ,.rxclkcorcnt_out                         (rxclkcorcnt_int)
   ,.rxcommadet_out                          (rxcommadet_int)
   ,.rxctrl0_out                             (rxctrl0_int)
   ,.rxctrl1_out                             (rxctrl1_int)
   ,.rxctrl2_out                             (rxctrl2_int)
   ,.rxctrl3_out                             (rxctrl3_int)
   ,.rxpmaresetdone_out                      (rxpmaresetdone_int)
   ,.rxprbserr_out                           (rxprbserr_int)
   ,.rxprbslocked_out                        (rxprbslocked_int)
   ,.txpmaresetdone_out                      (txpmaresetdone_int)
);

// logic for c2c stream interface
    // alignment logic
    // GTP only supports 2-byte alignment
    // this logic realigns to 4-byte boundary
    reg [31:0] rxd_r [1:0][1:0];
    reg [ 3:0] rxk_r [1:0][1:0];
    reg [ 1:0] alignment_b0;
    reg [ 1:0] alignment_lock = 4'b0;
    integer i;
    reg [7:0] ready_cnt = 8'h0;
    reg [1:0] rx_k;
    
    wire [31:0] clkc_d = 32'h000050bc; // clock correction symbol = IDLE
    wire [31:0] clkc_swapped = {clkc_d[15:0], clkc_d[31:16]};
    wire [ 3:0] clkc_k = 4'b0001;
    
    wire [31:0] zero_d = 32'h0; // zero data, invalid for c2c
    wire [ 3:0] zero_k = 4'b0;
    
    
    // sync patterns used by c2c master
    wire [31:0] mpatd0 = 32'h000808dc; 
    wire [31:0] mpatd1 = 32'h000808fc;
    wire [31:0] mpatd2 = 32'h000808ec;
    
    // sync patterns used by c2c slave
    wire [31:0] spatd0 = 32'h001011bc;
    wire [31:0] spatd1 = 32'h001011fc;
    wire [31:0] spatd2 = 32'h001011dc;
    
    reg [31:0] gt_txdata_r [1:0];
    reg [ 3:0] gt_txcharisk_r [1:0];

    wire [1:0] tx_can_cc;
    assign tx_can_cc[0] = (txdata[0] == mpatd0) || (txdata[0] == mpatd1) || (txdata[0] == zero_d);
    assign tx_can_cc[1] = (txdata[1] == mpatd0) || (txdata[1] == mpatd1) || (txdata[1] == zero_d);
    
    reg [7:0] cc_cnt; // clock correction counter
    always @(posedge usr_clk)
    begin
        cc_cnt++;
    end
    wire local_do_cc = (cc_cnt == 8'h0);
    reg [1:0] do_cc_r;
    reg [3:0] slave_rst_top = 4'b0;
    reg [3:0] slave_rst_bot = 4'b0;
        
    // link reset command pattern    
    wire [31:0] lrst_d = 32'hfcfcfcfc;
    wire [ 3:0] lrst_k = 4'b1111;
    
    // TX logic
    always @(posedge usr_clk)
    begin
        gt_txdata    = gt_txdata_r;
        gt_txcharisk = gt_txcharisk_r;
    
        // tx logic
        for (i = 0; i < 2; i++)
        begin
        
//            if (slave_rst == 4'b0111) // slave reset command
            // separate reset commands for top and bottom AXI links
            // TX 1 = top, TX 0 = bot
            if ((slave_rst_top[0] == 1'b1 && slave_rst_top[3] == 1'b0 && i == 1) || // slave reset command extended
                (slave_rst_bot[0] == 1'b1 && slave_rst_bot[3] == 1'b0 && i == 0))
            begin
                gt_txdata_r[i] = lrst_d;    
                gt_txcharisk_r[i] = lrst_k; 
            end
            else
            if (txvalid[i] == 1'b0)
            begin
                if (do_cc_r[i]) // CC needed 
                begin
                    // send CC
                    gt_txdata_r[i] = clkc_d;    
                    gt_txcharisk_r[i] = clkc_k; 
                    do_cc_r[i] = 1'b0;
                end
                else
                begin
                    // CC not needed, send zeros
                    gt_txdata_r[i] = zero_d;    
                    gt_txcharisk_r[i] = zero_k;
                end 
            end
            else
            begin 
                if (do_cc_r[i] && tx_can_cc[i]) // CC needed and data can be interrupted
                begin
                    // send CC
                    gt_txdata_r[i] = clkc_d;    
                    gt_txcharisk_r[i] = clkc_k;
                    do_cc_r[i] = 1'b0; 
                end
                else
                begin
                    // valid data, send as is.   
                    gt_txdata_r[i] = txdata[i]; 
                    gt_txcharisk_r[i] = zero_k;
                end
            end
        end
        if (local_do_cc) do_cc_r = 4'b1111;   
        slave_rst_top = {slave_rst_top[2:0], c2c_slave_reset_top};      
        slave_rst_bot = {slave_rst_bot[2:0], c2c_slave_reset_bot};      
    end    
    
    reg [31:0] rxdata_r [1:0];
    reg [1:0] rxvalid_r;    
    
    // RX logic
    always @(posedge usr_clk)
    begin
    
        txready = 4'b1111;

        // remember previous data sample
        rxdata_r = rxdata;
        rxvalid_r = rxvalid;
    
        for (i = 0; i < 2; i++)
        begin
        
            rxvalid[i] = 1'b0; // invalid data
            rxdata[i] = 32'h0;
            if (alignment_lock[i] == 1'b1) // alignment is locked
            begin
                if (alignment_b0[i] == 1'b1) // byte 0 aligned, just pass data to output
                begin
                    rxdata[i] = rxd_r[1][i];
                    rx_k[i]   = rxk_r[1][i];
                end
                else
                begin // byte 2 aligned, need swizzling
                    rxdata[i] = {rxd_r[0][i][15:0], rxd_r[1][i][31:16]};
                    rx_k[i]   = {rxk_r[0][i][ 1:0], rxk_r[1][i][ 3: 2]};
                end
                
                if (rx_k[i] == clkc_k && rxdata[i] == clkc_d) // CC symbol
                begin
                    rxdata[i] = zero_d; // replace with invalid data 
                    rxvalid[i] = 1'b0; 
                end
                else
                begin
                    rxvalid[i] = channel_up[i]; // valid if byteisaligned
                end
            end
        
            if (rxk_r[1][i] == clkc_k && rxd_r[1][i] == clkc_d) // byte 0 alignment
            begin
                alignment_b0[i] = 1'b1;
                alignment_lock[i] = 1'b1;
            end
            else if (rxk_r[1][i] == 4'b0100 && rxd_r[1][i] == clkc_swapped) // byte 2 alignment
            begin
                alignment_b0[i] = 1'b0;
                alignment_lock[i] = 1'b1;
            end  
        end
    
        rxd_r[1] = rxd_r[0];
        rxk_r[1] = rxk_r[0];
    
        rxd_r[0][0] = gt0_rxdata_i;
        rxd_r[0][1] = gt1_rxdata_i;
        
        rxk_r[0][0] = gt0_rxcharisk_i;
        rxk_r[0][1] = gt1_rxcharisk_i;
    end

    assign rxd_raw = rxd_r[0];
    assign rxk_raw = rxk_r[0];
    assign align_b0   = alignment_b0; 
    assign align_lock = alignment_lock;



endmodule
