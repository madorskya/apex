`timescale 1ns / 1ps

module i2c_switch
(
    input  s0_i,
    output s0_o,
    input  s0_t,

    input  s1_i,
    output s1_o,
    input  s1_t,

    inout  s,
    
    // for debugging
    output s_o,
    output s_i,
    output s_t,
    
    input sel
);

    IOBUF scl_iobuf (.IO(s), .O(s_o), .I(s_i), .T(s_t));

    assign s_i = (sel == 1'b0) ? s0_i : s1_i;
    assign s_t = (sel == 1'b0) ? s0_t : s1_t;
    
    assign s0_o = (sel == 1'b0) ? s_o : 1'b1;
    assign s1_o = (sel == 1'b1) ? s_o : 1'b1;

endmodule
