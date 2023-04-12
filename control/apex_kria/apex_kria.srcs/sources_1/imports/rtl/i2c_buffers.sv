`timescale 1ns / 1ps

module i2c_buffers
(
    output sda_i,
    input  sda_o,
    input  sda_t,

    output scl_i,
    input  scl_o,
    input  scl_t,
    
    inout sda_pin,
    inout scl_pin
);

    IOBUF sda_buf (.IO(sda_pin), .I(sda_o), .O(sda_i), .T(sda_t));
    IOBUF scl_buf (.IO(scl_pin), .I(scl_o), .O(scl_i), .T(scl_t));

endmodule
