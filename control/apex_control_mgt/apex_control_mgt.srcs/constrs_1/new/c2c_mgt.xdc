create_clock -period 4.0 [get_ports Q0_CLK1_GTREFCLK_PAD_P_IN]

set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *_txfsmresetdone_r*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *_txfsmresetdone_r*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_on_error_in_r*}]]
################################# RefClk Location constraints #####################

set_property LOC U9 [get_ports  Q0_CLK1_GTREFCLK_PAD_P_IN ]
################################# mgt wrapper constraints #####################

##---------- Set placement for gt0_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y0 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt0_c2c_mgt_i/gtpe2_i]
##---------- Set placement for gt1_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y1 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt1_c2c_mgt_i/gtpe2_i]
##---------- Set placement for gt2_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y2 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt2_c2c_mgt_i/gtpe2_i]
##---------- Set placement for gt3_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y3 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt3_c2c_mgt_i/gtpe2_i]

