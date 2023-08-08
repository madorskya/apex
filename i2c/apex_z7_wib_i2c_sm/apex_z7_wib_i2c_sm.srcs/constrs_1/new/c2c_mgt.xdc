create_clock -period 4.0 [get_ports Q0_CLK1_GTREFCLK_PAD_P_IN]

set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *_txfsmresetdone_r*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *_txfsmresetdone_r*}]]
#set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_on_error_in_r*}]]
################################# RefClk Location constraints #####################

set_property LOC U9 [get_ports  Q0_CLK1_GTREFCLK_PAD_P_IN ]
################################# mgt wrapper constraints #####################

#set_property LOC GTPE2_CHANNEL_X0Y0 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt0_c2c_mgt_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X0Y1 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt1_c2c_mgt_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X0Y2 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt2_c2c_mgt_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X0Y3 [get_cells c2c_mgt/c2c_mgt_support_i/inst/c2c_mgt_init_i/c2c_mgt_i/gt3_c2c_mgt_i/gtpe2_i]

set_property LOC GTPE2_CHANNEL_X0Y0 [get_cells -hierarchical -filter {NAME =~ *gt0_c2c_mgt_*/gtpe2_i}]
set_property LOC GTPE2_CHANNEL_X0Y1 [get_cells -hierarchical -filter {NAME =~ *gt1_c2c_mgt_*/gtpe2_i}]
set_property LOC GTPE2_CHANNEL_X0Y2 [get_cells -hierarchical -filter {NAME =~ *gt2_c2c_mgt_*/gtpe2_i}]
set_property LOC GTPE2_CHANNEL_X0Y3 [get_cells -hierarchical -filter {NAME =~ *gt3_c2c_mgt_*/gtpe2_i}]

#### manual constraints
#set_clock_groups -group [get_clocks -include_generated_clocks clk_out1_apex_blk_clk_wiz_0 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks clk_out2_apex_blk_clk_wiz_0 ] -asynchronous

#create_clock -period 5 -name txclk0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt0_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name txclk1 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt1_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name txclk2 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt2_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name txclk3 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt3_c2c_mgt_i/gtpe2_i*}]];

#create_clock -period 5 -name rxclk0 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt0_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name rxclk1 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt1_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name rxclk2 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt2_c2c_mgt_i/gtpe2_i*}]];
#create_clock -period 5 -name rxclk3 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt3_c2c_mgt_i/gtpe2_i*}]];


#set_clock_groups -group [get_clocks -include_generated_clocks txclk0 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks txclk1 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks txclk2 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks txclk3 ] -asynchronous

#set_clock_groups -group [get_clocks -include_generated_clocks rxclk0 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks rxclk1 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks rxclk2 ] -asynchronous
#set_clock_groups -group [get_clocks -include_generated_clocks rxclk3 ] -asynchronous
