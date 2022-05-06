`timescale 1ns / 1ps
module i2c_switch_dual
(
    input clk,
    input [1:0] tx_en,
    
    // connection to I2C master
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SCL_I" *)
  output reg tx_scl_i, // IIC Serial Clock Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SCL_O" *)
  input tx_scl_o, // IIC Serial Clock Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SCL_T" *)
  input tx_scl_t, // IIC Serial Clock Output Enable to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SDA_I" *)
  output reg tx_sda_i, // IIC Serial Data Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SDA_O" *)
  input tx_sda_o, // IIC Serial Data Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 TX_MASTER SDA_T" *)
  input tx_sda_t, // IIC Serial Data Output Enable to 3-state buffer (required)

  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SCL_I" *)
  output reg rx0_scl_i, // IIC Serial Clock Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SCL_O" *)
  input rx0_scl_o, // IIC Serial Clock Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SCL_T" *)
  input rx0_scl_t, // IIC Serial Clock Output Enable to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SDA_I" *)
  output reg rx0_sda_i, // IIC Serial Data Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SDA_O" *)
  input rx0_sda_o, // IIC Serial Data Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX0_SLAVE SDA_T" *)
  input rx0_sda_t, // IIC Serial Data Output Enable to 3-state buffer (required)

  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SCL_I" *)
  output reg rx1_scl_i, // IIC Serial Clock Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SCL_O" *)
  input rx1_scl_o, // IIC Serial Clock Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SCL_T" *)
  input rx1_scl_t, // IIC Serial Clock Output Enable to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SDA_I" *)
  output reg rx1_sda_i, // IIC Serial Data Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SDA_O" *)
  input rx1_sda_o, // IIC Serial Data Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX1_SLAVE SDA_T" *)
  input rx1_sda_t, // IIC Serial Data Output Enable to 3-state buffer (required)

    inout scl0,
    inout sda0,
    inout scl1,
    inout sda1

);

    wire [1:0] scl_o, sda_o;
    reg  [1:0] scl_i, scl_t, sda_i, sda_t;

    IOBUF scl0_iobuf (.IO(scl0), .O(scl_o[0]), .I(scl_i[0]), .T(scl_t[0]));
    IOBUF sda0_iobuf (.IO(sda0), .O(sda_o[0]), .I(sda_i[0]), .T(sda_t[0]));
    IOBUF scl1_iobuf (.IO(scl1), .O(scl_o[1]), .I(scl_i[1]), .T(scl_t[1]));
    IOBUF sda1_iobuf (.IO(sda1), .O(sda_o[1]), .I(sda_i[1]), .T(sda_t[1]));

    always @(*)
    begin
    
        // any other combination means all TX is disabled
        // connect both buffers to slaves
        rx0_scl_i = scl_o[0];
        scl_i[0] = rx0_scl_o;
        scl_t[0] = rx0_scl_t;
        
        rx0_sda_i = sda_o[0];
        sda_i[0] = rx0_sda_o;
        sda_t[0] = rx0_sda_t;
        
        rx1_scl_i = scl_o[1];
        scl_i[1] = rx1_scl_o;
        scl_t[1] = rx1_scl_t;
        
        rx1_sda_i = sda_o[1];
        sda_i[1] = rx1_sda_o;
        sda_t[1] = rx1_sda_t;
        
        tx_scl_i = 1'b1;
        tx_sda_i = 1'b1;

        if (tx_en == 2'b01) // bus 0 TX enable
        begin
            // connect buffers 0 to master
            tx_scl_i = scl_o[0];
            scl_i[0] = tx_scl_o;
            scl_t[0] = tx_scl_t;
            tx_sda_i = sda_o[0];
            sda_i[0] = tx_sda_o;
            sda_t[0] = tx_sda_t;
        end
        else
        if (tx_en == 2'b10) // bus 1 TX enable
        begin
            // connect buffers 1 to master
            tx_scl_i = scl_o[1];
            scl_i[1] = tx_scl_o;
            scl_t[1] = tx_scl_t;
            tx_sda_i = sda_o[1];
            sda_i[1] = tx_sda_o;
            sda_t[1] = tx_sda_t;
        end
        
    end
    
    reg [5:0] cnt;
    wire clk_i2c;
    always @(posedge clk) cnt = cnt + 6'h1;
    
    BUFG clk_div_buf (.O(clk_i2c), .I(cnt[5]));
    
    
    ipmc_ila ipmc_ila_i 
    (
        .clk     (clk_i2c), // input wire clk

        .probe0  (tx_en), // input wire [1:0]  probe0
        .probe1  (scl_i), // input wire [1:0]  probe1
        .probe2  (scl_o), // input wire [1:0]  probe2
        .probe3  (scl_t), // input wire [1:0]  probe3
        .probe4  (sda_i), // input wire [1:0]  probe4
        .probe5  (sda_o), // input wire [1:0]  probe5
        .probe6  (sda_t), // input wire [1:0]  probe6
        .probe7  (tx_scl_i), // input wire [0:0]  probe7
        .probe8  (tx_scl_o), // input wire [0:0]  probe8
        .probe9  (tx_scl_t), // input wire [0:0]  probe9
        .probe10 (tx_sda_i), // input wire [0:0]  probe10
        .probe11 (tx_sda_o), // input wire [0:0]  probe11
        .probe12 (tx_sda_t), // input wire [0:0]  probe12
        .probe13 (rx0_scl_i), // input wire [0:0]  probe13
        .probe14 (rx0_scl_o), // input wire [0:0]  probe14
        .probe15 (rx0_scl_t), // input wire [0:0]  probe15
        .probe16 (rx0_sda_i), // input wire [0:0]  probe16
        .probe17 (rx0_sda_o), // input wire [0:0]  probe17
        .probe18 (rx0_sda_t), // input wire [0:0]  probe18
        .probe19 (rx1_scl_i), // input wire [0:0]  probe19
        .probe20 (rx1_scl_o), // input wire [0:0]  probe20
        .probe21 (rx1_scl_t), // input wire [0:0]  probe21
        .probe22 (rx1_sda_i), // input wire [0:0]  probe22
        .probe23 (rx1_sda_o), // input wire [0:0]  probe23
        .probe24 (rx1_sda_t) // input wire [0:0]  probe24
);

endmodule
