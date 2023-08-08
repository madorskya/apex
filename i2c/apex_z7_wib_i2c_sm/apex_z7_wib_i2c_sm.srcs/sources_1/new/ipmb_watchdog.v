`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CERN
// Engineer: Aleksei Greshilov (aleksei.greshilov@cern.ch) 
// Create Date: 04.10.2022 11:02:43
// Design Name: 
// Module Name: ipmb_watchdog
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

module ipmb_watchdog # (
   parameter integer TIMEOUT = 500000
)
(
    input clk,
    output [29:0] gpio_0,
    output [31:0] gpio_1,
    
    input [1:0] scl_i_in,
    input [1:0] scl_t_in,
    input [1:0] sda_i_in,
    input [1:0] sda_t_in,
    
    input [1:0] sv_scl_o,
    input [1:0] sv_scl_t,
    input ms_scl_o,
    input ms_scl_t,
    
    input [1:0] sv_sda_o,
    input [1:0] sv_sda_t,
    input ms_sda_o,
    input ms_sda_t      
);
    
    reg scl0_i;
    reg scl0_t;
    reg scl1_i;
    reg scl1_t;
    reg scl0_it;
    reg scl1_it;
    
    reg sda0_i;
    reg sda0_t;
    reg sda1_i;
    reg sda1_t;
    reg sda0_it;
    reg sda1_it;
    
    reg sv0_scl_o;
    reg sv0_scl_t;
    reg sv1_scl_o;
    reg sv1_scl_t;
    reg mst_scl_o;
    reg mst_scl_t;
    reg sv0_scl_ot;
    reg sv1_scl_ot;
    reg mst_scl_ot;
    
    reg sv0_sda_o;
    reg sv0_sda_t;
    reg sv1_sda_o;
    reg sv1_sda_t;
    reg mst_sda_o;
    reg mst_sda_t;
    reg sv0_sda_ot;
    reg sv1_sda_ot;
    reg mst_sda_ot;
    
    initial begin
        scl0_i      = 1'b1;
        scl0_t      = 1'b1;
        scl1_i      = 1'b1;
        scl1_t      = 1'b1;
        scl0_it     = 1'b1;
        scl1_it     = 1'b1;
        sda0_i      = 1'b1;
        sda0_t      = 1'b1;
        sda1_i      = 1'b1;
        sda1_t      = 1'b1;
        sda0_it     = 1'b1;
        sda1_it     = 1'b1;
        sv0_scl_o   = 1'b1;
        sv0_scl_t   = 1'b1;
        sv1_scl_o   = 1'b1;
        sv1_scl_t   = 1'b1;
        mst_scl_o   = 1'b1;
        mst_scl_t   = 1'b1;
        sv0_scl_ot  = 1'b1;
        sv1_scl_ot  = 1'b1;
        mst_scl_ot  = 1'b1;   
        sv0_sda_o   = 1'b1;
        sv0_sda_t   = 1'b1;
        sv1_sda_o   = 1'b1;
        sv1_sda_t   = 1'b1;
        mst_sda_o   = 1'b1;
        mst_sda_t   = 1'b1;
        sv0_sda_ot  = 1'b1;
        sv1_sda_ot  = 1'b1;
        mst_sda_ot  = 1'b1;
    end
    
    reg [19:0] scl0_i_cnt;
    reg [19:0] scl0_t_cnt;
    reg [19:0] scl1_i_cnt;
    reg [19:0] scl1_t_cnt;
    reg [19:0] scl0_it_cnt;
    reg [19:0] scl1_it_cnt;
    reg [19:0] sda0_i_cnt;
    reg [19:0] sda0_t_cnt;
    reg [19:0] sda1_i_cnt;
    reg [19:0] sda1_t_cnt;
    reg [19:0] sda0_it_cnt;
    reg [19:0] sda1_it_cnt;
    reg [19:0] sv0_scl_o_cnt;
    reg [19:0] sv0_scl_t_cnt;
    reg [19:0] sv1_scl_o_cnt;
    reg [19:0] sv1_scl_t_cnt;
    reg [19:0] mst_scl_o_cnt;
    reg [19:0] mst_scl_t_cnt;
    reg [19:0] sv0_scl_ot_cnt;
    reg [19:0] sv1_scl_ot_cnt;
    reg [19:0] mst_scl_ot_cnt;
    reg [19:0] sv0_sda_o_cnt;
    reg [19:0] sv0_sda_t_cnt;
    reg [19:0] sv1_sda_o_cnt;
    reg [19:0] sv1_sda_t_cnt;
    reg [19:0] mst_sda_o_cnt;
    reg [19:0] mst_sda_t_cnt;
    reg [19:0] sv0_sda_ot_cnt;
    reg [19:0] sv1_sda_ot_cnt;
    reg [19:0] mst_sda_ot_cnt;
    
    reg [7:0] gnd_scl0_it_cnt;
    reg [7:0] gnd_scl1_it_cnt;
    reg [7:0] gnd_sda0_it_cnt;
    reg [7:0] gnd_sda1_it_cnt;
    
    always @(posedge clk) begin
        if (scl_i_in[0] == 1'b0) begin
            scl0_i_cnt = scl0_i_cnt + 19'h1; 
        end else begin
            scl0_i_cnt = 19'h00;
        end
        
        if (scl_t_in[0] == 1'b0) begin
            scl0_t_cnt = scl0_t_cnt + 19'h1; 
        end else begin
            scl0_t_cnt = 19'h00;
        end
        
        if (scl_i_in[1] == 1'b0) begin
            scl1_i_cnt = scl1_i_cnt + 19'h1; 
        end else begin
            scl1_i_cnt = 19'h00;
        end
        
        if (scl_t_in[1] == 1'b0) begin
            scl1_t_cnt = scl1_t_cnt + 19'h1; 
        end else begin
            scl1_t_cnt = 19'h00;
        end
        
        if (scl_i_in[0] == 1'b0 && scl_t_in[0] == 1'b0) begin
            scl0_it_cnt = scl0_it_cnt + 19'h1; 
        end else begin
            scl0_it_cnt = 19'h00;
        end
        
        if (scl_i_in[1] == 1'b0 && scl_t_in[1] == 1'b0) begin
            scl1_it_cnt = scl1_it_cnt + 19'h1; 
        end else begin
            scl1_it_cnt = 19'h00;
        end
                                
        if (sda_i_in[0] == 1'b0) begin
            sda0_i_cnt = sda0_i_cnt + 19'h1; 
        end else begin
            sda0_i_cnt = 19'h00;
        end
        
        if (sda_t_in[0] == 1'b0) begin
            sda0_t_cnt = sda0_t_cnt + 19'h1; 
        end else begin
            sda0_t_cnt = 19'h00;
        end
        
        if (sda_i_in[1] == 1'b0) begin
            sda1_i_cnt = sda1_i_cnt + 19'h1; 
        end else begin
            sda1_i_cnt = 19'h00;
        end
        
        if (sda_t_in[1] == 1'b0) begin
            sda1_t_cnt = sda1_t_cnt + 19'h1; 
        end else begin
            sda1_t_cnt = 19'h00;
        end
        
        if (sda_i_in[0] == 1'b0 && sda_t_in[0] == 1'b0) begin
            sda0_it_cnt = sda0_it_cnt + 19'h1; 
        end else begin
            sda0_it_cnt = 19'h00;
        end
        
        if (sda_i_in[1] == 1'b0 && sda_t_in[1] == 1'b0) begin
            sda1_it_cnt = sda1_it_cnt + 19'h1; 
        end else begin
            sda1_it_cnt = 19'h00;
        end
         
        if (sv_scl_o[0] == 1'b0) begin
            sv0_scl_o_cnt = sv0_scl_o_cnt + 19'h1; 
        end else begin
            sv0_scl_o_cnt = 19'h00;
        end
        
        if (sv_scl_t[0] == 1'b0) begin
            sv0_scl_t_cnt = sv0_scl_t_cnt + 19'h1; 
        end else begin
            sv0_scl_t_cnt = 19'h00;
        end
        
        if (sv_scl_o[1] == 1'b0) begin
            sv1_scl_o_cnt = sv1_scl_o_cnt + 19'h1; 
        end else begin
            sv1_scl_o_cnt = 19'h00;
        end
        
        if (sv_scl_t[1] == 1'b0) begin
            sv1_scl_t_cnt = sv1_scl_t_cnt + 19'h1; 
        end else begin
            sv1_scl_t_cnt = 19'h00;
        end
        
        if (ms_scl_o == 1'b0) begin
            mst_scl_o_cnt = mst_scl_o_cnt + 19'h1; 
        end else begin
            mst_scl_o_cnt = 19'h00;
        end
        
        if (ms_scl_t == 1'b0) begin
            mst_scl_t_cnt = mst_scl_t_cnt + 19'h1; 
        end else begin
            mst_scl_t_cnt = 19'h00;
        end
        
        if (sv_scl_o[0] == 1'b0 && sv_scl_t[0] == 1'b0) begin
            sv0_scl_ot_cnt = sv0_scl_ot_cnt + 19'h1; 
        end else begin
            sv0_scl_ot_cnt = 19'h00;
        end
        
        if (sv_scl_o[1] == 1'b0 && sv_scl_t[1] == 1'b0) begin
            sv1_scl_ot_cnt = sv1_scl_ot_cnt + 19'h1; 
        end else begin
            sv1_scl_ot_cnt = 19'h00;
        end
        
        if (ms_scl_o == 1'b0 && ms_scl_t == 1'b0) begin
            mst_scl_ot_cnt = mst_scl_ot_cnt + 19'h1; 
        end else begin
            mst_scl_ot_cnt = 19'h00;
        end       
         
        if (sv_sda_o[0] == 1'b0) begin
            sv0_sda_o_cnt = sv0_sda_o_cnt + 19'h1; 
        end else begin
            sv0_sda_o_cnt = 19'h00;
        end
        
        if (sv_sda_t[0] == 1'b0) begin
            sv0_sda_t_cnt = sv0_sda_t_cnt + 19'h1; 
        end else begin
            sv0_sda_t_cnt = 19'h00;
        end
        
        if (sv_sda_o[1] == 1'b0) begin
            sv1_sda_o_cnt = sv1_sda_o_cnt + 19'h1; 
        end else begin
            sv1_sda_o_cnt = 19'h00;
        end
        
        if (sv_sda_t[1] == 1'b0) begin
            sv1_sda_t_cnt = sv1_sda_t_cnt + 19'h1; 
        end else begin
            sv1_sda_t_cnt = 19'h00;
        end
        
        if (ms_sda_o == 1'b0) begin
            mst_sda_o_cnt = mst_sda_o_cnt + 19'h1; 
        end else begin
            mst_sda_o_cnt = 19'h00;
        end
        
        if (ms_sda_t == 1'b0) begin
            mst_sda_t_cnt = mst_sda_t_cnt + 19'h1; 
        end else begin
            mst_sda_t_cnt = 19'h00;
        end
        
        if (sv_sda_o[0] == 1'b0 && sv_sda_t[0] == 1'b0) begin
            sv0_sda_ot_cnt = sv0_sda_ot_cnt + 19'h1; 
        end else begin
            sv0_sda_ot_cnt = 19'h00;
        end
        
        if (sv_sda_o[1] == 1'b0 && sv_sda_t[1] == 1'b0) begin
            sv1_sda_ot_cnt = sv1_sda_ot_cnt + 19'h1; 
        end else begin
            sv1_sda_ot_cnt = 19'h00;
        end
        
        if (ms_sda_o == 1'b0 && ms_sda_t == 1'b0) begin
            mst_sda_ot_cnt = mst_sda_ot_cnt + 19'h1; 
        end else begin
            mst_sda_ot_cnt = 19'h00;
        end
         
        if (scl0_i_cnt == TIMEOUT) begin
            scl0_i = 1'b0;
            scl0_i_cnt = 19'h00;
        end 
        
        if (scl0_t_cnt == TIMEOUT) begin
            scl0_t = 1'b0;
            scl0_t_cnt = 19'h00;
        end  
        
        if (scl1_i_cnt == TIMEOUT) begin
            scl1_i = 1'b0;
            scl1_i_cnt = 19'h00;
        end 
        
        if (scl1_t_cnt == TIMEOUT) begin
            scl1_t = 1'b0;
            scl1_t_cnt = 19'h00;
        end
        
        if (scl0_it_cnt == TIMEOUT) begin
            scl0_it = 1'b0;
            scl0_it_cnt = 19'h00;
            if (gnd_scl0_it_cnt == 8'hff) begin
                gnd_scl0_it_cnt = 8'hff;
            end else begin
                gnd_scl0_it_cnt = gnd_scl0_it_cnt + 8'h1;    
            end
        end
        
        if (scl1_it_cnt == TIMEOUT) begin
            scl1_it = 1'b0;
            scl1_it_cnt = 19'h00;
            if (gnd_scl1_it_cnt == 8'hff) begin
                gnd_scl1_it_cnt = 8'hff;
            end else begin
                gnd_scl1_it_cnt = gnd_scl1_it_cnt + 8'h1;    
            end
        end
                                       
        if (sda0_i_cnt == TIMEOUT) begin
            sda0_i = 1'b0;
            sda0_i_cnt = 19'h00;
        end 
        
        if (sda0_t_cnt == TIMEOUT) begin
            sda0_t = 1'b0;
            sda0_t_cnt = 19'h00;
        end  
        
        if (sda1_i_cnt == TIMEOUT) begin
            sda1_i = 1'b0;
            sda1_i_cnt = 19'h00;
        end 
        
        if (sda1_t_cnt == TIMEOUT) begin
            sda1_t = 1'b0;
            sda1_t_cnt = 19'h00;
        end
        
        if (sda0_it_cnt == TIMEOUT) begin
            sda0_it = 1'b0;
            sda0_it_cnt = 19'h00;
            if (gnd_sda0_it_cnt == 8'hff) begin
                gnd_sda0_it_cnt = 8'hff;
            end else begin
                gnd_sda0_it_cnt = gnd_sda0_it_cnt + 8'h1;    
            end
        end
        
        if (sda1_it_cnt == TIMEOUT) begin
            sda1_it = 1'b0;
            sda1_it_cnt = 19'h00;
            if (gnd_sda1_it_cnt == 8'hff) begin
                gnd_sda1_it_cnt = 8'hff;
            end else begin
                gnd_sda1_it_cnt = gnd_sda1_it_cnt + 8'h1;    
            end
        end
                                
        if (sv0_scl_o_cnt == TIMEOUT) begin
            sv0_scl_o = 1'b0;
            sv0_scl_o_cnt = 19'h00;
        end
        
        if (sv0_scl_t_cnt == TIMEOUT) begin
            sv0_scl_t = 1'b0;
            sv0_scl_t_cnt = 19'h00;
        end
        
        if (sv1_scl_o_cnt == TIMEOUT) begin
            sv1_scl_o = 1'b0;
            sv1_scl_o_cnt = 19'h00;
        end
        
        if (sv1_scl_t_cnt == TIMEOUT) begin
            sv1_scl_t = 1'b0;
            sv1_scl_t_cnt = 19'h00;
        end
        
        if (mst_scl_o_cnt == TIMEOUT) begin
            mst_scl_o = 1'b0;
            mst_scl_o_cnt = 19'h00;
        end
        
        if (mst_scl_t_cnt == TIMEOUT) begin
            mst_scl_t = 1'b0;
            mst_scl_t_cnt = 19'h00;
        end
        
        if (sv0_scl_ot_cnt == TIMEOUT) begin
            sv0_scl_ot = 1'b0;
            sv0_scl_ot_cnt = 19'h00;
        end
        
        if (sv1_scl_ot_cnt == TIMEOUT) begin
            sv1_scl_ot = 1'b0;
            sv1_scl_ot_cnt = 19'h00;
        end
        
        if (mst_scl_ot_cnt == TIMEOUT) begin
            mst_scl_ot = 1'b0;
            mst_scl_ot_cnt = 19'h00;
        end
                                       
        if (sv0_sda_o_cnt == TIMEOUT) begin
            sv0_sda_o = 1'b0;
            sv0_sda_o_cnt = 19'h00;
        end
        
        if (sv0_sda_t_cnt == TIMEOUT) begin
            sv0_sda_t = 1'b0;
            sv0_sda_t_cnt = 19'h00;
        end
        
        if (sv1_sda_o_cnt == TIMEOUT) begin
            sv1_sda_o = 1'b0;
            sv1_sda_o_cnt = 19'h00;
        end
        
        if (sv1_sda_t_cnt == TIMEOUT) begin
            sv1_sda_t = 1'b0;
            sv1_sda_t_cnt = 19'h00;
        end
        
        if (mst_sda_o_cnt == TIMEOUT) begin
            mst_sda_o = 1'b0;
            mst_sda_o_cnt = 19'h00;
        end
        
        if (mst_sda_t_cnt == TIMEOUT) begin
            mst_sda_t = 1'b0;
            mst_sda_t_cnt = 19'h00;
        end
        
        if (sv0_sda_ot_cnt == TIMEOUT) begin
            sv0_sda_ot = 1'b0;
            sv0_sda_ot_cnt = 19'h00;
        end
        
        if (sv1_sda_ot_cnt == TIMEOUT) begin
            sv1_sda_ot = 1'b0;
            sv1_sda_ot_cnt = 19'h00;
        end
        
        if (mst_sda_ot_cnt == TIMEOUT) begin
            mst_sda_ot = 1'b0;
            mst_sda_ot_cnt = 19'h00;
        end
    end
    
    assign gpio_0[0]  = scl0_i;
    assign gpio_0[1]  = scl0_t;
    assign gpio_0[2]  = scl1_i;
    assign gpio_0[3]  = scl1_t;
    assign gpio_0[4]  = scl0_it;
    assign gpio_0[5]  = scl1_it;
    assign gpio_0[6]  = sda0_i;
    assign gpio_0[7]  = sda0_t;
    assign gpio_0[8]  = sda1_i;
    assign gpio_0[9]  = sda1_t;
    assign gpio_0[10] = sda0_it;
    assign gpio_0[11] = sda1_it;
    assign gpio_0[12]  = sv0_scl_o;
    assign gpio_0[13]  = sv0_scl_t;
    assign gpio_0[14]  = sv1_scl_o;
    assign gpio_0[15]  = sv1_scl_t;
    assign gpio_0[16]  = mst_scl_o;
    assign gpio_0[17]  = mst_scl_t;
    assign gpio_0[18]  = sv0_scl_ot;
    assign gpio_0[19]  = sv1_scl_ot;
    assign gpio_0[20]  = mst_scl_ot;
    assign gpio_0[21]  = sv0_sda_o;
    assign gpio_0[22]  = sv0_sda_t;
    assign gpio_0[23]  = sv1_sda_o;
    assign gpio_0[24]  = sv1_sda_t;
    assign gpio_0[25]  = mst_sda_o;
    assign gpio_0[26]  = mst_sda_t;
    assign gpio_0[27]  = sv0_sda_ot;
    assign gpio_0[28]  = sv1_sda_ot;
    assign gpio_0[29]  = mst_sda_ot;   
    assign gpio_1[7:0]    = gnd_scl0_it_cnt;
    assign gpio_1[15:8]   = gnd_scl1_it_cnt;
    assign gpio_1[23:16]  = gnd_sda0_it_cnt;
    assign gpio_1[31:24]  = gnd_sda1_it_cnt;
endmodule
