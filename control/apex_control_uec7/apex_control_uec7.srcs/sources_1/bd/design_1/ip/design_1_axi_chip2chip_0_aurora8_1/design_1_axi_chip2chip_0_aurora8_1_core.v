
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
//  design_1_axi_chip2chip_0_aurora8_1
//
//
//  Description: This is the top level module for a 1 4-byte lane
//               Simplex Aurora reference design module.
//
//               This module is a Simplex TX module. All GTs are used for
//               transmission only.
//               This module supports the following features:
//
/////////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps
(* core_generation_info = "design_1_axi_chip2chip_0_aurora8_1,aurora_8b10b_v11_1_9,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=1,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=37500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=true,c_simplex_mode=TX,c_stream=true,c_ufc=false,flow_mode=None,interface_mode=Streaming,dataflow_config=TX-only_Simplex}" *)
module design_1_axi_chip2chip_0_aurora8_1_core #
 (
     parameter   WATCHDOG_TIMEOUT     =  14,
     parameter   SIM_GTRESET_SPEEDUP =   "FALSE",     // Set to 'TRUE' to speed up sim reset
     parameter CC_FREQ_FACTOR = 5'd12,
     // Simplex timer parameters
     parameter   C_SIMPLEX_TIMER      =  18,      // Simplex Timer 
     parameter   C_ALIGNED_TIMER      =  158990,  // Timer to assert tx_aligned signal 
     parameter   C_VERIFY_TIMER       =  C_ALIGNED_TIMER + 512,   // Timer to assert tx_verify signal 
     parameter   EXAMPLE_SIMULATION =   0      
)
(
    // AXI TX Interface
    s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,



    //GT Serial I/O
    txp,
    txn,

    //GT Reference Clock Interface
    gt_refclk1,

    //Error Detection Interface
    tx_hard_err,

    //Status
    tx_channel_up,
    tx_lane_up,


    //System Interface
    user_clk,
    sync_clk,
    tx_system_reset,
    tx_resetdone_out,
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

    gt0_txresetdone_out,
    gt0_txbufstatus_out,
 
        //---------------------- TX Configurable Driver Ports ----------------------
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
    gt0_txchardispmode_in,
    gt0_txchardispval_in,
    gt0_txdiffctrl_in,
    gt0_txmaincursor_in,
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    gt0_txpolarity_in,
    gt0_tx_buf_err_out,
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
    gt0_txprbsforceerr_in,
    gt0_txprbssel_in,
        //----------------- Transmit Ports - TX Data Path interface -----------------
    gt0_txpcsreset_in,
    gt0_txinhibit_in,
    gt0_txpmareset_in,

    sys_reset_out,
    loopback
);

`define DLY #1
//***********************************Port Declarations*******************************
output   sys_reset_out;

 output            gt0_txresetdone_out;
 output   [1:0]    gt0_txbufstatus_out;
 
        //---------------------- TX Configurable Driver Ports ----------------------
 input   [4:0]     gt0_txpostcursor_in;
 input   [4:0]     gt0_txprecursor_in;
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
 input   [3:0]           gt0_txchardispmode_in;
 input   [3:0]           gt0_txchardispval_in;
 input   [3:0]     gt0_txdiffctrl_in;
 input   [6:0]     gt0_txmaincursor_in;
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
 input             gt0_txpolarity_in;
 output            gt0_tx_buf_err_out;
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
 input             gt0_txprbsforceerr_in;
 input   [2:0]     gt0_txprbssel_in;
        //----------------- Transmit Ports - TX Data Path interface -----------------
 input             gt0_txpcsreset_in;
 input             gt0_txinhibit_in;
 input             gt0_txpmareset_in;


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

    // AXI TX Interface
 
input   [0:31]     s_axi_tx_tdata;
 
input              s_axi_tx_tvalid;

output             s_axi_tx_tready;



    //GT Serial I/O
output             txp;
output             txn;

    //GT Reference Clock Interface
input              gt_refclk1;

    //Error Detection Interface
output             tx_hard_err;

    //Status
output             tx_channel_up;
output             tx_lane_up;


    //System Interface
input              user_clk;
input              sync_clk;
input              tx_system_reset;
    output             tx_resetdone_out;

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
   
wire               gen_a_i;
wire               gen_cc_i;
wire               gen_ecp_i;
wire    [0:1]      gen_ecp_striped_i;
wire    [0:3]      gen_k_i;
wire    [0:1]      gen_pad_i;
wire    [0:1]      gen_pad_striped_i;
wire    [0:3]      gen_r_i;
wire               gen_scp_i;
wire    [0:1]      gen_scp_striped_i;
wire    [0:3]      gen_v_i;
   
wire               gtx_rx_reset_i;
wire               gtx_tx_reset_i;
wire               raw_tx_out_clk_i;
wire               rx_buf_err_i;
   
wire    [3:0]      rx_char_is_comma_i;
wire    [3:0]      rx_char_is_k_i;
wire    [2:0]      rx_clk_cor_cnt_i;
wire    [31:0]     rx_data_i;
wire    [3:0]      rx_disp_err_i;
wire    [3:0]      rx_not_in_table_i;
wire               rx_polarity_i;
wire               rx_realign_i;
wire               tied_to_ground_i;
wire    [31:0]     tied_to_ground_vec_i;
wire               tied_to_vcc_i;
wire               tx_buf_err_i;
wire               tx_channel_up_i;
   
wire    [3:0]      tx_char_is_k_i;
wire    [31:0]     tx_data_i;
wire               tx_hard_err_i;
wire               tx_lane_up_i;
reg         lane_up_reduce_i;
wire        rst_cc_module_i;
   
wire               tx_lock_i;
wire               tx_out_clk_i;
wire    [0:31]     tx_pe_data_i;
wire    [0:31]     tx_pe_data_striped_i;
wire    [0:1]      tx_pe_data_v_i;
wire    [0:1]      tx_pe_data_v_striped_i;
wire               tx_reset_lanes_i;
wire               tx_system_reset_c;
reg     [C_SIMPLEX_TIMER-1:0]  simplex_timer_r;
reg                tx_reset_simplex_r;
reg                tx_aligned_simplex_r;
reg                tx_verify_simplex_r;
    wire    txpma_ready_0_i;
    wire    rxpma_ready_0_i;

    // TX AXI PDU I/F wires
wire    [0:31]     tx_data;
wire               tx_src_rdy;
wire               tx_dst_rdy;


wire   gtrxreset_i;
wire   system_reset_i;
wire   tx_lock_comb_i;
wire   tx_resetdone_i;
wire   reset_sync_user_clk;
wire   gt_reset_sync_init_clk;
reg    rxfsm_data_valid_r;
wire do_cc_i;
wire warn_cc;
//*********************************Main Body of Code**********************************

    //Tie off constant signals
    assign          tied_to_ground_i = 1'b0;
    assign          tied_to_vcc_i    = 1'b1;
    assign          tied_to_ground_vec_i = 0;


    always @(posedge user_clk)
        if(system_reset_i || tx_hard_err)
        begin
            simplex_timer_r  <=  {C_SIMPLEX_TIMER{1'b0}};
        end
        else if(tx_verify_simplex_r)
        begin
            simplex_timer_r  <=  simplex_timer_r;
        end
        else
        begin
            simplex_timer_r  <=  simplex_timer_r + 1'b1;
        end

    always @(posedge user_clk)
        if((~|simplex_timer_r) || system_reset_i || tx_hard_err)
        begin
            tx_reset_simplex_r  <=  1'b0;
        end
        else if (simplex_timer_r == 'd1)
        begin
            tx_reset_simplex_r  <=  1'b1;
        end
        else if (simplex_timer_r == 'd6)
        begin
            tx_reset_simplex_r  <=  1'b0;
        end

    always @(posedge user_clk)
        if(tx_system_reset_c || tx_hard_err)
        begin
            tx_aligned_simplex_r  <=  1'b0;
        end
        else if(simplex_timer_r == C_ALIGNED_TIMER)
        begin
            tx_aligned_simplex_r  <=  1'b1;
        end

    always @(posedge user_clk)
        if(tx_system_reset_c || tx_hard_err)
        begin
            tx_verify_simplex_r  <=  1'b0;
        end
        else if (simplex_timer_r == C_VERIFY_TIMER)
        begin
            tx_verify_simplex_r  <=  1'b1;
        end



    assign          tx_lock     =   tx_lock_comb_i;
    assign          sys_reset_out    =  system_reset_i;

    //GT0
    assign    gt0_tx_buf_err_out         =  tx_buf_err_i;

    //Connect global top level signals to their internal equivalents
    assign          tx_channel_up       =   tx_channel_up_i;
    assign          tx_resetdone_out =  tx_resetdone_i;

    assign          tx_system_reset_c   =   system_reset_i || tx_reset_simplex_r;


    //Connect the TXOUTCLK of lane 0 to tx_out_clk
 
assign  tx_out_clk  =   tx_out_clk_i;
    assign  tx_lock_comb_i     =  &tx_lock_i;

  design_1_axi_chip2chip_0_aurora8_1_cdc_sync
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
        .prmry_in        (tx_system_reset    ),
        .prmry_vect_in   (2'd0               ),
        .scndry_aclk     (user_clk           ),
        .scndry_rst_n    (1'b1               ),
        .prmry_ack       (                   ),
        .scndry_out      (reset_sync_user_clk),
        .scndry_vect_out (                   ) 
      );

  design_1_axi_chip2chip_0_aurora8_1_cdc_sync
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
    design_1_axi_chip2chip_0_aurora8_1_RESET_LOGIC core_reset_logic_i
    (
        .RESET(reset_sync_user_clk),
        .USER_CLK(user_clk),
        .INIT_CLK_IN(init_clk_in),
        .TX_LOCK_IN(tx_lock_comb_i),
        .PLL_NOT_LOCKED(pll_not_locked),
	     .TX_RESETDONE_IN(tx_resetdone_i),
        .LINK_RESET_IN(1'b0),
 
 
        .SYSTEM_RESET(system_reset_i)
    );





    //Tie off RX signals to the GT
assign  rx_polarity_i        =   1'b0;
assign  gtx_rx_reset_i       =   1'b0;
assign  ena_comma_align_i    =   1'b0;

    //_________________________Instantiate TX Lane 0______________________________

assign          tx_lane_up =   tx_lane_up_i;

    //Aurora lane striping rules require each 4-byte lane to carry 2 bytes from the first
    //half of the overall word, and 2 bytes from the second half. This ensures that the
    //data will be ordered correctly if it is send to a 2-byte lane. Here we perform the
    //required concatenation
   
    assign  gen_scp_striped_i       =   {gen_scp_i,1'b0};
    assign  gen_ecp_striped_i       =   {1'b0,gen_ecp_i};
    assign  gen_pad_striped_i[0:1]  =  {gen_pad_i[0],gen_pad_i[1]};
    assign  tx_pe_data_striped_i[0:31]   =   {tx_pe_data_i[0:15],tx_pe_data_i[16:31]};
    assign  tx_pe_data_v_striped_i[0:1]  =   {tx_pe_data_v_i[0],tx_pe_data_v_i[1]};   

    design_1_axi_chip2chip_0_aurora8_1_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE design_1_axi_chip2chip_0_aurora8_1_tx_aurora_lane_simplex_gtx_4byte_0_i
    (
        // GT Interface
.TX_BUF_ERR(tx_buf_err_i),
        .TX_K_ERR(4'b0000),         //TX_K_ERR not used

        .TX_CHAR_IS_K(tx_char_is_k_i[3:0]),
        .TX_DATA(tx_data_i[31:0]),
.GTX_TX_RESET(gtx_tx_reset_i),

        // TX_LL Interface
        .GEN_SCP(gen_scp_striped_i),
        .GEN_ECP(gen_ecp_striped_i),
        .GEN_PAD(gen_pad_striped_i[0:1]),
        .TX_PE_DATA(tx_pe_data_striped_i[0:31]),
        .TX_PE_DATA_V(tx_pe_data_v_striped_i[0:1]),
        .GEN_CC(gen_cc_i),

        .TX_ALIGNED(tx_aligned_simplex_r),

        // Global Logic Interface
.GEN_A(gen_a_i),
        .GEN_K(gen_k_i[0:3]),
        .GEN_R(gen_r_i[0:3]),
        .GEN_V(gen_v_i[0:3]),
        .CHANNEL_UP(tx_channel_up_i),

.LANE_UP(tx_lane_up_i),
.HARD_ERR(tx_hard_err_i),

        // System Interface
        .USER_CLK(user_clk),
        .RESET_SYMGEN(tx_system_reset_c),
.RESET(tx_reset_lanes_i)
    );


    //_________________________Instantiate GT Wrapper ______________________________

    design_1_axi_chip2chip_0_aurora8_1_GT_WRAPPER #
    (
         .SIM_GTRESET_SPEEDUP (SIM_GTRESET_SPEEDUP),
         .EXAMPLE_SIMULATION         (EXAMPLE_SIMULATION)
    )

    gt_wrapper_i
    (

        .gt0_txresetdone_out                (gt0_txresetdone_out),
        .gt0_rxresetdone_out                (),
        .gt0_txbufstatus_out                (gt0_txbufstatus_out),
        .gt0_rxbufstatus_out                (),

        //---------------------- TX Configurable Driver Ports ----------------------
        .gt0_txpostcursor_in                (gt0_txpostcursor_in),
        .gt0_txprecursor_in                 (gt0_txprecursor_in),
        //---------------- Transmit Ports - TX 8B/10B Encoder Ports ----------------
        .gt0_txchardispmode_in              (gt0_txchardispmode_in),
        .gt0_txchardispval_in               (gt0_txchardispval_in),
        .gt0_txdiffctrl_in                  (gt0_txdiffctrl_in),
        .gt0_txmaincursor_in                (gt0_txmaincursor_in),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in                  (gt0_txpolarity_in),
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt0_txprbsforceerr_in              (gt0_txprbsforceerr_in),
        .gt0_txprbssel_in                   (gt0_txprbssel_in),
        //----------------- Transmit Ports - TX Data Path interface -----------------
        .gt0_txpcsreset_in                  (gt0_txpcsreset_in),
        .gt0_txinhibit_in                   (gt0_txinhibit_in),
        .gt0_txpmareset_in                  (gt0_txpmareset_in),

        //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescanreset_in                (1'b0),
        .gt0_eyescandataerror_out           (),
        .gt0_eyescantrigger_in              (1'b0),

        .gt0_rxlpmhfhold_in                 (1'b0),
        .gt0_rxlpmlfhold_in                 (1'b0),
        .gt0_rxlpmreset_in          (tied_to_ground_i),
        .gt0_rxlpmhfovrden_in       (tied_to_ground_i),
        .gt0_rxcdrhold_in                   (1'b0),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out         (),
        .gt0_rxprbssel_in          (3'b000),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in     (tied_to_ground_i),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .gt0_rxpcsreset_in         (tied_to_ground_i),
        .gt0_rxpmareset_in         (tied_to_ground_i),
        .gt0_dmonitorout_out       (),
        .gt0_rxpmaresetdone_out    (),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .gt0_rxbufreset_in         (tied_to_ground_i),

        .gt0_rxbyteisaligned_out            (),
        .gt0_rxcommadet_out                 (),


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
        .RXFSM_DATA_VALID            (1'b1),

	.TX_RESETDONE_OUT               (tx_resetdone_i),
	.RX_RESETDONE_OUT               (),
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
        .GTRXRESET_IN(1'b0),

        // reset for hot plug
        .LINK_RESET_IN(1'b0),

      // Phase Align Interface
.ENMCOMMAALIGN_IN(ena_comma_align_i),
.ENPCOMMAALIGN_IN(ena_comma_align_i),
        //Global Logic Interface
.ENCHANSYNC_IN(en_chan_sync_i),
.CHBONDDONE_OUT(ch_bond_done_i),

        //Serial IO
.RX1N_IN(1'b0),
.RX1P_IN(1'b0),
.TX1N_OUT(txn),
.TX1P_OUT(txp),
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

    

    //Tie off RX Global Logic signals to the GT
    assign  en_chan_sync_i  =   1'b0;



    //_____________________________Instantiate TX Global Logic___________________________

    design_1_axi_chip2chip_0_aurora8_1_TX_GLOBAL_LOGIC_SIMPLEX design_1_axi_chip2chip_0_aurora8_1_tx_global_logic_simplex_i
    (
        // Aurora Lane Interface
        .LANE_UP(tx_lane_up_i),
        .HARD_ERR(tx_hard_err_i),

        .GEN_A(gen_a_i),
        .GEN_K(gen_k_i),
        .GEN_R(gen_r_i),
        .GEN_V(gen_v_i),
        .RESET_LANES(tx_reset_lanes_i),

        // Sideband Signal
        .TX_VERIFY(tx_verify_simplex_r),

        // System Interface
        .USER_CLK(user_clk),
        .RESET(tx_system_reset_c),
        .POWER_DOWN(power_down),

        .CHANNEL_UP(tx_channel_up_i),
        .CHANNEL_HARD_ERR(tx_hard_err)
    );

    //_____________________________ TX AXI SHIM _______________________________
    design_1_axi_chip2chip_0_aurora8_1_AXI_TO_LL #
    (
       .DATA_WIDTH(32),
       .STRB_WIDTH(4),
       .USE_4_NFC (0),
       .REM_WIDTH (2)
    )

    axi_to_ll_pdu_i
    (
     .AXI4_S_IP_TX_TVALID(s_axi_tx_tvalid),
     .AXI4_S_IP_TX_TREADY(s_axi_tx_tready),
     .AXI4_S_IP_TX_TDATA(s_axi_tx_tdata),
     .AXI4_S_IP_TX_TKEEP(4'd0),
     .AXI4_S_IP_TX_TLAST(1'b0),

     .LL_OP_DATA(tx_data),
     .LL_OP_SOF_N(),
     .LL_OP_EOF_N(),
     .LL_OP_REM(),
     .LL_OP_SRC_RDY_N(tx_src_rdy),
     .LL_IP_DST_RDY_N(tx_dst_rdy),

     // System Interface
     .USER_CLK(user_clk),
     .RESET(tx_system_reset_c), 
     .CHANNEL_UP(tx_channel_up_i)
    );

    always @ (posedge user_clk) lane_up_reduce_i <= &tx_lane_up_i;
    assign rst_cc_module_i           =   system_reset_i; 
    design_1_axi_chip2chip_0_aurora8_1_STANDARD_CC_MODULE  #
    (
     .CC_FREQ_FACTOR (CC_FREQ_FACTOR)
    )
    standard_cc_module_i
    (
        .RESET(rst_cc_module_i),
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc),
        .DO_CC(do_cc_i),
        // System Interface
        .PLL_NOT_LOCKED(pll_not_locked),
        .USER_CLK(user_clk)
    );

    //_____________________________Instantiate TX_STREAM___________________________
   
    design_1_axi_chip2chip_0_aurora8_1_TX_STREAM design_1_axi_chip2chip_0_aurora8_1_tx_stream_i
    (
        // AXI PDU Interface
        .TX_D(tx_data),
        .TX_SRC_RDY_N(tx_src_rdy),
        .TX_DST_RDY_N(tx_dst_rdy),

        // Global Logic Interface
        .CHANNEL_UP(tx_channel_up_i),

        //Clock Correction Interface
        .WARN_CC(warn_cc),
        .DO_CC(do_cc_i),
       
        // Aurora Lane Interface
        .GEN_SCP(gen_scp_i),
        .GEN_ECP(gen_ecp_i),
        .TX_PE_DATA_V(tx_pe_data_v_i),
        .GEN_PAD(gen_pad_i),
        .TX_PE_DATA(tx_pe_data_i),
        .GEN_CC(gen_cc_i),

        // System Interface
        .USER_CLK(user_clk)
    );


endmodule
