`timescale 1ps/1ps

module c2c_gth_7p8125g_tux 
(

  // Differential reference clock inputs
//  input  wire mgtrefclk0_x0y1_p,
//  input  wire mgtrefclk0_x0y1_n,
  input mgtrefclk0_x0y1_int,

  // Serial data ports for transceiver channel 0
  input  wire ch0_gthrxn_in,
  input  wire ch0_gthrxp_in,
  output wire ch0_gthtxn_out,
  output wire ch0_gthtxp_out,

  // Serial data ports for transceiver channel 1
  input  wire ch1_gthrxn_in,
  input  wire ch1_gthrxp_in,
  output wire ch1_gthtxn_out,
  output wire ch1_gthtxp_out,

    input drp_clk,

    input soft_reset_i,
    
    // interface for c2c TX
    input  [31:0] txdata [1:0],
    input  [ 1:0] txvalid,
    output reg [ 1:0] txready,
    input  [ 1:0] do_cc,
    
    // interface for c2c RX
    output reg [31:0] rxdata [1:0],
    output reg [ 1:0] rxvalid,
    
    // raw data for debugging
    output [31:0] rxd_raw [1:0],
    output [ 3:0] rxk_raw [1:0],
    output reg [31:0] gt_txdata [1:0],
    output reg [ 3:0] gt_txcharisk [1:0],


    output [ 1:0] align_b0,
    output [ 1:0] align_lock,
    
    output [1:0] channel_up,
    input  [3:0] prbs_sel, 
    output [1:0] prbs_err,
    input  [1:0] tx_polarity,
    output [1:0] rxclkcorcnt [1:0],
    input  [1:0] link_up,
    input  c2c_slave_reset_top,
    input  c2c_slave_reset_bot,
    
    output usr_clk // single user clock for tx and rx

);

    wire [1:0] txpmaresetdone_out, rxpmaresetdone_out;
    wire gtwiz_userclk_tx_active_out;
    wire hb_gtwiz_reset_all_vio;
    wire gtwiz_reset_tx_done, gtwiz_reset_rx_done;
    wire [31:0] gt0_rxdata_i, gt1_rxdata_i;
    wire [3:0] gt1_rxcharisk_i, gt0_rxcharisk_i;
    wire [1:0] gtpowergood_int;
    wire [1:0] rxprbserr_int, rxprbslocked_int;
    wire [11:0] dum12_0, dum12_1;


    c2c_gth_7p8125g_vio_0 c2c_gth_7p8125g_vio_0_inst 
    (
        .clk         (drp_clk)
        ,.probe_in0  (gtwiz_userclk_tx_active_out)
        ,.probe_in1  (gtpowergood_int)
        ,.probe_in2  (txpmaresetdone_out)
        ,.probe_in3  (rxpmaresetdone_out)
        ,.probe_in4  (gtwiz_reset_tx_done)
        ,.probe_in5  (gtwiz_reset_rx_done)
        ,.probe_in6  (rxprbserr_int)
        ,.probe_in7  (rxprbslocked_int)
        ,.probe_out0 (hb_gtwiz_reset_all_vio)
    );

//    c2c_gth_7p8125g_example_wrapper example_wrapper_inst 
    c2c_gth_7p8125g c2c_gth 
    (
        .gthrxn_in					      ({ch1_gthrxn_in , ch0_gthrxn_in} ),        // input wire [1 : 0] gthrxn_in
        .gthrxp_in					      ({ch1_gthrxp_in , ch0_gthrxp_in} ),        // input wire [1 : 0] gthrxp_in
        .gthtxn_out					      ({ch1_gthtxn_out, ch0_gthtxn_out}),        // output wire [1 : 0] gthtxn_out
        .gthtxp_out					      ({ch1_gthtxp_out, ch0_gthtxp_out}),        // output wire [1 : 0] gthtxp_out
        .gtwiz_userclk_tx_reset_in	      (~(&txpmaresetdone_out)),               // input wire [0 : 0] gtwiz_userclk_tx_reset_in
        .gtwiz_userclk_tx_srcclk_out	  (),             // output wire [0 : 0] gtwiz_userclk_tx_srcclk_out
        .gtwiz_userclk_tx_usrclk_out      (),             // output wire [0 : 0] gtwiz_userclk_tx_usrclk_out
        .gtwiz_userclk_tx_usrclk2_out	  (usr_clk),            // output wire [0 : 0] gtwiz_userclk_tx_usrclk2_out
        .gtwiz_userclk_tx_active_out	  (gtwiz_userclk_tx_active_out),             // output wire [0 : 0] gtwiz_userclk_tx_active_out
        .gtwiz_userclk_rx_reset_in	      (~(&rxpmaresetdone_out)),               // input wire [0 : 0] gtwiz_userclk_rx_reset_in
        .gtwiz_userclk_rx_srcclk_out	  (),             // output wire [0 : 0] gtwiz_userclk_rx_srcclk_out
        .gtwiz_userclk_rx_usrclk_out	  (),             // output wire [0 : 0] gtwiz_userclk_rx_usrclk_out
        .gtwiz_userclk_rx_usrclk2_out	  (),            // output wire [0 : 0] gtwiz_userclk_rx_usrclk2_out
        .gtwiz_userclk_rx_active_out	  (),             // output wire [0 : 0] gtwiz_userclk_rx_active_out
        .gtwiz_reset_clk_freerun_in	      (drp_clk),                               // input wire [0 : 0] gtwiz_reset_clk_freerun_in
        .gtwiz_reset_all_in			      (soft_reset_i | hb_gtwiz_reset_all_vio), // input wire [0 : 0] gtwiz_reset_all_in
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0), // input wire [0 : 0] gtwiz_reset_tx_pll_and_datapath_in
        .gtwiz_reset_tx_datapath_in	      (1'b0),              // input wire [0 : 0] gtwiz_reset_tx_datapath_in
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0), // input wire [0 : 0] gtwiz_reset_rx_pll_and_datapath_in
        .gtwiz_reset_rx_datapath_in	      (1'b0),              // input wire [0 : 0] gtwiz_reset_rx_datapath_in
        .gtwiz_reset_rx_cdr_stable_out    (),           // output wire [0 : 0] gtwiz_reset_rx_cdr_stable_out
        .gtwiz_reset_tx_done_out		  (gtwiz_reset_tx_done),                 // output wire [0 : 0] gtwiz_reset_tx_done_out
        .gtwiz_reset_rx_done_out		  (gtwiz_reset_rx_done),                 // output wire [0 : 0] gtwiz_reset_rx_done_out
        .gtwiz_userdata_tx_in			  ({gt_txdata[1], gt_txdata[0]}),                    // input wire [63 : 0] gtwiz_userdata_tx_in
        .gtwiz_userdata_rx_out		      ({gt1_rxdata_i, gt0_rxdata_i}),                   // output wire [63 : 0] gtwiz_userdata_rx_out
        .drpclk_in					      ({drp_clk, drp_clk}),                               // input wire [1 : 0] drpclk_in
        .gtrefclk0_in					  ({mgtrefclk0_x0y1_int, mgtrefclk0_x0y1_int}),                            // input wire [1 : 0] gtrefclk0_in
        .rx8b10ben_in					  (2'b11),                            // input wire [1 : 0] rx8b10ben_in
        .rxbufreset_in				      (2'b00),                           // input wire [1 : 0] rxbufreset_in
        .rxcommadeten_in				  (2'b11),                         // input wire [1 : 0] rxcommadeten_in
        .rxmcommaalignen_in			      (2'b00),                      // input wire [1 : 0] rxmcommaalignen_in
        .rxpcommaalignen_in			      (2'b11),                      // input wire [1 : 0] rxpcommaalignen_in
        .rxpolarity_in				      (2'b11),                           // input wire [1 : 0] rxpolarity_in
        .rxprbssel_in					  ({2{prbs_sel}}),                            // input wire [7 : 0] rxprbssel_in
        .tx8b10ben_in					  (2'b11),                            // input wire [1 : 0] tx8b10ben_in
        .txctrl0_in					      (32'b0),                              // input wire [31 : 0] txctrl0_in
        .txctrl1_in					      (32'b0),                              // input wire [31 : 0] txctrl1_in
        .txctrl2_in					      ({4'b0, gt_txcharisk[1], 4'b0, gt_txcharisk[0]}),                              // input wire [15 : 0] txctrl2_in
        .txpolarity_in				      (tx_polarity),                           // input wire [1 : 0] txpolarity_in
        .txprbssel_in					  ({2{prbs_sel}}),                            // input wire [7 : 0] txprbssel_in
        .gtpowergood_out				  (gtpowergood_int),                         // output wire [1 : 0] gtpowergood_out
        .rxbufstatus_out				  (),                         // output wire [5 : 0] rxbufstatus_out
        .rxbyteisaligned_out			  (),                     // output wire [1 : 0] rxbyteisaligned_out
        .rxbyterealign_out			      (),                       // output wire [1 : 0] rxbyterealign_out
        .rxclkcorcnt_out				  (),                         // output wire [3 : 0] rxclkcorcnt_out
        .rxcommadet_out				      (),                          // output wire [1 : 0] rxcommadet_out
        .rxctrl0_out					  ({dum12_1, gt1_rxcharisk_i, dum12_0, gt0_rxcharisk_i}),                             // output wire [31 : 0] rxctrl0_out
        .rxctrl1_out					  (),                             // output wire [31 : 0] rxctrl1_out
        .rxctrl2_out					  (),                             // output wire [15 : 0] rxctrl2_out
        .rxctrl3_out					  (),                             // output wire [15 : 0] rxctrl3_out
        .rxpmaresetdone_out			      (rxpmaresetdone_out),                      // output wire [1 : 0] rxpmaresetdone_out
        .rxprbserr_out				      (rxprbserr_int),                           // output wire [1 : 0] rxprbserr_out
        .rxprbslocked_out				  (rxprbslocked_int),                        // output wire [1 : 0] rxprbslocked_out
        .txpmaresetdone_out			      (txpmaresetdone_int)                       // output wire [1 : 0] txpmaresetdone_out

    );
    
// logic for c2c stream interface
    // alignment logic
    // GTP only supports 2-byte alignment
    // this logic realigns to 4-byte boundary
    reg [31:0] rxd_r [1:0][1:0];
    reg [ 3:0] rxk_r [1:0][1:0];
    reg [ 1:0] alignment_b0;
    reg [ 1:0] alignment_lock = 4'b0;
    integer i;
    reg [7:0] ready_cnt = 8'h0;
    reg [1:0] rx_k;
    
    wire [31:0] clkc_d = 32'h000050bc; // clock correction symbol = IDLE
    wire [31:0] clkc_swapped = {clkc_d[15:0], clkc_d[31:16]};
    wire [ 3:0] clkc_k = 4'b0001;
    
    wire [31:0] zero_d = 32'h0; // zero data, invalid for c2c
    wire [ 3:0] zero_k = 4'b0;
    
    
    // sync patterns used by c2c master
    wire [31:0] mpatd0 = 32'h000808dc; 
    wire [31:0] mpatd1 = 32'h000808fc;
    wire [31:0] mpatd2 = 32'h000808ec;
    
    // sync patterns used by c2c slave
    wire [31:0] spatd0 = 32'h001011bc;
    wire [31:0] spatd1 = 32'h001011fc;
    wire [31:0] spatd2 = 32'h001011dc;
    
    reg [31:0] gt_txdata_r [1:0];
    reg [ 3:0] gt_txcharisk_r [1:0];

    wire [1:0] tx_can_cc;
    assign tx_can_cc[0] = (txdata[0] == mpatd0) || (txdata[0] == mpatd1) || (txdata[0] == zero_d);
    assign tx_can_cc[1] = (txdata[1] == mpatd0) || (txdata[1] == mpatd1) || (txdata[1] == zero_d);
    
    reg [7:0] cc_cnt; // clock correction counter
    always @(posedge usr_clk)
    begin
        cc_cnt++;
    end
    wire local_do_cc = (cc_cnt == 8'h0);
    reg [1:0] do_cc_r;
    reg [3:0] slave_rst_top = 4'b0;
    reg [3:0] slave_rst_bot = 4'b0;
        
    // link reset command pattern    
    wire [31:0] lrst_d = 32'hfcfcfcfc;
    wire [ 3:0] lrst_k = 4'b1111;
    
    // TX logic
    always @(posedge usr_clk)
    begin
        gt_txdata    = gt_txdata_r;
        gt_txcharisk = gt_txcharisk_r;
    
        // tx logic
        for (i = 0; i < 2; i++)
        begin
        
//            if (slave_rst == 4'b0111) // slave reset command
            // separate reset commands for top and bottom AXI links
            // TX 1 = top, TX 0 = bot
            if ((slave_rst_top[0] == 1'b1 && slave_rst_top[3] == 1'b0 && i == 1) || // slave reset command extended
                (slave_rst_bot[0] == 1'b1 && slave_rst_bot[3] == 1'b0 && i == 0))
            begin
                gt_txdata_r[i] = lrst_d;    
                gt_txcharisk_r[i] = lrst_k; 
            end
            else
            if (txvalid[i] == 1'b0)
            begin
                if (do_cc_r[i]) // CC needed 
                begin
                    // send CC
                    gt_txdata_r[i] = clkc_d;    
                    gt_txcharisk_r[i] = clkc_k; 
                    do_cc_r[i] = 1'b0;
                end
                else
                begin
                    // CC not needed, send zeros
                    gt_txdata_r[i] = zero_d;    
                    gt_txcharisk_r[i] = zero_k;
                end 
            end
            else
            begin 
                if (do_cc_r[i] && tx_can_cc[i]) // CC needed and data can be interrupted
                begin
                    // send CC
                    gt_txdata_r[i] = clkc_d;    
                    gt_txcharisk_r[i] = clkc_k;
                    do_cc_r[i] = 1'b0; 
                end
                else
                begin
                    // valid data, send as is.   
                    gt_txdata_r[i] = txdata[i]; 
                    gt_txcharisk_r[i] = zero_k;
                end
            end
        end
        if (local_do_cc) do_cc_r = 4'b1111;   
        slave_rst_top = {slave_rst_top[2:0], c2c_slave_reset_top};      
        slave_rst_bot = {slave_rst_bot[2:0], c2c_slave_reset_bot};      
    end    
    
    reg [31:0] rxdata_r [1:0];
    reg [1:0] rxvalid_r;    
    
    // RX logic
    always @(posedge usr_clk)
    begin
    
        txready = 4'b1111;

        // remember previous data sample
        rxdata_r = rxdata;
        rxvalid_r = rxvalid;
    
        for (i = 0; i < 2; i++)
        begin
        
            rxvalid[i] = 1'b0; // invalid data
            rxdata[i] = 32'h0;
            if (alignment_lock[i] == 1'b1) // alignment is locked
            begin
                if (alignment_b0[i] == 1'b1) // byte 0 aligned, just pass data to output
                begin
                    rxdata[i] = rxd_r[1][i];
                    rx_k[i]   = rxk_r[1][i];
                end
                else
                begin // byte 2 aligned, need swizzling
                    rxdata[i] = {rxd_r[0][i][15:0], rxd_r[1][i][31:16]};
                    rx_k[i]   = {rxk_r[0][i][ 1:0], rxk_r[1][i][ 3: 2]};
                end
                
                if (rx_k[i] == clkc_k && rxdata[i] == clkc_d) // CC symbol
                begin
                    rxdata[i] = zero_d; // replace with invalid data 
                    rxvalid[i] = 1'b0; 
                end
                else
                begin
                    rxvalid[i] = channel_up[i]; // valid if byteisaligned
                end
            end
        
            if (rxk_r[1][i] == clkc_k && rxd_r[1][i] == clkc_d) // byte 0 alignment
            begin
                alignment_b0[i] = 1'b1;
                alignment_lock[i] = 1'b1;
            end
            else if (rxk_r[1][i] == 4'b0100 && rxd_r[1][i] == clkc_swapped) // byte 2 alignment
            begin
                alignment_b0[i] = 1'b0;
                alignment_lock[i] = 1'b1;
            end  
        end
    
        rxd_r[1] = rxd_r[0];
        rxk_r[1] = rxk_r[0];
    
        rxd_r[0][0] = gt0_rxdata_i;
        rxd_r[0][1] = gt1_rxdata_i;
        
        rxk_r[0][0] = gt0_rxcharisk_i;
        rxk_r[0][1] = gt1_rxcharisk_i;
    end

    assign rxd_raw = rxd_r[0];
    assign rxk_raw = rxk_r[0];
    assign align_b0   = alignment_b0; 
    assign align_lock = alignment_lock;



endmodule
