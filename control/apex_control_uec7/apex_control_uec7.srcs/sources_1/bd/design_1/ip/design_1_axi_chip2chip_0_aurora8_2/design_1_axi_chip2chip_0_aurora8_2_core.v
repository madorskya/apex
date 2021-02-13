
///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2008 Xilinx, Inc. All rights reserved.
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
///////////////////////////////////////////////////////////////////////////////
//
//  design_1_axi_chip2chip_0_aurora8_2
//
//
//  Description: This is the top level module for a 1 4-byte lane
//               Simplex Aurora reference design module.
//
//               This module is a Simplex RX module. All GTs are only used for
//               receiving.
//               This module supports the following features:
//
/////////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps
(* core_generation_info = "design_1_axi_chip2chip_0_aurora8_2,aurora_8b10b_v11_1_9,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=1,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=37500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=true,c_simplex_mode=RX,c_stream=true,c_ufc=false,flow_mode=None,interface_mode=Streaming,dataflow_config=RX-only_Simplex}" *)
module design_1_axi_chip2chip_0_aurora8_2_core #
 (
     parameter   WATCHDOG_TIMEOUT     =  14,
     parameter   SIM_GTRESET_SPEEDUP =   "FALSE",     // Set to 'TRUE' to speed up sim reset
     parameter   EXAMPLE_SIMULATION =   0      
)
(

    // AXI RX Interface
    m_axi_rx_tdata,
    m_axi_rx_tvalid,


    //GT Serial I/O
   
    rxp,
    rxn,

    //GT Reference Clock Interface
    gt_refclk1,

    //Error Detection Interface
    rx_hard_err,
    soft_err,

    //Status
    rx_channel_up,
    rx_lane_up,

    //Simplex Sideband Signals

    rx_aligned,
    rx_verify,
    rx_reset,

    //System Interface
    user_clk,
    sync_clk,
    rx_system_reset,
    rx_resetdone_out,
    link_reset_out,
    power_down,
    gt_reset,
    init_clk_in,
    pll_not_locked,
drpclk_in,
    drpaddr_in,
    drpdi_in,
    drpdo_out,
    drpen_in,
    drprdy_out,
    drpwe_in,
    tx_out_clk,
    tx_lock,
//------------------{
gt_common_reset_out,
//____________________________COMMON PORTS_______________________________{
gt0_pll0refclklost_in,
quad1_common_lock_in,
//----------------------- Channel - Ref Clock Ports ------------------------
gt0_pll0outclk_in,
gt0_pll1outclk_in,
gt0_pll0outrefclk_in,
gt0_pll1outrefclk_in,
//____________________________COMMON PORTS_______________________________}
//------------------}

    //------------------------ RX Margin Analysis Ports ------------------------
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_eyescanreset_in,

    gt0_rxlpmhfhold_in,
    gt0_rxlpmlfhold_in,
    gt0_rxlpmhfovrden_in,
    gt0_rxlpmreset_in,
    gt0_rxcdrhold_in,
        //----------------- Receive Ports - Pattern Checker Ports ------------------
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
        //----------------- Receive Ports - Pattern Checker ports ------------------
    gt0_rxprbscntreset_in,
        //----------------- Receive Ports - RX Data Path interface -----------------
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_dmonitorout_out,
    gt0_rxpmaresetdone_out,
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    gt0_rxbufreset_in,
    gt0_rxbyteisaligned_out,
    gt0_rxcommadet_out,
    gt0_rx_disp_err_out,
    gt0_rx_not_in_table_out,
    gt0_rx_realign_out,
    gt0_rx_buf_err_out,
    gt0_rxresetdone_out,
    gt0_rxbufstatus_out,

    sys_reset_out,
    loopback
);

`define DLY #1
//***********************************Port Declarations*******************************
output   sys_reset_out;

 output            gt0_rxresetdone_out; 
    //------------------------ RX Margin Analysis Ports ------------------------
 input             gt0_eyescanreset_in;
 output            gt0_eyescandataerror_out;
 input             gt0_eyescantrigger_in;

 input             gt0_rxlpmhfhold_in;
 input             gt0_rxlpmlfhold_in;
 input             gt0_rxlpmhfovrden_in;
 input             gt0_rxlpmreset_in;
 input             gt0_rxcdrhold_in;
        //----------------- Receive Ports - Pattern Checker Ports ------------------
 output            gt0_rxprbserr_out;
 input   [2:0]     gt0_rxprbssel_in;
        //----------------- Receive Ports - Pattern Checker ports ------------------
 input             gt0_rxprbscntreset_in;
        //----------------- Receive Ports - RX Data Path interface -----------------
 input             gt0_rxpcsreset_in;
 input             gt0_rxpmareset_in;
 output            gt0_rxpmaresetdone_out;
 output   [14:0]   gt0_dmonitorout_out;
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
 input             gt0_rxbufreset_in;

 output            gt0_rxbyteisaligned_out;
 output            gt0_rxcommadet_out;
 output  [3:0]   gt0_rx_disp_err_out;
 output  [3:0]   gt0_rx_not_in_table_out;
 output            gt0_rx_realign_out;
 output            gt0_rx_buf_err_out;
 output   [2:0]    gt0_rxbufstatus_out;

//------------------{
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
//------------------}


    // AXI RX Interface
 
output  [0:31]     m_axi_rx_tdata;
 
output             m_axi_rx_tvalid;


    //GT Serial I/O
   
input              rxp;
input              rxn;

    //GT Reference Clock Interface
input              gt_refclk1;

    //Error Detection Interface
output             rx_hard_err;
output             soft_err;

    //Status
output             rx_channel_up;
output             rx_lane_up;

    //Simplex Sideband Signals

output             rx_aligned;
output             rx_verify;
output             rx_reset;

    //System Interface
input              user_clk;
input              sync_clk;
input              rx_system_reset;
    output             rx_resetdone_out;
    output             link_reset_out;

input              power_down;
input              gt_reset;
input   [2:0]      loopback;

output             tx_out_clk;
output             tx_lock;
    input              init_clk_in;
    input              pll_not_locked;

    //DRP Ports
input             drpclk_in;  
    input   [8:0]     drpaddr_in;  
    input             drpen_in;  
    input   [15:0]    drpdi_in;  
    output            drprdy_out;  
    output  [15:0]    drpdo_out;  
    input             drpwe_in;  
//*********************************Wire Declarations**********************************

wire               TX1N_OUT_unused;
wire               TX1P_OUT_unused;
wire               RX1N_IN_unused;
wire               RX1P_IN_unused;
wire               rx_buf_err_i_unused;
wire    [3:0]      rx_char_is_comma_i_unused;
wire    [3:0]      rx_char_is_k_i_unused;
wire    [31:0]     rx_data_i_unused;
wire    [3:0]      rx_disp_err_i_unused;
wire    [3:0]      rx_not_in_table_i_unused;
wire               rx_realign_i_unused;
wire               tx_buf_err_i_unused;
wire               ch_bond_done_i_unused;

wire               ch_bond_done_i;
reg                ch_bond_done_r1;
reg                ch_bond_done_r2;
wire    [4:0]      rx_status_float_i;
wire               en_chan_sync_i;
wire               ena_comma_align_i;
wire    [0:3]      got_a_i;
wire               got_v_i;
   
wire               gtx_rx_reset_i;
wire               gtx_tx_reset_i;
wire               raw_tx_out_clk_i;
wire               rx_buf_err_i;
wire               rx_channel_up_i;
   
wire    [3:0]      rx_char_is_comma_i;
wire    [3:0]      rx_char_is_k_i;
wire    [2:0]      rx_clk_cor_cnt_i;
wire    [31:0]     rx_data_i;
wire    [3:0]      rx_disp_err_i;
wire    [0:1]      rx_ecp_i;
wire    [0:1]      rx_ecp_striped_i;
wire               rx_hard_err_i;
wire               rx_lane_up_i;
wire    [3:0]      rx_not_in_table_i;
wire    [0:1]      rx_pad_i;
wire    [0:1]      rx_pad_striped_i;
wire    [0:31]     rx_pe_data_i;
wire    [0:31]     rx_pe_data_striped_i;
wire    [0:1]      rx_pe_data_v_i;
wire    [0:1]      rx_pe_data_v_striped_i;
wire               rx_polarity_i;
wire               rx_realign_i;
wire               rx_reset_lanes_i;
wire    [0:1]      rx_scp_i;
wire    [0:1]      rx_scp_striped_i;
wire    [0:1]      soft_err_i;
wire               all_soft_err_i;
wire               start_rx_i;
wire               tied_to_ground_i;
wire    [31:0]     tied_to_ground_vec_i;
wire               tied_to_vcc_i;
wire               tx_buf_err_i;
   
wire    [3:0]      tx_char_is_k_i;
wire    [31:0]     tx_data_i;
   
wire               tx_lock_i;
wire               tx_out_clk_i;
    wire    txpma_ready_0_i;
    wire    rxpma_ready_0_i;


    // RX AXI PDU I/F wires
wire    [0:31]     rx_data;
wire               rx_src_rdy;
    wire          link_reset_lane0_i;
    wire          link_reset_i;

wire   gtrxreset_i;
wire   system_reset_i;
wire   tx_lock_comb_i;
wire   rx_resetdone_i;
wire   hpcnt_reset_i;
wire   reset_sync_init_clk;
wire   reset_sync_user_clk;
wire   gt_reset_sync_init_clk;
reg    rxfsm_data_valid_r;
//*********************************Main Body of Code**********************************

    //Tie off constant signals
    assign          tied_to_ground_i = 1'b0;
    assign          tied_to_vcc_i    = 1'b1;
    assign          tied_to_ground_vec_i = 0;

    assign  link_reset_i   = link_reset_lane0_i;

    always @ (posedge user_clk)
      rxfsm_data_valid_r  <= `DLY rx_lane_up_i;

    assign  link_reset_out = link_reset_i;


    assign          all_soft_err_i        = soft_err_i[0] | soft_err_i[1];

    assign          tx_lock     =   tx_lock_comb_i;
    assign          sys_reset_out    =  system_reset_i;

    //GT0
    assign    gt0_rx_disp_err_out        =  rx_disp_err_i[3:0];
    assign    gt0_rx_not_in_table_out    =  rx_not_in_table_i[3:0];
    assign    gt0_rx_realign_out         =  rx_realign_i;
    assign    gt0_rx_buf_err_out         =  rx_buf_err_i;

    //Connect global top level signals to their internal equivalents

    assign          rx_channel_up       =   rx_channel_up_i;
    assign          rx_resetdone_out =  rx_resetdone_i;

assign          rx_reset            =   rx_reset_lanes_i;

    //Connect the TXOUTCLK of lane 0 to tx_out_clk
 
assign  tx_out_clk  =   tx_out_clk_i;
    assign  tx_lock_comb_i     =  &tx_lock_i;

  design_1_axi_chip2chip_0_aurora8_2_cdc_sync
     #(
        .c_cdc_type      (1             ),   
        .c_flop_input    (0             ),  
        .c_reset_state   (0             ),  
        .c_single_bit    (1             ),  
        .c_vector_width  (2             ),  
        .c_mtbf_stages   (5              )
      )reset_sync_user_clk_cdc_sync
      (
        .prmry_aclk      (1'b0               ),
        .prmry_rst_n     (1'b1               ),
        .prmry_in        (rx_system_reset    ),
        .prmry_vect_in   (2'd0               ),
        .scndry_aclk     (user_clk           ),
        .scndry_rst_n    (1'b1               ),
        .prmry_ack       (                   ),
        .scndry_out      (reset_sync_user_clk),
        .scndry_vect_out (                   ) 
      );

  design_1_axi_chip2chip_0_aurora8_2_cdc_sync
     #(
        .c_cdc_type      (1             ),   
        .c_flop_input    (0             ),  
        .c_reset_state   (0             ),  
        .c_single_bit    (1             ),  
        .c_vector_width  (2             ),  
        .c_mtbf_stages   (6              )
      )gt_reset_cdc_sync
      (
        .prmry_aclk      (1'b0                  ),
        .prmry_rst_n     (1'b1                  ),
        .prmry_in        (gt_reset              ),
        .prmry_vect_in   (2'd0                  ),
        .scndry_aclk     (init_clk_in           ),
        .scndry_rst_n    (1'b1                  ),
        .prmry_ack       (                      ),
        .scndry_out      (gt_reset_sync_init_clk),
        .scndry_vect_out (                      ) 
      );


    // RESET_LOGIC instance
    design_1_axi_chip2chip_0_aurora8_2_RESET_LOGIC core_reset_logic_i
    (
        .RESET(reset_sync_user_clk),
        .USER_CLK(user_clk),
        .INIT_CLK_IN(init_clk_in),
        .TX_LOCK_IN(tx_lock_comb_i),
        .PLL_NOT_LOCKED(pll_not_locked),
 
	     .RX_RESETDONE_IN(rx_resetdone_i),
        .LINK_RESET_IN(link_reset_i),
 
        .SYSTEM_RESET(system_reset_i)
    );

  design_1_axi_chip2chip_0_aurora8_2_cdc_sync
     #(
        .c_cdc_type      (1             ),   
        .c_flop_input    (0             ),  
        .c_reset_state   (0             ),  
        .c_single_bit    (1             ),  
        .c_vector_width  (2             ),  
        .c_mtbf_stages   (6              )
      ) hpcnt_reset_cdc_sync
      (
        .prmry_aclk      (user_clk           ),
        .prmry_rst_n     (1'b1               ),
        .prmry_in        (rx_system_reset    ),
        .prmry_vect_in   (2'd0               ),
        .scndry_aclk     (init_clk_in        ),
        .scndry_rst_n    (1'b1               ),
        .prmry_ack       (                   ),
        .scndry_out      (reset_sync_init_clk),
        .scndry_vect_out (                   ) 
      );

assign hpcnt_reset_i = gt_reset_sync_init_clk | reset_sync_init_clk;



    //_________________________Instantiate RX Lane 0______________________________

assign          rx_lane_up =   rx_lane_up_i;

    //Aurora lane striping rules require each 4-byte lane to carry 2 bytes from the first
    //half of the overall word, and 2 bytes from the second half. This ensures that the
    //data will be ordered correctly if it is send to a 2-byte lane. Here we perform the
    //required concatenation
    assign  {rx_pad_i[0],rx_pad_i[1]}    =   rx_pad_striped_i[0:1];
    assign  {rx_pe_data_i[0:15],rx_pe_data_i[16:31]}   =   rx_pe_data_striped_i[0:31];
    assign  {rx_pe_data_v_i[0],rx_pe_data_v_i[1]}  = rx_pe_data_v_striped_i[0:1];
    assign  {rx_scp_i[0],rx_scp_i[1]}  =   rx_scp_striped_i[0:1];
    assign  {rx_ecp_i[0],rx_ecp_i[1]}  =   rx_ecp_striped_i[0:1];  

    design_1_axi_chip2chip_0_aurora8_2_RX_AURORA_LANE_SIMPLEX_GTX_4BYTE # 
    (   
        .EXAMPLE_SIMULATION (EXAMPLE_SIMULATION)
    )
    design_1_axi_chip2chip_0_aurora8_2_rx_aurora_lane_simplex_gtx_4byte_0_i
    (
        // GT Interface
        .RX_DATA(rx_data_i[31:0]),
        .RX_NOT_IN_TABLE(rx_not_in_table_i[3:0]),
        .RX_DISP_ERR(rx_disp_err_i[3:0]),
        .RX_CHAR_IS_K(rx_char_is_k_i[3:0]),
        .RX_CHAR_IS_COMMA(rx_char_is_comma_i[3:0]),
        .RX_STATUS(tied_to_ground_vec_i[5:0]),
        .RX_REALIGN(rx_realign_i),
        .RX_POLARITY(rx_polarity_i),
        .GTX_RX_RESET(gtx_rx_reset_i),
        .RX_BUF_ERR(rx_buf_err_i),
        .INIT_CLK(init_clk_in),
        .LINK_RESET_OUT(link_reset_lane0_i),
        .HPCNT_RESET   (hpcnt_reset_i),
      
       // Comma Detect Phase Align Interface
        .ENA_COMMA_ALIGN(ena_comma_align_i),

        // RX_LL Interface
        .RX_PAD(rx_pad_striped_i[0:1]),
        .RX_PE_DATA(rx_pe_data_striped_i[0:31]),
        .RX_PE_DATA_V(rx_pe_data_v_striped_i[0:1]),
        .RX_SCP(rx_scp_striped_i[0:1]),
        .RX_ECP(rx_ecp_striped_i[0:1]),

        // Global Logic Interface
        .CHANNEL_UP(rx_channel_up_i),
        .LANE_UP(rx_lane_up_i),
        .SOFT_ERR(soft_err_i[0:1]),
        .HARD_ERR(rx_hard_err_i),
        .CHANNEL_BOND_LOAD(),
        .GOT_A(got_a_i[0:3]),
        .GOT_V(got_v_i),

        //System Interface
        .USER_CLK(user_clk),
        .RESET(rx_reset_lanes_i)
    );


    //Tie off TX signals to the GT
    assign  tx_char_is_k_i[3:0]   =   4'b0000;
    assign  tx_data_i[31:0]     =   32'h00000000;
assign  gtx_tx_reset_i  =   1'b0;



    //_________________________Instantiate GT Wrapper ______________________________

    design_1_axi_chip2chip_0_aurora8_2_GT_WRAPPER #
    (
         .SIM_GTRESET_SPEEDUP (SIM_GTRESET_SPEEDUP),
         .EXAMPLE_SIMULATION         (EXAMPLE_SIMULATION)
    )

    gt_wrapper_i
    (

        //---------------------- TX Configurable Driver Ports ----------------------
        .gt0_txpostcursor_in                (5'b00000),
        .gt0_txprecursor_in                 (5'b00000),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt0_txchardispmode_in              ({4{1'b0}}),
        .gt0_txchardispval_in               ({4{1'b0}}),
        .gt0_txdiffctrl_in                  (4'b1000),
        .gt0_txmaincursor_in                (7'b0000000),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in                  (1'b0),
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt0_txprbsforceerr_in     (tied_to_ground_i),
        .gt0_txprbssel_in          (3'b000),
        //----------------- Transmit Ports - TX Data Path interface -----------------
        .gt0_txpcsreset_in         (tied_to_ground_i),
        .gt0_txinhibit_in          (tied_to_ground_i),
        .gt0_txpmareset_in         (tied_to_ground_i),

        //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescanreset_in                (gt0_eyescanreset_in),
        .gt0_eyescandataerror_out           (gt0_eyescandataerror_out),
        .gt0_eyescantrigger_in              (gt0_eyescantrigger_in),
        .gt0_txresetdone_out                (),
        .gt0_rxresetdone_out                (gt0_rxresetdone_out),
        .gt0_txbufstatus_out                (),
        .gt0_rxbufstatus_out                (gt0_rxbufstatus_out),

        .gt0_rxlpmhfhold_in                 (gt0_rxlpmhfhold_in),
        .gt0_rxlpmlfhold_in                 (gt0_rxlpmlfhold_in),
        .gt0_rxlpmreset_in                  (gt0_rxlpmreset_in),
        .gt0_rxlpmhfovrden_in               (gt0_rxlpmhfovrden_in),
        .gt0_rxcdrhold_in                   (gt0_rxcdrhold_in),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out                  (gt0_rxprbserr_out),
        .gt0_rxprbssel_in                   (gt0_rxprbssel_in),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in              (gt0_rxprbscntreset_in),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .gt0_rxpcsreset_in                  (gt0_rxpcsreset_in),
        .gt0_rxpmareset_in                  (gt0_rxpmareset_in),
        .gt0_dmonitorout_out                (gt0_dmonitorout_out),
        .gt0_rxpmaresetdone_out             (gt0_rxpmaresetdone_out),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .gt0_rxbufreset_in                  (gt0_rxbufreset_in),

        .gt0_rxbyteisaligned_out            (gt0_rxbyteisaligned_out),
        .gt0_rxcommadet_out                 (gt0_rxcommadet_out),

        // DRP I/F
.DRPADDR_IN                     (drpaddr_in),
.DRPCLK_IN                      (drpclk_in),
.DRPDI_IN                       (drpdi_in),
.DRPDO_OUT                      (drpdo_out),
.DRPEN_IN                       (drpen_in),
.DRPRDY_OUT                     (drprdy_out),
.DRPWE_IN                       (drpwe_in),

        .INIT_CLK_IN                    (init_clk_in),   
	.PLL_NOT_LOCKED                 (pll_not_locked),
        .RXFSM_DATA_VALID            (rxfsm_data_valid_r),

	.TX_RESETDONE_OUT               (),
	.RX_RESETDONE_OUT               (rx_resetdone_i),
        //Aurora Lane Interface
.RXPOLARITY_IN(rx_polarity_i),
.RXRESET_IN(gtx_rx_reset_i),
.TXCHARISK_IN(tx_char_is_k_i[3:0]),
.TXDATA_IN(tx_data_i[31:0]),
.TXRESET_IN(gtx_tx_reset_i),
.RXDATA_OUT(rx_data_i[31:0]),
.RXNOTINTABLE_OUT(rx_not_in_table_i[3:0]),
.RXDISPERR_OUT(rx_disp_err_i[3:0]),
.RXCHARISK_OUT(rx_char_is_k_i[3:0]),
.RXCHARISCOMMA_OUT(rx_char_is_comma_i[3:0]),
.RXREALIGN_OUT(rx_realign_i),
.RXBUFERR_OUT(rx_buf_err_i),
.TXBUFERR_OUT(tx_buf_err_i),

        // Reset due to channel initialization watchdog timer expiry
        .GTRXRESET_IN(gtrxreset_i),

        // reset for hot plug
        .LINK_RESET_IN(link_reset_i),

      // Phase Align Interface
.ENMCOMMAALIGN_IN(ena_comma_align_i),
.ENPCOMMAALIGN_IN(ena_comma_align_i),
        //Global Logic Interface
.ENCHANSYNC_IN(en_chan_sync_i),
.CHBONDDONE_OUT(ch_bond_done_i),

        //Serial IO
.RX1N_IN(rxn),
.RX1P_IN(rxp),
.TX1N_OUT(),
.TX1P_OUT(),
        // Clocks and Clock Status
        .RXUSRCLK_IN(sync_clk),
        .RXUSRCLK2_IN(user_clk),
        .TXUSRCLK_IN(sync_clk),
        .TXUSRCLK2_IN(user_clk),
        .REFCLK(gt_refclk1),
.TXOUTCLK1_OUT(tx_out_clk_i),
.PLLLKDET_OUT(tx_lock_i),
        //System Interface
        .GTRESET_IN(gt_reset_sync_init_clk),
        .LOOPBACK_IN(loopback),
//------------------{
.gt_common_reset_out    (gt_common_reset_out),
//____________________________COMMON PORTS_______________________________{
.gt0_pll0refclklost_in  (gt0_pll0refclklost_in),
.quad1_common_lock_in (quad1_common_lock_in),
//----------------------- Channel - Ref Clock Ports ------------------------
.gt0_pll0outclk_in       (gt0_pll0outclk_in),
.gt0_pll1outclk_in       (gt0_pll1outclk_in),
.gt0_pll0outrefclk_in    (gt0_pll0outrefclk_in),
.gt0_pll1outrefclk_in    (gt0_pll1outrefclk_in),
//____________________________COMMON PORTS_______________________________}
//------------------}
        .POWERDOWN_IN(power_down)
    );

    

    //_____________________________Instantiate RX Global Logic ___________________________

    design_1_axi_chip2chip_0_aurora8_2_RX_GLOBAL_LOGIC_SIMPLEX #
    (
       .WATCHDOG_TIMEOUT (WATCHDOG_TIMEOUT)
    )
    design_1_axi_chip2chip_0_aurora8_2_rx_global_logic_simplex_i
    (
        // GT Interface
        .CH_BOND_DONE(ch_bond_done_i),
        .EN_CHAN_SYNC(en_chan_sync_i),

        // Aurora Lane Interface
        .LANE_UP(rx_lane_up_i),
        .SOFT_ERR(soft_err_i),
        .HARD_ERR(rx_hard_err_i),
        .CHANNEL_BOND_LOAD(ch_bond_done_i),
        .GOT_A(got_a_i),
        .GOT_V(got_v_i),

        .RESET_LANES(rx_reset_lanes_i),
        .GTRXRESET_OUT(gtrxreset_i),

        // Sideband Signal
        .RX_ALIGNED(rx_aligned),
        .RX_VERIFY(rx_verify),
        // System Interface
        .USER_CLK(user_clk),
        .RESET(system_reset_i),
        .POWER_DOWN(power_down),

        .CHANNEL_UP(rx_channel_up_i),
        .START_RX(start_rx_i),
        .CHANNEL_SOFT_ERR(soft_err),
        .CHANNEL_HARD_ERR(rx_hard_err)
    );





    //_____________________________ RX AXI SHIM _______________________________
    design_1_axi_chip2chip_0_aurora8_2_LL_TO_AXI #
    (
       .DATA_WIDTH(32),
       .STRB_WIDTH(4),
       .REM_WIDTH (2)
    )

    ll_to_axi_pdu_i
    (
     .LL_IP_DATA(rx_data),
     .LL_IP_SOF_N(),
     .LL_IP_EOF_N(1'b0),
     .LL_IP_REM(2'd0),
     .LL_IP_SRC_RDY_N(rx_src_rdy),
     .LL_OP_DST_RDY_N(),

     .AXI4_S_OP_TVALID(m_axi_rx_tvalid),
     .AXI4_S_OP_TDATA(m_axi_rx_tdata),
     .AXI4_S_OP_TKEEP(),
     .AXI4_S_OP_TLAST(),
     .AXI4_S_IP_TREADY(1'b0)

    );

    //_____________________________ Instantiate RX_STREAM____________________________
   
    design_1_axi_chip2chip_0_aurora8_2_RX_STREAM design_1_axi_chip2chip_0_aurora8_2_rx_stream_i
    (
        // AXI PDU Interface
        .RX_D(rx_data),
        .RX_SRC_RDY_N(rx_src_rdy),
   
        // Global Logic Interface
        .START_RX(start_rx_i),
   
        // Aurora Lane Interface
        .RX_PAD(rx_pad_i),
        .RX_PE_DATA(rx_pe_data_i),
        .RX_PE_DATA_V(rx_pe_data_v_i),
        .RX_SCP(rx_scp_i),
        .RX_ECP(rx_ecp_i),
        // System Interface
        .USER_CLK(user_clk)
    );
endmodule
