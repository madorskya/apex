//////////////////////////////////////////////////////////////////////
////                                                              ////
//// registerInterface.v                                          ////
////                                                              ////
//// This file is part of the i2cSlave opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
//// You will need to modify this file to implement your 
//// interface.
//// Add your control and status bytes/bits to module inputs and outputs,
//// and also to the I2C read and write process blocks  
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


module registerInterface #(parameter max_reg = 64)
(
  clk,
  addr,
  reg_addr_valid,
  dataIn,
  writeEn,
  dataOut,
  myReg,
  reset_reg,
  irq,
  data_valid,
 addr_cnt_w,
 wren_w,
 data_in_w,
 data_valid_w,
 r0 ,
 r1 ,
 r2 ,
 r3 ,
 r4 ,
 r5 ,
 r6 ,
 r7 ,
 reset_reg_w
);

input clk;
input [7:0] addr;
input reg_addr_valid;
input [7:0] dataIn;
input writeEn;
output [7:0] dataOut;
output [max_reg*8-1 : 0] myReg;
input reset_reg;
output irq;
input data_valid;

output [7:0] addr_cnt_w;
output [1:0] wren_w;
output [7:0] data_in_w;
output data_valid_w;
output [7:0] r0 ;
output [7:0] r1 ;
output [7:0] r2 ;
output [7:0] r3 ;
output [7:0] r4 ;
output [7:0] r5 ;
output [7:0] r6 ;
output [7:0] r7 ;
output reset_reg_w;

assign irq = myReg[7:0] != 8'h0; // interrupt when write is finished

reg [7:0] dataOut;
reg [max_reg*8-1 : 0] myReg ;

// --- I2C Read
always @(posedge clk) begin
  case (addr)
//    8'h00: dataOut <= myReg0;  
//    8'h01: dataOut <= myReg1;  
//    8'h02: dataOut <= myReg2;  
//    8'h03: dataOut <= myReg3;  
//    8'h04: dataOut <= myReg4;  
//    8'h05: dataOut <= myReg5;  
//    8'h06: dataOut <= myReg6;  
//    8'h07: dataOut <= myReg7;  
    default: dataOut <= 8'h00;
  endcase
end

// --- I2C Write
wire [10:0] bit_lo = {addr, 3'h0}; // low bit index in myReg
wire [10:0] bit_hi = {addr, 3'h7}; // high bit index in myReg
reg [5:0] addr_cnt;
reg [1:0] wren_r;
reg [7:0] reset_r;
reg [15:0] byte_timeout;

always @(posedge clk) 
begin
	if (reset_r[7] == 1'b1) myReg[7:0] = 8'h0; // reset irq register
	reset_r = {reset_r[6:0], reset_reg};

    if (reg_addr_valid == 1'b1) // start address received
    begin
        myReg[15:8] = addr; // store initial address (function) in register 1
        addr_cnt = 6'h2; // point start address to register 2 
        myReg[7:0] = 0; // reset irq register
    end

    if (data_valid == 1'b1)
	begin
		if (writeEn == 1'b1) 
		begin

            begin
                case (addr_cnt)
                    6'd0: myReg[ 7: 0] = dataIn;
                    6'd1: myReg[15: 8] = dataIn;
                    6'd2: myReg[23:16] = dataIn;
                    6'd3: myReg[31:24] = dataIn;
                    6'd4: myReg[39:32] = dataIn;
                    6'd5: myReg[47:40] = dataIn;
                    6'd6: myReg[55:48] = dataIn;
                    6'd7: myReg[63:56] = dataIn;
                    6'd8: myReg[71:64] = dataIn;
                    6'd9: myReg[79:72] = dataIn;
                    6'd10: myReg[87:80] = dataIn;
                    6'd11: myReg[95:88] = dataIn;
                    6'd12: myReg[103:96] = dataIn;
                    6'd13: myReg[111:104] = dataIn;
                    6'd14: myReg[119:112] = dataIn;
                    6'd15: myReg[127:120] = dataIn;
                    6'd16: myReg[135:128] = dataIn;
                    6'd17: myReg[143:136] = dataIn;
                    6'd18: myReg[151:144] = dataIn;
                    6'd19: myReg[159:152] = dataIn;
                    6'd20: myReg[167:160] = dataIn;
                    6'd21: myReg[175:168] = dataIn;
                    6'd22: myReg[183:176] = dataIn;
                    6'd23: myReg[191:184] = dataIn;
                    6'd24: myReg[199:192] = dataIn;
                    6'd25: myReg[207:200] = dataIn;
                    6'd26: myReg[215:208] = dataIn;
                    6'd27: myReg[223:216] = dataIn;
                    6'd28: myReg[231:224] = dataIn;
                    6'd29: myReg[239:232] = dataIn;
                    6'd30: myReg[247:240] = dataIn;
                    6'd31: myReg[255:248] = dataIn;
                    6'd32: myReg[263:256] = dataIn;
                    6'd33: myReg[271:264] = dataIn;
                    6'd34: myReg[279:272] = dataIn;
                    6'd35: myReg[287:280] = dataIn;
                    6'd36: myReg[295:288] = dataIn;
                    6'd37: myReg[303:296] = dataIn;
                    6'd38: myReg[311:304] = dataIn;
                    6'd39: myReg[319:312] = dataIn;
                    6'd40: myReg[327:320] = dataIn;
                    6'd41: myReg[335:328] = dataIn;
                    6'd42: myReg[343:336] = dataIn;
                    6'd43: myReg[351:344] = dataIn;
                    6'd44: myReg[359:352] = dataIn;
                    6'd45: myReg[367:360] = dataIn;
                    6'd46: myReg[375:368] = dataIn;
                    6'd47: myReg[383:376] = dataIn;
                    6'd48: myReg[391:384] = dataIn;
                    6'd49: myReg[399:392] = dataIn;
                    6'd50: myReg[407:400] = dataIn;
                    6'd51: myReg[415:408] = dataIn;
                    6'd52: myReg[423:416] = dataIn;
                    6'd53: myReg[431:424] = dataIn;
                    6'd54: myReg[439:432] = dataIn;
                    6'd55: myReg[447:440] = dataIn;
                    6'd56: myReg[455:448] = dataIn;
                    6'd57: myReg[463:456] = dataIn;
                    6'd58: myReg[471:464] = dataIn;
                    6'd59: myReg[479:472] = dataIn;
                    6'd60: myReg[487:480] = dataIn;
                    6'd61: myReg[495:488] = dataIn;
                    6'd62: myReg[503:496] = dataIn;
                    6'd63: myReg[511:504] = dataIn;    
                endcase
	   		    addr_cnt = addr_cnt + 6'h1;
		    end
	   end
	   
	  end
      if (wren_r == 2'b10) // writeEn just dropped, end of write
      begin
            // start timeout counter, waiting for next byte
            byte_timeout = 16'd20000; // 200 us timeout
      end
        
      wren_r = {wren_r[0], writeEn};

      if (byte_timeout != 16'h0) byte_timeout = byte_timeout - 1; // still waiting for another byte

      if (byte_timeout == 16'h1)
      begin
        // timeout expired, looks like last byte
            myReg[7:0] = addr_cnt; // store last address in reg 0, set irq
        
      end
    end
    
(* mark_debug *) wire [7:0] addr_cnt_w = addr_cnt;
(* mark_debug *) wire [1:0] wren_w = wren_r;
(* mark_debug *) wire [7:0] data_in_w = dataIn;
(* mark_debug *) wire data_valid_w = data_valid;
(* mark_debug *) wire [7:0] r0 = myReg[ 7: 0];
(* mark_debug *) wire [7:0] r1 = myReg[15: 8];
(* mark_debug *) wire [7:0] r2 = myReg[23:16];
(* mark_debug *) wire [7:0] r3 = myReg[31:24];
(* mark_debug *) wire [7:0] r4 = myReg[39:32];
(* mark_debug *) wire [7:0] r5 = myReg[47:40];
(* mark_debug *) wire [7:0] r6 = myReg[55:48];
(* mark_debug *) wire [7:0] r7 = myReg[63:56];
(* mark_debug *) wire reset_reg_w = reset_reg;

endmodule


 
