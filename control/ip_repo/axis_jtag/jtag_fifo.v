`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CERN
// Engineer: Aleksei Greshilov
// 
// Create Date: 06/17/2022 04:31:34 PM
// Design Name: 
// Module Name: jtag_fifo
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


module jtag_fifo # (
   parameter integer C_S_AXIS_DATA_WIDTH = 64
)
(
   input  wire           CLK        ,
   output reg            RESET      ,
   output reg            ENABLE     ,
   input  wire           DONE       ,
   output wire [31 : 0 ] TMS_VECTOR ,
   output wire [31 : 0 ] TDI_VECTOR ,
   input  wire [31 : 0 ] TDO_VECTOR ,
   input  wire           S_AXIS_TVALID ,
   output reg            S_AXIS_TREADY ,
   input  wire [C_S_AXIS_DATA_WIDTH-1 : 0 ] S_AXIS_TDATA 
);

   localparam  IDLE = 2'b01 ,
               PULL = 2'b10 ;          

   reg [ 1:0]  state;
   reg [31:0]  tms_output;
   reg [31:0]  tdi_output;
   reg         first;
   
   initial begin
      state      = IDLE;
      first      = 1'b1;
      tms_output = 0;
	  tdi_output = 0;
   end
   
   always @(posedge CLK) begin 
      case (state)
         IDLE : begin
            if (DONE == 1'b1 || first == 1'b1) begin
               state      <= PULL;
               first      <= 1'b0;
               RESET      <= 1'b1;
               ENABLE     <= 1'b0;
               S_AXIS_TREADY <= 1'b0;
            end else begin
               S_AXIS_TREADY <= 1'b0;
            end
         end
         
         PULL : begin
            if (S_AXIS_TVALID == 1'b1) begin
               state <= IDLE;
               RESET      <= 1'b0;
               ENABLE     <= 1'b1;
               S_AXIS_TREADY <= 1'b1;
               tms_output    <= S_AXIS_TDATA[31:0];
	           tdi_output	 <= S_AXIS_TDATA[63:32];
            end else begin
               state <= PULL;
            end 
         end
         
         default : begin
            state <= IDLE;
         end
      endcase
   end

   assign TMS_VECTOR = tms_output;
   

   assign TDI_VECTOR = tdi_output;

endmodule
