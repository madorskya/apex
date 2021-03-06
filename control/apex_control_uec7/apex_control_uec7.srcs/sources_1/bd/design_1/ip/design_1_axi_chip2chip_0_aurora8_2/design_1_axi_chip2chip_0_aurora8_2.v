///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
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
///////////////////////////////////////////////////////////////////////////////

 `timescale 1 ns / 10 ps

(* core_generation_info = "design_1_axi_chip2chip_0_aurora8_2,aurora_8b10b_v11_1_9,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=1,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=37500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=true,c_simplex_mode=RX,c_stream=true,c_ufc=false,flow_mode=None,interface_mode=Streaming,dataflow_config=RX-only_Simplex}" *)

 module design_1_axi_chip2chip_0_aurora8_2
 (

 
output  [0:31]     m_axi_rx_tdata,
output             m_axi_rx_tvalid,



    // GT Serial I/O
input              rxp,
input              rxn,


    // GT Reference Clock Interface
input              gt_refclk1,

    // Error Detection Interface
output             rx_hard_err,
output             soft_err,
    // Status
output             rx_lane_up,
output             rx_channel_up,




    // System Interface
input               user_clk,
input               sync_clk,
input               gt_reset,
input               rx_system_reset,
output              sys_reset_out,

input              power_down,
input   [2:0]      loopback,
output             tx_lock,

input              init_clk_in,
output             rx_resetdone_out,
output             link_reset_out,
    //DRP Ports
input              drpclk_in,  
input   [8:0]      drpaddr_in, 
input              drpen_in, 
input   [15:0]     drpdi_in, 
output             drprdy_out, 
output  [15:0]     drpdo_out, 
input              drpwe_in, 

 
 output            gt0_rxresetdone_out, 
 output  [2:0]     gt0_rxbufstatus_out,
    //------------------------ RX Margin Analysis Ports ------------------------
 input             gt0_eyescanreset_in,
 output            gt0_eyescandataerror_out,
 input             gt0_eyescantrigger_in,

 input             gt0_rxlpmhfhold_in,
 input             gt0_rxlpmlfhold_in,
 input             gt0_rxlpmhfovrden_in,
 input             gt0_rxlpmreset_in,
 input             gt0_rxcdrhold_in,
 output            gt0_rxbyteisaligned_out,
 output            gt0_rx_realign_out,
 output            gt0_rx_buf_err_out,
 output            gt0_rxcommadet_out,
        //----------------- Receive Ports - Pattern Checker Ports ------------------
 output            gt0_rxprbserr_out,
 input   [2:0]     gt0_rxprbssel_in,
        //----------------- Receive Ports - Pattern Checker ports ------------------
 input             gt0_rxprbscntreset_in,
        //----------------- Receive Ports - RX Data Path interface -----------------
 input             gt0_rxpcsreset_in,
 input             gt0_rxpmareset_in,
 output            gt0_rxpmaresetdone_out,
 output   [14:0]    gt0_dmonitorout_out,
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
 input             gt0_rxbufreset_in,

 output  [3:0]   gt0_rx_disp_err_out,
 output  [3:0]   gt0_rx_not_in_table_out,

//------------------{
output  gt_common_reset_out,
//____________________________COMMON PORTS_______________________________{
input    gt0_pll0refclklost_in,
input    quad1_common_lock_in,
//----------------------- Channel - Ref Clock Ports ------------------------
input           gt0_pll0outclk_in,
input           gt0_pll1outclk_in,
input           gt0_pll0outrefclk_in,
input           gt0_pll1outrefclk_in,
//____________________________COMMON PORTS_______________________________}
//------------------}
output             tx_out_clk,
input              pll_not_locked


 );

 `define DLY #1

 //*********************************Main Body of Code**********************************

//--- Instance of _core module --[
design_1_axi_chip2chip_0_aurora8_2_core inst
     (

        // AXI RX Interface
       .m_axi_rx_tdata               (m_axi_rx_tdata),
       .m_axi_rx_tvalid              (m_axi_rx_tvalid),


        // GT Serial I/O
       .rxp                          (rxp),
       .rxn                          (rxn),

        // GT Reference Clock Interface
       .gt_refclk1                   (gt_refclk1),
        // Error Detection Interface

        // Error Detection Interface
       .rx_hard_err                  (rx_hard_err),
       .soft_err                     (soft_err),
        
        // Status
       .rx_channel_up                (rx_channel_up),
       .rx_lane_up                   (rx_lane_up),




        // System Interface
       .user_clk                     (user_clk),
       .sync_clk                     (sync_clk),
       .rx_system_reset              (rx_system_reset),
       .sys_reset_out                (sys_reset_out),
       .power_down                   (power_down),
       .loopback                     (loopback),
       .gt_reset                     (gt_reset),
       .tx_lock                      (tx_lock),
       .init_clk_in                  (init_clk_in),
       .pll_not_locked               (pll_not_locked),
       .rx_resetdone_out             (rx_resetdone_out),
       .link_reset_out               (link_reset_out),
       .drpclk_in                          (drpclk_in),
       .drpaddr_in                   (drpaddr_in),
       .drpen_in                     (drpen_in),
       .drpdi_in                     (drpdi_in),
       .drprdy_out                   (drprdy_out),
       .drpdo_out                    (drpdo_out),
       .drpwe_in                     (drpwe_in),
//------------------{
.gt_common_reset_out (gt_common_reset_out),
//____________________________COMMON PORTS_______________________________{
.gt0_pll0refclklost_in(gt0_pll0refclklost_in),
.quad1_common_lock_in (quad1_common_lock_in),
//----------------------- Channel - Ref Clock Ports ------------------------
.gt0_pll0outclk_in       (gt0_pll0outclk_in),
.gt0_pll1outclk_in       (gt0_pll1outclk_in),
.gt0_pll0outrefclk_in    (gt0_pll0outrefclk_in),
.gt0_pll1outrefclk_in    (gt0_pll1outrefclk_in),
//____________________________COMMON PORTS_______________________________}
//------------------}
       .gt0_rxresetdone_out                (gt0_rxresetdone_out),
        .gt0_rxbufstatus_out                (gt0_rxbufstatus_out),
       //------------------------ RX Margin Analysis Ports ------------------------
       .gt0_eyescanreset_in        (gt0_eyescanreset_in),
       .gt0_eyescandataerror_out   (gt0_eyescandataerror_out ),
       .gt0_eyescantrigger_in      (gt0_eyescantrigger_in),

        .gt0_rxlpmhfhold_in                 (gt0_rxlpmhfhold_in),
        .gt0_rxlpmlfhold_in                 (gt0_rxlpmlfhold_in),
        .gt0_rxlpmreset_in                  (gt0_rxlpmreset_in),
        .gt0_rxlpmhfovrden_in               (gt0_rxlpmhfovrden_in),

       .gt0_rxcdrhold_in                   (gt0_rxcdrhold_in),
       .gt0_rxbyteisaligned_out    (gt0_rxbyteisaligned_out ),
       .gt0_rx_realign_out         (gt0_rx_realign_out),
       .gt0_rx_buf_err_out         (gt0_rx_buf_err_out),
       .gt0_rxcommadet_out         (gt0_rxcommadet_out),
       .gt0_rx_disp_err_out        (gt0_rx_disp_err_out),
       .gt0_rx_not_in_table_out    (gt0_rx_not_in_table_out),
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
       .tx_out_clk                   (tx_out_clk)
     );

//--- Instance of _core module --]



 endmodule
