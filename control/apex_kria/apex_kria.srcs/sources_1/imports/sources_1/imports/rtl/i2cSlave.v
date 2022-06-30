//////////////////////////////////////////////////////////////////////
////                                                              ////
//// i2cSlave.v                                                   ////
////                                                              ////
//// This file is part of the i2cSlave opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
//// You will need to modify this file to implement your 
//// interface.
////                                                              ////
//// To Do:                                                       ////
//// 
////                                                              ////
//// Author(s):                                                   ////
//// - Steve Fielding, sfielding@base2designs.com                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2008 Steve Fielding and OPENCORES.ORG          ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from <http://www.opencores.org/lgpl.shtml>                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
`include "i2cSlave_define.v"


module i2cSlave 
(
    input  clk,
    input  rst,
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SCL_I" *)
  input scl, // IIC Serial Clock Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SCL_O" *)
  output rx_scl_o, // IIC Serial Clock Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SCL_T" *)
  output rx_scl_t, // IIC Serial Clock Output Enable to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SDA_I" *)
  input sda_in, // IIC Serial Data Input from 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SDA_O" *)
  output sda_out, // IIC Serial Data Output to 3-state buffer (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 RX SDA_T" *)
  output sda_t, // IIC Serial Data Output Enable to 3-state buffer (required)
    

 (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL EN" *)
  // Uncomment the following to set interface specific parameter on the bus interface.
  //  (* X_INTERFACE_PARAMETER = "MASTER_TYPE <value>,MEM_ECC <value>,MEM_WIDTH <value>,MEM_SIZE <value>,READ_WRITE_MODE <value>" *)
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE" *)
  input         bram_en, // Chip Enable Signal (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL DOUT" *)
  output reg [31:0] bram_rddata, // Data Out Bus (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL DIN" *)
  input [31:0]  bram_wrdata, // Data In Bus (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL WE" *)
  input [3:0]   bram_we, // Byte Enables (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL ADDR" *)
  input [12:0]  bram_addr, // Address Signal (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL CLK" *)
  input         bram_clk, // Clock Signal (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 CONTROL RST" *)
  input         bram_rst, // Reset Signal (required)

    
    output irq,
    output [6:0] i2c_addr_received,
    input [7:0] hardware_address
);

  assign rx_scl_o = 1'b1; // IIC Serial Clock Output to 3-state buffer (required)
  assign rx_scl_t = 1'b1; // IIC Serial Clock Output Enable to 3-state buffer (required)

    wire  [6:0] i2c_addr_crate = hardware_address[6:0];
    localparam max_reg = 64;

    wire reset_reg = bram_en == 1'b1 && bram_we == 4'b0; // reset irq at read operation

    wire [max_reg*8-1:0] myReg;

    always @(*)
    begin
        case (bram_addr[7:2])
            6'd0: bram_rddata = myReg[7:0];
            6'd1: bram_rddata = myReg[15:8];
            6'd2: bram_rddata = myReg[23:16];
            6'd3: bram_rddata = myReg[31:24];
            6'd4: bram_rddata = myReg[39:32];
            6'd5: bram_rddata = myReg[47:40];
            6'd6: bram_rddata = myReg[55:48];
            6'd7: bram_rddata = myReg[63:56];
            6'd8: bram_rddata = myReg[71:64];
            6'd9: bram_rddata = myReg[79:72];
            6'd10: bram_rddata = myReg[87:80];
            6'd11: bram_rddata = myReg[95:88];
            6'd12: bram_rddata = myReg[103:96];
            6'd13: bram_rddata = myReg[111:104];
            6'd14: bram_rddata = myReg[119:112];
            6'd15: bram_rddata = myReg[127:120];
            6'd16: bram_rddata = myReg[135:128];
            6'd17: bram_rddata = myReg[143:136];
            6'd18: bram_rddata = myReg[151:144];
            6'd19: bram_rddata = myReg[159:152];
            6'd20: bram_rddata = myReg[167:160];
            6'd21: bram_rddata = myReg[175:168];
            6'd22: bram_rddata = myReg[183:176];
            6'd23: bram_rddata = myReg[191:184];
            6'd24: bram_rddata = myReg[199:192];
            6'd25: bram_rddata = myReg[207:200];
            6'd26: bram_rddata = myReg[215:208];
            6'd27: bram_rddata = myReg[223:216];
            6'd28: bram_rddata = myReg[231:224];
            6'd29: bram_rddata = myReg[239:232];
            6'd30: bram_rddata = myReg[247:240];
            6'd31: bram_rddata = myReg[255:248];
            6'd32: bram_rddata = myReg[263:256];
            6'd33: bram_rddata = myReg[271:264];
            6'd34: bram_rddata = myReg[279:272];
            6'd35: bram_rddata = myReg[287:280];
            6'd36: bram_rddata = myReg[295:288];
            6'd37: bram_rddata = myReg[303:296];
            6'd38: bram_rddata = myReg[311:304];
            6'd39: bram_rddata = myReg[319:312];
            6'd40: bram_rddata = myReg[327:320];
            6'd41: bram_rddata = myReg[335:328];
            6'd42: bram_rddata = myReg[343:336];
            6'd43: bram_rddata = myReg[351:344];
            6'd44: bram_rddata = myReg[359:352];
            6'd45: bram_rddata = myReg[367:360];
            6'd46: bram_rddata = myReg[375:368];
            6'd47: bram_rddata = myReg[383:376];
            6'd48: bram_rddata = myReg[391:384];
            6'd49: bram_rddata = myReg[399:392];
            6'd50: bram_rddata = myReg[407:400];
            6'd51: bram_rddata = myReg[415:408];
            6'd52: bram_rddata = myReg[423:416];
            6'd53: bram_rddata = myReg[431:424];
            6'd54: bram_rddata = myReg[439:432];
            6'd55: bram_rddata = myReg[447:440];
            6'd56: bram_rddata = myReg[455:448];
            6'd57: bram_rddata = myReg[463:456];
            6'd58: bram_rddata = myReg[471:464];
            6'd59: bram_rddata = myReg[479:472];
            6'd60: bram_rddata = myReg[487:480];
            6'd61: bram_rddata = myReg[495:488];
            6'd62: bram_rddata = myReg[503:496];
            6'd63: bram_rddata = myReg[511:504];        
        endcase
    end

//always @(posedge bram_clk)
//begin
//    if (bram_en == 1'b1)
//    begin
//        if (bram_we[0] == 1'b1) myReg[7:0]   = bram_wrdata [7:0]  ;
//        if (bram_we[1] == 1'b1) myReg[15:8]  = bram_wrdata [15:8] ;
//        if (bram_we[2] == 1'b1) myReg[23:16] = bram_wrdata [23:16];
//        if (bram_we[3] == 1'b1) myReg[31:24] = bram_wrdata [31:24];
        
//    end
//end

// local wires and regs
reg sdaDeb;
reg sclDeb;
reg [`DEB_I2C_LEN-1:0] sdaPipe;
reg [`DEB_I2C_LEN-1:0] sclPipe;

reg [`SCL_DEL_LEN-1:0] sclDelayed;
reg [`SDA_DEL_LEN-1:0] sdaDelayed;
reg [1:0] startStopDetState;
wire clearStartStopDet;
wire sdaOut;
wire sdaIn;
wire [7:0] regAddr;
wire [7:0] dataToRegIF;
wire writeEn;
wire [7:0] dataFromRegIF;
reg [1:0] rstPipe;
wire rstSyncToClk;
reg startEdgeDet;

//assign sda = (sdaOut == 1'b0) ? 1'b0 : 1'bz;
assign sdaIn = sda_in;

assign sda_t = sdaOut;
assign sda_out = sdaOut;

// sync rst rsing edge to clk
always @(posedge clk) begin
  if (rst == 1'b0)
    rstPipe <= 2'b11;
  else
    rstPipe <= {rstPipe[0], 1'b0};
end

assign rstSyncToClk = rstPipe[1];

// debounce sda and scl
always @(posedge clk) begin
  if (rstSyncToClk == 1'b1) begin
    sdaPipe <= {`DEB_I2C_LEN{1'b1}};
    sdaDeb <= 1'b1;
    sclPipe <= {`DEB_I2C_LEN{1'b1}};
    sclDeb <= 1'b1;
  end
  else begin
    sdaPipe <= {sdaPipe[`DEB_I2C_LEN-2:0], sdaIn};
    sclPipe <= {sclPipe[`DEB_I2C_LEN-2:0], scl};
    if (&sclPipe[`DEB_I2C_LEN-1:1] == 1'b1)
      sclDeb <= 1'b1;
    else if (|sclPipe[`DEB_I2C_LEN-1:1] == 1'b0)
      sclDeb <= 1'b0;
    if (&sdaPipe[`DEB_I2C_LEN-1:1] == 1'b1)
      sdaDeb <= 1'b1;
    else if (|sdaPipe[`DEB_I2C_LEN-1:1] == 1'b0)
      sdaDeb <= 1'b0;
  end
end


// delay scl and sda
// sclDelayed is used as a delayed sampling clock
// sdaDelayed is only used for start stop detection
// Because sda hold time from scl falling is 0nS
// sda must be delayed with respect to scl to avoid incorrect
// detection of start/stop at scl falling edge. 
always @(posedge clk) begin
  if (rstSyncToClk == 1'b1) begin
    sclDelayed <= {`SCL_DEL_LEN{1'b1}};
    sdaDelayed <= {`SDA_DEL_LEN{1'b1}};
  end
  else begin
    sclDelayed <= {sclDelayed[`SCL_DEL_LEN-2:0], sclDeb};
    sdaDelayed <= {sdaDelayed[`SDA_DEL_LEN-2:0], sdaDeb};
  end
end

// start stop detection
always @(posedge clk) begin
  if (rstSyncToClk == 1'b1) begin
    startStopDetState <= `NULL_DET;
    startEdgeDet <= 1'b0;
  end
  else begin
    if (sclDeb == 1'b1 && sdaDelayed[`SDA_DEL_LEN-2] == 1'b0 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b1)
      startEdgeDet <= 1'b1;
    else
      startEdgeDet <= 1'b0;
    if (clearStartStopDet == 1'b1)
      startStopDetState <= `NULL_DET;
    else if (sclDeb == 1'b1) begin
      if (sdaDelayed[`SDA_DEL_LEN-2] == 1'b1 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b0) 
        startStopDetState <= `STOP_DET;
      else if (sdaDelayed[`SDA_DEL_LEN-2] == 1'b0 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b1)
        startStopDetState <= `START_DET;
    end
  end
end

wire   reg_addr_valid, data_valid;

registerInterface #(.max_reg (max_reg)) u_registerInterface
(
  .clk(clk),
  .addr(regAddr),
  .reg_addr_valid (reg_addr_valid),
  .dataIn(dataToRegIF),
  .writeEn(writeEn),
  .dataOut(dataFromRegIF),
  .myReg(myReg),
  .reset_reg (reset_reg),
  .irq (irq),
  .data_valid (data_valid),
 .addr_cnt_w (addr_cnt_w),
 .wren_w (wren_w),
 .data_in_w (data_in_w),
 .data_valid_w (data_valid_w),
 .r0  (r0),
 .r1  (r1),
 .r2  (r2),
 .r3  (r3),
 .r4  (r4),
 .r5  (r5),
 .r6  (r6),
 .r7  (r7),
 .reset_reg_w (reset_reg_w)
);

serialInterface u_serialInterface (
  .clk(clk), 
  .rst(rstSyncToClk | startEdgeDet), 
  .dataIn(dataFromRegIF), 
  .dataOut(dataToRegIF), 
  .writeEn(writeEn),
  .regAddr(regAddr), 
  .reg_addr_valid (reg_addr_valid),
  .scl(sclDelayed[`SCL_DEL_LEN-1]), 
  .sdaIn(sdaDeb), 
  .sdaOut(sdaOut), 
  .startStopDetState(startStopDetState),
  .clearStartStopDet(clearStartStopDet),
  .data_valid (data_valid),
  .i2c_addr_received (i2c_addr_received),
  .i2c_addr_crate (i2c_addr_crate)
);


endmodule


 
