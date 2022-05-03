`timescale 1ns / 1ps
`define DLY #1

(* DowngradeIPIdentifiedWarnings="yes" *)
//***********************************Entity Declaration************************
(* CORE_GENERATION_INFO = "c2c_mgt,gtwizard_v3_6_12,{protocol_file=Start_from_scratch}" *)
module c2c_mgt_tux 
(
    input wire  Q0_CLK1_GTREFCLK_PAD_N_IN,
    input wire  Q0_CLK1_GTREFCLK_PAD_P_IN,
    input wire  DRP_CLK_IN,

    input  wire [3:0]   RXN_IN,
    input  wire [3:0]   RXP_IN,
    output wire [3:0]   TXN_OUT,
    output wire [3:0]   TXP_OUT,
    
    input soft_reset_i,
    
    // interface for c2c TX
    input  [31:0] txdata [3:0],
    input  [ 3:0] txvalid,
    output reg [ 3:0] txready,
    input  [ 3:0] do_cc,
    
    // interface for c2c RX
    output reg [31:0] rxdata [3:0],
    output reg [ 3:0] rxvalid,
    
    // raw data for debugging
    output [31:0] rxd_raw [3:0],
    output [ 3:0] rxk_raw [3:0],
    output reg [31:0] gt_txdata [3:0],
    output reg [ 3:0] gt_txcharisk [3:0],


    output [ 3:0] align_b0,
    output [ 3:0] align_lock,
    
    output [3:0] channel_up,
    input  [2:0] prbs_sel, 
    output [3:0] prbs_err,
    input  [3:0] tx_polarity,
    output [1:0] rxclkcorcnt [3:0],
    input  [3:0] link_up,
    input  c2c_slave_reset_top,
    input  c2c_slave_reset_bot,
    
    output usr_clk // single user clock for tx and rx
);

    wire soft_reset_vio_i;

//************************** Register Declarations ****************************
    wire            gt_txfsmresetdone_i;
    wire            gt_rxfsmresetdone_i;
    (* ASYNC_REG = "TRUE" *)reg             gt_txfsmresetdone_r;
    (* ASYNC_REG = "TRUE" *)reg             gt_txfsmresetdone_r2;
wire            gt0_txfsmresetdone_i;
wire            gt0_rxfsmresetdone_i;
(* ASYNC_REG = "TRUE" *)reg             gt0_txfsmresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt0_txfsmresetdone_r2;
    (* ASYNC_REG = "TRUE" *)reg             gt0_rxfsmresetdone_r;
    (* ASYNC_REG = "TRUE" *)reg             gt0_rxfsmresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt0_rxresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt0_rxresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt0_rxresetdone_r3;

wire            gt1_txfsmresetdone_i;
wire            gt1_rxfsmresetdone_i;
(* ASYNC_REG = "TRUE" *)reg             gt1_txfsmresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt1_txfsmresetdone_r2;
    (* ASYNC_REG = "TRUE" *)reg             gt1_rxfsmresetdone_r;
    (* ASYNC_REG = "TRUE" *)reg             gt1_rxfsmresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt1_rxresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt1_rxresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt1_rxresetdone_r3;

wire            gt2_txfsmresetdone_i;
wire            gt2_rxfsmresetdone_i;
(* ASYNC_REG = "TRUE" *)reg             gt2_txfsmresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt2_txfsmresetdone_r2;
    (* ASYNC_REG = "TRUE" *)reg             gt2_rxfsmresetdone_r;
    (* ASYNC_REG = "TRUE" *)reg             gt2_rxfsmresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt2_rxresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt2_rxresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt2_rxresetdone_r3;

wire            gt3_txfsmresetdone_i;
wire            gt3_rxfsmresetdone_i;
(* ASYNC_REG = "TRUE" *)reg             gt3_txfsmresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt3_txfsmresetdone_r2;
    (* ASYNC_REG = "TRUE" *)reg             gt3_rxfsmresetdone_r;
    (* ASYNC_REG = "TRUE" *)reg             gt3_rxfsmresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt3_rxresetdone_r;
(* ASYNC_REG = "TRUE" *)reg             gt3_rxresetdone_r2;
(* ASYNC_REG = "TRUE" *)reg             gt3_rxresetdone_r3;


//**************************** Wire Declarations ******************************//
    //------------------------ GT Wrapper Wires ------------------------------
    //________________________________________________________________________
    //________________________________________________________________________
    //GT0  (X0Y0)
    //-------------------------- Channel - DRP Ports  --------------------------
    wire    [8:0]   gt0_drpaddr_i;
    wire    [15:0]  gt0_drpdi_i;
    wire    [15:0]  gt0_drpdo_i;
    wire            gt0_drpen_i;
    wire            gt0_drprdy_i;
    wire            gt0_drpwe_i;
    //------------------- RX Initialization and Reset Ports --------------------
    wire            gt0_eyescanreset_i;
    wire            gt0_rxuserrdy_i;
    //------------------------ RX Margin Analysis Ports ------------------------
    wire            gt0_eyescandataerror_i;
    wire            gt0_eyescantrigger_i;
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    wire    [31:0]  gt0_rxdata_i;
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    wire            gt0_rxprbserr_i;
    wire    [2:0]   gt0_rxprbssel_i;
    //----------------- Receive Ports - Pattern Checker ports ------------------
    wire            gt0_rxprbscntreset_i;
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
    wire    [3:0]   gt0_rxcharisk_i;
    wire    [3:0]   gt0_rxdisperr_i;
    wire    [3:0]   gt0_rxnotintable_i;
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    wire            gt0_gtprxn_i;
    wire            gt0_gtprxp_i;
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    wire            gt0_rxmcommaalignen_i;
    wire            gt0_rxpcommaalignen_i;
    //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
    wire    [14:0]  gt0_dmonitorout_i;
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    wire            gt0_rxlpmhfhold_i;
    wire            gt0_rxlpmlfhold_i;
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    wire            gt0_rxoutclk_i;
    wire            gt0_rxoutclkfabric_i;
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    wire            gt0_gtrxreset_i;
    wire            gt0_rxlpmreset_i;
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    wire            gt0_rxpolarity_i;
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    wire            gt0_rxresetdone_i;
    //------------------- TX Initialization and Reset Ports --------------------
    wire            gt0_gttxreset_i;
    wire            gt0_txuserrdy_i;
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    wire    [31:0]  gt0_txdata_i;
    //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
    wire    [3:0]   gt0_txcharisk_i;
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    wire            gt0_gtptxn_i;
    wire            gt0_gtptxp_i;
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    wire            gt0_txoutclk_i;
    wire            gt0_txoutclkfabric_i;
    wire            gt0_txoutclkpcs_i;
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    wire            gt0_txresetdone_i;
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    wire            gt0_txpolarity_i;
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    wire    [2:0]   gt0_txprbssel_i;
    //________________________________________________________________________
    //________________________________________________________________________
    //GT1  (X0Y1)
    //-------------------------- Channel - DRP Ports  --------------------------
    wire    [8:0]   gt1_drpaddr_i;
    wire    [15:0]  gt1_drpdi_i;
    wire    [15:0]  gt1_drpdo_i;
    wire            gt1_drpen_i;
    wire            gt1_drprdy_i;
    wire            gt1_drpwe_i;
    //------------------- RX Initialization and Reset Ports --------------------
    wire            gt1_eyescanreset_i;
    wire            gt1_rxuserrdy_i;
    //------------------------ RX Margin Analysis Ports ------------------------
    wire            gt1_eyescandataerror_i;
    wire            gt1_eyescantrigger_i;
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    wire    [31:0]  gt1_rxdata_i;
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    wire            gt1_rxprbserr_i;
    wire    [2:0]   gt1_rxprbssel_i;
    //----------------- Receive Ports - Pattern Checker ports ------------------
    wire            gt1_rxprbscntreset_i;
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
    wire    [3:0]   gt1_rxcharisk_i;
    wire    [3:0]   gt1_rxdisperr_i;
    wire    [3:0]   gt1_rxnotintable_i;
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    wire            gt1_gtprxn_i;
    wire            gt1_gtprxp_i;
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    wire            gt1_rxmcommaalignen_i;
    wire            gt1_rxpcommaalignen_i;
    //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
    wire    [14:0]  gt1_dmonitorout_i;
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    wire            gt1_rxlpmhfhold_i;
    wire            gt1_rxlpmlfhold_i;
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    wire            gt1_rxoutclk_i;
    wire            gt1_rxoutclkfabric_i;
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    wire            gt1_gtrxreset_i;
    wire            gt1_rxlpmreset_i;
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    wire            gt1_rxpolarity_i;
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    wire            gt1_rxresetdone_i;
    //------------------- TX Initialization and Reset Ports --------------------
    wire            gt1_gttxreset_i;
    wire            gt1_txuserrdy_i;
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    wire    [31:0]  gt1_txdata_i;
    //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
    wire    [3:0]   gt1_txcharisk_i;
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    wire            gt1_gtptxn_i;
    wire            gt1_gtptxp_i;
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    wire            gt1_txoutclk_i;
    wire            gt1_txoutclkfabric_i;
    wire            gt1_txoutclkpcs_i;
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    wire            gt1_txresetdone_i;
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    wire            gt1_txpolarity_i;
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    wire    [2:0]   gt1_txprbssel_i;

    //________________________________________________________________________
    //________________________________________________________________________
    //GT2  (X0Y2)
    //-------------------------- Channel - DRP Ports  --------------------------
    wire    [8:0]   gt2_drpaddr_i;
    wire    [15:0]  gt2_drpdi_i;
    wire    [15:0]  gt2_drpdo_i;
    wire            gt2_drpen_i;
    wire            gt2_drprdy_i;
    wire            gt2_drpwe_i;
    //------------------- RX Initialization and Reset Ports --------------------
    wire            gt2_eyescanreset_i;
    wire            gt2_rxuserrdy_i;
    //------------------------ RX Margin Analysis Ports ------------------------
    wire            gt2_eyescandataerror_i;
    wire            gt2_eyescantrigger_i;
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    wire    [31:0]  gt2_rxdata_i;
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    wire            gt2_rxprbserr_i;
    wire    [2:0]   gt2_rxprbssel_i;
    //----------------- Receive Ports - Pattern Checker ports ------------------
    wire            gt2_rxprbscntreset_i;
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
    wire    [3:0]   gt2_rxcharisk_i;
    wire    [3:0]   gt2_rxdisperr_i;
    wire    [3:0]   gt2_rxnotintable_i;
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    wire            gt2_gtprxn_i;
    wire            gt2_gtprxp_i;
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    wire            gt2_rxmcommaalignen_i;
    wire            gt2_rxpcommaalignen_i;
    //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
    wire    [14:0]  gt2_dmonitorout_i;
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    wire            gt2_rxlpmhfhold_i;
    wire            gt2_rxlpmlfhold_i;
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    wire            gt2_rxoutclk_i;
    wire            gt2_rxoutclkfabric_i;
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    wire            gt2_gtrxreset_i;
    wire            gt2_rxlpmreset_i;
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    wire            gt2_rxpolarity_i;
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    wire            gt2_rxresetdone_i;
    //------------------- TX Initialization and Reset Ports --------------------
    wire            gt2_gttxreset_i;
    wire            gt2_txuserrdy_i;
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    wire    [31:0]  gt2_txdata_i;
    //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
    wire    [3:0]   gt2_txcharisk_i;
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    wire            gt2_gtptxn_i;
    wire            gt2_gtptxp_i;
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    wire            gt2_txoutclk_i;
    wire            gt2_txoutclkfabric_i;
    wire            gt2_txoutclkpcs_i;
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    wire            gt2_txresetdone_i;
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    wire            gt2_txpolarity_i;
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    wire    [2:0]   gt2_txprbssel_i;

    //________________________________________________________________________
    //________________________________________________________________________
    //GT3  (X0Y3)
    //-------------------------- Channel - DRP Ports  --------------------------
    wire    [8:0]   gt3_drpaddr_i;
    wire    [15:0]  gt3_drpdi_i;
    wire    [15:0]  gt3_drpdo_i;
    wire            gt3_drpen_i;
    wire            gt3_drprdy_i;
    wire            gt3_drpwe_i;
    //------------------- RX Initialization and Reset Ports --------------------
    wire            gt3_eyescanreset_i;
    wire            gt3_rxuserrdy_i;
    //------------------------ RX Margin Analysis Ports ------------------------
    wire            gt3_eyescandataerror_i;
    wire            gt3_eyescantrigger_i;
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    wire    [31:0]  gt3_rxdata_i;
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    wire            gt3_rxprbserr_i;
    wire    [2:0]   gt3_rxprbssel_i;
    //----------------- Receive Ports - Pattern Checker ports ------------------
    wire            gt3_rxprbscntreset_i;
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
    wire    [3:0]   gt3_rxcharisk_i;
    wire    [3:0]   gt3_rxdisperr_i;
    wire    [3:0]   gt3_rxnotintable_i;
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    wire            gt3_gtprxn_i;
    wire            gt3_gtprxp_i;
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    wire            gt3_rxmcommaalignen_i;
    wire            gt3_rxpcommaalignen_i;
    //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
    wire    [14:0]  gt3_dmonitorout_i;
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    wire            gt3_rxlpmhfhold_i;
    wire            gt3_rxlpmlfhold_i;
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    wire            gt3_rxoutclk_i;
    wire            gt3_rxoutclkfabric_i;
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    wire            gt3_gtrxreset_i;
    wire            gt3_rxlpmreset_i;
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    wire            gt3_rxpolarity_i;
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    wire            gt3_rxresetdone_i;
    //------------------- TX Initialization and Reset Ports --------------------
    wire            gt3_gttxreset_i;
    wire            gt3_txuserrdy_i;
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    wire    [31:0]  gt3_txdata_i;
    //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
    wire    [3:0]   gt3_txcharisk_i;
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    wire            gt3_gtptxn_i;
    wire            gt3_gtptxp_i;
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    wire            gt3_txoutclk_i;
    wire            gt3_txoutclkfabric_i;
    wire            gt3_txoutclkpcs_i;
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    wire            gt3_txresetdone_i;
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    wire            gt3_txpolarity_i;
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    wire    [2:0]   gt3_txprbssel_i;

    //____________________________COMMON PORTS________________________________
    //------------------------ Common Block - PLL Ports ------------------------
    wire            gt0_pll0lock_i;
    wire            gt0_pll0refclklost_i;
    wire            gt0_pll0reset_i;

    wire gt0_rxbyteisaligned_out;
    wire gt1_rxbyteisaligned_out;
    wire gt2_rxbyteisaligned_out;
    wire gt3_rxbyteisaligned_out;
    assign channel_up = {gt3_rxbyteisaligned_out, gt2_rxbyteisaligned_out, 
                         gt1_rxbyteisaligned_out, gt0_rxbyteisaligned_out};

    //----------------------------- Global Signals -----------------------------

wire            drpclk_in_i;
wire            DRPCLK_IN;
wire            gt0_tx_system_reset_c;
wire            gt0_rx_system_reset_c;
wire            gt1_tx_system_reset_c;
wire            gt1_rx_system_reset_c;
wire            gt2_tx_system_reset_c;
wire            gt2_rx_system_reset_c;
wire            gt3_tx_system_reset_c;
wire            gt3_rx_system_reset_c;
wire            tied_to_ground_i;
wire    [63:0]  tied_to_ground_vec_i;
wire            tied_to_vcc_i;
wire    [7:0]   tied_to_vcc_vec_i;
wire            GTTXRESET_IN;
wire            GTRXRESET_IN;
wire            PLL0RESET_IN;
wire            PLL1RESET_IN;

     //--------------------------- User Clocks ---------------------------------
 wire            gt0_txusrclk_i; 
 wire            gt0_txusrclk2_i; // this one is used as main user clock
 assign usr_clk = gt0_txusrclk2_i; // all [tr]xusrclk2 below are the same clock derived from gt0_txusrclk2_i
 // see gt_usrclk_source module inside core
 wire            gt0_rxusrclk_i; 
 wire            gt0_rxusrclk2_i; 
 wire            gt1_txusrclk_i;
 wire            gt1_txusrclk2_i; 
 wire            gt1_rxusrclk_i;
 wire            gt1_rxusrclk2_i; 
 wire            gt2_txusrclk_i;
 wire            gt2_txusrclk2_i; 
 wire            gt2_rxusrclk_i;
 wire            gt2_rxusrclk2_i; 
 wire            gt3_txusrclk_i;
 wire            gt3_txusrclk2_i; 
 wire            gt3_rxusrclk_i;
 wire            gt3_rxusrclk2_i; 
 
wire            gt0_txmmcm_lock_i;
wire            gt0_txmmcm_reset_i;
wire            gt0_rxmmcm_lock_i; 
wire            gt0_rxmmcm_reset_i;
wire            gt1_txmmcm_lock_i;
wire            gt1_txmmcm_reset_i;
wire            gt1_rxmmcm_lock_i; 
wire            gt1_rxmmcm_reset_i;
wire            gt2_txmmcm_lock_i;
wire            gt2_txmmcm_reset_i;
wire            gt2_rxmmcm_lock_i; 
wire            gt2_rxmmcm_reset_i;
wire            gt3_txmmcm_lock_i;
wire            gt3_txmmcm_reset_i;
wire            gt3_rxmmcm_lock_i; 
wire            gt3_rxmmcm_reset_i;
 
 
    //--------------------------- Reference Clocks ----------------------------
wire            q0_clk1_refclk_i;


    //--------------------- Frame check/gen Module Signals --------------------
wire            gt0_matchn_i;
    wire    [3:0]   gt0_txcharisk_float_i;
wire    [15:0]  gt0_txdata_float16_i;
    wire    [31:0]  gt0_txdata_float_i;
wire            gt0_block_sync_i;
wire            gt0_track_data_i;
wire    [7:0]   gt0_error_count_i;
wire            gt0_frame_check_reset_i;
wire            gt0_inc_in_i;
wire            gt0_inc_out_i;
wire    [31:0]  gt0_unscrambled_data_i;

wire            gt1_matchn_i;
    wire    [3:0]   gt1_txcharisk_float_i;
wire    [15:0]  gt1_txdata_float16_i;
    wire    [31:0]  gt1_txdata_float_i;
wire            gt1_block_sync_i;
wire            gt1_track_data_i;
wire    [7:0]   gt1_error_count_i;
wire            gt1_frame_check_reset_i;
wire            gt1_inc_in_i;
wire            gt1_inc_out_i;
wire    [31:0]  gt1_unscrambled_data_i;

wire            gt2_matchn_i;
    wire    [3:0]   gt2_txcharisk_float_i;
wire    [15:0]  gt2_txdata_float16_i;
    wire    [31:0]  gt2_txdata_float_i;
wire            gt2_block_sync_i;
wire            gt2_track_data_i;
wire    [7:0]   gt2_error_count_i;
wire            gt2_frame_check_reset_i;
wire            gt2_inc_in_i;
wire            gt2_inc_out_i;
wire    [31:0]  gt2_unscrambled_data_i;

wire            gt3_matchn_i;
    wire    [3:0]   gt3_txcharisk_float_i;
wire    [15:0]  gt3_txdata_float16_i;
    wire    [31:0]  gt3_txdata_float_i;
wire            gt3_block_sync_i;
wire            gt3_track_data_i;
wire    [7:0]   gt3_error_count_i;
wire            gt3_frame_check_reset_i;
wire            gt3_inc_in_i;
wire            gt3_inc_out_i;
wire    [31:0]  gt3_unscrambled_data_i;

wire            reset_on_data_error_i;
wire            track_data_out_i;

    //--------------------- Chipscope Signals ---------------------------------

    wire    [35:0]  tx_data_vio_control_i;
    wire    [35:0]  rx_data_vio_control_i;
    wire    [35:0]  shared_vio_control_i;
    wire    [35:0]  ila_control_i;
    wire    [35:0]  channel_drp_vio_control_i;
    wire    [35:0]  common_drp_vio_control_i;
    wire    [31:0]  tx_data_vio_async_in_i;
    wire    [31:0]  tx_data_vio_sync_in_i;
    wire    [31:0]  tx_data_vio_async_out_i;
    wire    [31:0]  tx_data_vio_sync_out_i;
    wire    [31:0]  rx_data_vio_async_in_i;
    wire    [31:0]  rx_data_vio_sync_in_i;
    wire    [31:0]  rx_data_vio_async_out_i;
    wire    [31:0]  rx_data_vio_sync_out_i;
    wire    [31:0]  shared_vio_in_i;
    wire    [31:0]  shared_vio_out_i;
    wire    [163:0] ila_in_i;
    wire    [31:0]  channel_drp_vio_async_in_i;
    wire    [31:0]  channel_drp_vio_sync_in_i;
    wire    [31:0]  channel_drp_vio_async_out_i;
    wire    [31:0]  channel_drp_vio_sync_out_i;
    wire    [31:0]  common_drp_vio_async_in_i;
    wire    [31:0]  common_drp_vio_sync_in_i;
    wire    [31:0]  common_drp_vio_async_out_i;
    wire    [31:0]  common_drp_vio_sync_out_i;

    wire    [31:0]  gt0_tx_data_vio_async_in_i;
    wire    [31:0]  gt0_tx_data_vio_sync_in_i;
    wire    [31:0]  gt0_tx_data_vio_async_out_i;
    wire    [31:0]  gt0_tx_data_vio_sync_out_i;
    wire    [31:0]  gt0_rx_data_vio_async_in_i;
    wire    [31:0]  gt0_rx_data_vio_sync_in_i;
    wire    [31:0]  gt0_rx_data_vio_async_out_i;
    wire    [31:0]  gt0_rx_data_vio_sync_out_i;
    wire    [163:0] gt0_ila_in_i;
    wire    [31:0]  gt0_channel_drp_vio_async_in_i;
    wire    [31:0]  gt0_channel_drp_vio_sync_in_i;
    wire    [31:0]  gt0_channel_drp_vio_async_out_i;
    wire    [31:0]  gt0_channel_drp_vio_sync_out_i;
    wire    [31:0]  gt0_common_drp_vio_async_in_i;
    wire    [31:0]  gt0_common_drp_vio_sync_in_i;
    wire    [31:0]  gt0_common_drp_vio_async_out_i;
    wire    [31:0]  gt0_common_drp_vio_sync_out_i;

    wire    [31:0]  gt1_tx_data_vio_async_in_i;
    wire    [31:0]  gt1_tx_data_vio_sync_in_i;
    wire    [31:0]  gt1_tx_data_vio_async_out_i;
    wire    [31:0]  gt1_tx_data_vio_sync_out_i;
    wire    [31:0]  gt1_rx_data_vio_async_in_i;
    wire    [31:0]  gt1_rx_data_vio_sync_in_i;
    wire    [31:0]  gt1_rx_data_vio_async_out_i;
    wire    [31:0]  gt1_rx_data_vio_sync_out_i;
    wire    [163:0] gt1_ila_in_i;
    wire    [31:0]  gt1_channel_drp_vio_async_in_i;
    wire    [31:0]  gt1_channel_drp_vio_sync_in_i;
    wire    [31:0]  gt1_channel_drp_vio_async_out_i;
    wire    [31:0]  gt1_channel_drp_vio_sync_out_i;
    wire    [31:0]  gt1_common_drp_vio_async_in_i;
    wire    [31:0]  gt1_common_drp_vio_sync_in_i;
    wire    [31:0]  gt1_common_drp_vio_async_out_i;
    wire    [31:0]  gt1_common_drp_vio_sync_out_i;

    wire    [31:0]  gt2_tx_data_vio_async_in_i;
    wire    [31:0]  gt2_tx_data_vio_sync_in_i;
    wire    [31:0]  gt2_tx_data_vio_async_out_i;
    wire    [31:0]  gt2_tx_data_vio_sync_out_i;
    wire    [31:0]  gt2_rx_data_vio_async_in_i;
    wire    [31:0]  gt2_rx_data_vio_sync_in_i;
    wire    [31:0]  gt2_rx_data_vio_async_out_i;
    wire    [31:0]  gt2_rx_data_vio_sync_out_i;
    wire    [163:0] gt2_ila_in_i;
    wire    [31:0]  gt2_channel_drp_vio_async_in_i;
    wire    [31:0]  gt2_channel_drp_vio_sync_in_i;
    wire    [31:0]  gt2_channel_drp_vio_async_out_i;
    wire    [31:0]  gt2_channel_drp_vio_sync_out_i;
    wire    [31:0]  gt2_common_drp_vio_async_in_i;
    wire    [31:0]  gt2_common_drp_vio_sync_in_i;
    wire    [31:0]  gt2_common_drp_vio_async_out_i;
    wire    [31:0]  gt2_common_drp_vio_sync_out_i;

    wire    [31:0]  gt3_tx_data_vio_async_in_i;
    wire    [31:0]  gt3_tx_data_vio_sync_in_i;
    wire    [31:0]  gt3_tx_data_vio_async_out_i;
    wire    [31:0]  gt3_tx_data_vio_sync_out_i;
    wire    [31:0]  gt3_rx_data_vio_async_in_i;
    wire    [31:0]  gt3_rx_data_vio_sync_in_i;
    wire    [31:0]  gt3_rx_data_vio_async_out_i;
    wire    [31:0]  gt3_rx_data_vio_sync_out_i;
    wire    [163:0] gt3_ila_in_i;
    wire    [31:0]  gt3_channel_drp_vio_async_in_i;
    wire    [31:0]  gt3_channel_drp_vio_sync_in_i;
    wire    [31:0]  gt3_channel_drp_vio_async_out_i;
    wire    [31:0]  gt3_channel_drp_vio_sync_out_i;
    wire    [31:0]  gt3_common_drp_vio_async_in_i;
    wire    [31:0]  gt3_common_drp_vio_sync_in_i;
    wire    [31:0]  gt3_common_drp_vio_async_out_i;
    wire    [31:0]  gt3_common_drp_vio_sync_out_i;


wire            gttxreset_i;
wire            gtrxreset_i;
    wire    [1:0]   mux_sel_i;

wire            user_tx_reset_i;
wire            user_rx_reset_i;
wire            tx_vio_clk_i;
wire            tx_vio_clk_mux_out_i;    
wire            rx_vio_ila_clk_i;
wire            rx_vio_ila_clk_mux_out_i;

wire            pll0reset_i;
wire            pll1reset_i;
wire            pll0pd_i;
wire            pll1pd_i;

  wire [(80 -32) -1:0] zero_vector_rx_80 ;
  wire [(8 -4) -1:0] zero_vector_rx_8 ;
  wire [79:0] gt0_rxdata_ila ;
  wire [1:0]  gt0_rxdatavalid_ila; 
  wire [7:0]  gt0_rxcharisk_ila ;
  wire gt0_txmmcm_lock_ila ;
  wire gt0_rxmmcm_lock_ila ;
  wire gt0_rxresetdone_ila ;
  wire gt0_txresetdone_ila ;
  wire [79:0] gt1_rxdata_ila ;
  wire [1:0]  gt1_rxdatavalid_ila; 
  wire [7:0]  gt1_rxcharisk_ila ;
  wire gt1_txmmcm_lock_ila ;
  wire gt1_rxmmcm_lock_ila ;
  wire gt1_rxresetdone_ila ;
  wire gt1_txresetdone_ila ;
  wire [79:0] gt2_rxdata_ila ;
  wire [1:0]  gt2_rxdatavalid_ila; 
  wire [7:0]  gt2_rxcharisk_ila ;
  wire gt2_txmmcm_lock_ila ;
  wire gt2_rxmmcm_lock_ila ;
  wire gt2_rxresetdone_ila ;
  wire gt2_txresetdone_ila ;
  wire [79:0] gt3_rxdata_ila ;
  wire [1:0]  gt3_rxdatavalid_ila; 
  wire [7:0]  gt3_rxcharisk_ila ;
  wire gt3_txmmcm_lock_ila ;
  wire gt3_rxmmcm_lock_ila ;
  wire gt3_rxresetdone_ila ;
  wire gt3_txresetdone_ila ;

    assign prbs_err = {gt3_rxprbserr_i, gt2_rxprbserr_i, gt1_rxprbserr_i, gt0_rxprbserr_i};

//**************************** Main Body of Code *******************************

    //  Static signal Assigments    
    assign tied_to_ground_i      = 1'b0;
    assign tied_to_ground_vec_i  = 64'h0000000000000000;
    assign tied_to_vcc_i         = 1'b1;
    assign tied_to_vcc_vec_i     = 8'hff;

    assign zero_vector_rx_80 = 0;
    assign zero_vector_rx_8 = 0;


    //***********************************************************************//
    //                                                                       //
    //--------------------------- The GT Wrapper ----------------------------//
    //                                                                       //
    //***********************************************************************//
    
    // Use the instantiation template in the example directory to add the GT wrapper to your design.
    // In this example, the wrapper is wired up for basic operation with a frame generator and frame 
    // checker. The GTs will reset, then attempt to align and transmit data. If channel bonding is 
    // enabled, bonding should occur after alignment.
    // While connecting the GT TX/RX Reset ports below, please add a delay of
    // minimum 500ns as mentioned in AR 43482.

// selection of the cores below is done depending on the run settings
// unfortunately Vivado does not handle it nicely
`ifdef C2C_2P5G
    c2c_mgt_2p5g // 2.5G
`else
`ifdef C2C_3P125G
    c2c_mgt_3p125g // 3.125G
`else
    c2c_mgt // 3.75G
`endif
`endif 
    c2c_mgt_support_i
    (
        .soft_reset_tx_in               (soft_reset_i),
        .soft_reset_rx_in               (soft_reset_i),
        .dont_reset_on_data_error_in    (1'b1),
    .q0_clk1_gtrefclk_pad_n_in(Q0_CLK1_GTREFCLK_PAD_N_IN),
    .q0_clk1_gtrefclk_pad_p_in(Q0_CLK1_GTREFCLK_PAD_P_IN),
        .gt0_tx_mmcm_lock_out           (gt0_txmmcm_lock_i),
        .gt0_rx_mmcm_lock_out           (gt0_rxmmcm_lock_i),
        .gt0_tx_fsm_reset_done_out      (gt0_txfsmresetdone_i),
        .gt0_rx_fsm_reset_done_out      (gt0_rxfsmresetdone_i),
        .gt0_data_valid_in              (1'b1),
        .gt1_tx_mmcm_lock_out           (gt1_txmmcm_lock_i),
        .gt1_rx_mmcm_lock_out           (gt1_rxmmcm_lock_i),
        .gt1_tx_fsm_reset_done_out      (gt1_txfsmresetdone_i),
        .gt1_rx_fsm_reset_done_out      (gt1_rxfsmresetdone_i),
        .gt1_data_valid_in              (1'b1),
        .gt2_tx_mmcm_lock_out           (gt2_txmmcm_lock_i),
        .gt2_rx_mmcm_lock_out           (gt2_rxmmcm_lock_i),
        .gt2_tx_fsm_reset_done_out      (gt2_txfsmresetdone_i),
        .gt2_rx_fsm_reset_done_out      (gt2_rxfsmresetdone_i),
        .gt2_data_valid_in              (1'b1),
        .gt3_tx_mmcm_lock_out           (gt3_txmmcm_lock_i),
        .gt3_rx_mmcm_lock_out           (gt3_rxmmcm_lock_i),
        .gt3_tx_fsm_reset_done_out      (gt3_txfsmresetdone_i),
        .gt3_rx_fsm_reset_done_out      (gt3_rxfsmresetdone_i),
        .gt3_data_valid_in              (1'b1),
 
    .gt0_txusrclk_out(gt0_txusrclk_i),
    .gt0_txusrclk2_out(gt0_txusrclk2_i),
    .gt0_rxusrclk_out(gt0_rxusrclk_i),
    .gt0_rxusrclk2_out(gt0_rxusrclk2_i),
 
    .gt1_txusrclk_out(gt1_txusrclk_i),
    .gt1_txusrclk2_out(gt1_txusrclk2_i),
    .gt1_rxusrclk_out(gt1_rxusrclk_i),
    .gt1_rxusrclk2_out(gt1_rxusrclk2_i),
 
    .gt2_txusrclk_out(gt2_txusrclk_i),
    .gt2_txusrclk2_out(gt2_txusrclk2_i),
    .gt2_rxusrclk_out(gt2_rxusrclk_i),
    .gt2_rxusrclk2_out(gt2_rxusrclk2_i),
 
    .gt3_txusrclk_out(gt3_txusrclk_i),
    .gt3_txusrclk2_out(gt3_txusrclk2_i),
    .gt3_rxusrclk_out(gt3_rxusrclk_i),
    .gt3_rxusrclk2_out(gt3_rxusrclk2_i),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GT0  (X0Y0)

        //-------------------------- Channel - DRP Ports  --------------------------
        .gt0_drpaddr_in                 (gt0_drpaddr_i),
        .gt0_drpdi_in                   (gt0_drpdi_i),
        .gt0_drpdo_out                  (gt0_drpdo_i),
        .gt0_drpen_in                   (gt0_drpen_i),
        .gt0_drprdy_out                 (gt0_drprdy_i),
        .gt0_drpwe_in                   (gt0_drpwe_i),
        //------------------- RX Initialization and Reset Ports --------------------
        .gt0_eyescanreset_in            (tied_to_ground_i),
        .gt0_rxuserrdy_in               (tied_to_vcc_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescandataerror_out       (gt0_eyescandataerror_i),
        .gt0_eyescantrigger_in          (tied_to_ground_i),
        //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt0_rxdata_out                 (gt0_rxdata_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out              (gt0_rxprbserr_i),
        .gt0_rxprbssel_in               (gt0_rxprbssel_i),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in          (gt0_rxprbscntreset_i),
        //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
        .gt0_rxcharisk_out              (gt0_rxcharisk_i),
        .gt0_rxdisperr_out              (gt0_rxdisperr_i),
        .gt0_rxnotintable_out           (gt0_rxnotintable_i),
        //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt0_gtprxn_in                  (RXN_IN[0]),
        .gt0_gtprxp_in                  (RXP_IN[0]),
        //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt0_rxbyteisaligned_out        (gt0_rxbyteisaligned_out), // output wire gt0_rxbyteisaligned_out
        .gt0_rxmcommaalignen_in         (1'b0),
        .gt0_rxpcommaalignen_in         (1'b1),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .gt0_dmonitorout_out            (gt0_dmonitorout_i),
        //------------------ Receive Ports - RX Equailizer Ports -------------------
        .gt0_rxlpmhfhold_in             (tied_to_ground_i),
        .gt0_rxlpmlfhold_in             (tied_to_ground_i),
        //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt0_rxoutclkfabric_out         (gt0_rxoutclkfabric_i),
        //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt0_gtrxreset_in               (tied_to_ground_i),
        .gt0_rxlpmreset_in              (gt0_rxlpmreset_i),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt0_rxpolarity_in              (gt0_rxpolarity_i),
        //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt0_rxresetdone_out            (gt0_rxresetdone_i),
        //------------------- TX Initialization and Reset Ports --------------------
        .gt0_gttxreset_in               (tied_to_ground_i),
        .gt0_txuserrdy_in               (tied_to_vcc_i),
        //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt0_txdata_in                  (gt0_txdata_i),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt0_txcharisk_in               (gt0_txcharisk_i),
        //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt0_gtptxn_out                 (TXN_OUT[0]),
        .gt0_gtptxp_out                 (TXP_OUT[0]),
        //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt0_txoutclkfabric_out         (gt0_txoutclkfabric_i),
        .gt0_txoutclkpcs_out            (gt0_txoutclkpcs_i),
        //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt0_txresetdone_out            (gt0_txresetdone_i),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in              (gt0_txpolarity_i),
        //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt0_txprbssel_in               (gt0_txprbssel_i),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GT1  (X0Y1)

        //-------------------------- Channel - DRP Ports  --------------------------
        .gt1_drpaddr_in                 (gt1_drpaddr_i),
        .gt1_drpdi_in                   (gt1_drpdi_i),
        .gt1_drpdo_out                  (gt1_drpdo_i),
        .gt1_drpen_in                   (gt1_drpen_i),
        .gt1_drprdy_out                 (gt1_drprdy_i),
        .gt1_drpwe_in                   (gt1_drpwe_i),
        //------------------- RX Initialization and Reset Ports --------------------
        .gt1_eyescanreset_in            (tied_to_ground_i),
        .gt1_rxuserrdy_in               (tied_to_vcc_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt1_eyescandataerror_out       (gt1_eyescandataerror_i),
        .gt1_eyescantrigger_in          (tied_to_ground_i),
        //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt1_rxdata_out                 (gt1_rxdata_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt1_rxprbserr_out              (gt1_rxprbserr_i),
        .gt1_rxprbssel_in               (gt1_rxprbssel_i),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt1_rxprbscntreset_in          (gt1_rxprbscntreset_i),
        //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
        .gt1_rxcharisk_out              (gt1_rxcharisk_i),
        .gt1_rxdisperr_out              (gt1_rxdisperr_i),
        .gt1_rxnotintable_out           (gt1_rxnotintable_i),
        //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt1_gtprxn_in                  (RXN_IN[1]),
        .gt1_gtprxp_in                  (RXP_IN[1]),
        //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt1_rxbyteisaligned_out        (gt1_rxbyteisaligned_out), // output wire gt0_rxbyteisaligned_out
        .gt1_rxmcommaalignen_in         (1'b0),
        .gt1_rxpcommaalignen_in         (1'b1),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .gt1_dmonitorout_out            (gt1_dmonitorout_i),
        //------------------ Receive Ports - RX Equailizer Ports -------------------
        .gt1_rxlpmhfhold_in             (tied_to_ground_i),
        .gt1_rxlpmlfhold_in             (tied_to_ground_i),
        //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt1_rxoutclkfabric_out         (gt1_rxoutclkfabric_i),
        //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt1_gtrxreset_in               (tied_to_ground_i),
        .gt1_rxlpmreset_in              (gt1_rxlpmreset_i),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt1_rxpolarity_in              (gt1_rxpolarity_i),
        //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt1_rxresetdone_out            (gt1_rxresetdone_i),
        //------------------- TX Initialization and Reset Ports --------------------
        .gt1_gttxreset_in               (tied_to_ground_i),
        .gt1_txuserrdy_in               (tied_to_vcc_i),
        //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt1_txdata_in                  (gt1_txdata_i),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt1_txcharisk_in               (gt1_txcharisk_i),
        //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt1_gtptxn_out                 (TXN_OUT[1]),
        .gt1_gtptxp_out                 (TXP_OUT[1]),
        //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt1_txoutclkfabric_out         (gt1_txoutclkfabric_i),
        .gt1_txoutclkpcs_out            (gt1_txoutclkpcs_i),
        //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt1_txresetdone_out            (gt1_txresetdone_i),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt1_txpolarity_in              (gt1_txpolarity_i),
        //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt1_txprbssel_in               (gt1_txprbssel_i),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GT2  (X0Y2)

        //-------------------------- Channel - DRP Ports  --------------------------
        .gt2_drpaddr_in                 (gt2_drpaddr_i),
        .gt2_drpdi_in                   (gt2_drpdi_i),
        .gt2_drpdo_out                  (gt2_drpdo_i),
        .gt2_drpen_in                   (gt2_drpen_i),
        .gt2_drprdy_out                 (gt2_drprdy_i),
        .gt2_drpwe_in                   (gt2_drpwe_i),
        //------------------- RX Initialization and Reset Ports --------------------
        .gt2_eyescanreset_in            (tied_to_ground_i),
        .gt2_rxuserrdy_in               (tied_to_vcc_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt2_eyescandataerror_out       (gt2_eyescandataerror_i),
        .gt2_eyescantrigger_in          (tied_to_ground_i),
        //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt2_rxdata_out                 (gt2_rxdata_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt2_rxprbserr_out              (gt2_rxprbserr_i),
        .gt2_rxprbssel_in               (gt2_rxprbssel_i),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt2_rxprbscntreset_in          (gt2_rxprbscntreset_i),
        //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
        .gt2_rxcharisk_out              (gt2_rxcharisk_i),
        .gt2_rxdisperr_out              (gt2_rxdisperr_i),
        .gt2_rxnotintable_out           (gt2_rxnotintable_i),
        //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt2_gtprxn_in                  (RXN_IN[2]),
        .gt2_gtprxp_in                  (RXP_IN[2]),
        //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt2_rxbyteisaligned_out        (gt2_rxbyteisaligned_out), // output wire gt0_rxbyteisaligned_out
        .gt2_rxmcommaalignen_in         (1'b0),
        .gt2_rxpcommaalignen_in         (1'b1),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .gt2_dmonitorout_out            (gt2_dmonitorout_i),
        //------------------ Receive Ports - RX Equailizer Ports -------------------
        .gt2_rxlpmhfhold_in             (tied_to_ground_i),
        .gt2_rxlpmlfhold_in             (tied_to_ground_i),
        //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt2_rxoutclkfabric_out         (gt2_rxoutclkfabric_i),
        //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt2_gtrxreset_in               (tied_to_ground_i),
        .gt2_rxlpmreset_in              (gt2_rxlpmreset_i),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt2_rxpolarity_in              (gt2_rxpolarity_i),
        //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt2_rxresetdone_out            (gt2_rxresetdone_i),
        //------------------- TX Initialization and Reset Ports --------------------
        .gt2_gttxreset_in               (tied_to_ground_i),
        .gt2_txuserrdy_in               (tied_to_vcc_i),
        //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt2_txdata_in                  (gt2_txdata_i),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt2_txcharisk_in               (gt2_txcharisk_i),
        //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt2_gtptxn_out                 (TXN_OUT[2]),
        .gt2_gtptxp_out                 (TXP_OUT[2]),
        //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt2_txoutclkfabric_out         (gt2_txoutclkfabric_i),
        .gt2_txoutclkpcs_out            (gt2_txoutclkpcs_i),
        //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt2_txresetdone_out            (gt2_txresetdone_i),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt2_txpolarity_in              (gt2_txpolarity_i),
        //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt2_txprbssel_in               (gt2_txprbssel_i),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GT3  (X0Y3)

        //-------------------------- Channel - DRP Ports  --------------------------
        .gt3_drpaddr_in                 (gt3_drpaddr_i),
        .gt3_drpdi_in                   (gt3_drpdi_i),
        .gt3_drpdo_out                  (gt3_drpdo_i),
        .gt3_drpen_in                   (gt3_drpen_i),
        .gt3_drprdy_out                 (gt3_drprdy_i),
        .gt3_drpwe_in                   (gt3_drpwe_i),
        //------------------- RX Initialization and Reset Ports --------------------
        .gt3_eyescanreset_in            (tied_to_ground_i),
        .gt3_rxuserrdy_in               (tied_to_vcc_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt3_eyescandataerror_out       (gt3_eyescandataerror_i),
        .gt3_eyescantrigger_in          (tied_to_ground_i),
        //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt3_rxdata_out                 (gt3_rxdata_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt3_rxprbserr_out              (gt3_rxprbserr_i),
        .gt3_rxprbssel_in               (gt3_rxprbssel_i),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt3_rxprbscntreset_in          (gt3_rxprbscntreset_i),
        //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
        .gt3_rxcharisk_out              (gt3_rxcharisk_i),
        .gt3_rxdisperr_out              (gt3_rxdisperr_i),
        .gt3_rxnotintable_out           (gt3_rxnotintable_i),
        //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt3_gtprxn_in                  (RXN_IN[3]),
        .gt3_gtprxp_in                  (RXP_IN[3]),
        //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt3_rxbyteisaligned_out        (gt3_rxbyteisaligned_out), // output wire gt0_rxbyteisaligned_out
        .gt3_rxmcommaalignen_in         (1'b0),
        .gt3_rxpcommaalignen_in         (1'b1),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .gt3_dmonitorout_out            (gt3_dmonitorout_i),
        //------------------ Receive Ports - RX Equailizer Ports -------------------
        .gt3_rxlpmhfhold_in             (tied_to_ground_i),
        .gt3_rxlpmlfhold_in             (tied_to_ground_i),
        //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt3_rxoutclkfabric_out         (gt3_rxoutclkfabric_i),
        //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt3_gtrxreset_in               (tied_to_ground_i),
        .gt3_rxlpmreset_in              (gt3_rxlpmreset_i),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt3_rxpolarity_in              (gt3_rxpolarity_i),
        //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt3_rxresetdone_out            (gt3_rxresetdone_i),
        //------------------- TX Initialization and Reset Ports --------------------
        .gt3_gttxreset_in               (tied_to_ground_i),
        .gt3_txuserrdy_in               (tied_to_vcc_i),
        //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt3_txdata_in                  (gt3_txdata_i),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt3_txcharisk_in               (gt3_txcharisk_i),
        //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt3_gtptxn_out                 (TXN_OUT[3]),
        .gt3_gtptxp_out                 (TXP_OUT[3]),
        //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt3_txoutclkfabric_out         (gt3_txoutclkfabric_i),
        .gt3_txoutclkpcs_out            (gt3_txoutclkpcs_i),
        //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt3_txresetdone_out            (gt3_txresetdone_i),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt3_txpolarity_in              (gt3_txpolarity_i),
        //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt3_txprbssel_in               (gt3_txprbssel_i),

        .gt0_rxclkcorcnt_out            (rxclkcorcnt [0]),
        .gt1_rxclkcorcnt_out            (rxclkcorcnt [1]),
        .gt2_rxclkcorcnt_out            (rxclkcorcnt [2]),
        .gt3_rxclkcorcnt_out            (rxclkcorcnt [3]),
 
    //____________________________COMMON PORTS________________________________
    .gt0_pll0reset_out(),
    .gt0_pll0outclk_out(),
    .gt0_pll0outrefclk_out(),
    .gt0_pll0lock_out(),
    .gt0_pll0refclklost_out(),    
    .gt0_pll1outclk_out(),
    .gt0_pll1outrefclk_out(),

   .sysclk_in(drpclk_in_i)


    );

    assign drpclk_in_i = DRP_CLK_IN;

    //***********************************************************************//
    //                                                                       //
    //--------------------------- User Module Resets-------------------------//
    //                                                                       //
    //***********************************************************************//
    // All the User Modules i.e. FRAME_GEN, FRAME_CHECK and the sync modules
    // are held in reset till the RESETDONE goes high. 
    // The RESETDONE is registered a couple of times on *USRCLK2 and connected 
    // to the reset of the modules
always @(posedge  gt0_rxusrclk2_i or negedge gt0_rxresetdone_i)
    begin
        if (!gt0_rxresetdone_i)
        begin
            gt0_rxresetdone_r    <=   `DLY 1'b0;
            gt0_rxresetdone_r2   <=   `DLY 1'b0;
            gt0_rxresetdone_r3   <=   `DLY 1'b0;
        end
        else
        begin
            gt0_rxresetdone_r    <=   `DLY gt0_rxresetdone_i;
            gt0_rxresetdone_r2   <=   `DLY gt0_rxresetdone_r;
            gt0_rxresetdone_r3   <=   `DLY gt0_rxresetdone_r2;
        end
    end

always @(posedge gt0_txusrclk2_i or negedge gt0_txfsmresetdone_i)
    begin
        if (!gt0_txfsmresetdone_i)
        begin
            gt0_txfsmresetdone_r    <=   `DLY 1'b0;
            gt0_txfsmresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt0_txfsmresetdone_r    <=   `DLY gt0_txfsmresetdone_i;
            gt0_txfsmresetdone_r2   <=   `DLY gt0_txfsmresetdone_r;
        end
    end

always @(posedge  gt1_rxusrclk2_i or negedge gt1_rxresetdone_i)
    begin
        if (!gt1_rxresetdone_i)
        begin
            gt1_rxresetdone_r    <=   `DLY 1'b0;
            gt1_rxresetdone_r2   <=   `DLY 1'b0;
            gt1_rxresetdone_r3   <=   `DLY 1'b0;
        end
        else
        begin
            gt1_rxresetdone_r    <=   `DLY gt1_rxresetdone_i;
            gt1_rxresetdone_r2   <=   `DLY gt1_rxresetdone_r;
            gt1_rxresetdone_r3   <=   `DLY gt1_rxresetdone_r2;
        end
    end

always @(posedge gt1_txusrclk2_i or negedge gt1_txfsmresetdone_i)
    begin
        if (!gt1_txfsmresetdone_i)
        begin
            gt1_txfsmresetdone_r    <=   `DLY 1'b0;
            gt1_txfsmresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt1_txfsmresetdone_r    <=   `DLY gt1_txfsmresetdone_i;
            gt1_txfsmresetdone_r2   <=   `DLY gt1_txfsmresetdone_r;
        end
    end

always @(posedge  gt2_rxusrclk2_i or negedge gt2_rxresetdone_i)
    begin
        if (!gt2_rxresetdone_i)
        begin
            gt2_rxresetdone_r    <=   `DLY 1'b0;
            gt2_rxresetdone_r2   <=   `DLY 1'b0;
            gt2_rxresetdone_r3   <=   `DLY 1'b0;
        end
        else
        begin
            gt2_rxresetdone_r    <=   `DLY gt2_rxresetdone_i;
            gt2_rxresetdone_r2   <=   `DLY gt2_rxresetdone_r;
            gt2_rxresetdone_r3   <=   `DLY gt2_rxresetdone_r2;
        end
    end

always @(posedge gt2_txusrclk2_i or negedge gt2_txfsmresetdone_i)
    begin
        if (!gt2_txfsmresetdone_i)
        begin
            gt2_txfsmresetdone_r    <=   `DLY 1'b0;
            gt2_txfsmresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt2_txfsmresetdone_r    <=   `DLY gt2_txfsmresetdone_i;
            gt2_txfsmresetdone_r2   <=   `DLY gt2_txfsmresetdone_r;
        end
    end

always @(posedge  gt3_rxusrclk2_i or negedge gt3_rxresetdone_i)
    begin
        if (!gt3_rxresetdone_i)
        begin
            gt3_rxresetdone_r    <=   `DLY 1'b0;
            gt3_rxresetdone_r2   <=   `DLY 1'b0;
            gt3_rxresetdone_r3   <=   `DLY 1'b0;
        end
        else
        begin
            gt3_rxresetdone_r    <=   `DLY gt3_rxresetdone_i;
            gt3_rxresetdone_r2   <=   `DLY gt3_rxresetdone_r;
            gt3_rxresetdone_r3   <=   `DLY gt3_rxresetdone_r2;
        end
    end

always @(posedge gt3_txusrclk2_i or negedge gt3_txfsmresetdone_i)
    begin
        if (!gt3_txfsmresetdone_i)
        begin
            gt3_txfsmresetdone_r    <=   `DLY 1'b0;
            gt3_txfsmresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt3_txfsmresetdone_r    <=   `DLY gt3_txfsmresetdone_i;
            gt3_txfsmresetdone_r2   <=   `DLY gt3_txfsmresetdone_r;
        end
    end


//------------ optional Ports assignments --------------
assign  gt0_rxprbscntreset_i                 =  tied_to_ground_i;
assign  gt0_rxprbssel_i                      =  prbs_sel;
assign  gt0_rxpolarity_i                     =  tied_to_ground_i;
assign  gt0_txpolarity_i                     =  tx_polarity [0];
assign  gt0_txprbssel_i                      =  prbs_sel;

assign  gt1_rxprbscntreset_i                 =  tied_to_ground_i;
assign  gt1_rxprbssel_i                      =  prbs_sel;
assign  gt1_rxpolarity_i                     =  tied_to_ground_i;
assign  gt1_txpolarity_i                     =  tx_polarity [1];
assign  gt1_txprbssel_i                      =  prbs_sel;

assign  gt2_rxprbscntreset_i                 =  tied_to_ground_i;
assign  gt2_rxprbssel_i                      =  prbs_sel;
assign  gt2_rxpolarity_i                     =  tied_to_ground_i;
assign  gt2_txpolarity_i                     =  tx_polarity [2];
assign  gt2_txprbssel_i                      =  prbs_sel;

assign  gt3_rxprbscntreset_i                 =  tied_to_ground_i;
assign  gt3_rxprbssel_i                      =  prbs_sel;
assign  gt3_rxpolarity_i                     =  tied_to_ground_i;
assign  gt3_txpolarity_i                     =  tx_polarity [3];
assign  gt3_txprbssel_i                      =  prbs_sel;
//------------------------------------------------------


assign gt0_rxlpmreset_i = 1'b0;
assign gt0_drpaddr_i = 9'd0;
assign gt0_drpdi_i = 16'd0;
assign gt0_drpen_i = 1'b0;
assign gt0_drpwe_i = 1'b0;
assign gt1_rxlpmreset_i = 1'b0;
assign gt1_drpaddr_i = 9'd0;
assign gt1_drpdi_i = 16'd0;
assign gt1_drpen_i = 1'b0;
assign gt1_drpwe_i = 1'b0;
assign gt2_rxlpmreset_i = 1'b0;
assign gt2_drpaddr_i = 9'd0;
assign gt2_drpdi_i = 16'd0;
assign gt2_drpen_i = 1'b0;
assign gt2_drpwe_i = 1'b0;
assign gt3_rxlpmreset_i = 1'b0;
assign gt3_drpaddr_i = 9'd0;
assign gt3_drpdi_i = 16'd0;
assign gt3_drpen_i = 1'b0;
assign gt3_drpwe_i = 1'b0;


// logic for c2c stream interface
    assign gt0_txdata_i    = gt_txdata [0]; 
    assign gt1_txdata_i    = gt_txdata [1]; 
    assign gt2_txdata_i    = gt_txdata [2];
    assign gt3_txdata_i    = gt_txdata [3]; 
    assign gt0_txcharisk_i = gt_txcharisk [0];
    assign gt1_txcharisk_i = gt_txcharisk [1];
    assign gt2_txcharisk_i = gt_txcharisk [2];
    assign gt3_txcharisk_i = gt_txcharisk [3];
    
    // alignment logic
    // GTP only supports 2-byte alignment
    // this logic realigns to 4-byte boundary
    reg [31:0] rxd_r [1:0][3:0];
    reg [ 3:0] rxk_r [1:0][3:0];
    reg [ 3:0] alignment_b0;
    reg [ 3:0] alignment_lock = 4'b0;
    integer i;
    reg [7:0] ready_cnt = 8'h0;
    reg [3:0] rx_k;
    
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
    
    reg [31:0] gt_txdata_r [3:0];
    reg [ 3:0] gt_txcharisk_r [3:0];

    wire [3:0] tx_can_cc;
    assign tx_can_cc[0] = (txdata[0] == mpatd0) || (txdata[0] == mpatd1) || (txdata[0] == zero_d);
    assign tx_can_cc[1] = (txdata[1] == mpatd0) || (txdata[1] == mpatd1) || (txdata[1] == zero_d);
    assign tx_can_cc[2] = (txdata[2] == mpatd0) || (txdata[2] == mpatd1) || (txdata[2] == zero_d);
    assign tx_can_cc[3] = (txdata[3] == mpatd0) || (txdata[3] == mpatd1) || (txdata[3] == zero_d);
    
    reg [7:0] cc_cnt; // clock correction counter
    always @(posedge usr_clk)
    begin
        cc_cnt++;
    end
    wire local_do_cc = (cc_cnt == 8'h0);
    reg [3:0] do_cc_r;
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
        for (i = 0; i < 4; i++)
        begin
        
//            if (slave_rst == 4'b0111) // slave reset command
            // separate reset commands for top and bottom AXI links
            // TX 0,1 = top, TX 2,3 = bot
            if ((slave_rst_top[0] == 1'b1 && slave_rst_top[3] == 1'b0 && i <  2) || // slave reset command extended
                (slave_rst_bot[0] == 1'b1 && slave_rst_bot[3] == 1'b0 && i >= 2))
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
    
    reg [31:0] rxdata_r [3:0];
    reg [3:0] rxvalid_r;    
    
    // RX logic
    always @(posedge usr_clk)
    begin
    
        txready = 4'b1111;

        // remember previous data sample
        rxdata_r = rxdata;
        rxvalid_r = rxvalid;
    
        for (i = 0; i < 4; i++)
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
        rxd_r[0][2] = gt2_rxdata_i;
        rxd_r[0][3] = gt3_rxdata_i;
        
        rxk_r[0][0] = gt0_rxcharisk_i;
        rxk_r[0][1] = gt1_rxcharisk_i;
        rxk_r[0][2] = gt2_rxcharisk_i;
        rxk_r[0][3] = gt3_rxcharisk_i;
    end

    assign rxd_raw = rxd_r[0];
    assign rxk_raw = rxk_r[0];
    assign align_b0   = alignment_b0; 
    assign align_lock = alignment_lock;


endmodule
    
