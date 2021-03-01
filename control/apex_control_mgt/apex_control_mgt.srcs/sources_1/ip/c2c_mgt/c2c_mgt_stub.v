// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Mon Mar  1 03:10:37 2021
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/github/apex/control/apex_control_mgt/apex_control_mgt.srcs/sources_1/ip/c2c_mgt/c2c_mgt_stub.v
// Design      : c2c_mgt
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "c2c_mgt,gtwizard_v3_6_12,{protocol_file=Start_from_scratch}" *)
module c2c_mgt(soft_reset_tx_in, soft_reset_rx_in, 
  dont_reset_on_data_error_in, q0_clk1_gtrefclk_pad_n_in, q0_clk1_gtrefclk_pad_p_in, 
  gt0_tx_mmcm_lock_out, gt0_rx_mmcm_lock_out, gt0_tx_fsm_reset_done_out, 
  gt0_rx_fsm_reset_done_out, gt0_data_valid_in, gt1_tx_mmcm_lock_out, 
  gt1_rx_mmcm_lock_out, gt1_tx_fsm_reset_done_out, gt1_rx_fsm_reset_done_out, 
  gt1_data_valid_in, gt2_tx_mmcm_lock_out, gt2_rx_mmcm_lock_out, 
  gt2_tx_fsm_reset_done_out, gt2_rx_fsm_reset_done_out, gt2_data_valid_in, 
  gt3_tx_mmcm_lock_out, gt3_rx_mmcm_lock_out, gt3_tx_fsm_reset_done_out, 
  gt3_rx_fsm_reset_done_out, gt3_data_valid_in, gt0_txusrclk_out, gt0_txusrclk2_out, 
  gt0_rxusrclk_out, gt0_rxusrclk2_out, gt1_txusrclk_out, gt1_txusrclk2_out, 
  gt1_rxusrclk_out, gt1_rxusrclk2_out, gt2_txusrclk_out, gt2_txusrclk2_out, 
  gt2_rxusrclk_out, gt2_rxusrclk2_out, gt3_txusrclk_out, gt3_txusrclk2_out, 
  gt3_rxusrclk_out, gt3_rxusrclk2_out, gt0_drpaddr_in, gt0_drpdi_in, gt0_drpdo_out, 
  gt0_drpen_in, gt0_drprdy_out, gt0_drpwe_in, gt0_eyescanreset_in, gt0_rxuserrdy_in, 
  gt0_eyescandataerror_out, gt0_eyescantrigger_in, gt0_rxclkcorcnt_out, gt0_rxdata_out, 
  gt0_rxprbserr_out, gt0_rxprbssel_in, gt0_rxprbscntreset_in, gt0_rxcharisk_out, 
  gt0_rxdisperr_out, gt0_rxnotintable_out, gt0_gtprxn_in, gt0_gtprxp_in, 
  gt0_rxbyteisaligned_out, gt0_rxmcommaalignen_in, gt0_rxpcommaalignen_in, 
  gt0_dmonitorout_out, gt0_rxlpmhfhold_in, gt0_rxlpmlfhold_in, gt0_rxoutclkfabric_out, 
  gt0_gtrxreset_in, gt0_rxlpmreset_in, gt0_rxpolarity_in, gt0_rxresetdone_out, 
  gt0_gttxreset_in, gt0_txuserrdy_in, gt0_txdata_in, gt0_txcharisk_in, gt0_gtptxn_out, 
  gt0_gtptxp_out, gt0_txoutclkfabric_out, gt0_txoutclkpcs_out, gt0_txresetdone_out, 
  gt0_txpolarity_in, gt0_txprbssel_in, gt1_drpaddr_in, gt1_drpdi_in, gt1_drpdo_out, 
  gt1_drpen_in, gt1_drprdy_out, gt1_drpwe_in, gt1_eyescanreset_in, gt1_rxuserrdy_in, 
  gt1_eyescandataerror_out, gt1_eyescantrigger_in, gt1_rxclkcorcnt_out, gt1_rxdata_out, 
  gt1_rxprbserr_out, gt1_rxprbssel_in, gt1_rxprbscntreset_in, gt1_rxcharisk_out, 
  gt1_rxdisperr_out, gt1_rxnotintable_out, gt1_gtprxn_in, gt1_gtprxp_in, 
  gt1_rxbyteisaligned_out, gt1_rxmcommaalignen_in, gt1_rxpcommaalignen_in, 
  gt1_dmonitorout_out, gt1_rxlpmhfhold_in, gt1_rxlpmlfhold_in, gt1_rxoutclkfabric_out, 
  gt1_gtrxreset_in, gt1_rxlpmreset_in, gt1_rxpolarity_in, gt1_rxresetdone_out, 
  gt1_gttxreset_in, gt1_txuserrdy_in, gt1_txdata_in, gt1_txcharisk_in, gt1_gtptxn_out, 
  gt1_gtptxp_out, gt1_txoutclkfabric_out, gt1_txoutclkpcs_out, gt1_txresetdone_out, 
  gt1_txpolarity_in, gt1_txprbssel_in, gt2_drpaddr_in, gt2_drpdi_in, gt2_drpdo_out, 
  gt2_drpen_in, gt2_drprdy_out, gt2_drpwe_in, gt2_eyescanreset_in, gt2_rxuserrdy_in, 
  gt2_eyescandataerror_out, gt2_eyescantrigger_in, gt2_rxclkcorcnt_out, gt2_rxdata_out, 
  gt2_rxprbserr_out, gt2_rxprbssel_in, gt2_rxprbscntreset_in, gt2_rxcharisk_out, 
  gt2_rxdisperr_out, gt2_rxnotintable_out, gt2_gtprxn_in, gt2_gtprxp_in, 
  gt2_rxbyteisaligned_out, gt2_rxmcommaalignen_in, gt2_rxpcommaalignen_in, 
  gt2_dmonitorout_out, gt2_rxlpmhfhold_in, gt2_rxlpmlfhold_in, gt2_rxoutclkfabric_out, 
  gt2_gtrxreset_in, gt2_rxlpmreset_in, gt2_rxpolarity_in, gt2_rxresetdone_out, 
  gt2_gttxreset_in, gt2_txuserrdy_in, gt2_txdata_in, gt2_txcharisk_in, gt2_gtptxn_out, 
  gt2_gtptxp_out, gt2_txoutclkfabric_out, gt2_txoutclkpcs_out, gt2_txresetdone_out, 
  gt2_txpolarity_in, gt2_txprbssel_in, gt3_drpaddr_in, gt3_drpdi_in, gt3_drpdo_out, 
  gt3_drpen_in, gt3_drprdy_out, gt3_drpwe_in, gt3_eyescanreset_in, gt3_rxuserrdy_in, 
  gt3_eyescandataerror_out, gt3_eyescantrigger_in, gt3_rxclkcorcnt_out, gt3_rxdata_out, 
  gt3_rxprbserr_out, gt3_rxprbssel_in, gt3_rxprbscntreset_in, gt3_rxcharisk_out, 
  gt3_rxdisperr_out, gt3_rxnotintable_out, gt3_gtprxn_in, gt3_gtprxp_in, 
  gt3_rxbyteisaligned_out, gt3_rxmcommaalignen_in, gt3_rxpcommaalignen_in, 
  gt3_dmonitorout_out, gt3_rxlpmhfhold_in, gt3_rxlpmlfhold_in, gt3_rxoutclkfabric_out, 
  gt3_gtrxreset_in, gt3_rxlpmreset_in, gt3_rxpolarity_in, gt3_rxresetdone_out, 
  gt3_gttxreset_in, gt3_txuserrdy_in, gt3_txdata_in, gt3_txcharisk_in, gt3_gtptxn_out, 
  gt3_gtptxp_out, gt3_txoutclkfabric_out, gt3_txoutclkpcs_out, gt3_txresetdone_out, 
  gt3_txpolarity_in, gt3_txprbssel_in, gt0_pll0reset_out, gt0_pll0outclk_out, 
  gt0_pll0outrefclk_out, gt0_pll0lock_out, gt0_pll0refclklost_out, gt0_pll1outclk_out, 
  gt0_pll1outrefclk_out, sysclk_in)
/* synthesis syn_black_box black_box_pad_pin="soft_reset_tx_in,soft_reset_rx_in,dont_reset_on_data_error_in,q0_clk1_gtrefclk_pad_n_in,q0_clk1_gtrefclk_pad_p_in,gt0_tx_mmcm_lock_out,gt0_rx_mmcm_lock_out,gt0_tx_fsm_reset_done_out,gt0_rx_fsm_reset_done_out,gt0_data_valid_in,gt1_tx_mmcm_lock_out,gt1_rx_mmcm_lock_out,gt1_tx_fsm_reset_done_out,gt1_rx_fsm_reset_done_out,gt1_data_valid_in,gt2_tx_mmcm_lock_out,gt2_rx_mmcm_lock_out,gt2_tx_fsm_reset_done_out,gt2_rx_fsm_reset_done_out,gt2_data_valid_in,gt3_tx_mmcm_lock_out,gt3_rx_mmcm_lock_out,gt3_tx_fsm_reset_done_out,gt3_rx_fsm_reset_done_out,gt3_data_valid_in,gt0_txusrclk_out,gt0_txusrclk2_out,gt0_rxusrclk_out,gt0_rxusrclk2_out,gt1_txusrclk_out,gt1_txusrclk2_out,gt1_rxusrclk_out,gt1_rxusrclk2_out,gt2_txusrclk_out,gt2_txusrclk2_out,gt2_rxusrclk_out,gt2_rxusrclk2_out,gt3_txusrclk_out,gt3_txusrclk2_out,gt3_rxusrclk_out,gt3_rxusrclk2_out,gt0_drpaddr_in[8:0],gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxclkcorcnt_out[1:0],gt0_rxdata_out[31:0],gt0_rxprbserr_out,gt0_rxprbssel_in[2:0],gt0_rxprbscntreset_in,gt0_rxcharisk_out[3:0],gt0_rxdisperr_out[3:0],gt0_rxnotintable_out[3:0],gt0_gtprxn_in,gt0_gtprxp_in,gt0_rxbyteisaligned_out,gt0_rxmcommaalignen_in,gt0_rxpcommaalignen_in,gt0_dmonitorout_out[14:0],gt0_rxlpmhfhold_in,gt0_rxlpmlfhold_in,gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxlpmreset_in,gt0_rxpolarity_in,gt0_rxresetdone_out,gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txdata_in[31:0],gt0_txcharisk_in[3:0],gt0_gtptxn_out,gt0_gtptxp_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txresetdone_out,gt0_txpolarity_in,gt0_txprbssel_in[2:0],gt1_drpaddr_in[8:0],gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_rxclkcorcnt_out[1:0],gt1_rxdata_out[31:0],gt1_rxprbserr_out,gt1_rxprbssel_in[2:0],gt1_rxprbscntreset_in,gt1_rxcharisk_out[3:0],gt1_rxdisperr_out[3:0],gt1_rxnotintable_out[3:0],gt1_gtprxn_in,gt1_gtprxp_in,gt1_rxbyteisaligned_out,gt1_rxmcommaalignen_in,gt1_rxpcommaalignen_in,gt1_dmonitorout_out[14:0],gt1_rxlpmhfhold_in,gt1_rxlpmlfhold_in,gt1_rxoutclkfabric_out,gt1_gtrxreset_in,gt1_rxlpmreset_in,gt1_rxpolarity_in,gt1_rxresetdone_out,gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txdata_in[31:0],gt1_txcharisk_in[3:0],gt1_gtptxn_out,gt1_gtptxp_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txresetdone_out,gt1_txpolarity_in,gt1_txprbssel_in[2:0],gt2_drpaddr_in[8:0],gt2_drpdi_in[15:0],gt2_drpdo_out[15:0],gt2_drpen_in,gt2_drprdy_out,gt2_drpwe_in,gt2_eyescanreset_in,gt2_rxuserrdy_in,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_rxclkcorcnt_out[1:0],gt2_rxdata_out[31:0],gt2_rxprbserr_out,gt2_rxprbssel_in[2:0],gt2_rxprbscntreset_in,gt2_rxcharisk_out[3:0],gt2_rxdisperr_out[3:0],gt2_rxnotintable_out[3:0],gt2_gtprxn_in,gt2_gtprxp_in,gt2_rxbyteisaligned_out,gt2_rxmcommaalignen_in,gt2_rxpcommaalignen_in,gt2_dmonitorout_out[14:0],gt2_rxlpmhfhold_in,gt2_rxlpmlfhold_in,gt2_rxoutclkfabric_out,gt2_gtrxreset_in,gt2_rxlpmreset_in,gt2_rxpolarity_in,gt2_rxresetdone_out,gt2_gttxreset_in,gt2_txuserrdy_in,gt2_txdata_in[31:0],gt2_txcharisk_in[3:0],gt2_gtptxn_out,gt2_gtptxp_out,gt2_txoutclkfabric_out,gt2_txoutclkpcs_out,gt2_txresetdone_out,gt2_txpolarity_in,gt2_txprbssel_in[2:0],gt3_drpaddr_in[8:0],gt3_drpdi_in[15:0],gt3_drpdo_out[15:0],gt3_drpen_in,gt3_drprdy_out,gt3_drpwe_in,gt3_eyescanreset_in,gt3_rxuserrdy_in,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_rxclkcorcnt_out[1:0],gt3_rxdata_out[31:0],gt3_rxprbserr_out,gt3_rxprbssel_in[2:0],gt3_rxprbscntreset_in,gt3_rxcharisk_out[3:0],gt3_rxdisperr_out[3:0],gt3_rxnotintable_out[3:0],gt3_gtprxn_in,gt3_gtprxp_in,gt3_rxbyteisaligned_out,gt3_rxmcommaalignen_in,gt3_rxpcommaalignen_in,gt3_dmonitorout_out[14:0],gt3_rxlpmhfhold_in,gt3_rxlpmlfhold_in,gt3_rxoutclkfabric_out,gt3_gtrxreset_in,gt3_rxlpmreset_in,gt3_rxpolarity_in,gt3_rxresetdone_out,gt3_gttxreset_in,gt3_txuserrdy_in,gt3_txdata_in[31:0],gt3_txcharisk_in[3:0],gt3_gtptxn_out,gt3_gtptxp_out,gt3_txoutclkfabric_out,gt3_txoutclkpcs_out,gt3_txresetdone_out,gt3_txpolarity_in,gt3_txprbssel_in[2:0],gt0_pll0reset_out,gt0_pll0outclk_out,gt0_pll0outrefclk_out,gt0_pll0lock_out,gt0_pll0refclklost_out,gt0_pll1outclk_out,gt0_pll1outrefclk_out,sysclk_in" */;
  input soft_reset_tx_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  input q0_clk1_gtrefclk_pad_n_in;
  input q0_clk1_gtrefclk_pad_p_in;
  output gt0_tx_mmcm_lock_out;
  output gt0_rx_mmcm_lock_out;
  output gt0_tx_fsm_reset_done_out;
  output gt0_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  output gt1_tx_mmcm_lock_out;
  output gt1_rx_mmcm_lock_out;
  output gt1_tx_fsm_reset_done_out;
  output gt1_rx_fsm_reset_done_out;
  input gt1_data_valid_in;
  output gt2_tx_mmcm_lock_out;
  output gt2_rx_mmcm_lock_out;
  output gt2_tx_fsm_reset_done_out;
  output gt2_rx_fsm_reset_done_out;
  input gt2_data_valid_in;
  output gt3_tx_mmcm_lock_out;
  output gt3_rx_mmcm_lock_out;
  output gt3_tx_fsm_reset_done_out;
  output gt3_rx_fsm_reset_done_out;
  input gt3_data_valid_in;
  output gt0_txusrclk_out;
  output gt0_txusrclk2_out;
  output gt0_rxusrclk_out;
  output gt0_rxusrclk2_out;
  output gt1_txusrclk_out;
  output gt1_txusrclk2_out;
  output gt1_rxusrclk_out;
  output gt1_rxusrclk2_out;
  output gt2_txusrclk_out;
  output gt2_txusrclk2_out;
  output gt2_rxusrclk_out;
  output gt2_rxusrclk2_out;
  output gt3_txusrclk_out;
  output gt3_txusrclk2_out;
  output gt3_rxusrclk_out;
  output gt3_rxusrclk2_out;
  input [8:0]gt0_drpaddr_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  output [1:0]gt0_rxclkcorcnt_out;
  output [31:0]gt0_rxdata_out;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  output [3:0]gt0_rxcharisk_out;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_gtprxn_in;
  input gt0_gtprxp_in;
  output gt0_rxbyteisaligned_out;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  output [14:0]gt0_dmonitorout_out;
  input gt0_rxlpmhfhold_in;
  input gt0_rxlpmlfhold_in;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxlpmreset_in;
  input gt0_rxpolarity_in;
  output gt0_rxresetdone_out;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input [31:0]gt0_txdata_in;
  input [3:0]gt0_txcharisk_in;
  output gt0_gtptxn_out;
  output gt0_gtptxp_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  input gt0_txpolarity_in;
  input [2:0]gt0_txprbssel_in;
  input [8:0]gt1_drpaddr_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  output [1:0]gt1_rxclkcorcnt_out;
  output [31:0]gt1_rxdata_out;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  output [3:0]gt1_rxcharisk_out;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt1_gtprxn_in;
  input gt1_gtprxp_in;
  output gt1_rxbyteisaligned_out;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  output [14:0]gt1_dmonitorout_out;
  input gt1_rxlpmhfhold_in;
  input gt1_rxlpmlfhold_in;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxlpmreset_in;
  input gt1_rxpolarity_in;
  output gt1_rxresetdone_out;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input [31:0]gt1_txdata_in;
  input [3:0]gt1_txcharisk_in;
  output gt1_gtptxn_out;
  output gt1_gtptxp_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  input gt1_txpolarity_in;
  input [2:0]gt1_txprbssel_in;
  input [8:0]gt2_drpaddr_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  output [1:0]gt2_rxclkcorcnt_out;
  output [31:0]gt2_rxdata_out;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  output [3:0]gt2_rxcharisk_out;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_gtprxn_in;
  input gt2_gtprxp_in;
  output gt2_rxbyteisaligned_out;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  output [14:0]gt2_dmonitorout_out;
  input gt2_rxlpmhfhold_in;
  input gt2_rxlpmlfhold_in;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxlpmreset_in;
  input gt2_rxpolarity_in;
  output gt2_rxresetdone_out;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input [31:0]gt2_txdata_in;
  input [3:0]gt2_txcharisk_in;
  output gt2_gtptxn_out;
  output gt2_gtptxp_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  input gt2_txpolarity_in;
  input [2:0]gt2_txprbssel_in;
  input [8:0]gt3_drpaddr_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  output [1:0]gt3_rxclkcorcnt_out;
  output [31:0]gt3_rxdata_out;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  output [3:0]gt3_rxcharisk_out;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_gtprxn_in;
  input gt3_gtprxp_in;
  output gt3_rxbyteisaligned_out;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  output [14:0]gt3_dmonitorout_out;
  input gt3_rxlpmhfhold_in;
  input gt3_rxlpmlfhold_in;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxlpmreset_in;
  input gt3_rxpolarity_in;
  output gt3_rxresetdone_out;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input [31:0]gt3_txdata_in;
  input [3:0]gt3_txcharisk_in;
  output gt3_gtptxn_out;
  output gt3_gtptxp_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  input gt3_txpolarity_in;
  input [2:0]gt3_txprbssel_in;
  output gt0_pll0reset_out;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll0lock_out;
  output gt0_pll0refclklost_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  input sysclk_in;
endmodule
