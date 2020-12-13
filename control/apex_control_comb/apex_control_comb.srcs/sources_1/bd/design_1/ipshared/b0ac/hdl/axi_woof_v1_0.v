
`timescale 1 ns / 1 ps

	module axi_woof_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	= 6,
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_S00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_BUSER_WIDTH	= 0,
		parameter integer TIMEOUT = 100000 // reset timeout in clocks
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_awid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [7 : 0] s00_axi_awlen,
		input wire [2 : 0] s00_axi_awsize,
		input wire [1 : 0] s00_axi_awburst,
		input wire  s00_axi_awlock,
		input wire [3 : 0] s00_axi_awcache,
		input wire [2 : 0] s00_axi_awprot,
		input wire [3 : 0] s00_axi_awqos,
		input wire [3 : 0] s00_axi_awregion,
		input wire [C_S00_AXI_AWUSER_WIDTH-1 : 0] s00_axi_awuser,
		input wire  s00_axi_awvalid,
		input wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wlast,
		input wire [C_S00_AXI_WUSER_WIDTH-1 : 0] s00_axi_wuser,
		input wire  s00_axi_wvalid,
		input wire  s00_axi_wready,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
		input wire [1 : 0] s00_axi_bresp,
		input wire [C_S00_AXI_BUSER_WIDTH-1 : 0] s00_axi_buser,
		input wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_arid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [7 : 0] s00_axi_arlen,
		input wire [2 : 0] s00_axi_arsize,
		input wire [1 : 0] s00_axi_arburst,
		input wire  s00_axi_arlock,
		input wire [3 : 0] s00_axi_arcache,
		input wire [2 : 0] s00_axi_arprot,
		input wire [3 : 0] s00_axi_arqos,
		input wire [3 : 0] s00_axi_arregion,
		input wire [C_S00_AXI_ARUSER_WIDTH-1 : 0] s00_axi_aruser,
		input wire  s00_axi_arvalid,
		input wire  s00_axi_arready,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		input wire [1 : 0] s00_axi_rresp,
		input wire  s00_axi_rlast,
		input wire [C_S00_AXI_RUSER_WIDTH-1 : 0] s00_axi_ruser,
		input wire  s00_axi_rvalid,
		input wire  s00_axi_rready,
		
		output reg reset_all
	);
	
	reg [19:0] w_cnt;
	reg [19:0] r_cnt;
	
	always @(posedge s00_axi_aclk)
	begin
	   reset_all = 1'b1;
	   
	   if (s00_axi_arvalid == 1'b1) r_cnt = r_cnt + 1;
	   else r_cnt = 0;

	   if (s00_axi_awvalid == 1'b1) w_cnt = w_cnt + 1;
	   else w_cnt = 0;
	   
	   if (w_cnt >= TIMEOUT)
	   begin
	       reset_all = 1'b0;
	       w_cnt = TIMEOUT;
	   end
	   if (r_cnt >= TIMEOUT)
	   begin
	       reset_all = 1'b0;
	       r_cnt = TIMEOUT;
	   end
	   
	   if (s00_axi_aresetn == 1'b0)
	   begin
	       w_cnt = 0;
	       r_cnt = 0;
	   end
	end
	
	endmodule
