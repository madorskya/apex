///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 3.6
//  \   \         Application : 7 Series FPGAs Transceivers Wizard
//  /   /         Filename : c2c_mgt_3p125g_rxrate_seq.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module c2c_mgt_3p125g_rxrate_seq.v
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`default_nettype wire

`timescale 1ns / 1ps
`define DLY #1


module c2c_mgt_3p125g_rxrate_seq
          (   RST,
              RXRATE_IN,
              RXPMARESETDONE,
              RXRATE_OUT,
              DRP_RATE_BUSY_OUT,
              DRP_BUSY_IN,
              DRPCLK,
              DRPADDR,
              DRPDO,
              DRPDI,
              DRPRDY,
              DRPEN,
              DRPWE);

input         RST;             //reset for logic.  Connect to some system reset to initialize the block
                               //Please add a synchroniser if it is not generated in DRPCLK domain.
input  [2:0]  RXRATE_IN;       //maps to user_RXRATE.   
input         RXPMARESETDONE;  //maps to gt_GTRXPMARESETDONE
output [2:0]  RXRATE_OUT;      //maps to gt_RXRATE
output        DRP_RATE_BUSY_OUT;
input         DRP_BUSY_IN;

// This block expects exclusive control on the DRP interface between gtrxreset_in assertion to RXRESETDONE assertion (signaling the completion of the reset sequence)
input         DRPCLK;
output        DRPEN;
output [8:0]  DRPADDR;
output        DRPWE;
input  [15:0] DRPDO;
output [15:0] DRPDI;
input         DRPRDY;


parameter [2:0] idle          = 3'b0, 
	        drp_rd        = 3'h1, 
		wait_rd_data  = 3'h2, 
		wr_16         = 3'h3,
	        wait_wr_done1 = 3'h4,	
		wait_pmareset = 3'h5,
	        wr_20         = 3'h6,
		wait_wr_done2 = 3'h7;

reg [2:0]     state, next_state;
reg [2:0]     rxrate_sss;
wire [2:0]    rxrate_ss;
wire          rxpmaresetdone_ss;
reg [15:0]    rd_data, next_rd_data,original_rd_data;

reg [2:0]     rxrate_i;
reg [2:0]     rxrate_o;
reg        flag = 1'b0;
reg [2:0]     old_rxrate;
reg           drpen_o;
reg           drpwe_o;
reg [8:0]     drpaddr_o;
reg [15:0]    drpdi_o;
reg           drp_rate_busy_i;
genvar        j;

//output assignment 
assign RXRATE_OUT    = rxrate_o;
assign DRPEN         = drpen_o;
assign DRPWE         = drpwe_o;
assign DRPADDR       = drpaddr_o;
assign DRPDI         = drpdi_o;
assign DRP_RATE_BUSY_OUT = drp_rate_busy_i;

 //Clock Domain Crossing
 c2c_mgt_3p125g_sync_block sync1_RXPMARESETDONE
        (
           .clk             (DRPCLK),
           .data_in         (RXPMARESETDONE),
           .data_out        (rxpmaresetdone_ss)
        );

 generate
 begin : cdc_rxrate
  for (j = 0;j <= 2;j = j+1) 
   begin : sync_rxrate
  c2c_mgt_3p125g_sync_block sync_RXRATE
        (
           .clk             (DRPCLK),
           .data_in         (RXRATE_IN[j]),
           .data_out        (rxrate_ss[j])
        );
  end 
  end 
 endgenerate


always @ (posedge DRPCLK or posedge RST) begin
	if (RST == 1'b1) begin
		state                <= `DLY idle;
		rxrate_sss           <= `DLY 3'd0;
		rd_data              <= `DLY 16'b0;
                old_rxrate           <= `DLY 3'd0;
                rxrate_o             <= `DLY 3'd0;
	end
	else begin
		state                <= `DLY next_state;
		rxrate_sss           <= `DLY rxrate_ss;
		rd_data              <= `DLY next_rd_data;
		rxrate_o             <= `DLY rxrate_i;
             if(rxrate_ss != rxrate_sss)
                old_rxrate           <= `DLY rxrate_sss;
             else
                old_rxrate           <= `DLY old_rxrate;
	end
end


always @ (rxrate_ss or rxrate_sss or DRPRDY or state or rxpmaresetdone_ss) begin
	case (state)
		idle : begin
			if (rxrate_ss!= rxrate_sss)
			   next_state = drp_rd;
			else
			   next_state = idle;
		end
		drp_rd : begin
			   next_state = wait_rd_data;
		end
		wait_rd_data : begin
			if (DRPRDY)
			   next_state = wr_16;
			else
			   next_state = wait_rd_data;
		end
		wr_16 : begin
			next_state = wait_wr_done1;
		end
		wait_wr_done1 : begin
			if (DRPRDY)
		           next_state = wait_pmareset;
			else
		           next_state = wait_wr_done1;
		end
		wait_pmareset : begin
			if (!rxpmaresetdone_ss)
			    next_state = wr_20;
			else
			    next_state = wait_pmareset;
		end
		wr_20 : begin
			    next_state = wait_wr_done2;
		end
		wait_wr_done2 : begin
			if (DRPRDY)
                        begin
			   next_state = idle;
                        end
			else
			   next_state = wait_wr_done2;
		end
                default:  next_state = idle;
	endcase
end

// drives DRP interface and RXRATE_OUT
always @ (DRPRDY or state or rd_data or DRPDO or DRP_BUSY_IN or old_rxrate or rxrate_ss or rxrate_sss or flag or original_rd_data) begin

	// RX_DATA_WIDTH is located at addr 'h0011, [13:11]
	// encoding is this : /16 = 'h2, /20 = 'h3, /32 = 'h4, /40 = 'h5
	//rxrate_i      = rxrate_ss;

	drpaddr_o     = 9'h011;
	drpen_o       = 1'b0;
	drpwe_o       = 1'b0;
	drpdi_o       = 16'b0;
	next_rd_data  = rd_data;
	
	case (state)

		//do nothing to DRP or reset
		idle : begin 
                       drp_rate_busy_i  = 1'b0;
                       if(rxrate_ss != rxrate_sss)
	                  rxrate_i      = old_rxrate;
                       else   
	                  rxrate_i      = rxrate_ss;
		end

		//Issue rd
		drp_rd : begin 
	               rxrate_i      = old_rxrate;
                       if(!DRP_BUSY_IN) begin
                          drp_rate_busy_i  = 1'b1;
  		          drpen_o          = 1'b1;
		          drpwe_o          = 1'b0;
                       end
                       else begin
                          drp_rate_busy_i  = 1'b0;
  		          drpen_o          = 1'b0;
		          drpwe_o          = 1'b0;
                       end
		end

		//wait to load rd data
		wait_rd_data : begin 
	               rxrate_i      = old_rxrate;
                       drp_rate_busy_i  = 1'b1;
		       if (DRPRDY && !flag) begin
		       	next_rd_data = DRPDO;
                        end
		       else if (DRPRDY && flag) begin
		       	next_rd_data = original_rd_data;
                        end
                       else  begin 
		       	next_rd_data = rd_data;
                       end
		end

		//write to 16-bit mode
		wr_16 : begin  
	               rxrate_i      = old_rxrate;
                       drp_rate_busy_i  = 1'b1;
		       drpen_o = 1'b1;
		       drpwe_o = 1'b1;

		       // Addr 9'h011 [11] = 1'b0 puts width mode in /16 or /32
		       drpdi_o = {rd_data[15:12], 1'b0, rd_data[10:0]};
		end

		// wait for write to 16-bit mode is complete
		wait_wr_done1 : begin 
	               rxrate_i         = old_rxrate;
                       drp_rate_busy_i  = 1'b1;
		end

		//wait for rxpmaresetdone to go low
		wait_pmareset : begin 
                       drp_rate_busy_i  = 1'b1;
		       rxrate_i = rxrate_ss;
		end

		//write to 20-bit mode
		wr_20 : begin 
		       rxrate_i         = rxrate_ss;
                       drp_rate_busy_i  = 1'b1;
		       drpen_o = 1'b1;
		       drpwe_o = 1'b1;
		       drpdi_o = rd_data[15:0]; //restore user setting per prev read
		end

		//wait to complete write to 20-bit mode
		wait_wr_done2 : begin 
		       rxrate_i           = rxrate_ss;
                       drp_rate_busy_i    = 1'b1;
		end

                default: begin
	               rxrate_i           = rxrate_ss;
	               drpaddr_o          = 9'h011;
	               drpen_o            = 1'b0;
	               drpwe_o            = 1'b0;
	               drpdi_o            = 16'b0;
	               next_rd_data       = rd_data;
                       drp_rate_busy_i    = 1'b0;
                end
          
	endcase
end

 always @ (posedge DRPCLK)
  begin
   if( state == wr_16 || state == wait_pmareset || state == wr_20 || state == wait_wr_done1)
     flag <= 1'b1;
   else if(state == wait_wr_done2)
     flag <= 1'b0;
  end

 always @ (posedge DRPCLK)
  begin
   if( state == wait_rd_data && DRPRDY == 1'b1 && flag == 1'b0)
     original_rd_data <= DRPDO;
   end

endmodule

