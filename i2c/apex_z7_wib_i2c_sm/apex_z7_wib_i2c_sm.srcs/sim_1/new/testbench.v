`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2022 16:48:10
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench # ();
       
    reg  clk;
    wire [11:0] gpio_i;
    reg  [1:0] scl_i_out;
    reg  [1:0] scl_t_out;
    reg  [1:0] sda_i_out;
    reg  [1:0] sda_t_out;
    
    integer i;
    
    always
    begin 
     clk = 1; #1;
     clk = 0; #1;
    end
    
    initial
    begin
        i = 0;
        scl_i_out = 2'h3;
        scl_t_out = 2'h3;
        sda_i_out = 2'h3;
        sda_t_out = 2'h3;
    end
        
    always @ (posedge clk)
    begin   
        i = i + 1;
        
        if (i == 10)
        begin
            scl_i_out[0] = 1'b0;
            scl_t_out[0] = 1'b0;
        end
        
        if (i == 60)
        begin
            scl_i_out[0] = 1'b1;
            scl_t_out[0] = 1'b1;
        end
        
        if (sda_i_out[0] == 1'b0 && i >= 70)
        begin
            sda_i_out[0] = 1'b1; 
        end else if (i >= 65 && i < 70)
        begin
            sda_i_out[0] = 1'b0;
        end
        
    end 
    
    ipmb_watchdog # () 
    ipmb_watchdog_i (
        .clk      (clk),
        .gpio_o   (gpio_i),
        .scl_i_in (scl_i_out),
        .scl_t_in (scl_t_out),
        .sda_i_in (sda_i_out),
        .sda_t_in (sda_t_out)
    );                          
    
endmodule
