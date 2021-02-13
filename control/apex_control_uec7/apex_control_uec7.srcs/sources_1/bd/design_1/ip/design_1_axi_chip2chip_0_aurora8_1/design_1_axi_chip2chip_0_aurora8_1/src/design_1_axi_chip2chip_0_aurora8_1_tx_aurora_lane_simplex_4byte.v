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
//  TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
//
//
//  Description: The AURORA_LANE_Simplex module provides a simplex 4-byte
//               aurora lane connection using a single GTX.  The module
//               handles lane initialization and symbol generation.
//
//               * Supports Virtex-5
//

`timescale 1 ns / 1 ps

module design_1_axi_chip2chip_0_aurora8_1_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
(
    // GTX Interface
    TX_BUF_ERR,
    TX_K_ERR,

    TX_CHAR_IS_K,
    TX_DATA,
    GTX_TX_RESET,

    // TX_LL Interface
    GEN_SCP,
    GEN_ECP,
    GEN_PAD,
    TX_PE_DATA,
    TX_PE_DATA_V,
    GEN_CC,

    //Sideband Interface
    TX_ALIGNED,

    // Global Logic Interface
    GEN_A,
    GEN_K,
    GEN_R,
    GEN_V,
    CHANNEL_UP,

    LANE_UP,
    HARD_ERR,


    // System Interface
    USER_CLK,
    RESET_SYMGEN,
    RESET

);

//***********************************Port Declarations*******************************


    // GTX Interface
    input           TX_BUF_ERR;             // Overflow/Underflow of TX buffer detected.
    input   [3:0]   TX_K_ERR;               // Attempt to send bad control byte detected.

    output  [3:0]   TX_CHAR_IS_K;           // TX_DATA byte is a control character.
    output  [31:0]  TX_DATA;                // 4-byte data bus to the GTX.
    output          GTX_TX_RESET;           // Reset TX side of GTX logic.

    // TX_LL Interface
    input   [0:1]   GEN_SCP;                // SCP generation request from TX_LL.
    input   [0:1]   GEN_ECP;                // ECP generation request from TX_LL.
    input   [0:1]   GEN_PAD;                // PAD generation request from TX_LL.
    input   [0:31]  TX_PE_DATA;             // Data from TX_LL to send over lane.
    input   [0:1]   TX_PE_DATA_V;           // Indicates TX_PE_DATA is Valid.
    input           GEN_CC;                 // CC generation request from TX_LL.

    // Sideband Interface
    input           TX_ALIGNED;             // Input from RX Lane partner to indicate alignment

    // Global Logic Interface
    input           GEN_A;                  // 'A character' generation request from Global Logic.
    input   [0:3]   GEN_K;                  // 'K character' generation request from Global Logic.
    input   [0:3]   GEN_R;                  // 'R character' generation request from Global Logic.
    input   [0:3]   GEN_V;                  // Verification data generation request.
    input           CHANNEL_UP;
    output          LANE_UP;                // Lane is ready for bonding and verification.
    output          HARD_ERR;             // Hard error detected.

    // System Interface
    input           USER_CLK;               // System clock for all non-GTX Aurora Logic.
    input           RESET_SYMGEN;           // Reset the SYM_GEN module.
    input           RESET;                  // Reset the lane.


//*********************************Wire Declarations**********************************

    wire            gen_sp_i;
    wire            gen_spa_c;
    wire            enable_err_detect_i;
    wire            hard_err_reset_i;
    wire    [1:0]   tx_k_err_c;


//*********************************Main Body of Code**********************************


    // ______________________Lane Initialization state machine______________________


    design_1_axi_chip2chip_0_aurora8_1_TX_LANE_INIT_SM_SIMPLEX_4BYTE design_1_axi_chip2chip_0_aurora8_1_tx_lane_init_sm_simplex_i
    (
        // GTX Interface
        .GTX_TX_RESET(GTX_TX_RESET),

        // Symbol Generator Interface
        .GEN_SP(gen_sp_i),

        // Error Detection Logic Interface
        .HARD_ERR_RESET(hard_err_reset_i),

        .ENABLE_ERR_DETECT(enable_err_detect_i),

        // Global Logic Interface
        .LANE_UP(LANE_UP),

        // Sideband Signals
        .TX_ALIGNED(TX_ALIGNED),


        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(RESET)

    );


    //_______________________________ Symbol Generation Module________________________

    // The Simplex module does not use SPA, therefore gen_spa is tied low.

    assign gen_spa_c = 1'b0;

    design_1_axi_chip2chip_0_aurora8_1_SYM_GEN_4BYTE design_1_axi_chip2chip_0_aurora8_1_sym_gen_4byte_i
    (
        // TX_LL Interface
        .GEN_SCP(GEN_SCP),
        .GEN_ECP(GEN_ECP),
        .GEN_PAD(GEN_PAD),
        .TX_PE_DATA(TX_PE_DATA),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .GEN_CC(GEN_CC),

        // Global Logic Interface
        .GEN_A(GEN_A),
        .GEN_K(GEN_K),
        .GEN_R(GEN_R),
        .GEN_V(GEN_V),

        // Lane Init SM Interface
        .GEN_SP(gen_sp_i),
        .GEN_SPA(gen_spa_c),

        // GT Interface
        .TX_CHAR_IS_K({TX_CHAR_IS_K[0],TX_CHAR_IS_K[1],TX_CHAR_IS_K[2],TX_CHAR_IS_K[3]}),
        .TX_DATA({TX_DATA[7:0],TX_DATA[15:8],TX_DATA[23:16],TX_DATA[31:24]}),

        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(RESET_SYMGEN)
    );


    //_______________________________ Error Detection Module _________________________________

    // We tie off tx_k_err instead of connecting it to the GTX.  TX_K_ERR is considered
    // an obsolete signal, and tests with deliberate errors to check far side error detection.

    assign tx_k_err_c   = 2'b00;

    design_1_axi_chip2chip_0_aurora8_1_TX_ERR_DETECT_SIMPLEX design_1_axi_chip2chip_0_aurora8_1_tx_err_detect_simplex_i
    (
        // Lane Init SM Interface
        .ENABLE_ERR_DETECT(enable_err_detect_i),

        .HARD_ERR_RESET(hard_err_reset_i),

        // Global Logic Interface
        .HARD_ERR(HARD_ERR),

        // GTX Interface
        .TX_K_ERR(tx_k_err_c),
        .TX_BUF_ERR(TX_BUF_ERR),

        // System Interface
        .USER_CLK(USER_CLK)
    );


endmodule
