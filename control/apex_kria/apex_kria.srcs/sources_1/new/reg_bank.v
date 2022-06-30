`timescale 1ns / 1ps
module reg_bank
(
    input prbs_clk,
    input  [25:0] reg_rw,
    output [1:0] ipmb_en_1_0,
    output [2:0] id_4_2,
    output payload_on_5,
    output [2:0] prbs_sel_8_6,
    output aurora_pma_init_9,
    output [3:0] tx_polarity_13_10,
    output gtp_reset_14,
    output channel_up_top_15,
    output c2c_slave_reset_top_16,
    output channel_up_bot_17,
    output c2c_slave_reset_bot_18,
    output [2:0] pok_change_polarity_22_20,
    output [2:0] pok_change_enable_25_23,
    
    input [7:0] ha_7_0,
    input [1:0] ready_ipmb_zynq_9_8,
    input los_10g_10,
    input pim_alarm_11,
    input link_stat_top_12,
    input channel_up_top_13,
    input link_stat_bot_14,
    input channel_up_bot_15,
    input hot_swap_handle_16,
    input [3:0] prbs_err_20_17,
    input [2:0] payload_off_alarm_27_25,
    input pok_payload_28,
    input [2:0] pok_change_31_29,
    output [31:0] reg_ro
);

    assign ipmb_en_1_0        = reg_rw[1:0];
    assign id_4_2             = reg_rw[4:2];
    assign payload_on_5       = ~reg_rw[5];
    assign prbs_sel_8_6       = reg_rw[8:6];
    assign aurora_pma_init_9  = reg_rw[9];
    assign tx_polarity_13_10  = reg_rw[13:10];
    assign gtp_reset_14       = reg_rw[14];
    assign channel_up_top_15      = reg_rw[15];
    assign c2c_slave_reset_top_16 = reg_rw[16];
    assign channel_up_bot_17      = reg_rw[17];
    assign c2c_slave_reset_bot_18 = reg_rw[18];
    wire   prbs_sticky_reset      = reg_rw[19];
    assign pok_change_polarity_22_20 = reg_rw[22:20];
    assign pok_change_enable_25_23   = reg_rw[25:23];
    
    reg [3:0] prbs_err_sticky;
    
    assign reg_ro[7:0]   = ha_7_0;
    assign reg_ro[9:8]   = ready_ipmb_zynq_9_8;
    assign reg_ro[10]    = los_10g_10;
    assign reg_ro[11]    = pim_alarm_11;
    assign reg_ro[12]    = link_stat_top_12;
    assign reg_ro[13]    = channel_up_top_13;
    assign reg_ro[14]    = link_stat_bot_14;
    assign reg_ro[15]    = channel_up_bot_15;
    assign reg_ro[16]    = hot_swap_handle_16;
    assign reg_ro[20:17] = prbs_err_20_17;
    assign reg_ro[24:21] = prbs_err_sticky;
    assign reg_ro[27:25] = payload_off_alarm_27_25;
    assign reg_ro[28]    = pok_payload_28;
    assign reg_ro[31:29] = pok_change_31_29;
    
    always @(posedge prbs_clk)
    begin
        prbs_err_sticky = prbs_err_sticky | prbs_err_20_17;
        if (prbs_sticky_reset == 1'b1) prbs_err_sticky = 4'b0;
    end

endmodule
