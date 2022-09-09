`timescale 1ns / 1ps
module i2c_clk_divider
(
    input clk,
    output clk_div
);

    reg [7:0] cnt;
    
    always @(posedge clk) cnt = cnt + 8'h1;
    
    BUFG clk_div_buf (.O(clk_div), .I(cnt[5]));

endmodule
