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
//  TX_LANE_INIT_SM_SIMPLEX_4BYTE
//
//
//  Description: This logic manages the initialization of the GTX in simplex
//               4-byte mode.  It consists of a small state machine, counters
//               for tracking the progress of initializtion and detecting
//               problems, and some additional support logic.
//

`timescale 1 ns / 1 ps

module design_1_axi_chip2chip_0_aurora8_1_TX_LANE_INIT_SM_SIMPLEX_4BYTE
(
    // GTX Interface

    GTX_TX_RESET,

    // Symbol Generator Interface
    GEN_SP,

    // Error Detection Logic Interface
    ENABLE_ERR_DETECT,
    HARD_ERR_RESET,

    // Global Logic Interface
    LANE_UP,

    // Sideband Signals
    TX_ALIGNED,


    // System Interface
    USER_CLK,
    RESET

);

`define DLY #1


//***********************************Port Declarations*******************************

    // GTX Interface
    output          GTX_TX_RESET;        // Reset the TX side of the GTX.

    // Symbol Generator Interface
    output          GEN_SP;              // Generate SP symbol

    // Error Detection Logic Interface
    input           HARD_ERR_RESET;    // Reset lane due to hard error.

    output          ENABLE_ERR_DETECT; // Turn on Soft Error detection.

    // Sideband Signals
    input           TX_ALIGNED;          // RX lane partner is aligned

    // Global Logic Interface
    output          LANE_UP;             // Lane is initialized.

    // System Interface
    input           USER_CLK;            // Clock for all non-GTX Aurora logic.
    input           RESET;               // Reset Aurora Lane.

//**************************External Register Declarations****************************

    reg             ENABLE_ERR_DETECT;

//**************************Internal Register Declarations****************************

    reg             tx_aligned_r;

    reg     [0:3]   counter1_r;


    // FSM states, encoded for one-hot implementation
    reg             begin_r;        //Starting state
    reg             rst_r;          //Reset GTXs
    reg             align_r;        //Align SERDES
    reg             ready_r;        //Lane ready for Bonding/Verification


//*********************************Wire Declarations**********************************

    wire            send_sp_c;
    wire            count_8d_done_r;

    wire            next_begin_c;
    wire            next_rst_c;
    wire            next_align_c;
    wire            next_ready_c;


//*********************************Main Body of Code**********************************

    //________________Main state machine for managing initialization________________

    // State registers
    always @(posedge USER_CLK)
        if(RESET|HARD_ERR_RESET )
            {begin_r,rst_r,align_r,ready_r}  <=  `DLY    4'b1000;
        else
        begin
            begin_r     <=  `DLY    next_begin_c;
            rst_r       <=  `DLY    next_rst_c;
            align_r     <=  `DLY    next_align_c;
            ready_r     <=  `DLY    next_ready_c;
        end


    // Next state logic
    assign  next_begin_c    =   1'b0;
   
    assign  next_rst_c      =   begin_r |
                                (rst_r & !count_8d_done_r);

    assign  next_align_c    =   (rst_r & count_8d_done_r)|
                                (align_r & !tx_aligned_r);

    assign  next_ready_c    =   (align_r & tx_aligned_r) |
                                 ready_r;


    // Output Logic

    // Hold TX_RESET to GTX when in the RST state.
    assign  GTX_TX_RESET    =   rst_r;


    // This is just for simulation. We know that the circuit will work
    // if the flop initialises to 0 at start-up.Here it is set to 1 to
    // test for the worst case condition
    initial
        tx_aligned_r = 1'b1;


    always @(posedge USER_CLK)
        tx_aligned_r       <= `DLY TX_ALIGNED;


    // LANE_UP is asserted when in the READY state.
    // An FDR Flop is instantiated to ensure that the LANE_UP
    //signal initializes to 0 at start-up

    FDR lane_up_flop_i
    (
        .D(ready_r),
        .C(USER_CLK),
        .R(RESET),
        .Q(LANE_UP)
    );


    // The Aurora Lane should transmit SP sequences when not Ready.
    assign  send_sp_c   =   !ready_r;


    // ENABLE_ERR_DETECT is asserted when in the READY state.  Asserting
    // it earlier will result in too many false errors.  After it is asserted,
    // higher level modules can respond to Hard Errors by resetting the Aurora Lane.
    // We register the signal
    always @(posedge USER_CLK)
        ENABLE_ERR_DETECT <=  `DLY   ready_r;


    //_______________________Transmission Logic for SP sequences_______________

    // Request transmission of the commas needed for the SP and SPA sequences.
    // These commas are sent on the MSByte of the lane on all odd bytes.
    assign  GEN_SP           =   send_sp_c;


    //_________Counter 1 to count reset cycles.____________

    // The initial statement is to ensure that the counter comes up at some value other than X.
    // We have tried different initial values and it does not matter what the value is, as long
    // as it is not X since X breaks the state machine
    initial
        counter1_r = 4'h1;

     always @(posedge USER_CLK)
         if(RESET|HARD_ERR_RESET)     counter1_r   <=  `DLY    4'd1;
         else                           counter1_r   <=  `DLY    counter1_r + 4'd1;


     assign count_8d_done_r = counter1_r[0];

endmodule
