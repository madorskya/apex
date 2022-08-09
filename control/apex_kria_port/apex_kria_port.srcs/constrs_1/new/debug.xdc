set_property ASYNC_REG true [get_cells {c2c_mgt/c2c_gth_7p8125g_vio_0_inst/inst/PROBE_IN_INST/probe_in_reg_reg[*]}]
set_property ASYNC_REG true [get_cells {c2c_mgt/c2c_gth_7p8125g_vio_0_inst/inst/PROBE_IN_INST/data_int_sync1_reg[*]}]
set_clock_groups -asynchronous -group [get_clocks {gtwiz_userclk_rx_srcclk_out[0]}] -group [get_clocks {clk_pl_0}] -group [get_clocks {GTHE4_CHANNEL_TXOUTCLK[0]}]
