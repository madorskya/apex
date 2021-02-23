`timescale 1ns / 1ps
module reg_bank
(
    input [15:0] reg_rw,
    output [1:0] ipmb_en_1_0,
    output [2:0] id_4_2,
    output payload_on_5,
    output [2:0] prbs_sel_8_6,
    output aurora_pma_init_9,
    output [3:0] tx_polarity_13_10,
    output gtp_reset_14,
    output channel_up_15,
    
    input [7:0] ha_7_0,
    input [1:0] ready_ipmb_zynq_9_8,
    input los_10g_10,
    input pim_alarm_11,
    input link_stat_top_12,
    input channel_up_top_13,
    input link_stat_bot_14,
    input channel_up_bot_15,
    input hot_swap_handle_16,
    output [16:0] reg_ro
);

    assign ipmb_en_1_0       = ~reg_rw[1:0];
    assign id_4_2            = reg_rw[4:2];
    assign payload_on_5      = ~reg_rw[5];
    assign prbs_sel_8_6      = reg_rw[8:6];
    assign aurora_pma_init_9 = reg_rw[9];
    assign tx_polarity_13_10 = reg_rw[13:10];
    assign gtp_reset_14      = reg_rw[14];
    assign channel_up_15     = reg_rw[15];
    
    assign reg_ro[7:0] = ha_7_0;
    assign reg_ro[9:8] = ready_ipmb_zynq_9_8;
    assign reg_ro[10]  = los_10g_10;
    assign reg_ro[11]  = pim_alarm_11;
    assign reg_ro[12]  = link_stat_top_12;
    assign reg_ro[13]  = channel_up_top_13;
    assign reg_ro[14]  = link_stat_bot_14;
    assign reg_ro[15]  = channel_up_bot_15;
    assign reg_ro[16]  = hot_swap_handle_16;
    

endmodule
