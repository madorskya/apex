`timescale 1ns / 1ps

module i2c_slave_tf;

    reg  clk;
    reg  rst;
    reg  scl; // IIC Serial Clock reg from 3-state buffer (required)
    wire rx_scl_o; // IIC Serial Clock wire to 3-state buffer (required)
    wire rx_scl_t; // IIC Serial Clock wire Enable to 3-state buffer (required)
    reg  sda_in; // IIC Serial Data reg from 3-state buffer (required)
    wire sda_out; // IIC Serial Data wire to 3-state buffer (required)
    wire sda_t; // IIC Serial Data wire Enable to 3-state buffer (required)
    
    reg         bram_en; // Chip Enable Signal (optional)
    wire [31:0] bram_rddata; // Data Out Bus (optional)
    reg [31:0]  bram_wrdata; // Data In Bus (optional)
    reg [3:0]   bram_we; // Byte Enables (optional)
    reg [12:0]  bram_addr; // Address Signal (required)
    reg         bram_clk; // Clock Signal (required)
    reg         bram_rst; // Reset Signal (required)
    
    wire irq;
    wire [6:0] i2c_addr_received;
    reg [7:0] hardware_address;


    i2cSlave uut 
    (
        clk,
        rst,
        scl,
        rx_scl_o,
        rx_scl_t,
        sda_in,
        sda_out,
        sda_t,
        
        bram_en,
        bram_rddata,
        bram_wrdata,
        bram_we,
        bram_addr,
        bram_clk,
        bram_rst,
        
        irq,
        i2c_addr_received,
        hardware_address
    );
    
    always #5 clk = ~clk;
    
    integer i;
    
    wire [89:0] sda = 90'b111111100_000000000_000000000_000000000_000000000_111011100_000000000_111111100_000000000_000000000;
    
    initial
    begin
        clk = 0;
        scl = 1;
        sda_in = 1;
        hardware_address = 7'h7f;
        
        rst = 0;
        repeat (300) @ (posedge clk);
        rst = 1;
        
        repeat (10000) @ (posedge clk);
        
        // create start condition
        sda_in = 0;
        repeat (2000) @ (posedge clk);
        scl = 0;        
        repeat (2000) @ (posedge clk);
        
        for (i = 0; i < 90; i = i+1)
        begin
            sda_in = sda[89-i];
            repeat(200) @ (posedge clk);
            scl = 1;
            repeat(500) @ (posedge clk);
            scl = 0;
            repeat(300) @ (posedge clk);
        end
        repeat (10000) @ (posedge clk);
        
        // create stop condition
        scl = 1;
        repeat (2000) @ (posedge clk);
        sda_in = 1;        
        repeat (2000) @ (posedge clk);
        
    end
    

endmodule
