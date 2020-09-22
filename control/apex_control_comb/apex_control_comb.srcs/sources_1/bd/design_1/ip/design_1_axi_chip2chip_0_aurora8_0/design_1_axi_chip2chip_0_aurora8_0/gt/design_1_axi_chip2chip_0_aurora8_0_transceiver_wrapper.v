///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2011 Xilinx, Inc. All rights reserved.
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
//
////////////////////////////////////////////////////////////////////////////////
//
// Module design_1_axi_chip2chip_0_aurora8_0_GT_WRAPPER
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
(* core_generation_info = "design_1_axi_chip2chip_0_aurora8_0,aurora_8b10b_v11_1_9,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=2,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=2,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=37500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
module design_1_axi_chip2chip_0_aurora8_0_GT_WRAPPER #
(
    // Channel bond MASTER/SLAVE connection
    parameter CHAN_BOND_MASTER = 1'b1,
    parameter CHAN_BOND_SLAVE = 1'b0,
    parameter CHAN_BOND_LEVEL = 3'd1,
    parameter CHAN_BOND_MASTER_LANE1 = 1'b0,
    parameter CHAN_BOND_SLAVE_LANE1 = 1'b1,
    parameter CHAN_BOND_LEVEL_LANE1 = 3'd0,

 // Simulation attributes
     parameter   EXAMPLE_SIMULATION =   0,      // Set to 1 to speed up sim reset
   parameter   SIM_GTRESET_SPEEDUP    = "FALSE"    // Set to "true" to speed up sim reset

)
(

//---------------------- Loopback and Powerdown Ports ----------------------
    LOOPBACK_IN,
//--------------------- Receive Ports - 8b10b Decoder ----------------------
RXCHARISCOMMA_OUT,
RXCHARISCOMMA_OUT_LANE1,
RXCHARISK_OUT,
RXCHARISK_OUT_LANE1,
RXDISPERR_OUT,
RXDISPERR_OUT_LANE1,
RXNOTINTABLE_OUT,
RXNOTINTABLE_OUT_LANE1,
//----------------- Receive Ports - Channel Bonding Ports -----------------
ENCHANSYNC_IN,
ENCHANSYNC_IN_LANE1,
CHBONDDONE_OUT,
CHBONDDONE_OUT_LANE1,
//----------------- Receive Ports - Clock Correction Ports -----------------
RXBUFERR_OUT,
RXBUFERR_OUT_LANE1,
//------------- Receive Ports - Comma Detection and Alignment --------------
RXREALIGN_OUT,
RXREALIGN_OUT_LANE1,
ENMCOMMAALIGN_IN,
ENMCOMMAALIGN_IN_LANE1,
ENPCOMMAALIGN_IN,
ENPCOMMAALIGN_IN_LANE1,
//----------------- Receive Ports - RX Data Path interface -----------------
RXDATA_OUT,
RXDATA_OUT_LANE1,
RXRESET_IN,
RXRESET_IN_LANE1,
    RXUSRCLK_IN,
    RXUSRCLK2_IN,
//----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
RX1N_IN,
RX1N_IN_LANE1,
RX1P_IN,
RX1P_IN_LANE1,
//--------------- Receive Ports - RX Polarity Control Ports ----------------
RXPOLARITY_IN,
RXPOLARITY_IN_LANE1,
//------------------- Shared Ports - Tile and PLL Ports --------------------
    REFCLK,
    INIT_CLK_IN,
    PLL_NOT_LOCKED,
    GTRESET_IN,
PLLLKDET_OUT,
PLLLKDET_OUT_LANE1,
    gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gt0_rxpmaresetdone_out,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    gt1_txresetdone_out,
    gt1_rxresetdone_out,
    gt1_rxpmaresetdone_out,
    gt1_txbufstatus_out,
    gt1_rxbufstatus_out,
    TX_RESETDONE_OUT,
    RX_RESETDONE_OUT,
//-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
TXCHARISK_IN,
TXCHARISK_IN_LANE1,
//---------------- Transmit Ports - TX Data Path interface -----------------
TXDATA_IN,
TXDATA_IN_LANE1,
TXOUTCLK1_OUT,
TXOUTCLK1_OUT_LANE1,
TXRESET_IN,
TXRESET_IN_LANE1,
    TXUSRCLK_IN,
    TXUSRCLK2_IN,
TXBUFERR_OUT,
TXBUFERR_OUT_LANE1,
//------------- Transmit Ports - TX Driver and OOB signalling --------------
TX1N_OUT,
TX1N_OUT_LANE1,
TX1P_OUT,
TX1P_OUT_LANE1,
    //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
DRPADDR_IN,
DRPCLK_IN,
DRPDI_IN,
DRPDO_OUT,
DRPEN_IN,
DRPRDY_OUT,
DRPWE_IN,
DRPADDR_IN_LANE1,
DRPCLK_IN_LANE1,
DRPDI_IN_LANE1,
DRPDO_OUT_LANE1,
DRPEN_IN_LANE1,
DRPRDY_OUT_LANE1,
DRPWE_IN_LANE1,
gt_common_reset_out,
//____________________________COMMON PORTS_______________________________{
gt0_pll0refclklost_in,
quad1_common_lock_in,
gt0_pll0outclk_in,
gt0_pll1outclk_in,
gt0_pll0outrefclk_in,
gt0_pll1outrefclk_in,
    //____________________________COMMON PORTS_______________________________}

    GTRXRESET_IN,
    LINK_RESET_IN,
    RXFSM_DATA_VALID,
    POWERDOWN_IN
);

`define DLY #1
//***************************** Port Declarations *****************************
//---------------------- Loopback and Powerdown Ports ----------------------
 input    [2:0]    LOOPBACK_IN;
//--------------------- Receive Ports - 8b10b Decoder ----------------------
output  [3:0]  RXCHARISCOMMA_OUT;
output  [3:0]  RXCHARISK_OUT;
output  [3:0]  RXDISPERR_OUT;
output  [3:0]  RXNOTINTABLE_OUT;
output  [3:0]  RXCHARISCOMMA_OUT_LANE1;
output  [3:0]  RXCHARISK_OUT_LANE1;
output  [3:0]  RXDISPERR_OUT_LANE1;
output  [3:0]  RXNOTINTABLE_OUT_LANE1;
//----------------- Receive Ports - Channel Bonding Ports -----------------
input             ENCHANSYNC_IN;
output            CHBONDDONE_OUT;
//----------------- Receive Ports - Clock Correction Ports -----------------
output            RXBUFERR_OUT;
//------------- Receive Ports - Comma Detection and Alignment --------------
output            RXREALIGN_OUT;
input             ENMCOMMAALIGN_IN;
input             ENPCOMMAALIGN_IN;
//----------------- Receive Ports - RX Data Path interface -----------------
output  [31:0]   RXDATA_OUT;
input             RXRESET_IN;
input             ENCHANSYNC_IN_LANE1;
output            CHBONDDONE_OUT_LANE1;
//----------------- Receive Ports - Clock Correction Ports -----------------
output            RXBUFERR_OUT_LANE1;
//------------- Receive Ports - Comma Detection and Alignment --------------
output            RXREALIGN_OUT_LANE1;
input             ENMCOMMAALIGN_IN_LANE1;
input             ENPCOMMAALIGN_IN_LANE1;
//----------------- Receive Ports - RX Data Path interface -----------------
output  [31:0]   RXDATA_OUT_LANE1;
input             RXRESET_IN_LANE1;
 input             RXUSRCLK_IN;
 input             RXUSRCLK2_IN;
//----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
input             RX1N_IN;
input             RX1P_IN;
//--------------- Receive Ports - RX Polarity Control Ports ----------------
input             RXPOLARITY_IN;
input             RX1N_IN_LANE1;
input             RX1P_IN_LANE1;
//--------------- Receive Ports - RX Polarity Control Ports ----------------
input             RXPOLARITY_IN_LANE1;
//------------------- Shared Ports - Tile and PLL Ports --------------------
 input             REFCLK;
 input             INIT_CLK_IN;
 input             PLL_NOT_LOCKED;
 input             GTRESET_IN;
output            PLLLKDET_OUT;
output            PLLLKDET_OUT_LANE1;
 output            gt0_txresetdone_out;
 output            gt0_rxresetdone_out;
 output            gt0_rxpmaresetdone_out;
 output   [1:0]    gt0_txbufstatus_out;
 output   [2:0]    gt0_rxbufstatus_out;
 output            gt1_txresetdone_out;
 output            gt1_rxresetdone_out;
 output            gt1_rxpmaresetdone_out;
 output   [1:0]    gt1_txbufstatus_out;
 output   [2:0]    gt1_rxbufstatus_out;
 output            TX_RESETDONE_OUT;
 output            RX_RESETDONE_OUT;
 input             POWERDOWN_IN;
 input             GTRXRESET_IN;  
 input             LINK_RESET_IN;
 input             RXFSM_DATA_VALID; 
output gt_common_reset_out;
//____________________________COMMON PORTS_______________________________{
input    gt0_pll0refclklost_in;
input    quad1_common_lock_in;
//----------------------- Channel - Ref Clock Ports ------------------------
input           gt0_pll0outclk_in;
input           gt0_pll1outclk_in;
input           gt0_pll0outrefclk_in;
input           gt0_pll1outrefclk_in;
//____________________________COMMON PORTS_______________________________}


//-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
input    [3:0]  TXCHARISK_IN;
//---------------- Transmit Ports - TX Data Path interface -----------------
input    [31:0]  TXDATA_IN;
output            TXOUTCLK1_OUT;
input             TXRESET_IN;
output            TXBUFERR_OUT;
input    [3:0]  TXCHARISK_IN_LANE1;
//---------------- Transmit Ports - TX Data Path interface -----------------
input    [31:0]  TXDATA_IN_LANE1;
output            TXOUTCLK1_OUT_LANE1;
input             TXRESET_IN_LANE1;
output            TXBUFERR_OUT_LANE1;
 input             TXUSRCLK_IN;
 input             TXUSRCLK2_IN;
//------------- Transmit Ports - TX Driver and OOB signalling --------------
output            TX1N_OUT;
output            TX1P_OUT;
output            TX1N_OUT_LANE1;
output            TX1P_OUT_LANE1;
//-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
input   [8:0]   DRPADDR_IN;
input           DRPCLK_IN;
input   [15:0]  DRPDI_IN;
output  [15:0]  DRPDO_OUT;
input           DRPEN_IN;
output          DRPRDY_OUT;
input           DRPWE_IN;
input   [8:0]   DRPADDR_IN_LANE1;
input           DRPCLK_IN_LANE1;
input   [15:0]  DRPDI_IN_LANE1;
output  [15:0]  DRPDO_OUT_LANE1;
input           DRPEN_IN_LANE1;
output          DRPRDY_OUT_LANE1;
input           DRPWE_IN_LANE1;
    parameter STABLE_CLOCK_PERIOD  = 10 ; //Period of the stable clock driving this state-machine, unit is [ns]
    //Typical CDRLOCK Time is 50,000UI, as per DS181
    parameter RX_CDRLOCK_TIME      = (EXAMPLE_SIMULATION == 1) ? 1000 : 50000/3.75;
       
    localparam integer   WAIT_TIME_CDRLOCK    = RX_CDRLOCK_TIME / STABLE_CLOCK_PERIOD;      
    integer  rx_cdrlock_counter= 0;

reg               rx_cdrlocked;
reg               link_reset_r;
reg               link_reset_r2;
reg               gt_rx_reset_i;

//Timing closure flipflops
 reg              gt0_txresetdone_r;
 reg              gt0_txresetdone_r2;
 reg              gt0_txresetdone_r3;
 reg              gt0_rxresetdone_r;
 reg              gt0_rxresetdone_r2;
 reg              gt0_rxresetdone_r3;
 reg              gt1_txresetdone_r;
 reg              gt1_txresetdone_r2;
 reg              gt1_txresetdone_r3;
 reg              gt1_rxresetdone_r;
 reg              gt1_rxresetdone_r2;
 reg              gt1_rxresetdone_r3;


wire    gt_pll0refclklost_i;
wire    gt_pll_lock_i;
wire              gt0_txresetdone_i;
wire              gt0_rxresetdone_i;
wire              gt1_txresetdone_i;
wire              gt1_rxresetdone_i;

wire   txfsm_txresetdone_i;
wire   rxfsm_rxresetdone_i;
reg    txfsm_txresetdone_r;
reg    rxfsm_rxresetdone_r;
reg    rxfsm_rxresetdone_r1;
reg    rxfsm_rxresetdone_r2;
reg    rxfsm_rxresetdone_r3;
wire   gt_tx_reset_i;
wire   fsm_gt_rx_reset_t;
reg    rxfsm_soft_reset_r;
wire   gt_txuserrdy_i;
wire   gt_rxuserrdy_i;
wire   gt_recclk_stable_i;
wire   mmcm_reset_i;

   wire               gtrxreset_sync; 
   reg                gtrxreset_r1; 
   reg                gtrxreset_r2; 
   reg                gtrxreset_r3; 
   reg                gtrxreset_pulse;

// Ground and VCC signals
 wire               tied_to_ground_i;
 wire    [63:0]     tied_to_ground_vec_i;
 wire               tied_to_vcc_i;
 wire    [63:0]     tied_to_vcc_vec_i;

// floating input port connection signals
wire    [1:0]      open_rxbufstatus_i;
wire               open_txbufstatus_i;
wire    [1:0]      open_rxbufstatus_lane1_i;
wire               open_txbufstatus_lane1_i;

// Channel Bonding
wire     [3:0]    chbondi;
wire     [3:0]    chbondo;
wire     [3:0]    chbondi_LANE1;
wire     [3:0]    chbondo_LANE1;

 wire     [3:0]    chbondi_unused_i;
 wire              common_reset_i;

 wire              gt_txpmaresetdone_i;

//********************************* Main Body of Code**************************
//-------------------------  Static signal Assigments ---------------------
 assign tied_to_ground_i             = 1'b0;
 assign tied_to_ground_vec_i         = 64'h0000000000000000;
 assign tied_to_vcc_i                = 1'b1;
 assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;

 assign chbondi_unused_i  = 4'b0000;

 assign  chbondi = chbondi_unused_i;
 assign  chbondi_LANE1 = chbondo;

 assign PLLLKDET_OUT_LANE1  = tied_to_vcc_i;

assign  gt_pll0refclklost_i = gt0_pll0refclklost_in;


      assign PLLLKDET_OUT      = quad1_common_lock_in && !mmcm_reset_i;

assign gt_pll_lock_i = quad1_common_lock_in;

    assign    gt0_txresetdone_out  =   gt0_txresetdone_i;
    assign    gt0_rxresetdone_out  =   gt0_rxresetdone_i;
    assign    gt0_txbufstatus_out  =   {TXBUFERR_OUT, open_txbufstatus_i};
    assign    gt0_rxbufstatus_out  =   {RXBUFERR_OUT, open_rxbufstatus_i};
    assign    gt1_txresetdone_out  =   gt1_txresetdone_i;
    assign    gt1_rxresetdone_out  =   gt1_rxresetdone_i;
    assign    gt1_txbufstatus_out  =   {TXBUFERR_OUT_LANE1, open_txbufstatus_lane1_i};
    assign    gt1_rxbufstatus_out  =   {RXBUFERR_OUT_LANE1, open_rxbufstatus_lane1_i};

      //TXRESETDONE for lane0
      always @ (posedge TXUSRCLK2_IN)
      begin
        gt0_txresetdone_r    <=  `DLY gt0_txresetdone_i;
        gt0_txresetdone_r2   <=  `DLY gt0_txresetdone_r;
        gt0_txresetdone_r3   <=  `DLY gt0_txresetdone_r2;
      end

      //TXRESETDONE for lane1
      always @ (posedge TXUSRCLK2_IN)
      begin
        gt1_txresetdone_r    <=  `DLY gt1_txresetdone_i;
        gt1_txresetdone_r2   <=  `DLY gt1_txresetdone_r;
        gt1_txresetdone_r3   <=  `DLY gt1_txresetdone_r2;
      end


      //RXRESETDONE for lane0
      always @ (posedge RXUSRCLK2_IN)
      begin
        gt0_rxresetdone_r    <=  `DLY gt0_rxresetdone_i;
        gt0_rxresetdone_r2   <=  `DLY gt0_rxresetdone_r;
        gt0_rxresetdone_r3   <=  `DLY gt0_rxresetdone_r2;
      end

      //RXRESETDONE for lane1
      always @ (posedge RXUSRCLK2_IN)
      begin
        gt1_rxresetdone_r    <=  `DLY gt1_rxresetdone_i;
        gt1_rxresetdone_r2   <=  `DLY gt1_rxresetdone_r;
        gt1_rxresetdone_r3   <=  `DLY gt1_rxresetdone_r2;
      end


   assign gt_txpmaresetdone_i = 1'b0;

      assign txfsm_txresetdone_i  = gt0_txresetdone_r3 && gt1_txresetdone_r3 ;
      assign rxfsm_rxresetdone_i  = gt0_rxresetdone_r3 && gt1_rxresetdone_r3 ;

      always @ (posedge TXUSRCLK2_IN)
      begin
        txfsm_txresetdone_r   <=  `DLY txfsm_txresetdone_i;
      end

      always @ (posedge RXUSRCLK2_IN)
      begin
        rxfsm_rxresetdone_r   <=  `DLY rxfsm_rxresetdone_i;
        rxfsm_rxresetdone_r2  <=  `DLY rxfsm_rxresetdone_r;
        rxfsm_rxresetdone_r3  <=  `DLY rxfsm_rxresetdone_r2;
      end

      always @ (posedge RXUSRCLK2_IN)
      begin
        rxfsm_rxresetdone_r1  <=  `DLY rxfsm_rxresetdone_i;
      end

      assign RX_RESETDONE_OUT = rxfsm_rxresetdone_r3;

      // Clock domain crossing from USER_CLK to INIT_CLK
      design_1_axi_chip2chip_0_aurora8_0_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (6              )
         )gtrxreset_cdc_sync 
         (
           .prmry_aclk      (RXUSRCLK2_IN        ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (GTRXRESET_IN        ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (INIT_CLK_IN         ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (gtrxreset_sync      ),
           .scndry_vect_out (                    ) 
          );

    always @ (posedge INIT_CLK_IN)
    begin
      gtrxreset_r1    <=  `DLY  gtrxreset_sync;
      gtrxreset_r2    <=  `DLY  gtrxreset_r1;
      gtrxreset_r3    <=  `DLY  gtrxreset_r2;
      gtrxreset_pulse <=  `DLY  gtrxreset_r2 && !gtrxreset_r3; 
    end 

      always @(posedge INIT_CLK_IN)
      begin
        link_reset_r        <= `DLY  LINK_RESET_IN;
        link_reset_r2       <= `DLY  link_reset_r;
        gt_rx_reset_i       <= `DLY  fsm_gt_rx_reset_t;
        rxfsm_soft_reset_r  <= `DLY  link_reset_r2 || GTRESET_IN || gtrxreset_pulse;
      end

assign gt_common_reset_out = common_reset_i;


design_1_axi_chip2chip_0_aurora8_0_tx_startup_fsm #
          (
           .GT_TYPE                  ("GTP"), //GTX or GTH or GTP
           .STABLE_CLOCK_PERIOD      (STABLE_CLOCK_PERIOD),           // Period of the stable clock driving this state-machine, unit is [ns]
           .RETRY_COUNTER_BITWIDTH   (8), 
           .TX_PLL0_USED             ("TRUE"),                        // the TX and RX Reset FSMs must 
           .RX_PLL0_USED             ("TRUE"),                        // share these two generic values
           .PHASE_ALIGNMENT_MANUAL   ("FALSE")               // Decision if a manual phase-alignment is necessary or the automatic 
                                                                     // is enough. For single-lane applications the automatic alignment is 
                                                                     // sufficient              
             ) 
gt_txresetfsm_i      
            ( 
        .STABLE_CLOCK                   (INIT_CLK_IN),
        .TXUSERCLK                      (TXUSRCLK2_IN),
        .SOFT_RESET                     (GTRESET_IN),
        .PLL0REFCLKLOST                 (gt_pll0refclklost_i),
        .PLL0LOCK                       (gt_pll_lock_i),
        .PLL1REFCLKLOST                 (tied_to_ground_i),
        .PLL1LOCK                       (tied_to_vcc_i),
        .TXRESETDONE                    (txfsm_txresetdone_r),
        .MMCM_LOCK                      (!PLL_NOT_LOCKED),
        .GTTXRESET                      (gt_tx_reset_i),
        .MMCM_RESET                     (mmcm_reset_i),
        .PLL0_RESET                     (common_reset_i),
        .PLL1_RESET                     (),
        .TX_FSM_RESET_DONE              (TX_RESETDONE_OUT),
        .TXUSERRDY                      (gt_txuserrdy_i),
        .RUN_PHALIGNMENT                (),
        .RESET_PHALIGNMENT              (),
        .PHALIGNMENT_DONE               (tied_to_vcc_i),
        .RETRY_COUNTER                  ()
           );



design_1_axi_chip2chip_0_aurora8_0_rx_startup_fsm  #
          (
           .EXAMPLE_SIMULATION       (EXAMPLE_SIMULATION),
           .GT_TYPE                  ("GTP"), //GTX or GTH or GTP
           .STABLE_CLOCK_PERIOD      (STABLE_CLOCK_PERIOD),              //Period of the stable clock driving this state-machine, unit is [ns]
           .RETRY_COUNTER_BITWIDTH   (8), 
           .TX_PLL0_USED             ("TRUE"),                           // the TX and RX Reset FSMs must 
           .RX_PLL0_USED             ("TRUE"),                           // share these two generic values
           .PHASE_ALIGNMENT_MANUAL   ("FALSE")                 // Decision if a manual phase-alignment is necessary or the automatic 
                                                                         // is enough. For single-lane applications the automatic alignment is 
                                                                         // sufficient              
             )     
gt_rxresetfsm_i
             ( 
        .STABLE_CLOCK                   (INIT_CLK_IN),
        .RXUSERCLK                      (RXUSRCLK2_IN),
        .SOFT_RESET                     (rxfsm_soft_reset_r),
        .RXPMARESETDONE                 (gt_txpmaresetdone_i),               
 
        .RXOUTCLK                       (RXUSRCLK2_IN),
 
        .TXPMARESETDONE                 (tied_to_vcc_i),               
        .TXOUTCLK                       (TXUSRCLK2_IN), 
              
        .DONT_RESET_ON_DATA_ERROR       (1'b0),
        .PLL0REFCLKLOST                 (gt_pll0refclklost_i),
        .PLL0LOCK                       (gt_pll_lock_i),
        .PLL1REFCLKLOST                 (tied_to_ground_i),
        .PLL1LOCK                       (tied_to_vcc_i),
        .RXRESETDONE                    (rxfsm_rxresetdone_r1),
        .MMCM_LOCK                      (tied_to_vcc_i),
        .RECCLK_STABLE                  (gt_recclk_stable_i),
        .RECCLK_MONITOR_RESTART         (tied_to_ground_i),
        .DATA_VALID                     (gt_rxuserrdy_i),
        .TXUSERRDY                      (gt_txuserrdy_i),
        .GTRXRESET                      (fsm_gt_rx_reset_t),
        .MMCM_RESET                     (),
        .PLL0_RESET                     (),
        .PLL1_RESET                     (),
        .RX_FSM_RESET_DONE              (),
        .RXUSERRDY                      (gt_rxuserrdy_i),
        .RUN_PHALIGNMENT                (),
        .RESET_PHALIGNMENT              (),
        .PHALIGNMENT_DONE               (tied_to_vcc_i),
        .RETRY_COUNTER                  ()
           );

  always @(posedge INIT_CLK_IN)
  begin
        if(gt_rx_reset_i)
        begin
          rx_cdrlocked       <= `DLY    1'b0;
          rx_cdrlock_counter <= `DLY    0;      
        end                
        else if (rx_cdrlock_counter == WAIT_TIME_CDRLOCK) 
        begin
          rx_cdrlocked       <= `DLY    1'b1;
          rx_cdrlock_counter <= `DLY    rx_cdrlock_counter;
        end
        else
          rx_cdrlock_counter <= `DLY    rx_cdrlock_counter + 1;
  end 

assign  gt_recclk_stable_i                  =  rx_cdrlocked;


design_1_axi_chip2chip_0_aurora8_0_multi_gt #
(
    // Simulation attributes
        .WRAPPER_SIM_GTRESET_SPEEDUP    (SIM_GTRESET_SPEEDUP)
)
design_1_axi_chip2chip_0_aurora8_0_multi_gt_i
(
    .STABLE_CLOCK                (INIT_CLK_IN),
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT0
    //____________________________CHANNEL PORTS________________________________
    .gt0_drp_busy_out  (),
    //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
.gt0_drpaddr_in          (DRPADDR_IN),
.gt0_drpclk_in           (DRPCLK_IN),
.gt0_drpdi_in            (DRPDI_IN),
.gt0_drpdo_out           (DRPDO_OUT),
.gt0_drpen_in            (DRPEN_IN),
.gt0_drprdy_out          (DRPRDY_OUT),
.gt0_drpwe_in            (DRPWE_IN),
    //---------------------- Loopback and Powerdown Ports ----------------------
    .gt0_loopback_in          (LOOPBACK_IN),
    .gt0_rxpd_in          ({2{POWERDOWN_IN}}),
    .gt0_txpd_in          ({2{POWERDOWN_IN}}),
    //----------------------------- Receive Ports ------------------------------
    .gt0_rxuserrdy_in          (gt_rxuserrdy_i),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
.gt0_rxchariscomma_out          (RXCHARISCOMMA_OUT),
.gt0_rxcharisk_out          (RXCHARISK_OUT),
.gt0_rxdisperr_out          (RXDISPERR_OUT),
.gt0_rxnotintable_out          (RXNOTINTABLE_OUT),
    //----------------------- Receive Ports - AFE Ports ------------------------
.gt0_gtprxn_in          (RX1N_IN),
.gt0_gtprxp_in          (RX1P_IN),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .gt0_rxchanbondseq_out      (),
.gt0_rxchbonden_in          (ENCHANSYNC_IN),
.gt0_rxchbondi_in           (chbondi),
.gt0_rxchbondlevel_in       (CHAN_BOND_LEVEL),
.gt0_rxchbondmaster_in      (CHAN_BOND_MASTER),
.gt0_rxchbondo_out          (chbondo),
.gt0_rxchbondslave_in       (CHAN_BOND_SLAVE),
    //----------------- Receive Ports - Channel Bonding Ports  -----------------
.gt0_rxchanisaligned_out    (CHBONDDONE_OUT),
    .gt0_rxchanrealign_out      (),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .gt0_rxclkcorcnt_out          (),
    //------------- Receive Ports - Comma Detection and Alignment --------------
.gt0_rxbyterealign_out          (RXREALIGN_OUT),
.gt0_rxmcommaalignen_in          (ENMCOMMAALIGN_IN),
.gt0_rxpcommaalignen_in          (ENPCOMMAALIGN_IN),
    //----------------- Receive Ports - RX Data Path interface -----------------
    .gt0_gtrxreset_in          (gt_rx_reset_i),
.gt0_rxdata_out          (RXDATA_OUT),
    .gt0_rxoutclk_out          (),
    .gt0_rxusrclk_in          (RXUSRCLK_IN),
    .gt0_rxusrclk2_in          (RXUSRCLK2_IN),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .gt0_rxcdrlock_out          (),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
.gt0_rxbufstatus_out          ({RXBUFERR_OUT, open_rxbufstatus_i}),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .gt0_rxresetdone_out          (gt0_rxresetdone_i),
        .gt0_rxpmaresetdone_out             (gt0_rxpmaresetdone_out),
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
.gt0_rxpolarity_in          (RXPOLARITY_IN),
    //----------------------------- Transmit Ports -----------------------------
    .gt0_txuserrdy_in          (gt_txuserrdy_i),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
.gt0_txcharisk_in          (TXCHARISK_IN),
    //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
.gt0_txbufstatus_out          ({TXBUFERR_OUT, open_txbufstatus_i}),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .gt0_gttxreset_in          (gt_tx_reset_i),
.gt0_txdata_in          (TXDATA_IN),
.gt0_txoutclk_out          (TXOUTCLK1_OUT),
    .gt0_txoutclkfabric_out          (),
    .gt0_txoutclkpcs_out          (),
    .gt0_txusrclk_in          (TXUSRCLK_IN),
    .gt0_txusrclk2_in          (TXUSRCLK2_IN),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
.gt0_gtptxn_out          (TX1N_OUT),
.gt0_gtptxp_out          (TX1P_OUT),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .gt0_txresetdone_out          (gt0_txresetdone_i),
    //------------------- Transmit Ports - PCI Express Ports -------------------
    .gt0_txelecidle_in            (POWERDOWN_IN),

        .gt0_rxlpmhfhold_in          (tied_to_ground_i),
        .gt0_rxlpmlfhold_in          (tied_to_ground_i),
        .gt0_eyescanreset_in                (tied_to_ground_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescandataerror_out           (),
        .gt0_eyescantrigger_in              (tied_to_ground_i),
        .gt0_rxbyteisaligned_out            (),
        .gt0_rxcommadet_out                 (),
        //---------------------- TX Configurable Driver Ports ----------------------
        .gt0_txpostcursor_in                (5'b00000),
        .gt0_txprecursor_in                 (5'b00000),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt0_txchardispmode_in              (4'b0000),
        .gt0_txchardispval_in               (4'b0000),
        .gt0_txdiffctrl_in                  (4'b1000),
        .gt0_txmaincursor_in                (7'b0000000),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in                  (tied_to_ground_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out                  (),
        .gt0_rxprbssel_in                   (3'b000),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in              (tied_to_ground_i),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .gt0_rxpcsreset_in                  (tied_to_ground_i),
        .gt0_rxpmareset_in                  (tied_to_ground_i),
        .gt0_rxlpmreset_in                  (tied_to_ground_i),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .gt0_rxlpmhfovrden_in               (tied_to_ground_i),
        .gt0_rxcdrhold_in                   (tied_to_ground_i),
        .gt0_dmonitorout_out                (),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .gt0_rxbufreset_in                  (tied_to_ground_i),
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt0_txprbsforceerr_in              (tied_to_ground_i),
        .gt0_txprbssel_in                   (3'b000),
        //----------------- Transmit Ports - TX Data Path interface -----------------
        .gt0_txpcsreset_in                  (tied_to_ground_i),
        .gt0_txinhibit_in                   (tied_to_ground_i),
        .gt0_txpmareset_in                  (tied_to_ground_i),

    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT1
    //____________________________CHANNEL PORTS________________________________
    .gt1_drp_busy_out  (),
    //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
.gt1_drpaddr_in          (DRPADDR_IN_LANE1),
.gt1_drpclk_in           (DRPCLK_IN_LANE1),
.gt1_drpdi_in            (DRPDI_IN_LANE1),
.gt1_drpdo_out           (DRPDO_OUT_LANE1),
.gt1_drpen_in            (DRPEN_IN_LANE1),
.gt1_drprdy_out          (DRPRDY_OUT_LANE1),
.gt1_drpwe_in            (DRPWE_IN_LANE1),
    //---------------------- Loopback and Powerdown Ports ----------------------
    .gt1_loopback_in          (LOOPBACK_IN),
    .gt1_rxpd_in          ({2{POWERDOWN_IN}}),
    .gt1_txpd_in          ({2{POWERDOWN_IN}}),
    //----------------------------- Receive Ports ------------------------------
    .gt1_rxuserrdy_in          (gt_rxuserrdy_i),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
.gt1_rxchariscomma_out          (RXCHARISCOMMA_OUT_LANE1),
.gt1_rxcharisk_out          (RXCHARISK_OUT_LANE1),
.gt1_rxdisperr_out          (RXDISPERR_OUT_LANE1),
.gt1_rxnotintable_out          (RXNOTINTABLE_OUT_LANE1),
    //----------------------- Receive Ports - AFE Ports ------------------------
.gt1_gtprxn_in          (RX1N_IN_LANE1),
.gt1_gtprxp_in          (RX1P_IN_LANE1),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .gt1_rxchanbondseq_out      (),
.gt1_rxchbonden_in          (ENCHANSYNC_IN_LANE1),
.gt1_rxchbondi_in           (chbondi_LANE1),
.gt1_rxchbondlevel_in       (CHAN_BOND_LEVEL_LANE1),
.gt1_rxchbondmaster_in      (CHAN_BOND_MASTER_LANE1),
.gt1_rxchbondo_out          (chbondo_LANE1),
.gt1_rxchbondslave_in       (CHAN_BOND_SLAVE_LANE1),
    //----------------- Receive Ports - Channel Bonding Ports  -----------------
.gt1_rxchanisaligned_out    (CHBONDDONE_OUT_LANE1),
    .gt1_rxchanrealign_out      (),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .gt1_rxclkcorcnt_out          (),
    //------------- Receive Ports - Comma Detection and Alignment --------------
.gt1_rxbyterealign_out          (RXREALIGN_OUT_LANE1),
.gt1_rxmcommaalignen_in          (ENMCOMMAALIGN_IN_LANE1),
.gt1_rxpcommaalignen_in          (ENPCOMMAALIGN_IN_LANE1),
    //----------------- Receive Ports - RX Data Path interface -----------------
    .gt1_gtrxreset_in          (gt_rx_reset_i),
.gt1_rxdata_out          (RXDATA_OUT_LANE1),
    .gt1_rxoutclk_out          (),
    .gt1_rxusrclk_in          (RXUSRCLK_IN),
    .gt1_rxusrclk2_in          (RXUSRCLK2_IN),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .gt1_rxcdrlock_out          (),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
.gt1_rxbufstatus_out          ({RXBUFERR_OUT_LANE1, open_rxbufstatus_lane1_i}),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .gt1_rxresetdone_out          (gt1_rxresetdone_i),
        .gt1_rxpmaresetdone_out             (gt1_rxpmaresetdone_out),
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
.gt1_rxpolarity_in          (RXPOLARITY_IN_LANE1),
    //----------------------------- Transmit Ports -----------------------------
    .gt1_txuserrdy_in          (gt_txuserrdy_i),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
.gt1_txcharisk_in          (TXCHARISK_IN_LANE1),
    //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
.gt1_txbufstatus_out          ({TXBUFERR_OUT_LANE1, open_txbufstatus_lane1_i}),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .gt1_gttxreset_in          (gt_tx_reset_i),
.gt1_txdata_in          (TXDATA_IN_LANE1),
.gt1_txoutclk_out          (TXOUTCLK1_OUT_LANE1),
    .gt1_txoutclkfabric_out          (),
    .gt1_txoutclkpcs_out          (),
    .gt1_txusrclk_in          (TXUSRCLK_IN),
    .gt1_txusrclk2_in          (TXUSRCLK2_IN),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
.gt1_gtptxn_out          (TX1N_OUT_LANE1),
.gt1_gtptxp_out          (TX1P_OUT_LANE1),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .gt1_txresetdone_out          (gt1_txresetdone_i),
    //------------------- Transmit Ports - PCI Express Ports -------------------
    .gt1_txelecidle_in            (POWERDOWN_IN),

        .gt1_rxlpmhfhold_in          (tied_to_ground_i),
        .gt1_rxlpmlfhold_in          (tied_to_ground_i),
        .gt1_eyescanreset_in                (tied_to_ground_i),
        //------------------------ RX Margin Analysis Ports ------------------------
        .gt1_eyescandataerror_out           (),
        .gt1_eyescantrigger_in              (tied_to_ground_i),
        .gt1_rxbyteisaligned_out            (),
        .gt1_rxcommadet_out                 (),
        //---------------------- TX Configurable Driver Ports ----------------------
        .gt1_txpostcursor_in                (5'b00000),
        .gt1_txprecursor_in                 (5'b00000),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt1_txchardispmode_in              (4'b0000),
        .gt1_txchardispval_in               (4'b0000),
        .gt1_txdiffctrl_in                  (4'b1000),
        .gt1_txmaincursor_in                (7'b0000000),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt1_txpolarity_in                  (tied_to_ground_i),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt1_rxprbserr_out                  (),
        .gt1_rxprbssel_in                   (3'b000),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt1_rxprbscntreset_in              (tied_to_ground_i),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .gt1_rxpcsreset_in                  (tied_to_ground_i),
        .gt1_rxpmareset_in                  (tied_to_ground_i),
        .gt1_rxlpmreset_in                  (tied_to_ground_i),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .gt1_rxlpmhfovrden_in               (tied_to_ground_i),
        .gt1_rxcdrhold_in                   (tied_to_ground_i),
        .gt1_dmonitorout_out                (),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .gt1_rxbufreset_in                  (tied_to_ground_i),
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt1_txprbsforceerr_in              (tied_to_ground_i),
        .gt1_txprbssel_in                   (3'b000),
        //----------------- Transmit Ports - TX Data Path interface -----------------
        .gt1_txpcsreset_in                  (tied_to_ground_i),
        .gt1_txinhibit_in                   (tied_to_ground_i),
        .gt1_txpmareset_in                  (tied_to_ground_i),

    //____________________________COMMON PORTS________________________________
    //-------------------------- Common Block - Ports --------------------------
    .gt0_pll0outclk_i             (gt0_pll0outclk_in),
    .gt0_pll1outclk_i             (gt0_pll1outclk_in),
    .gt0_pll0outrefclk_i          (gt0_pll0outrefclk_in),
    .gt0_pll1outrefclk_i          (gt0_pll1outrefclk_in), 
    .gt0_pll0reset_in              (common_reset_i)


);
endmodule
 
