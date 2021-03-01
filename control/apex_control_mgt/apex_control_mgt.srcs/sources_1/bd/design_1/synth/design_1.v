//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
//Date        : Mon Mar  1 03:33:26 2021
//Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bram_loopback_imp_8MI6B2
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire Net;
  wire [31:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [5:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [5:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [5:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [5:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire S_AXI_ARESETN_1;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;

  assign Net = S_AXI_ACLK;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[5:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock;
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[5:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock;
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_ARESETN_1 = S_AXI_ARESETN;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[5:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[5:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x44000000 32 > design_1 bram_loopback/blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_2 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(Net),
        .s_axi_araddr(S_AXI_1_ARADDR[12:0]),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_aresetn(S_AXI_ARESETN_1),
        .s_axi_arid(S_AXI_1_ARID),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock(S_AXI_1_ARLOCK),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR[12:0]),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awid(S_AXI_1_AWID),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock(S_AXI_1_AWLOCK),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bid(S_AXI_1_BID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rid(S_AXI_1_RID),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
endmodule

module cpu_imp_11Y6JLO
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK0,
    FCLK_CLK1,
    FCLK_CLK2,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    I2C1_SCL_I,
    I2C1_SCL_O,
    I2C1_SCL_T,
    I2C1_SDA_I,
    I2C1_SDA_O,
    I2C1_SDA_T,
    In0,
    In1,
    In10,
    In11,
    In2,
    In3,
    In4,
    In5,
    In6,
    In7,
    In8,
    In9,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arid,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awid,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rid,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arid,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awid,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rid,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_AXI_araddr,
    M14_AXI_arburst,
    M14_AXI_arcache,
    M14_AXI_arid,
    M14_AXI_arlen,
    M14_AXI_arlock,
    M14_AXI_arprot,
    M14_AXI_arqos,
    M14_AXI_arready,
    M14_AXI_arsize,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awburst,
    M14_AXI_awcache,
    M14_AXI_awid,
    M14_AXI_awlen,
    M14_AXI_awlock,
    M14_AXI_awprot,
    M14_AXI_awqos,
    M14_AXI_awready,
    M14_AXI_awsize,
    M14_AXI_awvalid,
    M14_AXI_bid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rid,
    M14_AXI_rlast,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wlast,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_AXI_araddr,
    M15_AXI_arburst,
    M15_AXI_arcache,
    M15_AXI_arid,
    M15_AXI_arlen,
    M15_AXI_arlock,
    M15_AXI_arprot,
    M15_AXI_arqos,
    M15_AXI_arready,
    M15_AXI_arsize,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awburst,
    M15_AXI_awcache,
    M15_AXI_awid,
    M15_AXI_awlen,
    M15_AXI_awlock,
    M15_AXI_awprot,
    M15_AXI_awqos,
    M15_AXI_awready,
    M15_AXI_awsize,
    M15_AXI_awvalid,
    M15_AXI_bid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rid,
    M15_AXI_rlast,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wlast,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    M16_AXI_araddr,
    M16_AXI_arready,
    M16_AXI_arvalid,
    M16_AXI_awaddr,
    M16_AXI_awready,
    M16_AXI_awvalid,
    M16_AXI_bready,
    M16_AXI_bresp,
    M16_AXI_bvalid,
    M16_AXI_rdata,
    M16_AXI_rready,
    M16_AXI_rresp,
    M16_AXI_rvalid,
    M16_AXI_wdata,
    M16_AXI_wready,
    M16_AXI_wstrb,
    M16_AXI_wvalid,
    M17_AXI_araddr,
    M17_AXI_arready,
    M17_AXI_arvalid,
    M17_AXI_awaddr,
    M17_AXI_awready,
    M17_AXI_awvalid,
    M17_AXI_bready,
    M17_AXI_bresp,
    M17_AXI_bvalid,
    M17_AXI_rdata,
    M17_AXI_rready,
    M17_AXI_rresp,
    M17_AXI_rvalid,
    M17_AXI_wdata,
    M17_AXI_wready,
    M17_AXI_wstrb,
    M17_AXI_wvalid,
    M18_AXI_araddr,
    M18_AXI_arburst,
    M18_AXI_arcache,
    M18_AXI_arid,
    M18_AXI_arlen,
    M18_AXI_arlock,
    M18_AXI_arprot,
    M18_AXI_arready,
    M18_AXI_arsize,
    M18_AXI_arvalid,
    M18_AXI_awaddr,
    M18_AXI_awburst,
    M18_AXI_awcache,
    M18_AXI_awid,
    M18_AXI_awlen,
    M18_AXI_awlock,
    M18_AXI_awprot,
    M18_AXI_awready,
    M18_AXI_awsize,
    M18_AXI_awvalid,
    M18_AXI_bid,
    M18_AXI_bready,
    M18_AXI_bresp,
    M18_AXI_bvalid,
    M18_AXI_rdata,
    M18_AXI_rid,
    M18_AXI_rlast,
    M18_AXI_rready,
    M18_AXI_rresp,
    M18_AXI_rvalid,
    M18_AXI_wdata,
    M18_AXI_wlast,
    M18_AXI_wready,
    M18_AXI_wstrb,
    M18_AXI_wvalid,
    S00_ARESETN,
    S_AXI_HP0_araddr,
    S_AXI_HP0_arburst,
    S_AXI_HP0_arcache,
    S_AXI_HP0_arid,
    S_AXI_HP0_arlen,
    S_AXI_HP0_arlock,
    S_AXI_HP0_arprot,
    S_AXI_HP0_arqos,
    S_AXI_HP0_arready,
    S_AXI_HP0_arsize,
    S_AXI_HP0_arvalid,
    S_AXI_HP0_awaddr,
    S_AXI_HP0_awburst,
    S_AXI_HP0_awcache,
    S_AXI_HP0_awid,
    S_AXI_HP0_awlen,
    S_AXI_HP0_awlock,
    S_AXI_HP0_awprot,
    S_AXI_HP0_awqos,
    S_AXI_HP0_awready,
    S_AXI_HP0_awsize,
    S_AXI_HP0_awvalid,
    S_AXI_HP0_bid,
    S_AXI_HP0_bready,
    S_AXI_HP0_bresp,
    S_AXI_HP0_bvalid,
    S_AXI_HP0_rdata,
    S_AXI_HP0_rid,
    S_AXI_HP0_rlast,
    S_AXI_HP0_rready,
    S_AXI_HP0_rresp,
    S_AXI_HP0_rvalid,
    S_AXI_HP0_wdata,
    S_AXI_HP0_wid,
    S_AXI_HP0_wlast,
    S_AXI_HP0_wready,
    S_AXI_HP0_wstrb,
    S_AXI_HP0_wvalid,
    ext_reset_in,
    interconnect_aresetn,
    peripheral_reset);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK0;
  output FCLK_CLK1;
  output FCLK_CLK2;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input I2C1_SCL_I;
  output I2C1_SCL_O;
  output I2C1_SCL_T;
  input I2C1_SDA_I;
  output I2C1_SDA_O;
  output I2C1_SDA_T;
  input [0:0]In0;
  input [0:0]In1;
  input In10;
  input In11;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  input [0:0]In5;
  input [0:0]In6;
  input In7;
  input In8;
  input In9;
  output [17:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [17:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [15:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [9:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [9:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output M02_AXI_wvalid;
  output [4:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [4:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  output [31:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [5:0]M05_AXI_arid;
  output [7:0]M05_AXI_arlen;
  output [0:0]M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [2:0]M05_AXI_arsize;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [5:0]M05_AXI_awid;
  output [7:0]M05_AXI_awlen;
  output [0:0]M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output [0:0]M05_AXI_awvalid;
  input [5:0]M05_AXI_bid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  input [5:0]M05_AXI_rid;
  input [0:0]M05_AXI_rlast;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  output [0:0]M05_AXI_wlast;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output [31:0]M07_AXI_araddr;
  output [1:0]M07_AXI_arburst;
  output [3:0]M07_AXI_arcache;
  output [5:0]M07_AXI_arid;
  output [7:0]M07_AXI_arlen;
  output [0:0]M07_AXI_arlock;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [2:0]M07_AXI_arsize;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [1:0]M07_AXI_awburst;
  output [3:0]M07_AXI_awcache;
  output [5:0]M07_AXI_awid;
  output [7:0]M07_AXI_awlen;
  output [0:0]M07_AXI_awlock;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [2:0]M07_AXI_awsize;
  output [0:0]M07_AXI_awvalid;
  input [5:0]M07_AXI_bid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  input [5:0]M07_AXI_rid;
  input [0:0]M07_AXI_rlast;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  output [0:0]M07_AXI_wlast;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  output [31:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  output [31:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  output [31:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  output [31:0]M14_AXI_araddr;
  output [1:0]M14_AXI_arburst;
  output [3:0]M14_AXI_arcache;
  output [5:0]M14_AXI_arid;
  output [7:0]M14_AXI_arlen;
  output M14_AXI_arlock;
  output [2:0]M14_AXI_arprot;
  output [3:0]M14_AXI_arqos;
  input M14_AXI_arready;
  output [2:0]M14_AXI_arsize;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [1:0]M14_AXI_awburst;
  output [3:0]M14_AXI_awcache;
  output [5:0]M14_AXI_awid;
  output [7:0]M14_AXI_awlen;
  output M14_AXI_awlock;
  output [2:0]M14_AXI_awprot;
  output [3:0]M14_AXI_awqos;
  input M14_AXI_awready;
  output [2:0]M14_AXI_awsize;
  output M14_AXI_awvalid;
  input [5:0]M14_AXI_bid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  input [5:0]M14_AXI_rid;
  input M14_AXI_rlast;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  output M14_AXI_wlast;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  output [31:0]M15_AXI_araddr;
  output [1:0]M15_AXI_arburst;
  output [3:0]M15_AXI_arcache;
  output [5:0]M15_AXI_arid;
  output [7:0]M15_AXI_arlen;
  output M15_AXI_arlock;
  output [2:0]M15_AXI_arprot;
  output [3:0]M15_AXI_arqos;
  input M15_AXI_arready;
  output [2:0]M15_AXI_arsize;
  output M15_AXI_arvalid;
  output [31:0]M15_AXI_awaddr;
  output [1:0]M15_AXI_awburst;
  output [3:0]M15_AXI_awcache;
  output [5:0]M15_AXI_awid;
  output [7:0]M15_AXI_awlen;
  output M15_AXI_awlock;
  output [2:0]M15_AXI_awprot;
  output [3:0]M15_AXI_awqos;
  input M15_AXI_awready;
  output [2:0]M15_AXI_awsize;
  output M15_AXI_awvalid;
  input [5:0]M15_AXI_bid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  input [5:0]M15_AXI_rid;
  input M15_AXI_rlast;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  output M15_AXI_wlast;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  output [31:0]M16_AXI_araddr;
  input M16_AXI_arready;
  output M16_AXI_arvalid;
  output [31:0]M16_AXI_awaddr;
  input M16_AXI_awready;
  output M16_AXI_awvalid;
  output M16_AXI_bready;
  input [1:0]M16_AXI_bresp;
  input M16_AXI_bvalid;
  input [31:0]M16_AXI_rdata;
  output M16_AXI_rready;
  input [1:0]M16_AXI_rresp;
  input M16_AXI_rvalid;
  output [31:0]M16_AXI_wdata;
  input M16_AXI_wready;
  output [3:0]M16_AXI_wstrb;
  output M16_AXI_wvalid;
  output [31:0]M17_AXI_araddr;
  input M17_AXI_arready;
  output M17_AXI_arvalid;
  output [31:0]M17_AXI_awaddr;
  input M17_AXI_awready;
  output M17_AXI_awvalid;
  output M17_AXI_bready;
  input [1:0]M17_AXI_bresp;
  input M17_AXI_bvalid;
  input [31:0]M17_AXI_rdata;
  output M17_AXI_rready;
  input [1:0]M17_AXI_rresp;
  input M17_AXI_rvalid;
  output [31:0]M17_AXI_wdata;
  input M17_AXI_wready;
  output [3:0]M17_AXI_wstrb;
  output M17_AXI_wvalid;
  output [31:0]M18_AXI_araddr;
  output [1:0]M18_AXI_arburst;
  output [3:0]M18_AXI_arcache;
  output [5:0]M18_AXI_arid;
  output [7:0]M18_AXI_arlen;
  output M18_AXI_arlock;
  output [2:0]M18_AXI_arprot;
  input M18_AXI_arready;
  output [2:0]M18_AXI_arsize;
  output M18_AXI_arvalid;
  output [31:0]M18_AXI_awaddr;
  output [1:0]M18_AXI_awburst;
  output [3:0]M18_AXI_awcache;
  output [5:0]M18_AXI_awid;
  output [7:0]M18_AXI_awlen;
  output M18_AXI_awlock;
  output [2:0]M18_AXI_awprot;
  input M18_AXI_awready;
  output [2:0]M18_AXI_awsize;
  output M18_AXI_awvalid;
  input [5:0]M18_AXI_bid;
  output M18_AXI_bready;
  input [1:0]M18_AXI_bresp;
  input M18_AXI_bvalid;
  input [31:0]M18_AXI_rdata;
  input [5:0]M18_AXI_rid;
  input M18_AXI_rlast;
  output M18_AXI_rready;
  input [1:0]M18_AXI_rresp;
  input M18_AXI_rvalid;
  output [31:0]M18_AXI_wdata;
  output M18_AXI_wlast;
  input M18_AXI_wready;
  output [3:0]M18_AXI_wstrb;
  output M18_AXI_wvalid;
  output [0:0]S00_ARESETN;
  input [31:0]S_AXI_HP0_araddr;
  input [1:0]S_AXI_HP0_arburst;
  input [3:0]S_AXI_HP0_arcache;
  input [1:0]S_AXI_HP0_arid;
  input [3:0]S_AXI_HP0_arlen;
  input [1:0]S_AXI_HP0_arlock;
  input [2:0]S_AXI_HP0_arprot;
  input [3:0]S_AXI_HP0_arqos;
  output S_AXI_HP0_arready;
  input [2:0]S_AXI_HP0_arsize;
  input S_AXI_HP0_arvalid;
  input [31:0]S_AXI_HP0_awaddr;
  input [1:0]S_AXI_HP0_awburst;
  input [3:0]S_AXI_HP0_awcache;
  input [1:0]S_AXI_HP0_awid;
  input [3:0]S_AXI_HP0_awlen;
  input [1:0]S_AXI_HP0_awlock;
  input [2:0]S_AXI_HP0_awprot;
  input [3:0]S_AXI_HP0_awqos;
  output S_AXI_HP0_awready;
  input [2:0]S_AXI_HP0_awsize;
  input S_AXI_HP0_awvalid;
  output [5:0]S_AXI_HP0_bid;
  input S_AXI_HP0_bready;
  output [1:0]S_AXI_HP0_bresp;
  output S_AXI_HP0_bvalid;
  output [63:0]S_AXI_HP0_rdata;
  output [5:0]S_AXI_HP0_rid;
  output S_AXI_HP0_rlast;
  input S_AXI_HP0_rready;
  output [1:0]S_AXI_HP0_rresp;
  output S_AXI_HP0_rvalid;
  input [63:0]S_AXI_HP0_wdata;
  input [1:0]S_AXI_HP0_wid;
  input S_AXI_HP0_wlast;
  output S_AXI_HP0_wready;
  input [7:0]S_AXI_HP0_wstrb;
  input S_AXI_HP0_wvalid;
  output ext_reset_in;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_reset;

  wire [0:0]ARESETN_1;
  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [31:0]Conn4_ARADDR;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [31:0]Conn4_AWADDR;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [31:0]Conn5_ARADDR;
  wire [1:0]Conn5_ARBURST;
  wire [3:0]Conn5_ARCACHE;
  wire [5:0]Conn5_ARID;
  wire [7:0]Conn5_ARLEN;
  wire Conn5_ARLOCK;
  wire [2:0]Conn5_ARPROT;
  wire [3:0]Conn5_ARQOS;
  wire Conn5_ARREADY;
  wire [2:0]Conn5_ARSIZE;
  wire Conn5_ARVALID;
  wire [31:0]Conn5_AWADDR;
  wire [1:0]Conn5_AWBURST;
  wire [3:0]Conn5_AWCACHE;
  wire [5:0]Conn5_AWID;
  wire [7:0]Conn5_AWLEN;
  wire Conn5_AWLOCK;
  wire [2:0]Conn5_AWPROT;
  wire [3:0]Conn5_AWQOS;
  wire Conn5_AWREADY;
  wire [2:0]Conn5_AWSIZE;
  wire Conn5_AWVALID;
  wire [5:0]Conn5_BID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire [5:0]Conn5_RID;
  wire Conn5_RLAST;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire Conn5_WLAST;
  wire Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [31:0]Conn6_ARADDR;
  wire [1:0]Conn6_ARBURST;
  wire [3:0]Conn6_ARCACHE;
  wire [5:0]Conn6_ARID;
  wire [7:0]Conn6_ARLEN;
  wire Conn6_ARLOCK;
  wire [2:0]Conn6_ARPROT;
  wire [3:0]Conn6_ARQOS;
  wire Conn6_ARREADY;
  wire [2:0]Conn6_ARSIZE;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire [1:0]Conn6_AWBURST;
  wire [3:0]Conn6_AWCACHE;
  wire [5:0]Conn6_AWID;
  wire [7:0]Conn6_AWLEN;
  wire Conn6_AWLOCK;
  wire [2:0]Conn6_AWPROT;
  wire [3:0]Conn6_AWQOS;
  wire Conn6_AWREADY;
  wire [2:0]Conn6_AWSIZE;
  wire Conn6_AWVALID;
  wire [5:0]Conn6_BID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire [5:0]Conn6_RID;
  wire Conn6_RLAST;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WLAST;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire [31:0]Conn7_ARADDR;
  wire [1:0]Conn7_ARBURST;
  wire [3:0]Conn7_ARCACHE;
  wire [5:0]Conn7_ARID;
  wire [7:0]Conn7_ARLEN;
  wire Conn7_ARLOCK;
  wire [2:0]Conn7_ARPROT;
  wire Conn7_ARREADY;
  wire [2:0]Conn7_ARSIZE;
  wire Conn7_ARVALID;
  wire [31:0]Conn7_AWADDR;
  wire [1:0]Conn7_AWBURST;
  wire [3:0]Conn7_AWCACHE;
  wire [5:0]Conn7_AWID;
  wire [7:0]Conn7_AWLEN;
  wire Conn7_AWLOCK;
  wire [2:0]Conn7_AWPROT;
  wire Conn7_AWREADY;
  wire [2:0]Conn7_AWSIZE;
  wire Conn7_AWVALID;
  wire [5:0]Conn7_BID;
  wire Conn7_BREADY;
  wire [1:0]Conn7_BRESP;
  wire Conn7_BVALID;
  wire [31:0]Conn7_RDATA;
  wire [5:0]Conn7_RID;
  wire Conn7_RLAST;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [31:0]Conn7_WDATA;
  wire Conn7_WLAST;
  wire Conn7_WREADY;
  wire [3:0]Conn7_WSTRB;
  wire Conn7_WVALID;
  wire In10_1;
  wire In11_1;
  wire In7_1;
  wire In8_1;
  wire In9_1;
  wire Net;
  wire [31:0]S_AXI2_1_ARADDR;
  wire [1:0]S_AXI2_1_ARBURST;
  wire [3:0]S_AXI2_1_ARCACHE;
  wire [5:0]S_AXI2_1_ARID;
  wire [7:0]S_AXI2_1_ARLEN;
  wire [0:0]S_AXI2_1_ARLOCK;
  wire [2:0]S_AXI2_1_ARPROT;
  wire [0:0]S_AXI2_1_ARREADY;
  wire [2:0]S_AXI2_1_ARSIZE;
  wire [0:0]S_AXI2_1_ARVALID;
  wire [31:0]S_AXI2_1_AWADDR;
  wire [1:0]S_AXI2_1_AWBURST;
  wire [3:0]S_AXI2_1_AWCACHE;
  wire [5:0]S_AXI2_1_AWID;
  wire [7:0]S_AXI2_1_AWLEN;
  wire [0:0]S_AXI2_1_AWLOCK;
  wire [2:0]S_AXI2_1_AWPROT;
  wire [0:0]S_AXI2_1_AWREADY;
  wire [2:0]S_AXI2_1_AWSIZE;
  wire [0:0]S_AXI2_1_AWVALID;
  wire [5:0]S_AXI2_1_BID;
  wire [0:0]S_AXI2_1_BREADY;
  wire [1:0]S_AXI2_1_BRESP;
  wire [0:0]S_AXI2_1_BVALID;
  wire [31:0]S_AXI2_1_RDATA;
  wire [5:0]S_AXI2_1_RID;
  wire [0:0]S_AXI2_1_RLAST;
  wire [0:0]S_AXI2_1_RREADY;
  wire [1:0]S_AXI2_1_RRESP;
  wire [0:0]S_AXI2_1_RVALID;
  wire [31:0]S_AXI2_1_WDATA;
  wire [0:0]S_AXI2_1_WLAST;
  wire [0:0]S_AXI2_1_WREADY;
  wire [3:0]S_AXI2_1_WSTRB;
  wire [0:0]S_AXI2_1_WVALID;
  wire [31:0]S_AXI3_1_ARADDR;
  wire S_AXI3_1_ARREADY;
  wire S_AXI3_1_ARVALID;
  wire [31:0]S_AXI3_1_AWADDR;
  wire S_AXI3_1_AWREADY;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire [31:0]S_AXI4_1_ARADDR;
  wire [1:0]S_AXI4_1_ARBURST;
  wire [3:0]S_AXI4_1_ARCACHE;
  wire [5:0]S_AXI4_1_ARID;
  wire [7:0]S_AXI4_1_ARLEN;
  wire [0:0]S_AXI4_1_ARLOCK;
  wire [2:0]S_AXI4_1_ARPROT;
  wire [0:0]S_AXI4_1_ARREADY;
  wire [2:0]S_AXI4_1_ARSIZE;
  wire [0:0]S_AXI4_1_ARVALID;
  wire [31:0]S_AXI4_1_AWADDR;
  wire [1:0]S_AXI4_1_AWBURST;
  wire [3:0]S_AXI4_1_AWCACHE;
  wire [5:0]S_AXI4_1_AWID;
  wire [7:0]S_AXI4_1_AWLEN;
  wire [0:0]S_AXI4_1_AWLOCK;
  wire [2:0]S_AXI4_1_AWPROT;
  wire [0:0]S_AXI4_1_AWREADY;
  wire [2:0]S_AXI4_1_AWSIZE;
  wire [0:0]S_AXI4_1_AWVALID;
  wire [5:0]S_AXI4_1_BID;
  wire [0:0]S_AXI4_1_BREADY;
  wire [1:0]S_AXI4_1_BRESP;
  wire [0:0]S_AXI4_1_BVALID;
  wire [31:0]S_AXI4_1_RDATA;
  wire [5:0]S_AXI4_1_RID;
  wire [0:0]S_AXI4_1_RLAST;
  wire [0:0]S_AXI4_1_RREADY;
  wire [1:0]S_AXI4_1_RRESP;
  wire [0:0]S_AXI4_1_RVALID;
  wire [31:0]S_AXI4_1_WDATA;
  wire [0:0]S_AXI4_1_WLAST;
  wire [0:0]S_AXI4_1_WREADY;
  wire [3:0]S_AXI4_1_WSTRB;
  wire [0:0]S_AXI4_1_WVALID;
  wire [31:0]S_AXI5_1_ARADDR;
  wire S_AXI5_1_ARREADY;
  wire S_AXI5_1_ARVALID;
  wire [31:0]S_AXI5_1_AWADDR;
  wire S_AXI5_1_AWREADY;
  wire S_AXI5_1_AWVALID;
  wire S_AXI5_1_BREADY;
  wire [1:0]S_AXI5_1_BRESP;
  wire S_AXI5_1_BVALID;
  wire [31:0]S_AXI5_1_RDATA;
  wire S_AXI5_1_RREADY;
  wire [1:0]S_AXI5_1_RRESP;
  wire S_AXI5_1_RVALID;
  wire [31:0]S_AXI5_1_WDATA;
  wire S_AXI5_1_WREADY;
  wire [3:0]S_AXI5_1_WSTRB;
  wire S_AXI5_1_WVALID;
  wire [31:0]S_AXI6_1_ARADDR;
  wire S_AXI6_1_ARREADY;
  wire S_AXI6_1_ARVALID;
  wire [31:0]S_AXI6_1_AWADDR;
  wire S_AXI6_1_AWREADY;
  wire S_AXI6_1_AWVALID;
  wire S_AXI6_1_BREADY;
  wire [1:0]S_AXI6_1_BRESP;
  wire S_AXI6_1_BVALID;
  wire [31:0]S_AXI6_1_RDATA;
  wire S_AXI6_1_RREADY;
  wire [1:0]S_AXI6_1_RRESP;
  wire S_AXI6_1_RVALID;
  wire [31:0]S_AXI6_1_WDATA;
  wire S_AXI6_1_WREADY;
  wire [3:0]S_AXI6_1_WSTRB;
  wire S_AXI6_1_WVALID;
  wire [0:0]axi_ethernet_0_dma_mm2s_introut;
  wire [0:0]axi_ethernet_0_dma_s2mm_introut;
  wire [0:0]axi_ethernet_0_interrupt;
  wire [0:0]axi_ethernet_0_mac_irq;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [1:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [0:0]ipmc_jtag_iic2intc_irpt;
  wire [0:0]ipmc_jtag_irq;
  wire [0:0]ipmc_jtag_irq1;
  wire ipmc_jtag_s0_o;
  wire ipmc_jtag_s0_o1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [5:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [5:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [5:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [5:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [5:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [17:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [17:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire ps7_0_axi_periph_M00_AXI_AWVALID;
  wire ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  wire ps7_0_axi_periph_M00_AXI_WVALID;
  wire [15:0]ps7_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_ARPROT;
  wire ps7_0_axi_periph_M01_AXI_ARREADY;
  wire ps7_0_axi_periph_M01_AXI_ARVALID;
  wire [15:0]ps7_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_AWPROT;
  wire ps7_0_axi_periph_M01_AXI_AWREADY;
  wire ps7_0_axi_periph_M01_AXI_AWVALID;
  wire ps7_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_BRESP;
  wire ps7_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_RDATA;
  wire ps7_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_RRESP;
  wire ps7_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_WDATA;
  wire ps7_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M01_AXI_WSTRB;
  wire ps7_0_axi_periph_M01_AXI_WVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_ARADDR;
  wire ps7_0_axi_periph_M02_AXI_ARREADY;
  wire ps7_0_axi_periph_M02_AXI_ARVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_AWADDR;
  wire ps7_0_axi_periph_M02_AXI_AWREADY;
  wire ps7_0_axi_periph_M02_AXI_AWVALID;
  wire ps7_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_BRESP;
  wire ps7_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_RDATA;
  wire ps7_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_RRESP;
  wire ps7_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_WDATA;
  wire ps7_0_axi_periph_M02_AXI_WREADY;
  wire ps7_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M16_AXI_ARADDR;
  wire ps7_0_axi_periph_M16_AXI_ARREADY;
  wire ps7_0_axi_periph_M16_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M16_AXI_AWADDR;
  wire ps7_0_axi_periph_M16_AXI_AWREADY;
  wire ps7_0_axi_periph_M16_AXI_AWVALID;
  wire ps7_0_axi_periph_M16_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M16_AXI_BRESP;
  wire ps7_0_axi_periph_M16_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M16_AXI_RDATA;
  wire ps7_0_axi_periph_M16_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M16_AXI_RRESP;
  wire ps7_0_axi_periph_M16_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M16_AXI_WDATA;
  wire ps7_0_axi_periph_M16_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M16_AXI_WSTRB;
  wire ps7_0_axi_periph_M16_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M17_AXI_ARADDR;
  wire ps7_0_axi_periph_M17_AXI_ARREADY;
  wire ps7_0_axi_periph_M17_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M17_AXI_AWADDR;
  wire ps7_0_axi_periph_M17_AXI_AWREADY;
  wire ps7_0_axi_periph_M17_AXI_AWVALID;
  wire ps7_0_axi_periph_M17_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M17_AXI_BRESP;
  wire ps7_0_axi_periph_M17_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M17_AXI_RDATA;
  wire ps7_0_axi_periph_M17_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M17_AXI_RRESP;
  wire ps7_0_axi_periph_M17_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M17_AXI_WDATA;
  wire ps7_0_axi_periph_M17_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M17_AXI_WSTRB;
  wire ps7_0_axi_periph_M17_AXI_WVALID;
  wire s0_i1_1;
  wire s0_i_1;
  wire s0_t1_1;
  wire s0_t_1;
  wire [31:0]s_axi1_1_ARADDR;
  wire [2:0]s_axi1_1_ARPROT;
  wire s_axi1_1_ARREADY;
  wire s_axi1_1_ARVALID;
  wire [31:0]s_axi1_1_AWADDR;
  wire [2:0]s_axi1_1_AWPROT;
  wire s_axi1_1_AWREADY;
  wire s_axi1_1_AWVALID;
  wire s_axi1_1_BREADY;
  wire [1:0]s_axi1_1_BRESP;
  wire s_axi1_1_BVALID;
  wire [31:0]s_axi1_1_RDATA;
  wire s_axi1_1_RREADY;
  wire [1:0]s_axi1_1_RRESP;
  wire s_axi1_1_RVALID;
  wire [31:0]s_axi1_1_WDATA;
  wire s_axi1_1_WREADY;
  wire [3:0]s_axi1_1_WSTRB;
  wire s_axi1_1_WVALID;
  wire [4:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [4:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;
  wire [11:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;

  assign Conn1_ARREADY = M10_AXI_arready;
  assign Conn1_AWREADY = M10_AXI_awready;
  assign Conn1_BRESP = M10_AXI_bresp[1:0];
  assign Conn1_BVALID = M10_AXI_bvalid;
  assign Conn1_RDATA = M10_AXI_rdata[31:0];
  assign Conn1_RRESP = M10_AXI_rresp[1:0];
  assign Conn1_RVALID = M10_AXI_rvalid;
  assign Conn1_WREADY = M10_AXI_wready;
  assign Conn2_ARREADY = M11_AXI_arready;
  assign Conn2_AWREADY = M11_AXI_awready;
  assign Conn2_BRESP = M11_AXI_bresp[1:0];
  assign Conn2_BVALID = M11_AXI_bvalid;
  assign Conn2_RDATA = M11_AXI_rdata[31:0];
  assign Conn2_RRESP = M11_AXI_rresp[1:0];
  assign Conn2_RVALID = M11_AXI_rvalid;
  assign Conn2_WREADY = M11_AXI_wready;
  assign Conn3_ARREADY = M12_AXI_arready;
  assign Conn3_AWREADY = M12_AXI_awready;
  assign Conn3_BRESP = M12_AXI_bresp[1:0];
  assign Conn3_BVALID = M12_AXI_bvalid;
  assign Conn3_RDATA = M12_AXI_rdata[31:0];
  assign Conn3_RRESP = M12_AXI_rresp[1:0];
  assign Conn3_RVALID = M12_AXI_rvalid;
  assign Conn3_WREADY = M12_AXI_wready;
  assign Conn4_ARREADY = M13_AXI_arready;
  assign Conn4_AWREADY = M13_AXI_awready;
  assign Conn4_BRESP = M13_AXI_bresp[1:0];
  assign Conn4_BVALID = M13_AXI_bvalid;
  assign Conn4_RDATA = M13_AXI_rdata[31:0];
  assign Conn4_RRESP = M13_AXI_rresp[1:0];
  assign Conn4_RVALID = M13_AXI_rvalid;
  assign Conn4_WREADY = M13_AXI_wready;
  assign Conn5_ARREADY = M14_AXI_arready;
  assign Conn5_AWREADY = M14_AXI_awready;
  assign Conn5_BID = M14_AXI_bid[5:0];
  assign Conn5_BRESP = M14_AXI_bresp[1:0];
  assign Conn5_BVALID = M14_AXI_bvalid;
  assign Conn5_RDATA = M14_AXI_rdata[31:0];
  assign Conn5_RID = M14_AXI_rid[5:0];
  assign Conn5_RLAST = M14_AXI_rlast;
  assign Conn5_RRESP = M14_AXI_rresp[1:0];
  assign Conn5_RVALID = M14_AXI_rvalid;
  assign Conn5_WREADY = M14_AXI_wready;
  assign Conn6_ARREADY = M15_AXI_arready;
  assign Conn6_AWREADY = M15_AXI_awready;
  assign Conn6_BID = M15_AXI_bid[5:0];
  assign Conn6_BRESP = M15_AXI_bresp[1:0];
  assign Conn6_BVALID = M15_AXI_bvalid;
  assign Conn6_RDATA = M15_AXI_rdata[31:0];
  assign Conn6_RID = M15_AXI_rid[5:0];
  assign Conn6_RLAST = M15_AXI_rlast;
  assign Conn6_RRESP = M15_AXI_rresp[1:0];
  assign Conn6_RVALID = M15_AXI_rvalid;
  assign Conn6_WREADY = M15_AXI_wready;
  assign Conn7_ARREADY = M18_AXI_arready;
  assign Conn7_AWREADY = M18_AXI_awready;
  assign Conn7_BID = M18_AXI_bid[5:0];
  assign Conn7_BRESP = M18_AXI_bresp[1:0];
  assign Conn7_BVALID = M18_AXI_bvalid;
  assign Conn7_RDATA = M18_AXI_rdata[31:0];
  assign Conn7_RID = M18_AXI_rid[5:0];
  assign Conn7_RLAST = M18_AXI_rlast;
  assign Conn7_RRESP = M18_AXI_rresp[1:0];
  assign Conn7_RVALID = M18_AXI_rvalid;
  assign Conn7_WREADY = M18_AXI_wready;
  assign FCLK_CLK0 = Net;
  assign FCLK_CLK1 = processing_system7_0_FCLK_CLK1;
  assign FCLK_CLK2 = processing_system7_0_FCLK_CLK2;
  assign I2C1_SCL_O = s0_i1_1;
  assign I2C1_SCL_T = s0_t1_1;
  assign I2C1_SDA_O = s0_i_1;
  assign I2C1_SDA_T = s0_t_1;
  assign In10_1 = In10;
  assign In11_1 = In11;
  assign In7_1 = In7;
  assign In8_1 = In8;
  assign In9_1 = In9;
  assign M00_AXI_araddr[17:0] = ps7_0_axi_periph_M00_AXI_ARADDR;
  assign M00_AXI_arvalid = ps7_0_axi_periph_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[17:0] = ps7_0_axi_periph_M00_AXI_AWADDR;
  assign M00_AXI_awvalid = ps7_0_axi_periph_M00_AXI_AWVALID;
  assign M00_AXI_bready = ps7_0_axi_periph_M00_AXI_BREADY;
  assign M00_AXI_rready = ps7_0_axi_periph_M00_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = ps7_0_axi_periph_M00_AXI_WDATA;
  assign M00_AXI_wstrb[3:0] = ps7_0_axi_periph_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = ps7_0_axi_periph_M00_AXI_WVALID;
  assign M01_AXI_araddr[15:0] = ps7_0_axi_periph_M01_AXI_ARADDR;
  assign M01_AXI_arprot[2:0] = ps7_0_axi_periph_M01_AXI_ARPROT;
  assign M01_AXI_arvalid = ps7_0_axi_periph_M01_AXI_ARVALID;
  assign M01_AXI_awaddr[15:0] = ps7_0_axi_periph_M01_AXI_AWADDR;
  assign M01_AXI_awprot[2:0] = ps7_0_axi_periph_M01_AXI_AWPROT;
  assign M01_AXI_awvalid = ps7_0_axi_periph_M01_AXI_AWVALID;
  assign M01_AXI_bready = ps7_0_axi_periph_M01_AXI_BREADY;
  assign M01_AXI_rready = ps7_0_axi_periph_M01_AXI_RREADY;
  assign M01_AXI_wdata[31:0] = ps7_0_axi_periph_M01_AXI_WDATA;
  assign M01_AXI_wstrb[3:0] = ps7_0_axi_periph_M01_AXI_WSTRB;
  assign M01_AXI_wvalid = ps7_0_axi_periph_M01_AXI_WVALID;
  assign M02_AXI_araddr[9:0] = ps7_0_axi_periph_M02_AXI_ARADDR;
  assign M02_AXI_arvalid = ps7_0_axi_periph_M02_AXI_ARVALID;
  assign M02_AXI_awaddr[9:0] = ps7_0_axi_periph_M02_AXI_AWADDR;
  assign M02_AXI_awvalid = ps7_0_axi_periph_M02_AXI_AWVALID;
  assign M02_AXI_bready = ps7_0_axi_periph_M02_AXI_BREADY;
  assign M02_AXI_rready = ps7_0_axi_periph_M02_AXI_RREADY;
  assign M02_AXI_wdata[31:0] = ps7_0_axi_periph_M02_AXI_WDATA;
  assign M02_AXI_wvalid = ps7_0_axi_periph_M02_AXI_WVALID;
  assign M03_AXI_araddr[4:0] = s_axi_1_ARADDR;
  assign M03_AXI_arprot[2:0] = s_axi_1_ARPROT;
  assign M03_AXI_arvalid = s_axi_1_ARVALID;
  assign M03_AXI_awaddr[4:0] = s_axi_1_AWADDR;
  assign M03_AXI_awprot[2:0] = s_axi_1_AWPROT;
  assign M03_AXI_awvalid = s_axi_1_AWVALID;
  assign M03_AXI_bready = s_axi_1_BREADY;
  assign M03_AXI_rready = s_axi_1_RREADY;
  assign M03_AXI_wdata[31:0] = s_axi_1_WDATA;
  assign M03_AXI_wstrb[3:0] = s_axi_1_WSTRB;
  assign M03_AXI_wvalid = s_axi_1_WVALID;
  assign M04_AXI_araddr[31:0] = s_axi1_1_ARADDR;
  assign M04_AXI_arprot[2:0] = s_axi1_1_ARPROT;
  assign M04_AXI_arvalid = s_axi1_1_ARVALID;
  assign M04_AXI_awaddr[31:0] = s_axi1_1_AWADDR;
  assign M04_AXI_awprot[2:0] = s_axi1_1_AWPROT;
  assign M04_AXI_awvalid = s_axi1_1_AWVALID;
  assign M04_AXI_bready = s_axi1_1_BREADY;
  assign M04_AXI_rready = s_axi1_1_RREADY;
  assign M04_AXI_wdata[31:0] = s_axi1_1_WDATA;
  assign M04_AXI_wstrb[3:0] = s_axi1_1_WSTRB;
  assign M04_AXI_wvalid = s_axi1_1_WVALID;
  assign M05_AXI_araddr[31:0] = S_AXI2_1_ARADDR;
  assign M05_AXI_arburst[1:0] = S_AXI2_1_ARBURST;
  assign M05_AXI_arcache[3:0] = S_AXI2_1_ARCACHE;
  assign M05_AXI_arid[5:0] = S_AXI2_1_ARID;
  assign M05_AXI_arlen[7:0] = S_AXI2_1_ARLEN;
  assign M05_AXI_arlock[0] = S_AXI2_1_ARLOCK;
  assign M05_AXI_arprot[2:0] = S_AXI2_1_ARPROT;
  assign M05_AXI_arsize[2:0] = S_AXI2_1_ARSIZE;
  assign M05_AXI_arvalid[0] = S_AXI2_1_ARVALID;
  assign M05_AXI_awaddr[31:0] = S_AXI2_1_AWADDR;
  assign M05_AXI_awburst[1:0] = S_AXI2_1_AWBURST;
  assign M05_AXI_awcache[3:0] = S_AXI2_1_AWCACHE;
  assign M05_AXI_awid[5:0] = S_AXI2_1_AWID;
  assign M05_AXI_awlen[7:0] = S_AXI2_1_AWLEN;
  assign M05_AXI_awlock[0] = S_AXI2_1_AWLOCK;
  assign M05_AXI_awprot[2:0] = S_AXI2_1_AWPROT;
  assign M05_AXI_awsize[2:0] = S_AXI2_1_AWSIZE;
  assign M05_AXI_awvalid[0] = S_AXI2_1_AWVALID;
  assign M05_AXI_bready[0] = S_AXI2_1_BREADY;
  assign M05_AXI_rready[0] = S_AXI2_1_RREADY;
  assign M05_AXI_wdata[31:0] = S_AXI2_1_WDATA;
  assign M05_AXI_wlast[0] = S_AXI2_1_WLAST;
  assign M05_AXI_wstrb[3:0] = S_AXI2_1_WSTRB;
  assign M05_AXI_wvalid[0] = S_AXI2_1_WVALID;
  assign M06_AXI_araddr[31:0] = S_AXI3_1_ARADDR;
  assign M06_AXI_arvalid = S_AXI3_1_ARVALID;
  assign M06_AXI_awaddr[31:0] = S_AXI3_1_AWADDR;
  assign M06_AXI_awvalid = S_AXI3_1_AWVALID;
  assign M06_AXI_bready = S_AXI3_1_BREADY;
  assign M06_AXI_rready = S_AXI3_1_RREADY;
  assign M06_AXI_wdata[31:0] = S_AXI3_1_WDATA;
  assign M06_AXI_wstrb[3:0] = S_AXI3_1_WSTRB;
  assign M06_AXI_wvalid = S_AXI3_1_WVALID;
  assign M07_AXI_araddr[31:0] = S_AXI4_1_ARADDR;
  assign M07_AXI_arburst[1:0] = S_AXI4_1_ARBURST;
  assign M07_AXI_arcache[3:0] = S_AXI4_1_ARCACHE;
  assign M07_AXI_arid[5:0] = S_AXI4_1_ARID;
  assign M07_AXI_arlen[7:0] = S_AXI4_1_ARLEN;
  assign M07_AXI_arlock[0] = S_AXI4_1_ARLOCK;
  assign M07_AXI_arprot[2:0] = S_AXI4_1_ARPROT;
  assign M07_AXI_arsize[2:0] = S_AXI4_1_ARSIZE;
  assign M07_AXI_arvalid[0] = S_AXI4_1_ARVALID;
  assign M07_AXI_awaddr[31:0] = S_AXI4_1_AWADDR;
  assign M07_AXI_awburst[1:0] = S_AXI4_1_AWBURST;
  assign M07_AXI_awcache[3:0] = S_AXI4_1_AWCACHE;
  assign M07_AXI_awid[5:0] = S_AXI4_1_AWID;
  assign M07_AXI_awlen[7:0] = S_AXI4_1_AWLEN;
  assign M07_AXI_awlock[0] = S_AXI4_1_AWLOCK;
  assign M07_AXI_awprot[2:0] = S_AXI4_1_AWPROT;
  assign M07_AXI_awsize[2:0] = S_AXI4_1_AWSIZE;
  assign M07_AXI_awvalid[0] = S_AXI4_1_AWVALID;
  assign M07_AXI_bready[0] = S_AXI4_1_BREADY;
  assign M07_AXI_rready[0] = S_AXI4_1_RREADY;
  assign M07_AXI_wdata[31:0] = S_AXI4_1_WDATA;
  assign M07_AXI_wlast[0] = S_AXI4_1_WLAST;
  assign M07_AXI_wstrb[3:0] = S_AXI4_1_WSTRB;
  assign M07_AXI_wvalid[0] = S_AXI4_1_WVALID;
  assign M08_AXI_araddr[31:0] = S_AXI5_1_ARADDR;
  assign M08_AXI_arvalid = S_AXI5_1_ARVALID;
  assign M08_AXI_awaddr[31:0] = S_AXI5_1_AWADDR;
  assign M08_AXI_awvalid = S_AXI5_1_AWVALID;
  assign M08_AXI_bready = S_AXI5_1_BREADY;
  assign M08_AXI_rready = S_AXI5_1_RREADY;
  assign M08_AXI_wdata[31:0] = S_AXI5_1_WDATA;
  assign M08_AXI_wstrb[3:0] = S_AXI5_1_WSTRB;
  assign M08_AXI_wvalid = S_AXI5_1_WVALID;
  assign M09_AXI_araddr[31:0] = S_AXI6_1_ARADDR;
  assign M09_AXI_arvalid = S_AXI6_1_ARVALID;
  assign M09_AXI_awaddr[31:0] = S_AXI6_1_AWADDR;
  assign M09_AXI_awvalid = S_AXI6_1_AWVALID;
  assign M09_AXI_bready = S_AXI6_1_BREADY;
  assign M09_AXI_rready = S_AXI6_1_RREADY;
  assign M09_AXI_wdata[31:0] = S_AXI6_1_WDATA;
  assign M09_AXI_wstrb[3:0] = S_AXI6_1_WSTRB;
  assign M09_AXI_wvalid = S_AXI6_1_WVALID;
  assign M10_AXI_araddr[31:0] = Conn1_ARADDR;
  assign M10_AXI_arvalid = Conn1_ARVALID;
  assign M10_AXI_awaddr[31:0] = Conn1_AWADDR;
  assign M10_AXI_awvalid = Conn1_AWVALID;
  assign M10_AXI_bready = Conn1_BREADY;
  assign M10_AXI_rready = Conn1_RREADY;
  assign M10_AXI_wdata[31:0] = Conn1_WDATA;
  assign M10_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M10_AXI_wvalid = Conn1_WVALID;
  assign M11_AXI_araddr[31:0] = Conn2_ARADDR;
  assign M11_AXI_arvalid = Conn2_ARVALID;
  assign M11_AXI_awaddr[31:0] = Conn2_AWADDR;
  assign M11_AXI_awvalid = Conn2_AWVALID;
  assign M11_AXI_bready = Conn2_BREADY;
  assign M11_AXI_rready = Conn2_RREADY;
  assign M11_AXI_wdata[31:0] = Conn2_WDATA;
  assign M11_AXI_wstrb[3:0] = Conn2_WSTRB;
  assign M11_AXI_wvalid = Conn2_WVALID;
  assign M12_AXI_araddr[31:0] = Conn3_ARADDR;
  assign M12_AXI_arvalid = Conn3_ARVALID;
  assign M12_AXI_awaddr[31:0] = Conn3_AWADDR;
  assign M12_AXI_awvalid = Conn3_AWVALID;
  assign M12_AXI_bready = Conn3_BREADY;
  assign M12_AXI_rready = Conn3_RREADY;
  assign M12_AXI_wdata[31:0] = Conn3_WDATA;
  assign M12_AXI_wstrb[3:0] = Conn3_WSTRB;
  assign M12_AXI_wvalid = Conn3_WVALID;
  assign M13_AXI_araddr[31:0] = Conn4_ARADDR;
  assign M13_AXI_arvalid = Conn4_ARVALID;
  assign M13_AXI_awaddr[31:0] = Conn4_AWADDR;
  assign M13_AXI_awvalid = Conn4_AWVALID;
  assign M13_AXI_bready = Conn4_BREADY;
  assign M13_AXI_rready = Conn4_RREADY;
  assign M13_AXI_wdata[31:0] = Conn4_WDATA;
  assign M13_AXI_wstrb[3:0] = Conn4_WSTRB;
  assign M13_AXI_wvalid = Conn4_WVALID;
  assign M14_AXI_araddr[31:0] = Conn5_ARADDR;
  assign M14_AXI_arburst[1:0] = Conn5_ARBURST;
  assign M14_AXI_arcache[3:0] = Conn5_ARCACHE;
  assign M14_AXI_arid[5:0] = Conn5_ARID;
  assign M14_AXI_arlen[7:0] = Conn5_ARLEN;
  assign M14_AXI_arlock = Conn5_ARLOCK;
  assign M14_AXI_arprot[2:0] = Conn5_ARPROT;
  assign M14_AXI_arqos[3:0] = Conn5_ARQOS;
  assign M14_AXI_arsize[2:0] = Conn5_ARSIZE;
  assign M14_AXI_arvalid = Conn5_ARVALID;
  assign M14_AXI_awaddr[31:0] = Conn5_AWADDR;
  assign M14_AXI_awburst[1:0] = Conn5_AWBURST;
  assign M14_AXI_awcache[3:0] = Conn5_AWCACHE;
  assign M14_AXI_awid[5:0] = Conn5_AWID;
  assign M14_AXI_awlen[7:0] = Conn5_AWLEN;
  assign M14_AXI_awlock = Conn5_AWLOCK;
  assign M14_AXI_awprot[2:0] = Conn5_AWPROT;
  assign M14_AXI_awqos[3:0] = Conn5_AWQOS;
  assign M14_AXI_awsize[2:0] = Conn5_AWSIZE;
  assign M14_AXI_awvalid = Conn5_AWVALID;
  assign M14_AXI_bready = Conn5_BREADY;
  assign M14_AXI_rready = Conn5_RREADY;
  assign M14_AXI_wdata[31:0] = Conn5_WDATA;
  assign M14_AXI_wlast = Conn5_WLAST;
  assign M14_AXI_wstrb[3:0] = Conn5_WSTRB;
  assign M14_AXI_wvalid = Conn5_WVALID;
  assign M15_AXI_araddr[31:0] = Conn6_ARADDR;
  assign M15_AXI_arburst[1:0] = Conn6_ARBURST;
  assign M15_AXI_arcache[3:0] = Conn6_ARCACHE;
  assign M15_AXI_arid[5:0] = Conn6_ARID;
  assign M15_AXI_arlen[7:0] = Conn6_ARLEN;
  assign M15_AXI_arlock = Conn6_ARLOCK;
  assign M15_AXI_arprot[2:0] = Conn6_ARPROT;
  assign M15_AXI_arqos[3:0] = Conn6_ARQOS;
  assign M15_AXI_arsize[2:0] = Conn6_ARSIZE;
  assign M15_AXI_arvalid = Conn6_ARVALID;
  assign M15_AXI_awaddr[31:0] = Conn6_AWADDR;
  assign M15_AXI_awburst[1:0] = Conn6_AWBURST;
  assign M15_AXI_awcache[3:0] = Conn6_AWCACHE;
  assign M15_AXI_awid[5:0] = Conn6_AWID;
  assign M15_AXI_awlen[7:0] = Conn6_AWLEN;
  assign M15_AXI_awlock = Conn6_AWLOCK;
  assign M15_AXI_awprot[2:0] = Conn6_AWPROT;
  assign M15_AXI_awqos[3:0] = Conn6_AWQOS;
  assign M15_AXI_awsize[2:0] = Conn6_AWSIZE;
  assign M15_AXI_awvalid = Conn6_AWVALID;
  assign M15_AXI_bready = Conn6_BREADY;
  assign M15_AXI_rready = Conn6_RREADY;
  assign M15_AXI_wdata[31:0] = Conn6_WDATA;
  assign M15_AXI_wlast = Conn6_WLAST;
  assign M15_AXI_wstrb[3:0] = Conn6_WSTRB;
  assign M15_AXI_wvalid = Conn6_WVALID;
  assign M16_AXI_araddr[31:0] = ps7_0_axi_periph_M16_AXI_ARADDR;
  assign M16_AXI_arvalid = ps7_0_axi_periph_M16_AXI_ARVALID;
  assign M16_AXI_awaddr[31:0] = ps7_0_axi_periph_M16_AXI_AWADDR;
  assign M16_AXI_awvalid = ps7_0_axi_periph_M16_AXI_AWVALID;
  assign M16_AXI_bready = ps7_0_axi_periph_M16_AXI_BREADY;
  assign M16_AXI_rready = ps7_0_axi_periph_M16_AXI_RREADY;
  assign M16_AXI_wdata[31:0] = ps7_0_axi_periph_M16_AXI_WDATA;
  assign M16_AXI_wstrb[3:0] = ps7_0_axi_periph_M16_AXI_WSTRB;
  assign M16_AXI_wvalid = ps7_0_axi_periph_M16_AXI_WVALID;
  assign M17_AXI_araddr[31:0] = ps7_0_axi_periph_M17_AXI_ARADDR;
  assign M17_AXI_arvalid = ps7_0_axi_periph_M17_AXI_ARVALID;
  assign M17_AXI_awaddr[31:0] = ps7_0_axi_periph_M17_AXI_AWADDR;
  assign M17_AXI_awvalid = ps7_0_axi_periph_M17_AXI_AWVALID;
  assign M17_AXI_bready = ps7_0_axi_periph_M17_AXI_BREADY;
  assign M17_AXI_rready = ps7_0_axi_periph_M17_AXI_RREADY;
  assign M17_AXI_wdata[31:0] = ps7_0_axi_periph_M17_AXI_WDATA;
  assign M17_AXI_wstrb[3:0] = ps7_0_axi_periph_M17_AXI_WSTRB;
  assign M17_AXI_wvalid = ps7_0_axi_periph_M17_AXI_WVALID;
  assign M18_AXI_araddr[31:0] = Conn7_ARADDR;
  assign M18_AXI_arburst[1:0] = Conn7_ARBURST;
  assign M18_AXI_arcache[3:0] = Conn7_ARCACHE;
  assign M18_AXI_arid[5:0] = Conn7_ARID;
  assign M18_AXI_arlen[7:0] = Conn7_ARLEN;
  assign M18_AXI_arlock = Conn7_ARLOCK;
  assign M18_AXI_arprot[2:0] = Conn7_ARPROT;
  assign M18_AXI_arsize[2:0] = Conn7_ARSIZE;
  assign M18_AXI_arvalid = Conn7_ARVALID;
  assign M18_AXI_awaddr[31:0] = Conn7_AWADDR;
  assign M18_AXI_awburst[1:0] = Conn7_AWBURST;
  assign M18_AXI_awcache[3:0] = Conn7_AWCACHE;
  assign M18_AXI_awid[5:0] = Conn7_AWID;
  assign M18_AXI_awlen[7:0] = Conn7_AWLEN;
  assign M18_AXI_awlock = Conn7_AWLOCK;
  assign M18_AXI_awprot[2:0] = Conn7_AWPROT;
  assign M18_AXI_awsize[2:0] = Conn7_AWSIZE;
  assign M18_AXI_awvalid = Conn7_AWVALID;
  assign M18_AXI_bready = Conn7_BREADY;
  assign M18_AXI_rready = Conn7_RREADY;
  assign M18_AXI_wdata[31:0] = Conn7_WDATA;
  assign M18_AXI_wlast = Conn7_WLAST;
  assign M18_AXI_wstrb[3:0] = Conn7_WSTRB;
  assign M18_AXI_wvalid = Conn7_WVALID;
  assign S00_ARESETN[0] = proc_sys_reset_0_peripheral_aresetn;
  assign S_AXI2_1_ARREADY = M05_AXI_arready[0];
  assign S_AXI2_1_AWREADY = M05_AXI_awready[0];
  assign S_AXI2_1_BID = M05_AXI_bid[5:0];
  assign S_AXI2_1_BRESP = M05_AXI_bresp[1:0];
  assign S_AXI2_1_BVALID = M05_AXI_bvalid[0];
  assign S_AXI2_1_RDATA = M05_AXI_rdata[31:0];
  assign S_AXI2_1_RID = M05_AXI_rid[5:0];
  assign S_AXI2_1_RLAST = M05_AXI_rlast[0];
  assign S_AXI2_1_RRESP = M05_AXI_rresp[1:0];
  assign S_AXI2_1_RVALID = M05_AXI_rvalid[0];
  assign S_AXI2_1_WREADY = M05_AXI_wready[0];
  assign S_AXI3_1_ARREADY = M06_AXI_arready;
  assign S_AXI3_1_AWREADY = M06_AXI_awready;
  assign S_AXI3_1_BRESP = M06_AXI_bresp[1:0];
  assign S_AXI3_1_BVALID = M06_AXI_bvalid;
  assign S_AXI3_1_RDATA = M06_AXI_rdata[31:0];
  assign S_AXI3_1_RRESP = M06_AXI_rresp[1:0];
  assign S_AXI3_1_RVALID = M06_AXI_rvalid;
  assign S_AXI3_1_WREADY = M06_AXI_wready;
  assign S_AXI4_1_ARREADY = M07_AXI_arready[0];
  assign S_AXI4_1_AWREADY = M07_AXI_awready[0];
  assign S_AXI4_1_BID = M07_AXI_bid[5:0];
  assign S_AXI4_1_BRESP = M07_AXI_bresp[1:0];
  assign S_AXI4_1_BVALID = M07_AXI_bvalid[0];
  assign S_AXI4_1_RDATA = M07_AXI_rdata[31:0];
  assign S_AXI4_1_RID = M07_AXI_rid[5:0];
  assign S_AXI4_1_RLAST = M07_AXI_rlast[0];
  assign S_AXI4_1_RRESP = M07_AXI_rresp[1:0];
  assign S_AXI4_1_RVALID = M07_AXI_rvalid[0];
  assign S_AXI4_1_WREADY = M07_AXI_wready[0];
  assign S_AXI5_1_ARREADY = M08_AXI_arready;
  assign S_AXI5_1_AWREADY = M08_AXI_awready;
  assign S_AXI5_1_BRESP = M08_AXI_bresp[1:0];
  assign S_AXI5_1_BVALID = M08_AXI_bvalid;
  assign S_AXI5_1_RDATA = M08_AXI_rdata[31:0];
  assign S_AXI5_1_RRESP = M08_AXI_rresp[1:0];
  assign S_AXI5_1_RVALID = M08_AXI_rvalid;
  assign S_AXI5_1_WREADY = M08_AXI_wready;
  assign S_AXI6_1_ARREADY = M09_AXI_arready;
  assign S_AXI6_1_AWREADY = M09_AXI_awready;
  assign S_AXI6_1_BRESP = M09_AXI_bresp[1:0];
  assign S_AXI6_1_BVALID = M09_AXI_bvalid;
  assign S_AXI6_1_RDATA = M09_AXI_rdata[31:0];
  assign S_AXI6_1_RRESP = M09_AXI_rresp[1:0];
  assign S_AXI6_1_RVALID = M09_AXI_rvalid;
  assign S_AXI6_1_WREADY = M09_AXI_wready;
  assign S_AXI_HP0_arready = axi_mem_intercon_M00_AXI_ARREADY;
  assign S_AXI_HP0_awready = axi_mem_intercon_M00_AXI_AWREADY;
  assign S_AXI_HP0_bid[5:0] = axi_mem_intercon_M00_AXI_BID;
  assign S_AXI_HP0_bresp[1:0] = axi_mem_intercon_M00_AXI_BRESP;
  assign S_AXI_HP0_bvalid = axi_mem_intercon_M00_AXI_BVALID;
  assign S_AXI_HP0_rdata[63:0] = axi_mem_intercon_M00_AXI_RDATA;
  assign S_AXI_HP0_rid[5:0] = axi_mem_intercon_M00_AXI_RID;
  assign S_AXI_HP0_rlast = axi_mem_intercon_M00_AXI_RLAST;
  assign S_AXI_HP0_rresp[1:0] = axi_mem_intercon_M00_AXI_RRESP;
  assign S_AXI_HP0_rvalid = axi_mem_intercon_M00_AXI_RVALID;
  assign S_AXI_HP0_wready = axi_mem_intercon_M00_AXI_WREADY;
  assign axi_ethernet_0_dma_mm2s_introut = In0[0];
  assign axi_ethernet_0_dma_s2mm_introut = In1[0];
  assign axi_ethernet_0_interrupt = In3[0];
  assign axi_ethernet_0_mac_irq = In2[0];
  assign axi_mem_intercon_M00_AXI_ARADDR = S_AXI_HP0_araddr[31:0];
  assign axi_mem_intercon_M00_AXI_ARBURST = S_AXI_HP0_arburst[1:0];
  assign axi_mem_intercon_M00_AXI_ARCACHE = S_AXI_HP0_arcache[3:0];
  assign axi_mem_intercon_M00_AXI_ARID = S_AXI_HP0_arid[1:0];
  assign axi_mem_intercon_M00_AXI_ARLEN = S_AXI_HP0_arlen[3:0];
  assign axi_mem_intercon_M00_AXI_ARLOCK = S_AXI_HP0_arlock[1:0];
  assign axi_mem_intercon_M00_AXI_ARPROT = S_AXI_HP0_arprot[2:0];
  assign axi_mem_intercon_M00_AXI_ARQOS = S_AXI_HP0_arqos[3:0];
  assign axi_mem_intercon_M00_AXI_ARSIZE = S_AXI_HP0_arsize[2:0];
  assign axi_mem_intercon_M00_AXI_ARVALID = S_AXI_HP0_arvalid;
  assign axi_mem_intercon_M00_AXI_AWADDR = S_AXI_HP0_awaddr[31:0];
  assign axi_mem_intercon_M00_AXI_AWBURST = S_AXI_HP0_awburst[1:0];
  assign axi_mem_intercon_M00_AXI_AWCACHE = S_AXI_HP0_awcache[3:0];
  assign axi_mem_intercon_M00_AXI_AWID = S_AXI_HP0_awid[1:0];
  assign axi_mem_intercon_M00_AXI_AWLEN = S_AXI_HP0_awlen[3:0];
  assign axi_mem_intercon_M00_AXI_AWLOCK = S_AXI_HP0_awlock[1:0];
  assign axi_mem_intercon_M00_AXI_AWPROT = S_AXI_HP0_awprot[2:0];
  assign axi_mem_intercon_M00_AXI_AWQOS = S_AXI_HP0_awqos[3:0];
  assign axi_mem_intercon_M00_AXI_AWSIZE = S_AXI_HP0_awsize[2:0];
  assign axi_mem_intercon_M00_AXI_AWVALID = S_AXI_HP0_awvalid;
  assign axi_mem_intercon_M00_AXI_BREADY = S_AXI_HP0_bready;
  assign axi_mem_intercon_M00_AXI_RREADY = S_AXI_HP0_rready;
  assign axi_mem_intercon_M00_AXI_WDATA = S_AXI_HP0_wdata[63:0];
  assign axi_mem_intercon_M00_AXI_WID = S_AXI_HP0_wid[1:0];
  assign axi_mem_intercon_M00_AXI_WLAST = S_AXI_HP0_wlast;
  assign axi_mem_intercon_M00_AXI_WSTRB = S_AXI_HP0_wstrb[7:0];
  assign axi_mem_intercon_M00_AXI_WVALID = S_AXI_HP0_wvalid;
  assign ext_reset_in = processing_system7_0_FCLK_RESET0_N;
  assign interconnect_aresetn[0] = ARESETN_1;
  assign ipmc_jtag_iic2intc_irpt = In5[0];
  assign ipmc_jtag_irq = In4[0];
  assign ipmc_jtag_irq1 = In6[0];
  assign ipmc_jtag_s0_o = I2C1_SDA_I;
  assign ipmc_jtag_s0_o1 = I2C1_SCL_I;
  assign peripheral_reset[0] = proc_sys_reset_0_peripheral_reset;
  assign ps7_0_axi_periph_M00_AXI_ARREADY = M00_AXI_arready;
  assign ps7_0_axi_periph_M00_AXI_AWREADY = M00_AXI_awready;
  assign ps7_0_axi_periph_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign ps7_0_axi_periph_M00_AXI_BVALID = M00_AXI_bvalid;
  assign ps7_0_axi_periph_M00_AXI_RDATA = M00_AXI_rdata[31:0];
  assign ps7_0_axi_periph_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign ps7_0_axi_periph_M00_AXI_RVALID = M00_AXI_rvalid;
  assign ps7_0_axi_periph_M00_AXI_WREADY = M00_AXI_wready;
  assign ps7_0_axi_periph_M01_AXI_ARREADY = M01_AXI_arready;
  assign ps7_0_axi_periph_M01_AXI_AWREADY = M01_AXI_awready;
  assign ps7_0_axi_periph_M01_AXI_BRESP = M01_AXI_bresp[1:0];
  assign ps7_0_axi_periph_M01_AXI_BVALID = M01_AXI_bvalid;
  assign ps7_0_axi_periph_M01_AXI_RDATA = M01_AXI_rdata[31:0];
  assign ps7_0_axi_periph_M01_AXI_RRESP = M01_AXI_rresp[1:0];
  assign ps7_0_axi_periph_M01_AXI_RVALID = M01_AXI_rvalid;
  assign ps7_0_axi_periph_M01_AXI_WREADY = M01_AXI_wready;
  assign ps7_0_axi_periph_M02_AXI_ARREADY = M02_AXI_arready;
  assign ps7_0_axi_periph_M02_AXI_AWREADY = M02_AXI_awready;
  assign ps7_0_axi_periph_M02_AXI_BRESP = M02_AXI_bresp[1:0];
  assign ps7_0_axi_periph_M02_AXI_BVALID = M02_AXI_bvalid;
  assign ps7_0_axi_periph_M02_AXI_RDATA = M02_AXI_rdata[31:0];
  assign ps7_0_axi_periph_M02_AXI_RRESP = M02_AXI_rresp[1:0];
  assign ps7_0_axi_periph_M02_AXI_RVALID = M02_AXI_rvalid;
  assign ps7_0_axi_periph_M02_AXI_WREADY = M02_AXI_wready;
  assign ps7_0_axi_periph_M16_AXI_ARREADY = M16_AXI_arready;
  assign ps7_0_axi_periph_M16_AXI_AWREADY = M16_AXI_awready;
  assign ps7_0_axi_periph_M16_AXI_BRESP = M16_AXI_bresp[1:0];
  assign ps7_0_axi_periph_M16_AXI_BVALID = M16_AXI_bvalid;
  assign ps7_0_axi_periph_M16_AXI_RDATA = M16_AXI_rdata[31:0];
  assign ps7_0_axi_periph_M16_AXI_RRESP = M16_AXI_rresp[1:0];
  assign ps7_0_axi_periph_M16_AXI_RVALID = M16_AXI_rvalid;
  assign ps7_0_axi_periph_M16_AXI_WREADY = M16_AXI_wready;
  assign ps7_0_axi_periph_M17_AXI_ARREADY = M17_AXI_arready;
  assign ps7_0_axi_periph_M17_AXI_AWREADY = M17_AXI_awready;
  assign ps7_0_axi_periph_M17_AXI_BRESP = M17_AXI_bresp[1:0];
  assign ps7_0_axi_periph_M17_AXI_BVALID = M17_AXI_bvalid;
  assign ps7_0_axi_periph_M17_AXI_RDATA = M17_AXI_rdata[31:0];
  assign ps7_0_axi_periph_M17_AXI_RRESP = M17_AXI_rresp[1:0];
  assign ps7_0_axi_periph_M17_AXI_RVALID = M17_AXI_rvalid;
  assign ps7_0_axi_periph_M17_AXI_WREADY = M17_AXI_wready;
  assign s_axi1_1_ARREADY = M04_AXI_arready;
  assign s_axi1_1_AWREADY = M04_AXI_awready;
  assign s_axi1_1_BRESP = M04_AXI_bresp[1:0];
  assign s_axi1_1_BVALID = M04_AXI_bvalid;
  assign s_axi1_1_RDATA = M04_AXI_rdata[31:0];
  assign s_axi1_1_RRESP = M04_AXI_rresp[1:0];
  assign s_axi1_1_RVALID = M04_AXI_rvalid;
  assign s_axi1_1_WREADY = M04_AXI_wready;
  assign s_axi_1_ARREADY = M03_AXI_arready;
  assign s_axi_1_AWREADY = M03_AXI_awready;
  assign s_axi_1_BRESP = M03_AXI_bresp[1:0];
  assign s_axi_1_BVALID = M03_AXI_bvalid;
  assign s_axi_1_RDATA = M03_AXI_rdata[31:0];
  assign s_axi_1_RRESP = M03_AXI_rresp[1:0];
  assign s_axi_1_RVALID = M03_AXI_rvalid;
  assign s_axi_1_WREADY = M03_AXI_wready;
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(Net));
  (* BMM_INFO_PROCESSOR = "arm > design_1 bram_loopback/axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(Net),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .I2C1_SCL_I(ipmc_jtag_s0_o1),
        .I2C1_SCL_O(s0_i1_1),
        .I2C1_SCL_T(s0_t1_1),
        .I2C1_SDA_I(ipmc_jtag_s0_o),
        .I2C1_SDA_O(s0_i_1),
        .I2C1_SDA_T(s0_t_1),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(Net),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_CDN(xlconstant_0_dout),
        .SDIO0_WP(xlconstant_0_dout),
        .SDIO1_CDN(xlconstant_0_dout),
        .SDIO1_WP(xlconstant_0_dout),
        .S_AXI_HP0_ACLK(Net),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_mem_intercon_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_mem_intercon_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_ps7_0_axi_periph_0 ps7_0_axi_periph
       (.ACLK(Net),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_ACLK(Net),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(Net),
        .M01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M01_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(Net),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wvalid(ps7_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(Net),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(s_axi_1_ARADDR),
        .M03_AXI_arprot(s_axi_1_ARPROT),
        .M03_AXI_arready(s_axi_1_ARREADY),
        .M03_AXI_arvalid(s_axi_1_ARVALID),
        .M03_AXI_awaddr(s_axi_1_AWADDR),
        .M03_AXI_awprot(s_axi_1_AWPROT),
        .M03_AXI_awready(s_axi_1_AWREADY),
        .M03_AXI_awvalid(s_axi_1_AWVALID),
        .M03_AXI_bready(s_axi_1_BREADY),
        .M03_AXI_bresp(s_axi_1_BRESP),
        .M03_AXI_bvalid(s_axi_1_BVALID),
        .M03_AXI_rdata(s_axi_1_RDATA),
        .M03_AXI_rready(s_axi_1_RREADY),
        .M03_AXI_rresp(s_axi_1_RRESP),
        .M03_AXI_rvalid(s_axi_1_RVALID),
        .M03_AXI_wdata(s_axi_1_WDATA),
        .M03_AXI_wready(s_axi_1_WREADY),
        .M03_AXI_wstrb(s_axi_1_WSTRB),
        .M03_AXI_wvalid(s_axi_1_WVALID),
        .M04_ACLK(Net),
        .M04_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M04_AXI_araddr(s_axi1_1_ARADDR),
        .M04_AXI_arprot(s_axi1_1_ARPROT),
        .M04_AXI_arready(s_axi1_1_ARREADY),
        .M04_AXI_arvalid(s_axi1_1_ARVALID),
        .M04_AXI_awaddr(s_axi1_1_AWADDR),
        .M04_AXI_awprot(s_axi1_1_AWPROT),
        .M04_AXI_awready(s_axi1_1_AWREADY),
        .M04_AXI_awvalid(s_axi1_1_AWVALID),
        .M04_AXI_bready(s_axi1_1_BREADY),
        .M04_AXI_bresp(s_axi1_1_BRESP),
        .M04_AXI_bvalid(s_axi1_1_BVALID),
        .M04_AXI_rdata(s_axi1_1_RDATA),
        .M04_AXI_rready(s_axi1_1_RREADY),
        .M04_AXI_rresp(s_axi1_1_RRESP),
        .M04_AXI_rvalid(s_axi1_1_RVALID),
        .M04_AXI_wdata(s_axi1_1_WDATA),
        .M04_AXI_wready(s_axi1_1_WREADY),
        .M04_AXI_wstrb(s_axi1_1_WSTRB),
        .M04_AXI_wvalid(s_axi1_1_WVALID),
        .M05_ACLK(Net),
        .M05_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M05_AXI_araddr(S_AXI2_1_ARADDR),
        .M05_AXI_arburst(S_AXI2_1_ARBURST),
        .M05_AXI_arcache(S_AXI2_1_ARCACHE),
        .M05_AXI_arid(S_AXI2_1_ARID),
        .M05_AXI_arlen(S_AXI2_1_ARLEN),
        .M05_AXI_arlock(S_AXI2_1_ARLOCK),
        .M05_AXI_arprot(S_AXI2_1_ARPROT),
        .M05_AXI_arready(S_AXI2_1_ARREADY),
        .M05_AXI_arsize(S_AXI2_1_ARSIZE),
        .M05_AXI_arvalid(S_AXI2_1_ARVALID),
        .M05_AXI_awaddr(S_AXI2_1_AWADDR),
        .M05_AXI_awburst(S_AXI2_1_AWBURST),
        .M05_AXI_awcache(S_AXI2_1_AWCACHE),
        .M05_AXI_awid(S_AXI2_1_AWID),
        .M05_AXI_awlen(S_AXI2_1_AWLEN),
        .M05_AXI_awlock(S_AXI2_1_AWLOCK),
        .M05_AXI_awprot(S_AXI2_1_AWPROT),
        .M05_AXI_awready(S_AXI2_1_AWREADY),
        .M05_AXI_awsize(S_AXI2_1_AWSIZE),
        .M05_AXI_awvalid(S_AXI2_1_AWVALID),
        .M05_AXI_bid(S_AXI2_1_BID),
        .M05_AXI_bready(S_AXI2_1_BREADY),
        .M05_AXI_bresp(S_AXI2_1_BRESP),
        .M05_AXI_bvalid(S_AXI2_1_BVALID),
        .M05_AXI_rdata(S_AXI2_1_RDATA),
        .M05_AXI_rid(S_AXI2_1_RID),
        .M05_AXI_rlast(S_AXI2_1_RLAST),
        .M05_AXI_rready(S_AXI2_1_RREADY),
        .M05_AXI_rresp(S_AXI2_1_RRESP),
        .M05_AXI_rvalid(S_AXI2_1_RVALID),
        .M05_AXI_wdata(S_AXI2_1_WDATA),
        .M05_AXI_wlast(S_AXI2_1_WLAST),
        .M05_AXI_wready(S_AXI2_1_WREADY),
        .M05_AXI_wstrb(S_AXI2_1_WSTRB),
        .M05_AXI_wvalid(S_AXI2_1_WVALID),
        .M06_ACLK(Net),
        .M06_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M06_AXI_araddr(S_AXI3_1_ARADDR),
        .M06_AXI_arready(S_AXI3_1_ARREADY),
        .M06_AXI_arvalid(S_AXI3_1_ARVALID),
        .M06_AXI_awaddr(S_AXI3_1_AWADDR),
        .M06_AXI_awready(S_AXI3_1_AWREADY),
        .M06_AXI_awvalid(S_AXI3_1_AWVALID),
        .M06_AXI_bready(S_AXI3_1_BREADY),
        .M06_AXI_bresp(S_AXI3_1_BRESP),
        .M06_AXI_bvalid(S_AXI3_1_BVALID),
        .M06_AXI_rdata(S_AXI3_1_RDATA),
        .M06_AXI_rready(S_AXI3_1_RREADY),
        .M06_AXI_rresp(S_AXI3_1_RRESP),
        .M06_AXI_rvalid(S_AXI3_1_RVALID),
        .M06_AXI_wdata(S_AXI3_1_WDATA),
        .M06_AXI_wready(S_AXI3_1_WREADY),
        .M06_AXI_wstrb(S_AXI3_1_WSTRB),
        .M06_AXI_wvalid(S_AXI3_1_WVALID),
        .M07_ACLK(Net),
        .M07_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M07_AXI_araddr(S_AXI4_1_ARADDR),
        .M07_AXI_arburst(S_AXI4_1_ARBURST),
        .M07_AXI_arcache(S_AXI4_1_ARCACHE),
        .M07_AXI_arid(S_AXI4_1_ARID),
        .M07_AXI_arlen(S_AXI4_1_ARLEN),
        .M07_AXI_arlock(S_AXI4_1_ARLOCK),
        .M07_AXI_arprot(S_AXI4_1_ARPROT),
        .M07_AXI_arready(S_AXI4_1_ARREADY),
        .M07_AXI_arsize(S_AXI4_1_ARSIZE),
        .M07_AXI_arvalid(S_AXI4_1_ARVALID),
        .M07_AXI_awaddr(S_AXI4_1_AWADDR),
        .M07_AXI_awburst(S_AXI4_1_AWBURST),
        .M07_AXI_awcache(S_AXI4_1_AWCACHE),
        .M07_AXI_awid(S_AXI4_1_AWID),
        .M07_AXI_awlen(S_AXI4_1_AWLEN),
        .M07_AXI_awlock(S_AXI4_1_AWLOCK),
        .M07_AXI_awprot(S_AXI4_1_AWPROT),
        .M07_AXI_awready(S_AXI4_1_AWREADY),
        .M07_AXI_awsize(S_AXI4_1_AWSIZE),
        .M07_AXI_awvalid(S_AXI4_1_AWVALID),
        .M07_AXI_bid(S_AXI4_1_BID),
        .M07_AXI_bready(S_AXI4_1_BREADY),
        .M07_AXI_bresp(S_AXI4_1_BRESP),
        .M07_AXI_bvalid(S_AXI4_1_BVALID),
        .M07_AXI_rdata(S_AXI4_1_RDATA),
        .M07_AXI_rid(S_AXI4_1_RID),
        .M07_AXI_rlast(S_AXI4_1_RLAST),
        .M07_AXI_rready(S_AXI4_1_RREADY),
        .M07_AXI_rresp(S_AXI4_1_RRESP),
        .M07_AXI_rvalid(S_AXI4_1_RVALID),
        .M07_AXI_wdata(S_AXI4_1_WDATA),
        .M07_AXI_wlast(S_AXI4_1_WLAST),
        .M07_AXI_wready(S_AXI4_1_WREADY),
        .M07_AXI_wstrb(S_AXI4_1_WSTRB),
        .M07_AXI_wvalid(S_AXI4_1_WVALID),
        .M08_ACLK(Net),
        .M08_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M08_AXI_araddr(S_AXI5_1_ARADDR),
        .M08_AXI_arready(S_AXI5_1_ARREADY),
        .M08_AXI_arvalid(S_AXI5_1_ARVALID),
        .M08_AXI_awaddr(S_AXI5_1_AWADDR),
        .M08_AXI_awready(S_AXI5_1_AWREADY),
        .M08_AXI_awvalid(S_AXI5_1_AWVALID),
        .M08_AXI_bready(S_AXI5_1_BREADY),
        .M08_AXI_bresp(S_AXI5_1_BRESP),
        .M08_AXI_bvalid(S_AXI5_1_BVALID),
        .M08_AXI_rdata(S_AXI5_1_RDATA),
        .M08_AXI_rready(S_AXI5_1_RREADY),
        .M08_AXI_rresp(S_AXI5_1_RRESP),
        .M08_AXI_rvalid(S_AXI5_1_RVALID),
        .M08_AXI_wdata(S_AXI5_1_WDATA),
        .M08_AXI_wready(S_AXI5_1_WREADY),
        .M08_AXI_wstrb(S_AXI5_1_WSTRB),
        .M08_AXI_wvalid(S_AXI5_1_WVALID),
        .M09_ACLK(Net),
        .M09_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M09_AXI_araddr(S_AXI6_1_ARADDR),
        .M09_AXI_arready(S_AXI6_1_ARREADY),
        .M09_AXI_arvalid(S_AXI6_1_ARVALID),
        .M09_AXI_awaddr(S_AXI6_1_AWADDR),
        .M09_AXI_awready(S_AXI6_1_AWREADY),
        .M09_AXI_awvalid(S_AXI6_1_AWVALID),
        .M09_AXI_bready(S_AXI6_1_BREADY),
        .M09_AXI_bresp(S_AXI6_1_BRESP),
        .M09_AXI_bvalid(S_AXI6_1_BVALID),
        .M09_AXI_rdata(S_AXI6_1_RDATA),
        .M09_AXI_rready(S_AXI6_1_RREADY),
        .M09_AXI_rresp(S_AXI6_1_RRESP),
        .M09_AXI_rvalid(S_AXI6_1_RVALID),
        .M09_AXI_wdata(S_AXI6_1_WDATA),
        .M09_AXI_wready(S_AXI6_1_WREADY),
        .M09_AXI_wstrb(S_AXI6_1_WSTRB),
        .M09_AXI_wvalid(S_AXI6_1_WVALID),
        .M10_ACLK(Net),
        .M10_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M10_AXI_araddr(Conn1_ARADDR),
        .M10_AXI_arready(Conn1_ARREADY),
        .M10_AXI_arvalid(Conn1_ARVALID),
        .M10_AXI_awaddr(Conn1_AWADDR),
        .M10_AXI_awready(Conn1_AWREADY),
        .M10_AXI_awvalid(Conn1_AWVALID),
        .M10_AXI_bready(Conn1_BREADY),
        .M10_AXI_bresp(Conn1_BRESP),
        .M10_AXI_bvalid(Conn1_BVALID),
        .M10_AXI_rdata(Conn1_RDATA),
        .M10_AXI_rready(Conn1_RREADY),
        .M10_AXI_rresp(Conn1_RRESP),
        .M10_AXI_rvalid(Conn1_RVALID),
        .M10_AXI_wdata(Conn1_WDATA),
        .M10_AXI_wready(Conn1_WREADY),
        .M10_AXI_wstrb(Conn1_WSTRB),
        .M10_AXI_wvalid(Conn1_WVALID),
        .M11_ACLK(Net),
        .M11_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M11_AXI_araddr(Conn2_ARADDR),
        .M11_AXI_arready(Conn2_ARREADY),
        .M11_AXI_arvalid(Conn2_ARVALID),
        .M11_AXI_awaddr(Conn2_AWADDR),
        .M11_AXI_awready(Conn2_AWREADY),
        .M11_AXI_awvalid(Conn2_AWVALID),
        .M11_AXI_bready(Conn2_BREADY),
        .M11_AXI_bresp(Conn2_BRESP),
        .M11_AXI_bvalid(Conn2_BVALID),
        .M11_AXI_rdata(Conn2_RDATA),
        .M11_AXI_rready(Conn2_RREADY),
        .M11_AXI_rresp(Conn2_RRESP),
        .M11_AXI_rvalid(Conn2_RVALID),
        .M11_AXI_wdata(Conn2_WDATA),
        .M11_AXI_wready(Conn2_WREADY),
        .M11_AXI_wstrb(Conn2_WSTRB),
        .M11_AXI_wvalid(Conn2_WVALID),
        .M12_ACLK(Net),
        .M12_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M12_AXI_araddr(Conn3_ARADDR),
        .M12_AXI_arready(Conn3_ARREADY),
        .M12_AXI_arvalid(Conn3_ARVALID),
        .M12_AXI_awaddr(Conn3_AWADDR),
        .M12_AXI_awready(Conn3_AWREADY),
        .M12_AXI_awvalid(Conn3_AWVALID),
        .M12_AXI_bready(Conn3_BREADY),
        .M12_AXI_bresp(Conn3_BRESP),
        .M12_AXI_bvalid(Conn3_BVALID),
        .M12_AXI_rdata(Conn3_RDATA),
        .M12_AXI_rready(Conn3_RREADY),
        .M12_AXI_rresp(Conn3_RRESP),
        .M12_AXI_rvalid(Conn3_RVALID),
        .M12_AXI_wdata(Conn3_WDATA),
        .M12_AXI_wready(Conn3_WREADY),
        .M12_AXI_wstrb(Conn3_WSTRB),
        .M12_AXI_wvalid(Conn3_WVALID),
        .M13_ACLK(Net),
        .M13_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M13_AXI_araddr(Conn4_ARADDR),
        .M13_AXI_arready(Conn4_ARREADY),
        .M13_AXI_arvalid(Conn4_ARVALID),
        .M13_AXI_awaddr(Conn4_AWADDR),
        .M13_AXI_awready(Conn4_AWREADY),
        .M13_AXI_awvalid(Conn4_AWVALID),
        .M13_AXI_bready(Conn4_BREADY),
        .M13_AXI_bresp(Conn4_BRESP),
        .M13_AXI_bvalid(Conn4_BVALID),
        .M13_AXI_rdata(Conn4_RDATA),
        .M13_AXI_rready(Conn4_RREADY),
        .M13_AXI_rresp(Conn4_RRESP),
        .M13_AXI_rvalid(Conn4_RVALID),
        .M13_AXI_wdata(Conn4_WDATA),
        .M13_AXI_wready(Conn4_WREADY),
        .M13_AXI_wstrb(Conn4_WSTRB),
        .M13_AXI_wvalid(Conn4_WVALID),
        .M14_ACLK(Net),
        .M14_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M14_AXI_araddr(Conn5_ARADDR),
        .M14_AXI_arburst(Conn5_ARBURST),
        .M14_AXI_arcache(Conn5_ARCACHE),
        .M14_AXI_arid(Conn5_ARID),
        .M14_AXI_arlen(Conn5_ARLEN),
        .M14_AXI_arlock(Conn5_ARLOCK),
        .M14_AXI_arprot(Conn5_ARPROT),
        .M14_AXI_arqos(Conn5_ARQOS),
        .M14_AXI_arready(Conn5_ARREADY),
        .M14_AXI_arsize(Conn5_ARSIZE),
        .M14_AXI_arvalid(Conn5_ARVALID),
        .M14_AXI_awaddr(Conn5_AWADDR),
        .M14_AXI_awburst(Conn5_AWBURST),
        .M14_AXI_awcache(Conn5_AWCACHE),
        .M14_AXI_awid(Conn5_AWID),
        .M14_AXI_awlen(Conn5_AWLEN),
        .M14_AXI_awlock(Conn5_AWLOCK),
        .M14_AXI_awprot(Conn5_AWPROT),
        .M14_AXI_awqos(Conn5_AWQOS),
        .M14_AXI_awready(Conn5_AWREADY),
        .M14_AXI_awsize(Conn5_AWSIZE),
        .M14_AXI_awvalid(Conn5_AWVALID),
        .M14_AXI_bid(Conn5_BID),
        .M14_AXI_bready(Conn5_BREADY),
        .M14_AXI_bresp(Conn5_BRESP),
        .M14_AXI_bvalid(Conn5_BVALID),
        .M14_AXI_rdata(Conn5_RDATA),
        .M14_AXI_rid(Conn5_RID),
        .M14_AXI_rlast(Conn5_RLAST),
        .M14_AXI_rready(Conn5_RREADY),
        .M14_AXI_rresp(Conn5_RRESP),
        .M14_AXI_rvalid(Conn5_RVALID),
        .M14_AXI_wdata(Conn5_WDATA),
        .M14_AXI_wlast(Conn5_WLAST),
        .M14_AXI_wready(Conn5_WREADY),
        .M14_AXI_wstrb(Conn5_WSTRB),
        .M14_AXI_wvalid(Conn5_WVALID),
        .M15_ACLK(Net),
        .M15_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M15_AXI_araddr(Conn6_ARADDR),
        .M15_AXI_arburst(Conn6_ARBURST),
        .M15_AXI_arcache(Conn6_ARCACHE),
        .M15_AXI_arid(Conn6_ARID),
        .M15_AXI_arlen(Conn6_ARLEN),
        .M15_AXI_arlock(Conn6_ARLOCK),
        .M15_AXI_arprot(Conn6_ARPROT),
        .M15_AXI_arqos(Conn6_ARQOS),
        .M15_AXI_arready(Conn6_ARREADY),
        .M15_AXI_arsize(Conn6_ARSIZE),
        .M15_AXI_arvalid(Conn6_ARVALID),
        .M15_AXI_awaddr(Conn6_AWADDR),
        .M15_AXI_awburst(Conn6_AWBURST),
        .M15_AXI_awcache(Conn6_AWCACHE),
        .M15_AXI_awid(Conn6_AWID),
        .M15_AXI_awlen(Conn6_AWLEN),
        .M15_AXI_awlock(Conn6_AWLOCK),
        .M15_AXI_awprot(Conn6_AWPROT),
        .M15_AXI_awqos(Conn6_AWQOS),
        .M15_AXI_awready(Conn6_AWREADY),
        .M15_AXI_awsize(Conn6_AWSIZE),
        .M15_AXI_awvalid(Conn6_AWVALID),
        .M15_AXI_bid(Conn6_BID),
        .M15_AXI_bready(Conn6_BREADY),
        .M15_AXI_bresp(Conn6_BRESP),
        .M15_AXI_bvalid(Conn6_BVALID),
        .M15_AXI_rdata(Conn6_RDATA),
        .M15_AXI_rid(Conn6_RID),
        .M15_AXI_rlast(Conn6_RLAST),
        .M15_AXI_rready(Conn6_RREADY),
        .M15_AXI_rresp(Conn6_RRESP),
        .M15_AXI_rvalid(Conn6_RVALID),
        .M15_AXI_wdata(Conn6_WDATA),
        .M15_AXI_wlast(Conn6_WLAST),
        .M15_AXI_wready(Conn6_WREADY),
        .M15_AXI_wstrb(Conn6_WSTRB),
        .M15_AXI_wvalid(Conn6_WVALID),
        .M16_ACLK(Net),
        .M16_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M16_AXI_araddr(ps7_0_axi_periph_M16_AXI_ARADDR),
        .M16_AXI_arready(ps7_0_axi_periph_M16_AXI_ARREADY),
        .M16_AXI_arvalid(ps7_0_axi_periph_M16_AXI_ARVALID),
        .M16_AXI_awaddr(ps7_0_axi_periph_M16_AXI_AWADDR),
        .M16_AXI_awready(ps7_0_axi_periph_M16_AXI_AWREADY),
        .M16_AXI_awvalid(ps7_0_axi_periph_M16_AXI_AWVALID),
        .M16_AXI_bready(ps7_0_axi_periph_M16_AXI_BREADY),
        .M16_AXI_bresp(ps7_0_axi_periph_M16_AXI_BRESP),
        .M16_AXI_bvalid(ps7_0_axi_periph_M16_AXI_BVALID),
        .M16_AXI_rdata(ps7_0_axi_periph_M16_AXI_RDATA),
        .M16_AXI_rready(ps7_0_axi_periph_M16_AXI_RREADY),
        .M16_AXI_rresp(ps7_0_axi_periph_M16_AXI_RRESP),
        .M16_AXI_rvalid(ps7_0_axi_periph_M16_AXI_RVALID),
        .M16_AXI_wdata(ps7_0_axi_periph_M16_AXI_WDATA),
        .M16_AXI_wready(ps7_0_axi_periph_M16_AXI_WREADY),
        .M16_AXI_wstrb(ps7_0_axi_periph_M16_AXI_WSTRB),
        .M16_AXI_wvalid(ps7_0_axi_periph_M16_AXI_WVALID),
        .M17_ACLK(Net),
        .M17_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M17_AXI_araddr(ps7_0_axi_periph_M17_AXI_ARADDR),
        .M17_AXI_arready(ps7_0_axi_periph_M17_AXI_ARREADY),
        .M17_AXI_arvalid(ps7_0_axi_periph_M17_AXI_ARVALID),
        .M17_AXI_awaddr(ps7_0_axi_periph_M17_AXI_AWADDR),
        .M17_AXI_awready(ps7_0_axi_periph_M17_AXI_AWREADY),
        .M17_AXI_awvalid(ps7_0_axi_periph_M17_AXI_AWVALID),
        .M17_AXI_bready(ps7_0_axi_periph_M17_AXI_BREADY),
        .M17_AXI_bresp(ps7_0_axi_periph_M17_AXI_BRESP),
        .M17_AXI_bvalid(ps7_0_axi_periph_M17_AXI_BVALID),
        .M17_AXI_rdata(ps7_0_axi_periph_M17_AXI_RDATA),
        .M17_AXI_rready(ps7_0_axi_periph_M17_AXI_RREADY),
        .M17_AXI_rresp(ps7_0_axi_periph_M17_AXI_RRESP),
        .M17_AXI_rvalid(ps7_0_axi_periph_M17_AXI_RVALID),
        .M17_AXI_wdata(ps7_0_axi_periph_M17_AXI_WDATA),
        .M17_AXI_wready(ps7_0_axi_periph_M17_AXI_WREADY),
        .M17_AXI_wstrb(ps7_0_axi_periph_M17_AXI_WSTRB),
        .M17_AXI_wvalid(ps7_0_axi_periph_M17_AXI_WVALID),
        .M18_ACLK(Net),
        .M18_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M18_AXI_araddr(Conn7_ARADDR),
        .M18_AXI_arburst(Conn7_ARBURST),
        .M18_AXI_arcache(Conn7_ARCACHE),
        .M18_AXI_arid(Conn7_ARID),
        .M18_AXI_arlen(Conn7_ARLEN),
        .M18_AXI_arlock(Conn7_ARLOCK),
        .M18_AXI_arprot(Conn7_ARPROT),
        .M18_AXI_arready(Conn7_ARREADY),
        .M18_AXI_arsize(Conn7_ARSIZE),
        .M18_AXI_arvalid(Conn7_ARVALID),
        .M18_AXI_awaddr(Conn7_AWADDR),
        .M18_AXI_awburst(Conn7_AWBURST),
        .M18_AXI_awcache(Conn7_AWCACHE),
        .M18_AXI_awid(Conn7_AWID),
        .M18_AXI_awlen(Conn7_AWLEN),
        .M18_AXI_awlock(Conn7_AWLOCK),
        .M18_AXI_awprot(Conn7_AWPROT),
        .M18_AXI_awready(Conn7_AWREADY),
        .M18_AXI_awsize(Conn7_AWSIZE),
        .M18_AXI_awvalid(Conn7_AWVALID),
        .M18_AXI_bid(Conn7_BID),
        .M18_AXI_bready(Conn7_BREADY),
        .M18_AXI_bresp(Conn7_BRESP),
        .M18_AXI_bvalid(Conn7_BVALID),
        .M18_AXI_rdata(Conn7_RDATA),
        .M18_AXI_rid(Conn7_RID),
        .M18_AXI_rlast(Conn7_RLAST),
        .M18_AXI_rready(Conn7_RREADY),
        .M18_AXI_rresp(Conn7_RRESP),
        .M18_AXI_rvalid(Conn7_RVALID),
        .M18_AXI_wdata(Conn7_WDATA),
        .M18_AXI_wlast(Conn7_WLAST),
        .M18_AXI_wready(Conn7_WREADY),
        .M18_AXI_wstrb(Conn7_WSTRB),
        .M18_AXI_wvalid(Conn7_WVALID),
        .S00_ACLK(Net),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(axi_ethernet_0_dma_mm2s_introut),
        .In1(axi_ethernet_0_dma_s2mm_introut),
        .In10(In10_1),
        .In11(In11_1),
        .In2(axi_ethernet_0_mac_irq),
        .In3(axi_ethernet_0_interrupt),
        .In4(ipmc_jtag_irq),
        .In5(ipmc_jtag_iic2intc_irpt),
        .In6(ipmc_jtag_irq1),
        .In7(In7_1),
        .In8(In8_1),
        .In9(In9_1),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module dbg_imp_5R9Y5
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    s_axi_aresetn);
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  input s_axi_aresetn;

  wire Net;
  wire debug_bridge_0_m0_bscan_BSCANID_en;
  wire debug_bridge_0_m0_bscan_CAPTURE;
  wire debug_bridge_0_m0_bscan_DRCK;
  wire debug_bridge_0_m0_bscan_RESET;
  wire debug_bridge_0_m0_bscan_RUNTEST;
  wire debug_bridge_0_m0_bscan_SEL;
  wire debug_bridge_0_m0_bscan_SHIFT;
  wire debug_bridge_0_m0_bscan_TCK;
  wire debug_bridge_0_m0_bscan_TDI;
  wire debug_bridge_0_m0_bscan_TDO;
  wire debug_bridge_0_m0_bscan_TMS;
  wire debug_bridge_0_m0_bscan_UPDATE;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire [15:0]ps7_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_ARPROT;
  wire ps7_0_axi_periph_M01_AXI_ARREADY;
  wire ps7_0_axi_periph_M01_AXI_ARVALID;
  wire [15:0]ps7_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_AWPROT;
  wire ps7_0_axi_periph_M01_AXI_AWREADY;
  wire ps7_0_axi_periph_M01_AXI_AWVALID;
  wire ps7_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_BRESP;
  wire ps7_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_RDATA;
  wire ps7_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_RRESP;
  wire ps7_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_WDATA;
  wire ps7_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M01_AXI_WSTRB;
  wire ps7_0_axi_periph_M01_AXI_WVALID;

  assign Net = clk;
  assign S_AXI_arready = ps7_0_axi_periph_M01_AXI_ARREADY;
  assign S_AXI_awready = ps7_0_axi_periph_M01_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps7_0_axi_periph_M01_AXI_BRESP;
  assign S_AXI_bvalid = ps7_0_axi_periph_M01_AXI_BVALID;
  assign S_AXI_rdata[31:0] = ps7_0_axi_periph_M01_AXI_RDATA;
  assign S_AXI_rresp[1:0] = ps7_0_axi_periph_M01_AXI_RRESP;
  assign S_AXI_rvalid = ps7_0_axi_periph_M01_AXI_RVALID;
  assign S_AXI_wready = ps7_0_axi_periph_M01_AXI_WREADY;
  assign proc_sys_reset_0_peripheral_aresetn = s_axi_aresetn;
  assign ps7_0_axi_periph_M01_AXI_ARADDR = S_AXI_araddr[15:0];
  assign ps7_0_axi_periph_M01_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps7_0_axi_periph_M01_AXI_ARVALID = S_AXI_arvalid;
  assign ps7_0_axi_periph_M01_AXI_AWADDR = S_AXI_awaddr[15:0];
  assign ps7_0_axi_periph_M01_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps7_0_axi_periph_M01_AXI_AWVALID = S_AXI_awvalid;
  assign ps7_0_axi_periph_M01_AXI_BREADY = S_AXI_bready;
  assign ps7_0_axi_periph_M01_AXI_RREADY = S_AXI_rready;
  assign ps7_0_axi_periph_M01_AXI_WDATA = S_AXI_wdata[31:0];
  assign ps7_0_axi_periph_M01_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_M01_AXI_WVALID = S_AXI_wvalid;
  design_1_debug_bridge_0_0 debug_bridge_0
       (.S_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .S_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .S_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .S_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .S_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .S_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .S_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .S_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .S_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .S_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .m0_bscan_bscanid_en(debug_bridge_0_m0_bscan_BSCANID_en),
        .m0_bscan_capture(debug_bridge_0_m0_bscan_CAPTURE),
        .m0_bscan_drck(debug_bridge_0_m0_bscan_DRCK),
        .m0_bscan_reset(debug_bridge_0_m0_bscan_RESET),
        .m0_bscan_runtest(debug_bridge_0_m0_bscan_RUNTEST),
        .m0_bscan_sel(debug_bridge_0_m0_bscan_SEL),
        .m0_bscan_shift(debug_bridge_0_m0_bscan_SHIFT),
        .m0_bscan_tck(debug_bridge_0_m0_bscan_TCK),
        .m0_bscan_tdi(debug_bridge_0_m0_bscan_TDI),
        .m0_bscan_tdo(debug_bridge_0_m0_bscan_TDO),
        .m0_bscan_tms(debug_bridge_0_m0_bscan_TMS),
        .m0_bscan_update(debug_bridge_0_m0_bscan_UPDATE),
        .s_axi_aclk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  design_1_debug_bridge_0_1 debug_bridge_1
       (.S_BSCAN_bscanid_en(debug_bridge_0_m0_bscan_BSCANID_en),
        .S_BSCAN_capture(debug_bridge_0_m0_bscan_CAPTURE),
        .S_BSCAN_drck(debug_bridge_0_m0_bscan_DRCK),
        .S_BSCAN_reset(debug_bridge_0_m0_bscan_RESET),
        .S_BSCAN_runtest(debug_bridge_0_m0_bscan_RUNTEST),
        .S_BSCAN_sel(debug_bridge_0_m0_bscan_SEL),
        .S_BSCAN_shift(debug_bridge_0_m0_bscan_SHIFT),
        .S_BSCAN_tck(debug_bridge_0_m0_bscan_TCK),
        .S_BSCAN_tdi(debug_bridge_0_m0_bscan_TDI),
        .S_BSCAN_tdo(debug_bridge_0_m0_bscan_TDO),
        .S_BSCAN_tms(debug_bridge_0_m0_bscan_TMS),
        .S_BSCAN_update(debug_bridge_0_m0_bscan_UPDATE),
        .clk(Net));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=110,numReposBlks=72,numNonXlnxBlks=2,numHierBlks=38,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,da_aeth_cnt=7,da_axi4_cnt=40,da_axi_chip2chip_cnt=1,da_board_cnt=37,da_bram_cntlr_cnt=1,da_clkrst_cnt=25,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    align_b0,
    align_lock,
    axi_c2c_phy_clk,
    axi_clk,
    do_cc_bot,
    do_cc_top,
    en_ipmb_zynq,
    gtp_reset,
    ha,
    hot_swap_sw,
    i2c_10g_scl_i,
    i2c_10g_scl_o,
    i2c_10g_scl_t,
    i2c_10g_sda_i,
    i2c_10g_sda_o,
    i2c_10g_sda_t,
    id,
    ipmc_scl_0,
    ipmc_scl_1,
    ipmc_sda_0,
    ipmc_sda_1,
    link_up_bot,
    link_up_top,
    local_i2c_scl_i,
    local_i2c_scl_o,
    local_i2c_scl_t,
    local_i2c_sda_i,
    local_i2c_sda_o,
    local_i2c_sda_t,
    los_10g,
    mdio_phy_mdc,
    mdio_phy_mdio_i,
    mdio_phy_mdio_o,
    mdio_phy_mdio_t,
    mgt_chup_bot,
    mgt_chup_top,
    mgt_unlocked_bot,
    mgt_unlocked_top,
    phy_rst,
    pim_alarm,
    prbs_err,
    prbs_sel,
    qbv_on_off,
    ready_ipmb_zynq,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    rxclkcorcnt_bot,
    rxclkcorcnt_top,
    rxd_raw0,
    rxd_raw1,
    rxd_raw2,
    rxd_raw3,
    rxdata_bot,
    rxdata_top,
    rxk_raw0,
    rxk_raw1,
    rxk_raw2,
    rxk_raw3,
    rxvalid_bot,
    rxvalid_top,
    scf_i2c_0_scl_i,
    scf_i2c_0_scl_o,
    scf_i2c_0_scl_t,
    scf_i2c_0_sda_i,
    scf_i2c_0_sda_o,
    scf_i2c_0_sda_t,
    scf_i2c_1_scl_i,
    scf_i2c_1_scl_o,
    scf_i2c_1_scl_t,
    scf_i2c_1_sda_i,
    scf_i2c_1_sda_o,
    scf_i2c_1_sda_t,
    scf_i2c_2_scl_i,
    scf_i2c_2_scl_o,
    scf_i2c_2_scl_t,
    scf_i2c_2_sda_i,
    scf_i2c_2_sda_o,
    scf_i2c_2_sda_t,
    scf_tck_0,
    scf_tck_1,
    scf_tdi_0,
    scf_tdi_1,
    scf_tdo_0,
    scf_tdo_1,
    scf_tms_0,
    scf_tms_1,
    tx_polarity,
    txd_raw0,
    txd_raw1,
    txd_raw2,
    txd_raw3,
    txdata_bot,
    txdata_top,
    txk_raw0,
    txk_raw1,
    txk_raw2,
    txk_raw3,
    txready_bot,
    txready_top,
    txvalid_bot,
    txvalid_top);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input [3:0]align_b0;
  input [3:0]align_lock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_C2C_PHY_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_C2C_PHY_CLK, CLK_DOMAIN design_1_axi_c2c_phy_clk_0, FREQ_HZ 93750000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input axi_c2c_phy_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_CLK, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output axi_clk;
  output do_cc_bot;
  output do_cc_top;
  output [1:0]en_ipmb_zynq;
  output gtp_reset;
  input [7:0]ha;
  input [0:0]hot_swap_sw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SCL_I" *) input i2c_10g_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SCL_O" *) output i2c_10g_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SCL_T" *) output i2c_10g_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SDA_I" *) input i2c_10g_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SDA_O" *) output i2c_10g_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_10g SDA_T" *) output i2c_10g_sda_t;
  output [2:0]id;
  inout ipmc_scl_0;
  inout ipmc_scl_1;
  inout ipmc_sda_0;
  inout ipmc_sda_1;
  output link_up_bot;
  output link_up_top;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SCL_I" *) input local_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SCL_O" *) output local_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SCL_T" *) output local_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SDA_I" *) input local_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SDA_O" *) output local_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 local_i2c SDA_T" *) output local_i2c_sda_t;
  input [0:0]los_10g;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_phy MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_phy, CAN_DEBUG false" *) output mdio_phy_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_phy MDIO_I" *) input mdio_phy_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_phy MDIO_O" *) output mdio_phy_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_phy MDIO_T" *) output mdio_phy_mdio_t;
  input mgt_chup_bot;
  input mgt_chup_top;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MGT_UNLOCKED_BOT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MGT_UNLOCKED_BOT, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input mgt_unlocked_bot;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MGT_UNLOCKED_TOP RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MGT_UNLOCKED_TOP, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input mgt_unlocked_top;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PHY_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PHY_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]phy_rst;
  input [0:0]pim_alarm;
  input [3:0]prbs_err;
  output [2:0]prbs_sel;
  output [0:0]qbv_on_off;
  input [1:0]ready_ipmb_zynq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RD" *) input [3:0]rgmii_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RX_CTL" *) input rgmii_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RXC" *) input rgmii_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TD" *) output [3:0]rgmii_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TX_CTL" *) output rgmii_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TXC" *) output rgmii_txc;
  input [1:0]rxclkcorcnt_bot;
  input [1:0]rxclkcorcnt_top;
  input [31:0]rxd_raw0;
  input [31:0]rxd_raw1;
  input [31:0]rxd_raw2;
  input [31:0]rxd_raw3;
  input [31:0]rxdata_bot;
  input [31:0]rxdata_top;
  input [3:0]rxk_raw0;
  input [3:0]rxk_raw1;
  input [3:0]rxk_raw2;
  input [3:0]rxk_raw3;
  input rxvalid_bot;
  input rxvalid_top;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SCL_I" *) input scf_i2c_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SCL_O" *) output scf_i2c_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SCL_T" *) output scf_i2c_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SDA_I" *) input scf_i2c_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SDA_O" *) output scf_i2c_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_0 SDA_T" *) output scf_i2c_0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SCL_I" *) input scf_i2c_1_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SCL_O" *) output scf_i2c_1_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SCL_T" *) output scf_i2c_1_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SDA_I" *) input scf_i2c_1_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SDA_O" *) output scf_i2c_1_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_1 SDA_T" *) output scf_i2c_1_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SCL_I" *) input scf_i2c_2_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SCL_O" *) output scf_i2c_2_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SCL_T" *) output scf_i2c_2_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SDA_I" *) input scf_i2c_2_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SDA_O" *) output scf_i2c_2_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 scf_i2c_2 SDA_T" *) output scf_i2c_2_sda_t;
  output scf_tck_0;
  output scf_tck_1;
  output scf_tdi_0;
  output scf_tdi_1;
  input scf_tdo_0;
  input scf_tdo_1;
  output scf_tms_0;
  output scf_tms_1;
  output [3:0]tx_polarity;
  input [31:0]txd_raw0;
  input [31:0]txd_raw1;
  input [31:0]txd_raw2;
  input [31:0]txd_raw3;
  output [31:0]txdata_bot;
  output [31:0]txdata_top;
  input [3:0]txk_raw0;
  input [3:0]txk_raw1;
  input [3:0]txk_raw2;
  input [3:0]txk_raw3;
  input txready_bot;
  input txready_top;
  output txvalid_bot;
  output txvalid_top;

  wire [0:0]ARESETN_1;
  wire [31:0]AXIS_RX_0_tdata_0_1;
  wire [31:0]AXIS_RX_0_tdata_1_1;
  wire AXIS_RX_0_tvalid_0_1;
  wire AXIS_RX_0_tvalid_1_1;
  wire [1:0]In0_0_1;
  wire [0:0]In1_0_1;
  wire [7:0]In2_0_1;
  wire [0:0]In3_0_1;
  wire [0:0]In8_0_1;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire [31:0]S_AXI2_1_ARADDR;
  wire [1:0]S_AXI2_1_ARBURST;
  wire [3:0]S_AXI2_1_ARCACHE;
  wire [5:0]S_AXI2_1_ARID;
  wire [7:0]S_AXI2_1_ARLEN;
  wire [0:0]S_AXI2_1_ARLOCK;
  wire [2:0]S_AXI2_1_ARPROT;
  wire [0:0]S_AXI2_1_ARREADY;
  wire [2:0]S_AXI2_1_ARSIZE;
  wire [0:0]S_AXI2_1_ARVALID;
  wire [31:0]S_AXI2_1_AWADDR;
  wire [1:0]S_AXI2_1_AWBURST;
  wire [3:0]S_AXI2_1_AWCACHE;
  wire [5:0]S_AXI2_1_AWID;
  wire [7:0]S_AXI2_1_AWLEN;
  wire [0:0]S_AXI2_1_AWLOCK;
  wire [2:0]S_AXI2_1_AWPROT;
  wire [0:0]S_AXI2_1_AWREADY;
  wire [2:0]S_AXI2_1_AWSIZE;
  wire [0:0]S_AXI2_1_AWVALID;
  wire [5:0]S_AXI2_1_BID;
  wire [0:0]S_AXI2_1_BREADY;
  wire [1:0]S_AXI2_1_BRESP;
  wire [0:0]S_AXI2_1_BVALID;
  wire [31:0]S_AXI2_1_RDATA;
  wire [5:0]S_AXI2_1_RID;
  wire [0:0]S_AXI2_1_RLAST;
  wire [0:0]S_AXI2_1_RREADY;
  wire [1:0]S_AXI2_1_RRESP;
  wire [0:0]S_AXI2_1_RVALID;
  wire [31:0]S_AXI2_1_WDATA;
  wire [0:0]S_AXI2_1_WLAST;
  wire [0:0]S_AXI2_1_WREADY;
  wire [3:0]S_AXI2_1_WSTRB;
  wire [0:0]S_AXI2_1_WVALID;
  wire [31:0]S_AXI3_1_ARADDR;
  wire S_AXI3_1_ARREADY;
  wire S_AXI3_1_ARVALID;
  wire [31:0]S_AXI3_1_AWADDR;
  wire S_AXI3_1_AWREADY;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire [31:0]S_AXI4_1_ARADDR;
  wire [1:0]S_AXI4_1_ARBURST;
  wire [3:0]S_AXI4_1_ARCACHE;
  wire [5:0]S_AXI4_1_ARID;
  wire [7:0]S_AXI4_1_ARLEN;
  wire [0:0]S_AXI4_1_ARLOCK;
  wire [2:0]S_AXI4_1_ARPROT;
  wire [0:0]S_AXI4_1_ARREADY;
  wire [2:0]S_AXI4_1_ARSIZE;
  wire [0:0]S_AXI4_1_ARVALID;
  wire [31:0]S_AXI4_1_AWADDR;
  wire [1:0]S_AXI4_1_AWBURST;
  wire [3:0]S_AXI4_1_AWCACHE;
  wire [5:0]S_AXI4_1_AWID;
  wire [7:0]S_AXI4_1_AWLEN;
  wire [0:0]S_AXI4_1_AWLOCK;
  wire [2:0]S_AXI4_1_AWPROT;
  wire [0:0]S_AXI4_1_AWREADY;
  wire [2:0]S_AXI4_1_AWSIZE;
  wire [0:0]S_AXI4_1_AWVALID;
  wire [5:0]S_AXI4_1_BID;
  wire [0:0]S_AXI4_1_BREADY;
  wire [1:0]S_AXI4_1_BRESP;
  wire [0:0]S_AXI4_1_BVALID;
  wire [31:0]S_AXI4_1_RDATA;
  wire [5:0]S_AXI4_1_RID;
  wire [0:0]S_AXI4_1_RLAST;
  wire [0:0]S_AXI4_1_RREADY;
  wire [1:0]S_AXI4_1_RRESP;
  wire [0:0]S_AXI4_1_RVALID;
  wire [31:0]S_AXI4_1_WDATA;
  wire [0:0]S_AXI4_1_WLAST;
  wire [0:0]S_AXI4_1_WREADY;
  wire [3:0]S_AXI4_1_WSTRB;
  wire [0:0]S_AXI4_1_WVALID;
  wire [31:0]S_AXI5_1_ARADDR;
  wire S_AXI5_1_ARREADY;
  wire S_AXI5_1_ARVALID;
  wire [31:0]S_AXI5_1_AWADDR;
  wire S_AXI5_1_AWREADY;
  wire S_AXI5_1_AWVALID;
  wire S_AXI5_1_BREADY;
  wire [1:0]S_AXI5_1_BRESP;
  wire S_AXI5_1_BVALID;
  wire [31:0]S_AXI5_1_RDATA;
  wire S_AXI5_1_RREADY;
  wire [1:0]S_AXI5_1_RRESP;
  wire S_AXI5_1_RVALID;
  wire [31:0]S_AXI5_1_WDATA;
  wire S_AXI5_1_WREADY;
  wire [3:0]S_AXI5_1_WSTRB;
  wire S_AXI5_1_WVALID;
  wire [31:0]S_AXI6_1_ARADDR;
  wire S_AXI6_1_ARREADY;
  wire S_AXI6_1_ARVALID;
  wire [31:0]S_AXI6_1_AWADDR;
  wire S_AXI6_1_AWREADY;
  wire S_AXI6_1_AWVALID;
  wire S_AXI6_1_BREADY;
  wire [1:0]S_AXI6_1_BRESP;
  wire S_AXI6_1_BVALID;
  wire [31:0]S_AXI6_1_RDATA;
  wire S_AXI6_1_RREADY;
  wire [1:0]S_AXI6_1_RRESP;
  wire S_AXI6_1_RVALID;
  wire [31:0]S_AXI6_1_WDATA;
  wire S_AXI6_1_WREADY;
  wire [3:0]S_AXI6_1_WSTRB;
  wire S_AXI6_1_WVALID;
  wire TDO_0_0_1;
  wire TDO_1_0_1;
  wire [3:0]align_b0;
  wire [3:0]align_lock;
  wire aurora_mmcm_not_locked_0_1;
  wire aurora_mmcm_not_locked_1_1;
  wire axi_c2c_aurora_channel_up_0_1;
  wire axi_c2c_phy_clk_0_1;
  wire [31:0]axi_chip2chip_0_axi_c2c_aurora_tx_tdata;
  wire axi_chip2chip_0_axi_c2c_aurora_tx_tvalid;
  wire [31:0]axi_chip2chip_1_axi_c2c_aurora_tx_tdata;
  wire axi_chip2chip_1_axi_c2c_aurora_tx_tvalid;
  wire axi_ethernet_0_dma_mm2s_introut;
  wire axi_ethernet_0_dma_s2mm_introut;
  wire axi_ethernet_0_interrupt;
  wire axi_ethernet_0_mac_irq;
  wire axi_ethernet_0_mdio_MDC;
  wire axi_ethernet_0_mdio_MDIO_I;
  wire axi_ethernet_0_mdio_MDIO_O;
  wire axi_ethernet_0_mdio_MDIO_T;
  wire [0:0]axi_ethernet_0_phy_rst_n;
  wire [3:0]axi_ethernet_0_rgmii_RD;
  wire axi_ethernet_0_rgmii_RXC;
  wire axi_ethernet_0_rgmii_RX_CTL;
  wire [3:0]axi_ethernet_0_rgmii_TD;
  wire axi_ethernet_0_rgmii_TXC;
  wire axi_ethernet_0_rgmii_TX_CTL;
  wire [15:0]axi_gpio_0_gpio_io_o;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_2_IIC_SCL_I;
  wire axi_iic_2_IIC_SCL_O;
  wire axi_iic_2_IIC_SCL_T;
  wire axi_iic_2_IIC_SDA_I;
  wire axi_iic_2_IIC_SDA_O;
  wire axi_iic_2_IIC_SDA_T;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [1:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [26:0]axisafety_1_M_AXI_1_ARADDR;
  wire [1:0]axisafety_1_M_AXI_1_ARBURST;
  wire [5:0]axisafety_1_M_AXI_1_ARID;
  wire [7:0]axisafety_1_M_AXI_1_ARLEN;
  wire axisafety_1_M_AXI_1_ARREADY;
  wire [2:0]axisafety_1_M_AXI_1_ARSIZE;
  wire axisafety_1_M_AXI_1_ARVALID;
  wire [26:0]axisafety_1_M_AXI_1_AWADDR;
  wire [1:0]axisafety_1_M_AXI_1_AWBURST;
  wire [5:0]axisafety_1_M_AXI_1_AWID;
  wire [7:0]axisafety_1_M_AXI_1_AWLEN;
  wire axisafety_1_M_AXI_1_AWREADY;
  wire [2:0]axisafety_1_M_AXI_1_AWSIZE;
  wire axisafety_1_M_AXI_1_AWVALID;
  wire [5:0]axisafety_1_M_AXI_1_BID;
  wire axisafety_1_M_AXI_1_BREADY;
  wire [1:0]axisafety_1_M_AXI_1_BRESP;
  wire axisafety_1_M_AXI_1_BVALID;
  wire [31:0]axisafety_1_M_AXI_1_RDATA;
  wire [5:0]axisafety_1_M_AXI_1_RID;
  wire axisafety_1_M_AXI_1_RLAST;
  wire axisafety_1_M_AXI_1_RREADY;
  wire [1:0]axisafety_1_M_AXI_1_RRESP;
  wire axisafety_1_M_AXI_1_RVALID;
  wire [31:0]axisafety_1_M_AXI_1_WDATA;
  wire axisafety_1_M_AXI_1_WLAST;
  wire axisafety_1_M_AXI_1_WREADY;
  wire [3:0]axisafety_1_M_AXI_1_WSTRB;
  wire axisafety_1_M_AXI_1_WVALID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [26:0]axisafety_1_M_AXI_ARADDR;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axisafety_1_M_AXI_ARBURST;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axisafety_1_M_AXI_ARCACHE;
  wire axisafety_1_M_AXI_ARESETN;
  wire axisafety_1_M_AXI_ARESETN_1;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [5:0]axisafety_1_M_AXI_ARID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axisafety_1_M_AXI_ARLEN;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axisafety_1_M_AXI_ARPROT;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]axisafety_1_M_AXI_ARQOS;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_ARREADY;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axisafety_1_M_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_ARVALID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [26:0]axisafety_1_M_AXI_AWADDR;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axisafety_1_M_AXI_AWBURST;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axisafety_1_M_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [5:0]axisafety_1_M_AXI_AWID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axisafety_1_M_AXI_AWLEN;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axisafety_1_M_AXI_AWPROT;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]axisafety_1_M_AXI_AWQOS;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_AWREADY;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axisafety_1_M_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_AWVALID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [5:0]axisafety_1_M_AXI_BID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_BREADY;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axisafety_1_M_AXI_BRESP;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_BVALID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]axisafety_1_M_AXI_RDATA;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [5:0]axisafety_1_M_AXI_RID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_RLAST;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_RREADY;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axisafety_1_M_AXI_RRESP;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_RVALID;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]axisafety_1_M_AXI_WDATA;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_WLAST;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_WREADY;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [3:0]axisafety_1_M_AXI_WSTRB;
  (* CONN_BUS_INFO = "axisafety_1_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axisafety_1_M_AXI_WVALID;
  wire axisafety_1_channel_up;
  wire axisafety_1_o_read_fault;
  wire axisafety_1_o_write_fault;
  wire axisafety_2_channel_up;
  wire chip2chip_0_axi_c2c_link_status_out;
  wire chip2chip_1_axi_c2c_link_status_out;
  wire chip2chip_bot_ff_aurora_do_cc;
  wire chip2chip_bot_ff_aurora_pma_init_out_0;
  wire chip2chip_bot_ff_aurora_reset_pb;
  wire chip2chip_bot_ff_axi_c2c_config_error_out;
  wire chip2chip_bot_ff_axi_c2c_link_error_out;
  wire chip2chip_bot_ff_axi_c2c_multi_bit_error_out;
  wire chip2chip_top_ff_aurora_do_cc;
  wire chip2chip_top_ff_aurora_pma_init_out;
  wire chip2chip_top_ff_aurora_reset_pb;
  wire chip2chip_top_ff_axi_c2c_config_error_out;
  wire chip2chip_top_ff_axi_c2c_link_error_out;
  wire chip2chip_top_ff_axi_c2c_multi_bit_error_out;
  wire [31:0]cpu_M10_AXI_ARADDR;
  wire cpu_M10_AXI_ARREADY;
  wire cpu_M10_AXI_ARVALID;
  wire [31:0]cpu_M10_AXI_AWADDR;
  wire cpu_M10_AXI_AWREADY;
  wire cpu_M10_AXI_AWVALID;
  wire cpu_M10_AXI_BREADY;
  wire [1:0]cpu_M10_AXI_BRESP;
  wire cpu_M10_AXI_BVALID;
  wire [31:0]cpu_M10_AXI_RDATA;
  wire cpu_M10_AXI_RREADY;
  wire [1:0]cpu_M10_AXI_RRESP;
  wire cpu_M10_AXI_RVALID;
  wire [31:0]cpu_M10_AXI_WDATA;
  wire cpu_M10_AXI_WREADY;
  wire [3:0]cpu_M10_AXI_WSTRB;
  wire cpu_M10_AXI_WVALID;
  wire [31:0]cpu_M11_AXI_ARADDR;
  wire cpu_M11_AXI_ARREADY;
  wire cpu_M11_AXI_ARVALID;
  wire [31:0]cpu_M11_AXI_AWADDR;
  wire cpu_M11_AXI_AWREADY;
  wire cpu_M11_AXI_AWVALID;
  wire cpu_M11_AXI_BREADY;
  wire [1:0]cpu_M11_AXI_BRESP;
  wire cpu_M11_AXI_BVALID;
  wire [31:0]cpu_M11_AXI_RDATA;
  wire cpu_M11_AXI_RREADY;
  wire [1:0]cpu_M11_AXI_RRESP;
  wire cpu_M11_AXI_RVALID;
  wire [31:0]cpu_M11_AXI_WDATA;
  wire cpu_M11_AXI_WREADY;
  wire [3:0]cpu_M11_AXI_WSTRB;
  wire cpu_M11_AXI_WVALID;
  wire [31:0]cpu_M12_AXI_ARADDR;
  wire cpu_M12_AXI_ARREADY;
  wire cpu_M12_AXI_ARVALID;
  wire [31:0]cpu_M12_AXI_AWADDR;
  wire cpu_M12_AXI_AWREADY;
  wire cpu_M12_AXI_AWVALID;
  wire cpu_M12_AXI_BREADY;
  wire [1:0]cpu_M12_AXI_BRESP;
  wire cpu_M12_AXI_BVALID;
  wire [31:0]cpu_M12_AXI_RDATA;
  wire cpu_M12_AXI_RREADY;
  wire [1:0]cpu_M12_AXI_RRESP;
  wire cpu_M12_AXI_RVALID;
  wire [31:0]cpu_M12_AXI_WDATA;
  wire cpu_M12_AXI_WREADY;
  wire [3:0]cpu_M12_AXI_WSTRB;
  wire cpu_M12_AXI_WVALID;
  wire [31:0]cpu_M13_AXI_ARADDR;
  wire cpu_M13_AXI_ARREADY;
  wire cpu_M13_AXI_ARVALID;
  wire [31:0]cpu_M13_AXI_AWADDR;
  wire cpu_M13_AXI_AWREADY;
  wire cpu_M13_AXI_AWVALID;
  wire cpu_M13_AXI_BREADY;
  wire [1:0]cpu_M13_AXI_BRESP;
  wire cpu_M13_AXI_BVALID;
  wire [31:0]cpu_M13_AXI_RDATA;
  wire cpu_M13_AXI_RREADY;
  wire [1:0]cpu_M13_AXI_RRESP;
  wire cpu_M13_AXI_RVALID;
  wire [31:0]cpu_M13_AXI_WDATA;
  wire cpu_M13_AXI_WREADY;
  wire [3:0]cpu_M13_AXI_WSTRB;
  wire cpu_M13_AXI_WVALID;
  wire [31:0]cpu_M14_AXI_ARADDR;
  wire [1:0]cpu_M14_AXI_ARBURST;
  wire [3:0]cpu_M14_AXI_ARCACHE;
  wire [5:0]cpu_M14_AXI_ARID;
  wire [7:0]cpu_M14_AXI_ARLEN;
  wire cpu_M14_AXI_ARLOCK;
  wire [2:0]cpu_M14_AXI_ARPROT;
  wire [3:0]cpu_M14_AXI_ARQOS;
  wire cpu_M14_AXI_ARREADY;
  wire [2:0]cpu_M14_AXI_ARSIZE;
  wire cpu_M14_AXI_ARVALID;
  wire [31:0]cpu_M14_AXI_AWADDR;
  wire [1:0]cpu_M14_AXI_AWBURST;
  wire [3:0]cpu_M14_AXI_AWCACHE;
  wire [5:0]cpu_M14_AXI_AWID;
  wire [7:0]cpu_M14_AXI_AWLEN;
  wire cpu_M14_AXI_AWLOCK;
  wire [2:0]cpu_M14_AXI_AWPROT;
  wire [3:0]cpu_M14_AXI_AWQOS;
  wire cpu_M14_AXI_AWREADY;
  wire [2:0]cpu_M14_AXI_AWSIZE;
  wire cpu_M14_AXI_AWVALID;
  wire [5:0]cpu_M14_AXI_BID;
  wire cpu_M14_AXI_BREADY;
  wire [1:0]cpu_M14_AXI_BRESP;
  wire cpu_M14_AXI_BVALID;
  wire [31:0]cpu_M14_AXI_RDATA;
  wire [5:0]cpu_M14_AXI_RID;
  wire cpu_M14_AXI_RLAST;
  wire cpu_M14_AXI_RREADY;
  wire [1:0]cpu_M14_AXI_RRESP;
  wire cpu_M14_AXI_RVALID;
  wire [31:0]cpu_M14_AXI_WDATA;
  wire cpu_M14_AXI_WLAST;
  wire cpu_M14_AXI_WREADY;
  wire [3:0]cpu_M14_AXI_WSTRB;
  wire cpu_M14_AXI_WVALID;
  wire [31:0]cpu_M16_AXI_ARADDR;
  wire cpu_M16_AXI_ARREADY;
  wire cpu_M16_AXI_ARVALID;
  wire [31:0]cpu_M16_AXI_AWADDR;
  wire cpu_M16_AXI_AWREADY;
  wire cpu_M16_AXI_AWVALID;
  wire cpu_M16_AXI_BREADY;
  wire [1:0]cpu_M16_AXI_BRESP;
  wire cpu_M16_AXI_BVALID;
  wire [31:0]cpu_M16_AXI_RDATA;
  wire cpu_M16_AXI_RREADY;
  wire [1:0]cpu_M16_AXI_RRESP;
  wire cpu_M16_AXI_RVALID;
  wire [31:0]cpu_M16_AXI_WDATA;
  wire cpu_M16_AXI_WREADY;
  wire [3:0]cpu_M16_AXI_WSTRB;
  wire cpu_M16_AXI_WVALID;
  wire [31:0]cpu_M17_AXI_ARADDR;
  wire cpu_M17_AXI_ARREADY;
  wire cpu_M17_AXI_ARVALID;
  wire [31:0]cpu_M17_AXI_AWADDR;
  wire cpu_M17_AXI_AWREADY;
  wire cpu_M17_AXI_AWVALID;
  wire cpu_M17_AXI_BREADY;
  wire [1:0]cpu_M17_AXI_BRESP;
  wire cpu_M17_AXI_BVALID;
  wire [31:0]cpu_M17_AXI_RDATA;
  wire cpu_M17_AXI_RREADY;
  wire [1:0]cpu_M17_AXI_RRESP;
  wire cpu_M17_AXI_RVALID;
  wire [31:0]cpu_M17_AXI_WDATA;
  wire cpu_M17_AXI_WREADY;
  wire [3:0]cpu_M17_AXI_WSTRB;
  wire cpu_M17_AXI_WVALID;
  wire [31:0]cpu_M18_AXI_ARADDR;
  wire [1:0]cpu_M18_AXI_ARBURST;
  wire [3:0]cpu_M18_AXI_ARCACHE;
  wire [5:0]cpu_M18_AXI_ARID;
  wire [7:0]cpu_M18_AXI_ARLEN;
  wire cpu_M18_AXI_ARLOCK;
  wire [2:0]cpu_M18_AXI_ARPROT;
  wire cpu_M18_AXI_ARREADY;
  wire [2:0]cpu_M18_AXI_ARSIZE;
  wire cpu_M18_AXI_ARVALID;
  wire [31:0]cpu_M18_AXI_AWADDR;
  wire [1:0]cpu_M18_AXI_AWBURST;
  wire [3:0]cpu_M18_AXI_AWCACHE;
  wire [5:0]cpu_M18_AXI_AWID;
  wire [7:0]cpu_M18_AXI_AWLEN;
  wire cpu_M18_AXI_AWLOCK;
  wire [2:0]cpu_M18_AXI_AWPROT;
  wire cpu_M18_AXI_AWREADY;
  wire [2:0]cpu_M18_AXI_AWSIZE;
  wire cpu_M18_AXI_AWVALID;
  wire [5:0]cpu_M18_AXI_BID;
  wire cpu_M18_AXI_BREADY;
  wire [1:0]cpu_M18_AXI_BRESP;
  wire cpu_M18_AXI_BVALID;
  wire [31:0]cpu_M18_AXI_RDATA;
  wire [5:0]cpu_M18_AXI_RID;
  wire cpu_M18_AXI_RLAST;
  wire cpu_M18_AXI_RREADY;
  wire [1:0]cpu_M18_AXI_RRESP;
  wire cpu_M18_AXI_RVALID;
  wire [31:0]cpu_M18_AXI_WDATA;
  wire cpu_M18_AXI_WLAST;
  wire cpu_M18_AXI_WREADY;
  wire [3:0]cpu_M18_AXI_WSTRB;
  wire cpu_M18_AXI_WVALID;
  wire cpu_peripheral_reset;
  wire i2c_iic2intc_irpt;
  wire i2c_iic2intc_irpt1;
  wire i2c_iic2intc_irpt2;
  wire i2c_iic2intc_irpt3;
  wire i2c_iic2intc_irpt4;
  wire i2c_iic_rtl_3_SCL_I;
  wire i2c_iic_rtl_3_SCL_O;
  wire i2c_iic_rtl_3_SCL_T;
  wire i2c_iic_rtl_3_SDA_I;
  wire i2c_iic_rtl_3_SDA_O;
  wire i2c_iic_rtl_3_SDA_T;
  wire i2c_iic_rtl_4_SCL_I;
  wire i2c_iic_rtl_4_SCL_O;
  wire i2c_iic_rtl_4_SCL_T;
  wire i2c_iic_rtl_4_SDA_I;
  wire i2c_iic_rtl_4_SDA_O;
  wire i2c_iic_rtl_4_SDA_T;
  wire ipmc_jtag_TCK_0;
  wire ipmc_jtag_TCK_1;
  wire ipmc_jtag_TDI_0;
  wire ipmc_jtag_TDI_1;
  wire ipmc_jtag_TMS_0;
  wire ipmc_jtag_TMS_1;
  wire ipmc_jtag_iic2intc_irpt;
  wire ipmc_jtag_irq;
  wire ipmc_jtag_irq1;
  wire ipmc_jtag_s0_o;
  wire ipmc_jtag_s0_o1;
  wire [2:0]prbs_sel;
  wire [3:0]probe0_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [17:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [17:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire ps7_0_axi_periph_M00_AXI_AWVALID;
  wire ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  wire ps7_0_axi_periph_M00_AXI_WVALID;
  wire [15:0]ps7_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_ARPROT;
  wire ps7_0_axi_periph_M01_AXI_ARREADY;
  wire ps7_0_axi_periph_M01_AXI_ARVALID;
  wire [15:0]ps7_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M01_AXI_AWPROT;
  wire ps7_0_axi_periph_M01_AXI_AWREADY;
  wire ps7_0_axi_periph_M01_AXI_AWVALID;
  wire ps7_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_BRESP;
  wire ps7_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_RDATA;
  wire ps7_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_RRESP;
  wire ps7_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_WDATA;
  wire ps7_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M01_AXI_WSTRB;
  wire ps7_0_axi_periph_M01_AXI_WVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_ARADDR;
  wire ps7_0_axi_periph_M02_AXI_ARREADY;
  wire ps7_0_axi_periph_M02_AXI_ARVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_AWADDR;
  wire ps7_0_axi_periph_M02_AXI_AWREADY;
  wire ps7_0_axi_periph_M02_AXI_AWVALID;
  wire ps7_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_BRESP;
  wire ps7_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_RDATA;
  wire ps7_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_RRESP;
  wire ps7_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_WDATA;
  wire ps7_0_axi_periph_M02_AXI_WREADY;
  wire ps7_0_axi_periph_M02_AXI_WVALID;
  wire [16:0]reg_bank_0_reg_ro;
  wire [3:0]reg_bank_Dout2;
  wire [1:0]reg_bank_en_ipmb_zynq;
  wire reg_bank_gtp_reset_14_0;
  wire reg_bank_qbv_on_off;
  wire [1:0]rxclkcorcnt_bot;
  wire [1:0]rxclkcorcnt_top;
  wire [31:0]rxd_raw0;
  wire [31:0]rxd_raw1;
  wire [31:0]rxd_raw2;
  wire [31:0]rxd_raw3;
  wire [3:0]rxk_raw0;
  wire [3:0]rxk_raw1;
  wire [3:0]rxk_raw2;
  wire [3:0]rxk_raw3;
  wire s0_i1_1;
  wire s0_i_1;
  wire s0_t1_1;
  wire s0_t_1;
  wire [31:0]s_axi1_1_ARADDR;
  wire [2:0]s_axi1_1_ARPROT;
  wire s_axi1_1_ARREADY;
  wire s_axi1_1_ARVALID;
  wire [31:0]s_axi1_1_AWADDR;
  wire [2:0]s_axi1_1_AWPROT;
  wire s_axi1_1_AWREADY;
  wire s_axi1_1_AWVALID;
  wire s_axi1_1_BREADY;
  wire [1:0]s_axi1_1_BRESP;
  wire s_axi1_1_BVALID;
  wire [31:0]s_axi1_1_RDATA;
  wire s_axi1_1_RREADY;
  wire [1:0]s_axi1_1_RRESP;
  wire s_axi1_1_RVALID;
  wire [31:0]s_axi1_1_WDATA;
  wire s_axi1_1_WREADY;
  wire [3:0]s_axi1_1_WSTRB;
  wire s_axi1_1_WVALID;
  wire [4:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [4:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]s_axi_2_ARADDR;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]s_axi_2_ARBURST;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]s_axi_2_ARCACHE;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [5:0]s_axi_2_ARID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]s_axi_2_ARLEN;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire s_axi_2_ARLOCK;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]s_axi_2_ARPROT;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]s_axi_2_ARQOS;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire s_axi_2_ARREADY;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]s_axi_2_ARSIZE;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire s_axi_2_ARVALID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]s_axi_2_AWADDR;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]s_axi_2_AWBURST;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]s_axi_2_AWCACHE;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [5:0]s_axi_2_AWID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]s_axi_2_AWLEN;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire s_axi_2_AWLOCK;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]s_axi_2_AWPROT;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]s_axi_2_AWQOS;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire s_axi_2_AWREADY;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]s_axi_2_AWSIZE;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire s_axi_2_AWVALID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [5:0]s_axi_2_BID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire s_axi_2_BREADY;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]s_axi_2_BRESP;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire s_axi_2_BVALID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]s_axi_2_RDATA;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [5:0]s_axi_2_RID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire s_axi_2_RLAST;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire s_axi_2_RREADY;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]s_axi_2_RRESP;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire s_axi_2_RVALID;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]s_axi_2_WDATA;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire s_axi_2_WLAST;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire s_axi_2_WREADY;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [3:0]s_axi_2_WSTRB;
  (* CONN_BUS_INFO = "s_axi_2 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire s_axi_2_WVALID;
  wire [31:0]txd_raw0;
  wire [31:0]txd_raw1;
  wire [31:0]txd_raw2;
  wire [31:0]txd_raw3;
  wire [3:0]txk_raw0;
  wire [3:0]txk_raw1;
  wire [3:0]txk_raw2;
  wire [3:0]txk_raw3;
  wire [2:0]xlslice_0_Dout;

  assign AXIS_RX_0_tdata_0_1 = rxdata_top[31:0];
  assign AXIS_RX_0_tdata_1_1 = rxdata_bot[31:0];
  assign AXIS_RX_0_tvalid_0_1 = rxvalid_top;
  assign AXIS_RX_0_tvalid_1_1 = rxvalid_bot;
  assign In0_0_1 = ready_ipmb_zynq[1:0];
  assign In1_0_1 = los_10g[0];
  assign In2_0_1 = ha[7:0];
  assign In3_0_1 = pim_alarm[0];
  assign In8_0_1 = hot_swap_sw[0];
  assign TDO_0_0_1 = scf_tdo_0;
  assign TDO_1_0_1 = scf_tdo_1;
  assign aurora_mmcm_not_locked_0_1 = mgt_unlocked_top;
  assign aurora_mmcm_not_locked_1_1 = mgt_unlocked_bot;
  assign axi_c2c_phy_clk_0_1 = axi_c2c_phy_clk;
  assign axi_clk = Net;
  assign axi_ethernet_0_mdio_MDIO_I = mdio_phy_mdio_i;
  assign axi_ethernet_0_rgmii_RD = rgmii_rd[3:0];
  assign axi_ethernet_0_rgmii_RXC = rgmii_rxc;
  assign axi_ethernet_0_rgmii_RX_CTL = rgmii_rx_ctl;
  assign axi_iic_0_IIC_SCL_I = scf_i2c_0_scl_i;
  assign axi_iic_0_IIC_SDA_I = scf_i2c_0_sda_i;
  assign axi_iic_1_IIC_SCL_I = scf_i2c_1_scl_i;
  assign axi_iic_1_IIC_SDA_I = scf_i2c_1_sda_i;
  assign axi_iic_2_IIC_SCL_I = scf_i2c_2_scl_i;
  assign axi_iic_2_IIC_SDA_I = scf_i2c_2_sda_i;
  assign do_cc_bot = chip2chip_bot_ff_aurora_do_cc;
  assign do_cc_top = chip2chip_top_ff_aurora_do_cc;
  assign en_ipmb_zynq[1:0] = reg_bank_en_ipmb_zynq;
  assign gtp_reset = reg_bank_gtp_reset_14_0;
  assign i2c_10g_scl_o = i2c_iic_rtl_3_SCL_O;
  assign i2c_10g_scl_t = i2c_iic_rtl_3_SCL_T;
  assign i2c_10g_sda_o = i2c_iic_rtl_3_SDA_O;
  assign i2c_10g_sda_t = i2c_iic_rtl_3_SDA_T;
  assign i2c_iic_rtl_3_SCL_I = i2c_10g_scl_i;
  assign i2c_iic_rtl_3_SDA_I = i2c_10g_sda_i;
  assign i2c_iic_rtl_4_SCL_I = local_i2c_scl_i;
  assign i2c_iic_rtl_4_SDA_I = local_i2c_sda_i;
  assign id[2:0] = xlslice_0_Dout;
  assign link_up_bot = chip2chip_1_axi_c2c_link_status_out;
  assign link_up_top = chip2chip_0_axi_c2c_link_status_out;
  assign local_i2c_scl_o = i2c_iic_rtl_4_SCL_O;
  assign local_i2c_scl_t = i2c_iic_rtl_4_SCL_T;
  assign local_i2c_sda_o = i2c_iic_rtl_4_SDA_O;
  assign local_i2c_sda_t = i2c_iic_rtl_4_SDA_T;
  assign mdio_phy_mdc = axi_ethernet_0_mdio_MDC;
  assign mdio_phy_mdio_o = axi_ethernet_0_mdio_MDIO_O;
  assign mdio_phy_mdio_t = axi_ethernet_0_mdio_MDIO_T;
  assign phy_rst[0] = axi_ethernet_0_phy_rst_n;
  assign probe0_0_1 = prbs_err[3:0];
  assign qbv_on_off[0] = reg_bank_qbv_on_off;
  assign rgmii_td[3:0] = axi_ethernet_0_rgmii_TD;
  assign rgmii_tx_ctl = axi_ethernet_0_rgmii_TX_CTL;
  assign rgmii_txc = axi_ethernet_0_rgmii_TXC;
  assign scf_i2c_0_scl_o = axi_iic_0_IIC_SCL_O;
  assign scf_i2c_0_scl_t = axi_iic_0_IIC_SCL_T;
  assign scf_i2c_0_sda_o = axi_iic_0_IIC_SDA_O;
  assign scf_i2c_0_sda_t = axi_iic_0_IIC_SDA_T;
  assign scf_i2c_1_scl_o = axi_iic_1_IIC_SCL_O;
  assign scf_i2c_1_scl_t = axi_iic_1_IIC_SCL_T;
  assign scf_i2c_1_sda_o = axi_iic_1_IIC_SDA_O;
  assign scf_i2c_1_sda_t = axi_iic_1_IIC_SDA_T;
  assign scf_i2c_2_scl_o = axi_iic_2_IIC_SCL_O;
  assign scf_i2c_2_scl_t = axi_iic_2_IIC_SCL_T;
  assign scf_i2c_2_sda_o = axi_iic_2_IIC_SDA_O;
  assign scf_i2c_2_sda_t = axi_iic_2_IIC_SDA_T;
  assign scf_tck_0 = ipmc_jtag_TCK_0;
  assign scf_tck_1 = ipmc_jtag_TCK_1;
  assign scf_tdi_0 = ipmc_jtag_TDI_0;
  assign scf_tdi_1 = ipmc_jtag_TDI_1;
  assign scf_tms_0 = ipmc_jtag_TMS_0;
  assign scf_tms_1 = ipmc_jtag_TMS_1;
  assign tx_polarity[3:0] = reg_bank_Dout2;
  assign txdata_bot[31:0] = axi_chip2chip_0_axi_c2c_aurora_tx_tdata;
  assign txdata_top[31:0] = axi_chip2chip_1_axi_c2c_aurora_tx_tdata;
  assign txvalid_bot = axi_chip2chip_0_axi_c2c_aurora_tx_tvalid;
  assign txvalid_top = axi_chip2chip_1_axi_c2c_aurora_tx_tvalid;
  design_1_axi_chip2chip_0_1 axi_chip2chip_0
       (.aurora_do_cc(chip2chip_bot_ff_aurora_do_cc),
        .aurora_init_clk(Net),
        .aurora_mmcm_not_locked(aurora_mmcm_not_locked_1_1),
        .aurora_pma_init_in(cpu_peripheral_reset),
        .aurora_pma_init_out(chip2chip_bot_ff_aurora_pma_init_out_0),
        .aurora_reset_pb(chip2chip_bot_ff_aurora_reset_pb),
        .axi_c2c_aurora_channel_up(axisafety_1_channel_up),
        .axi_c2c_aurora_rx_tdata(AXIS_RX_0_tdata_1_1),
        .axi_c2c_aurora_rx_tvalid(AXIS_RX_0_tvalid_1_1),
        .axi_c2c_aurora_tx_tdata(axi_chip2chip_0_axi_c2c_aurora_tx_tdata),
        .axi_c2c_aurora_tx_tready(axi_c2c_aurora_channel_up_0_1),
        .axi_c2c_aurora_tx_tvalid(axi_chip2chip_0_axi_c2c_aurora_tx_tvalid),
        .axi_c2c_config_error_out(chip2chip_bot_ff_axi_c2c_config_error_out),
        .axi_c2c_link_error_out(chip2chip_bot_ff_axi_c2c_link_error_out),
        .axi_c2c_link_status_out(chip2chip_1_axi_c2c_link_status_out),
        .axi_c2c_m2s_intr_in({1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_multi_bit_error_out(chip2chip_bot_ff_axi_c2c_multi_bit_error_out),
        .axi_c2c_phy_clk(axi_c2c_phy_clk_0_1),
        .s_aclk(Net),
        .s_aresetn(axisafety_1_M_AXI_ARESETN),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,axisafety_1_M_AXI_ARADDR}),
        .s_axi_arburst(axisafety_1_M_AXI_ARBURST),
        .s_axi_arid(axisafety_1_M_AXI_ARID),
        .s_axi_arlen(axisafety_1_M_AXI_ARLEN),
        .s_axi_arready(axisafety_1_M_AXI_ARREADY),
        .s_axi_arsize(axisafety_1_M_AXI_ARSIZE),
        .s_axi_arvalid(axisafety_1_M_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,axisafety_1_M_AXI_AWADDR}),
        .s_axi_awburst(axisafety_1_M_AXI_AWBURST),
        .s_axi_awid(axisafety_1_M_AXI_AWID),
        .s_axi_awlen(axisafety_1_M_AXI_AWLEN),
        .s_axi_awready(axisafety_1_M_AXI_AWREADY),
        .s_axi_awsize(axisafety_1_M_AXI_AWSIZE),
        .s_axi_awvalid(axisafety_1_M_AXI_AWVALID),
        .s_axi_bid(axisafety_1_M_AXI_BID),
        .s_axi_bready(axisafety_1_M_AXI_BREADY),
        .s_axi_bresp(axisafety_1_M_AXI_BRESP),
        .s_axi_bvalid(axisafety_1_M_AXI_BVALID),
        .s_axi_rdata(axisafety_1_M_AXI_RDATA),
        .s_axi_rid(axisafety_1_M_AXI_RID),
        .s_axi_rlast(axisafety_1_M_AXI_RLAST),
        .s_axi_rready(axisafety_1_M_AXI_RREADY),
        .s_axi_rresp(axisafety_1_M_AXI_RRESP),
        .s_axi_rvalid(axisafety_1_M_AXI_RVALID),
        .s_axi_wdata(axisafety_1_M_AXI_WDATA),
        .s_axi_wlast(axisafety_1_M_AXI_WLAST),
        .s_axi_wready(axisafety_1_M_AXI_WREADY),
        .s_axi_wstrb(axisafety_1_M_AXI_WSTRB),
        .s_axi_wvalid(axisafety_1_M_AXI_WVALID));
  design_1_axi_chip2chip_0_0 axi_chip2chip_1
       (.aurora_do_cc(chip2chip_top_ff_aurora_do_cc),
        .aurora_init_clk(Net),
        .aurora_mmcm_not_locked(aurora_mmcm_not_locked_0_1),
        .aurora_pma_init_in(cpu_peripheral_reset),
        .aurora_pma_init_out(chip2chip_top_ff_aurora_pma_init_out),
        .aurora_reset_pb(chip2chip_top_ff_aurora_reset_pb),
        .axi_c2c_aurora_channel_up(axisafety_2_channel_up),
        .axi_c2c_aurora_rx_tdata(AXIS_RX_0_tdata_0_1),
        .axi_c2c_aurora_rx_tvalid(AXIS_RX_0_tvalid_0_1),
        .axi_c2c_aurora_tx_tdata(axi_chip2chip_1_axi_c2c_aurora_tx_tdata),
        .axi_c2c_aurora_tx_tready(axi_c2c_aurora_channel_up_0_1),
        .axi_c2c_aurora_tx_tvalid(axi_chip2chip_1_axi_c2c_aurora_tx_tvalid),
        .axi_c2c_config_error_out(chip2chip_top_ff_axi_c2c_config_error_out),
        .axi_c2c_link_error_out(chip2chip_top_ff_axi_c2c_link_error_out),
        .axi_c2c_link_status_out(chip2chip_0_axi_c2c_link_status_out),
        .axi_c2c_m2s_intr_in({1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_multi_bit_error_out(chip2chip_top_ff_axi_c2c_multi_bit_error_out),
        .axi_c2c_phy_clk(axi_c2c_phy_clk_0_1),
        .s_aclk(Net),
        .s_aresetn(axisafety_1_M_AXI_ARESETN_1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,axisafety_1_M_AXI_1_ARADDR}),
        .s_axi_arburst(axisafety_1_M_AXI_1_ARBURST),
        .s_axi_arid(axisafety_1_M_AXI_1_ARID),
        .s_axi_arlen(axisafety_1_M_AXI_1_ARLEN),
        .s_axi_arready(axisafety_1_M_AXI_1_ARREADY),
        .s_axi_arsize(axisafety_1_M_AXI_1_ARSIZE),
        .s_axi_arvalid(axisafety_1_M_AXI_1_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,axisafety_1_M_AXI_1_AWADDR}),
        .s_axi_awburst(axisafety_1_M_AXI_1_AWBURST),
        .s_axi_awid(axisafety_1_M_AXI_1_AWID),
        .s_axi_awlen(axisafety_1_M_AXI_1_AWLEN),
        .s_axi_awready(axisafety_1_M_AXI_1_AWREADY),
        .s_axi_awsize(axisafety_1_M_AXI_1_AWSIZE),
        .s_axi_awvalid(axisafety_1_M_AXI_1_AWVALID),
        .s_axi_bid(axisafety_1_M_AXI_1_BID),
        .s_axi_bready(axisafety_1_M_AXI_1_BREADY),
        .s_axi_bresp(axisafety_1_M_AXI_1_BRESP),
        .s_axi_bvalid(axisafety_1_M_AXI_1_BVALID),
        .s_axi_rdata(axisafety_1_M_AXI_1_RDATA),
        .s_axi_rid(axisafety_1_M_AXI_1_RID),
        .s_axi_rlast(axisafety_1_M_AXI_1_RLAST),
        .s_axi_rready(axisafety_1_M_AXI_1_RREADY),
        .s_axi_rresp(axisafety_1_M_AXI_1_RRESP),
        .s_axi_rvalid(axisafety_1_M_AXI_1_RVALID),
        .s_axi_wdata(axisafety_1_M_AXI_1_WDATA),
        .s_axi_wlast(axisafety_1_M_AXI_1_WLAST),
        .s_axi_wready(axisafety_1_M_AXI_1_WREADY),
        .s_axi_wstrb(axisafety_1_M_AXI_1_WSTRB),
        .s_axi_wvalid(axisafety_1_M_AXI_1_WVALID));
  design_1_axi_gpio_0_2 axi_gpio_0
       (.gpio2_io_i(reg_bank_0_reg_ro),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(Net),
        .s_axi_araddr(cpu_M13_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(cpu_M13_AXI_ARREADY),
        .s_axi_arvalid(cpu_M13_AXI_ARVALID),
        .s_axi_awaddr(cpu_M13_AXI_AWADDR[8:0]),
        .s_axi_awready(cpu_M13_AXI_AWREADY),
        .s_axi_awvalid(cpu_M13_AXI_AWVALID),
        .s_axi_bready(cpu_M13_AXI_BREADY),
        .s_axi_bresp(cpu_M13_AXI_BRESP),
        .s_axi_bvalid(cpu_M13_AXI_BVALID),
        .s_axi_rdata(cpu_M13_AXI_RDATA),
        .s_axi_rready(cpu_M13_AXI_RREADY),
        .s_axi_rresp(cpu_M13_AXI_RRESP),
        .s_axi_rvalid(cpu_M13_AXI_RVALID),
        .s_axi_wdata(cpu_M13_AXI_WDATA),
        .s_axi_wready(cpu_M13_AXI_WREADY),
        .s_axi_wstrb(cpu_M13_AXI_WSTRB),
        .s_axi_wvalid(cpu_M13_AXI_WVALID));
  design_1_axisafety_1_0 axisafety_1
       (.M_AXI_ACLK(Net),
        .M_AXI_ARADDR(axisafety_1_M_AXI_ARADDR),
        .M_AXI_ARBURST(axisafety_1_M_AXI_ARBURST),
        .M_AXI_ARCACHE(axisafety_1_M_AXI_ARCACHE),
        .M_AXI_ARID(axisafety_1_M_AXI_ARID),
        .M_AXI_ARLEN(axisafety_1_M_AXI_ARLEN),
        .M_AXI_ARLOCK(axisafety_1_M_AXI_ARLOCK),
        .M_AXI_ARPROT(axisafety_1_M_AXI_ARPROT),
        .M_AXI_ARQOS(axisafety_1_M_AXI_ARQOS),
        .M_AXI_ARREADY(axisafety_1_M_AXI_ARREADY),
        .M_AXI_ARSIZE(axisafety_1_M_AXI_ARSIZE),
        .M_AXI_ARVALID(axisafety_1_M_AXI_ARVALID),
        .M_AXI_AWADDR(axisafety_1_M_AXI_AWADDR),
        .M_AXI_AWBURST(axisafety_1_M_AXI_AWBURST),
        .M_AXI_AWCACHE(axisafety_1_M_AXI_AWCACHE),
        .M_AXI_AWID(axisafety_1_M_AXI_AWID),
        .M_AXI_AWLEN(axisafety_1_M_AXI_AWLEN),
        .M_AXI_AWLOCK(axisafety_1_M_AXI_AWLOCK),
        .M_AXI_AWPROT(axisafety_1_M_AXI_AWPROT),
        .M_AXI_AWQOS(axisafety_1_M_AXI_AWQOS),
        .M_AXI_AWREADY(axisafety_1_M_AXI_AWREADY),
        .M_AXI_AWSIZE(axisafety_1_M_AXI_AWSIZE),
        .M_AXI_AWVALID(axisafety_1_M_AXI_AWVALID),
        .M_AXI_BID(axisafety_1_M_AXI_BID),
        .M_AXI_BREADY(axisafety_1_M_AXI_BREADY),
        .M_AXI_BRESP(axisafety_1_M_AXI_BRESP),
        .M_AXI_BVALID(axisafety_1_M_AXI_BVALID),
        .M_AXI_RDATA(axisafety_1_M_AXI_RDATA),
        .M_AXI_RID(axisafety_1_M_AXI_RID),
        .M_AXI_RLAST(axisafety_1_M_AXI_RLAST),
        .M_AXI_RREADY(axisafety_1_M_AXI_RREADY),
        .M_AXI_RRESP(axisafety_1_M_AXI_RRESP),
        .M_AXI_RVALID(axisafety_1_M_AXI_RVALID),
        .M_AXI_WDATA(axisafety_1_M_AXI_WDATA),
        .M_AXI_WLAST(axisafety_1_M_AXI_WLAST),
        .M_AXI_WREADY(axisafety_1_M_AXI_WREADY),
        .M_AXI_WSTRB(axisafety_1_M_AXI_WSTRB),
        .M_AXI_WVALID(axisafety_1_M_AXI_WVALID),
        .S_AXI_ACLK(Net),
        .S_AXI_ARADDR(s_axi_2_ARADDR[26:0]),
        .S_AXI_ARBURST(s_axi_2_ARBURST),
        .S_AXI_ARCACHE(s_axi_2_ARCACHE),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARID(s_axi_2_ARID),
        .S_AXI_ARLEN(s_axi_2_ARLEN),
        .S_AXI_ARLOCK(s_axi_2_ARLOCK),
        .S_AXI_ARPROT(s_axi_2_ARPROT),
        .S_AXI_ARQOS(s_axi_2_ARQOS),
        .S_AXI_ARREADY(s_axi_2_ARREADY),
        .S_AXI_ARSIZE(s_axi_2_ARSIZE),
        .S_AXI_ARVALID(s_axi_2_ARVALID),
        .S_AXI_AWADDR(s_axi_2_AWADDR[26:0]),
        .S_AXI_AWBURST(s_axi_2_AWBURST),
        .S_AXI_AWCACHE(s_axi_2_AWCACHE),
        .S_AXI_AWID(s_axi_2_AWID),
        .S_AXI_AWLEN(s_axi_2_AWLEN),
        .S_AXI_AWLOCK(s_axi_2_AWLOCK),
        .S_AXI_AWPROT(s_axi_2_AWPROT),
        .S_AXI_AWQOS(s_axi_2_AWQOS),
        .S_AXI_AWREADY(s_axi_2_AWREADY),
        .S_AXI_AWSIZE(s_axi_2_AWSIZE),
        .S_AXI_AWVALID(s_axi_2_AWVALID),
        .S_AXI_BID(s_axi_2_BID),
        .S_AXI_BREADY(s_axi_2_BREADY),
        .S_AXI_BRESP(s_axi_2_BRESP),
        .S_AXI_BVALID(s_axi_2_BVALID),
        .S_AXI_RDATA(s_axi_2_RDATA),
        .S_AXI_RID(s_axi_2_RID),
        .S_AXI_RLAST(s_axi_2_RLAST),
        .S_AXI_RREADY(s_axi_2_RREADY),
        .S_AXI_RRESP(s_axi_2_RRESP),
        .S_AXI_RVALID(s_axi_2_RVALID),
        .S_AXI_WDATA(s_axi_2_WDATA),
        .S_AXI_WLAST(s_axi_2_WLAST),
        .S_AXI_WREADY(s_axi_2_WREADY),
        .S_AXI_WSTRB(s_axi_2_WSTRB),
        .S_AXI_WVALID(s_axi_2_WVALID),
        .channel_up(axisafety_1_channel_up),
        .comb_aresetn(axisafety_1_M_AXI_ARESETN),
        .ext_resetn(axi_c2c_aurora_channel_up_0_1),
        .o_read_fault(axisafety_1_o_read_fault),
        .o_write_fault(axisafety_1_o_write_fault));
  design_1_axisafety_0_1 axisafety_2
       (.M_AXI_ACLK(Net),
        .M_AXI_ARADDR(axisafety_1_M_AXI_1_ARADDR),
        .M_AXI_ARBURST(axisafety_1_M_AXI_1_ARBURST),
        .M_AXI_ARID(axisafety_1_M_AXI_1_ARID),
        .M_AXI_ARLEN(axisafety_1_M_AXI_1_ARLEN),
        .M_AXI_ARREADY(axisafety_1_M_AXI_1_ARREADY),
        .M_AXI_ARSIZE(axisafety_1_M_AXI_1_ARSIZE),
        .M_AXI_ARVALID(axisafety_1_M_AXI_1_ARVALID),
        .M_AXI_AWADDR(axisafety_1_M_AXI_1_AWADDR),
        .M_AXI_AWBURST(axisafety_1_M_AXI_1_AWBURST),
        .M_AXI_AWID(axisafety_1_M_AXI_1_AWID),
        .M_AXI_AWLEN(axisafety_1_M_AXI_1_AWLEN),
        .M_AXI_AWREADY(axisafety_1_M_AXI_1_AWREADY),
        .M_AXI_AWSIZE(axisafety_1_M_AXI_1_AWSIZE),
        .M_AXI_AWVALID(axisafety_1_M_AXI_1_AWVALID),
        .M_AXI_BID(axisafety_1_M_AXI_1_BID),
        .M_AXI_BREADY(axisafety_1_M_AXI_1_BREADY),
        .M_AXI_BRESP(axisafety_1_M_AXI_1_BRESP),
        .M_AXI_BVALID(axisafety_1_M_AXI_1_BVALID),
        .M_AXI_RDATA(axisafety_1_M_AXI_1_RDATA),
        .M_AXI_RID(axisafety_1_M_AXI_1_RID),
        .M_AXI_RLAST(axisafety_1_M_AXI_1_RLAST),
        .M_AXI_RREADY(axisafety_1_M_AXI_1_RREADY),
        .M_AXI_RRESP(axisafety_1_M_AXI_1_RRESP),
        .M_AXI_RVALID(axisafety_1_M_AXI_1_RVALID),
        .M_AXI_WDATA(axisafety_1_M_AXI_1_WDATA),
        .M_AXI_WLAST(axisafety_1_M_AXI_1_WLAST),
        .M_AXI_WREADY(axisafety_1_M_AXI_1_WREADY),
        .M_AXI_WSTRB(axisafety_1_M_AXI_1_WSTRB),
        .M_AXI_WVALID(axisafety_1_M_AXI_1_WVALID),
        .S_AXI_ACLK(Net),
        .S_AXI_ARADDR(cpu_M14_AXI_ARADDR[26:0]),
        .S_AXI_ARBURST(cpu_M14_AXI_ARBURST),
        .S_AXI_ARCACHE(cpu_M14_AXI_ARCACHE),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARID(cpu_M14_AXI_ARID),
        .S_AXI_ARLEN(cpu_M14_AXI_ARLEN),
        .S_AXI_ARLOCK(cpu_M14_AXI_ARLOCK),
        .S_AXI_ARPROT(cpu_M14_AXI_ARPROT),
        .S_AXI_ARQOS(cpu_M14_AXI_ARQOS),
        .S_AXI_ARREADY(cpu_M14_AXI_ARREADY),
        .S_AXI_ARSIZE(cpu_M14_AXI_ARSIZE),
        .S_AXI_ARVALID(cpu_M14_AXI_ARVALID),
        .S_AXI_AWADDR(cpu_M14_AXI_AWADDR[26:0]),
        .S_AXI_AWBURST(cpu_M14_AXI_AWBURST),
        .S_AXI_AWCACHE(cpu_M14_AXI_AWCACHE),
        .S_AXI_AWID(cpu_M14_AXI_AWID),
        .S_AXI_AWLEN(cpu_M14_AXI_AWLEN),
        .S_AXI_AWLOCK(cpu_M14_AXI_AWLOCK),
        .S_AXI_AWPROT(cpu_M14_AXI_AWPROT),
        .S_AXI_AWQOS(cpu_M14_AXI_AWQOS),
        .S_AXI_AWREADY(cpu_M14_AXI_AWREADY),
        .S_AXI_AWSIZE(cpu_M14_AXI_AWSIZE),
        .S_AXI_AWVALID(cpu_M14_AXI_AWVALID),
        .S_AXI_BID(cpu_M14_AXI_BID),
        .S_AXI_BREADY(cpu_M14_AXI_BREADY),
        .S_AXI_BRESP(cpu_M14_AXI_BRESP),
        .S_AXI_BVALID(cpu_M14_AXI_BVALID),
        .S_AXI_RDATA(cpu_M14_AXI_RDATA),
        .S_AXI_RID(cpu_M14_AXI_RID),
        .S_AXI_RLAST(cpu_M14_AXI_RLAST),
        .S_AXI_RREADY(cpu_M14_AXI_RREADY),
        .S_AXI_RRESP(cpu_M14_AXI_RRESP),
        .S_AXI_RVALID(cpu_M14_AXI_RVALID),
        .S_AXI_WDATA(cpu_M14_AXI_WDATA),
        .S_AXI_WLAST(cpu_M14_AXI_WLAST),
        .S_AXI_WREADY(cpu_M14_AXI_WREADY),
        .S_AXI_WSTRB(cpu_M14_AXI_WSTRB),
        .S_AXI_WVALID(cpu_M14_AXI_WVALID),
        .channel_up(axisafety_2_channel_up),
        .comb_aresetn(axisafety_1_M_AXI_ARESETN_1),
        .ext_resetn(axi_c2c_aurora_channel_up_0_1));
  bram_loopback_imp_8MI6B2 bram_loopback
       (.S_AXI_ACLK(Net),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_araddr(cpu_M18_AXI_ARADDR),
        .S_AXI_arburst(cpu_M18_AXI_ARBURST),
        .S_AXI_arcache(cpu_M18_AXI_ARCACHE),
        .S_AXI_arid(cpu_M18_AXI_ARID),
        .S_AXI_arlen(cpu_M18_AXI_ARLEN),
        .S_AXI_arlock(cpu_M18_AXI_ARLOCK),
        .S_AXI_arprot(cpu_M18_AXI_ARPROT),
        .S_AXI_arready(cpu_M18_AXI_ARREADY),
        .S_AXI_arsize(cpu_M18_AXI_ARSIZE),
        .S_AXI_arvalid(cpu_M18_AXI_ARVALID),
        .S_AXI_awaddr(cpu_M18_AXI_AWADDR),
        .S_AXI_awburst(cpu_M18_AXI_AWBURST),
        .S_AXI_awcache(cpu_M18_AXI_AWCACHE),
        .S_AXI_awid(cpu_M18_AXI_AWID),
        .S_AXI_awlen(cpu_M18_AXI_AWLEN),
        .S_AXI_awlock(cpu_M18_AXI_AWLOCK),
        .S_AXI_awprot(cpu_M18_AXI_AWPROT),
        .S_AXI_awready(cpu_M18_AXI_AWREADY),
        .S_AXI_awsize(cpu_M18_AXI_AWSIZE),
        .S_AXI_awvalid(cpu_M18_AXI_AWVALID),
        .S_AXI_bid(cpu_M18_AXI_BID),
        .S_AXI_bready(cpu_M18_AXI_BREADY),
        .S_AXI_bresp(cpu_M18_AXI_BRESP),
        .S_AXI_bvalid(cpu_M18_AXI_BVALID),
        .S_AXI_rdata(cpu_M18_AXI_RDATA),
        .S_AXI_rid(cpu_M18_AXI_RID),
        .S_AXI_rlast(cpu_M18_AXI_RLAST),
        .S_AXI_rready(cpu_M18_AXI_RREADY),
        .S_AXI_rresp(cpu_M18_AXI_RRESP),
        .S_AXI_rvalid(cpu_M18_AXI_RVALID),
        .S_AXI_wdata(cpu_M18_AXI_WDATA),
        .S_AXI_wlast(cpu_M18_AXI_WLAST),
        .S_AXI_wready(cpu_M18_AXI_WREADY),
        .S_AXI_wstrb(cpu_M18_AXI_WSTRB),
        .S_AXI_wvalid(cpu_M18_AXI_WVALID));
  cpu_imp_11Y6JLO cpu
       (.DDR_addr(DDR_addr[14:0]),
        .DDR_ba(DDR_ba[2:0]),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm[3:0]),
        .DDR_dq(DDR_dq[31:0]),
        .DDR_dqs_n(DDR_dqs_n[3:0]),
        .DDR_dqs_p(DDR_dqs_p[3:0]),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0(Net),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .I2C1_SCL_I(ipmc_jtag_s0_o1),
        .I2C1_SCL_O(s0_i1_1),
        .I2C1_SCL_T(s0_t1_1),
        .I2C1_SDA_I(ipmc_jtag_s0_o),
        .I2C1_SDA_O(s0_i_1),
        .I2C1_SDA_T(s0_t_1),
        .In0(axi_ethernet_0_dma_mm2s_introut),
        .In1(axi_ethernet_0_dma_s2mm_introut),
        .In10(i2c_iic2intc_irpt3),
        .In11(i2c_iic2intc_irpt4),
        .In2(axi_ethernet_0_mac_irq),
        .In3(axi_ethernet_0_interrupt),
        .In4(ipmc_jtag_irq),
        .In5(ipmc_jtag_iic2intc_irpt),
        .In6(ipmc_jtag_irq1),
        .In7(i2c_iic2intc_irpt),
        .In8(i2c_iic2intc_irpt1),
        .In9(i2c_iic2intc_irpt2),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .M01_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .M02_AXI_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wvalid(ps7_0_axi_periph_M02_AXI_WVALID),
        .M03_AXI_araddr(s_axi_1_ARADDR),
        .M03_AXI_arprot(s_axi_1_ARPROT),
        .M03_AXI_arready(s_axi_1_ARREADY),
        .M03_AXI_arvalid(s_axi_1_ARVALID),
        .M03_AXI_awaddr(s_axi_1_AWADDR),
        .M03_AXI_awprot(s_axi_1_AWPROT),
        .M03_AXI_awready(s_axi_1_AWREADY),
        .M03_AXI_awvalid(s_axi_1_AWVALID),
        .M03_AXI_bready(s_axi_1_BREADY),
        .M03_AXI_bresp(s_axi_1_BRESP),
        .M03_AXI_bvalid(s_axi_1_BVALID),
        .M03_AXI_rdata(s_axi_1_RDATA),
        .M03_AXI_rready(s_axi_1_RREADY),
        .M03_AXI_rresp(s_axi_1_RRESP),
        .M03_AXI_rvalid(s_axi_1_RVALID),
        .M03_AXI_wdata(s_axi_1_WDATA),
        .M03_AXI_wready(s_axi_1_WREADY),
        .M03_AXI_wstrb(s_axi_1_WSTRB),
        .M03_AXI_wvalid(s_axi_1_WVALID),
        .M04_AXI_araddr(s_axi1_1_ARADDR),
        .M04_AXI_arprot(s_axi1_1_ARPROT),
        .M04_AXI_arready(s_axi1_1_ARREADY),
        .M04_AXI_arvalid(s_axi1_1_ARVALID),
        .M04_AXI_awaddr(s_axi1_1_AWADDR),
        .M04_AXI_awprot(s_axi1_1_AWPROT),
        .M04_AXI_awready(s_axi1_1_AWREADY),
        .M04_AXI_awvalid(s_axi1_1_AWVALID),
        .M04_AXI_bready(s_axi1_1_BREADY),
        .M04_AXI_bresp(s_axi1_1_BRESP),
        .M04_AXI_bvalid(s_axi1_1_BVALID),
        .M04_AXI_rdata(s_axi1_1_RDATA),
        .M04_AXI_rready(s_axi1_1_RREADY),
        .M04_AXI_rresp(s_axi1_1_RRESP),
        .M04_AXI_rvalid(s_axi1_1_RVALID),
        .M04_AXI_wdata(s_axi1_1_WDATA),
        .M04_AXI_wready(s_axi1_1_WREADY),
        .M04_AXI_wstrb(s_axi1_1_WSTRB),
        .M04_AXI_wvalid(s_axi1_1_WVALID),
        .M05_AXI_araddr(S_AXI2_1_ARADDR),
        .M05_AXI_arburst(S_AXI2_1_ARBURST),
        .M05_AXI_arcache(S_AXI2_1_ARCACHE),
        .M05_AXI_arid(S_AXI2_1_ARID),
        .M05_AXI_arlen(S_AXI2_1_ARLEN),
        .M05_AXI_arlock(S_AXI2_1_ARLOCK),
        .M05_AXI_arprot(S_AXI2_1_ARPROT),
        .M05_AXI_arready(S_AXI2_1_ARREADY),
        .M05_AXI_arsize(S_AXI2_1_ARSIZE),
        .M05_AXI_arvalid(S_AXI2_1_ARVALID),
        .M05_AXI_awaddr(S_AXI2_1_AWADDR),
        .M05_AXI_awburst(S_AXI2_1_AWBURST),
        .M05_AXI_awcache(S_AXI2_1_AWCACHE),
        .M05_AXI_awid(S_AXI2_1_AWID),
        .M05_AXI_awlen(S_AXI2_1_AWLEN),
        .M05_AXI_awlock(S_AXI2_1_AWLOCK),
        .M05_AXI_awprot(S_AXI2_1_AWPROT),
        .M05_AXI_awready(S_AXI2_1_AWREADY),
        .M05_AXI_awsize(S_AXI2_1_AWSIZE),
        .M05_AXI_awvalid(S_AXI2_1_AWVALID),
        .M05_AXI_bid(S_AXI2_1_BID),
        .M05_AXI_bready(S_AXI2_1_BREADY),
        .M05_AXI_bresp(S_AXI2_1_BRESP),
        .M05_AXI_bvalid(S_AXI2_1_BVALID),
        .M05_AXI_rdata(S_AXI2_1_RDATA),
        .M05_AXI_rid(S_AXI2_1_RID),
        .M05_AXI_rlast(S_AXI2_1_RLAST),
        .M05_AXI_rready(S_AXI2_1_RREADY),
        .M05_AXI_rresp(S_AXI2_1_RRESP),
        .M05_AXI_rvalid(S_AXI2_1_RVALID),
        .M05_AXI_wdata(S_AXI2_1_WDATA),
        .M05_AXI_wlast(S_AXI2_1_WLAST),
        .M05_AXI_wready(S_AXI2_1_WREADY),
        .M05_AXI_wstrb(S_AXI2_1_WSTRB),
        .M05_AXI_wvalid(S_AXI2_1_WVALID),
        .M06_AXI_araddr(S_AXI3_1_ARADDR),
        .M06_AXI_arready(S_AXI3_1_ARREADY),
        .M06_AXI_arvalid(S_AXI3_1_ARVALID),
        .M06_AXI_awaddr(S_AXI3_1_AWADDR),
        .M06_AXI_awready(S_AXI3_1_AWREADY),
        .M06_AXI_awvalid(S_AXI3_1_AWVALID),
        .M06_AXI_bready(S_AXI3_1_BREADY),
        .M06_AXI_bresp(S_AXI3_1_BRESP),
        .M06_AXI_bvalid(S_AXI3_1_BVALID),
        .M06_AXI_rdata(S_AXI3_1_RDATA),
        .M06_AXI_rready(S_AXI3_1_RREADY),
        .M06_AXI_rresp(S_AXI3_1_RRESP),
        .M06_AXI_rvalid(S_AXI3_1_RVALID),
        .M06_AXI_wdata(S_AXI3_1_WDATA),
        .M06_AXI_wready(S_AXI3_1_WREADY),
        .M06_AXI_wstrb(S_AXI3_1_WSTRB),
        .M06_AXI_wvalid(S_AXI3_1_WVALID),
        .M07_AXI_araddr(S_AXI4_1_ARADDR),
        .M07_AXI_arburst(S_AXI4_1_ARBURST),
        .M07_AXI_arcache(S_AXI4_1_ARCACHE),
        .M07_AXI_arid(S_AXI4_1_ARID),
        .M07_AXI_arlen(S_AXI4_1_ARLEN),
        .M07_AXI_arlock(S_AXI4_1_ARLOCK),
        .M07_AXI_arprot(S_AXI4_1_ARPROT),
        .M07_AXI_arready(S_AXI4_1_ARREADY),
        .M07_AXI_arsize(S_AXI4_1_ARSIZE),
        .M07_AXI_arvalid(S_AXI4_1_ARVALID),
        .M07_AXI_awaddr(S_AXI4_1_AWADDR),
        .M07_AXI_awburst(S_AXI4_1_AWBURST),
        .M07_AXI_awcache(S_AXI4_1_AWCACHE),
        .M07_AXI_awid(S_AXI4_1_AWID),
        .M07_AXI_awlen(S_AXI4_1_AWLEN),
        .M07_AXI_awlock(S_AXI4_1_AWLOCK),
        .M07_AXI_awprot(S_AXI4_1_AWPROT),
        .M07_AXI_awready(S_AXI4_1_AWREADY),
        .M07_AXI_awsize(S_AXI4_1_AWSIZE),
        .M07_AXI_awvalid(S_AXI4_1_AWVALID),
        .M07_AXI_bid(S_AXI4_1_BID),
        .M07_AXI_bready(S_AXI4_1_BREADY),
        .M07_AXI_bresp(S_AXI4_1_BRESP),
        .M07_AXI_bvalid(S_AXI4_1_BVALID),
        .M07_AXI_rdata(S_AXI4_1_RDATA),
        .M07_AXI_rid(S_AXI4_1_RID),
        .M07_AXI_rlast(S_AXI4_1_RLAST),
        .M07_AXI_rready(S_AXI4_1_RREADY),
        .M07_AXI_rresp(S_AXI4_1_RRESP),
        .M07_AXI_rvalid(S_AXI4_1_RVALID),
        .M07_AXI_wdata(S_AXI4_1_WDATA),
        .M07_AXI_wlast(S_AXI4_1_WLAST),
        .M07_AXI_wready(S_AXI4_1_WREADY),
        .M07_AXI_wstrb(S_AXI4_1_WSTRB),
        .M07_AXI_wvalid(S_AXI4_1_WVALID),
        .M08_AXI_araddr(S_AXI5_1_ARADDR),
        .M08_AXI_arready(S_AXI5_1_ARREADY),
        .M08_AXI_arvalid(S_AXI5_1_ARVALID),
        .M08_AXI_awaddr(S_AXI5_1_AWADDR),
        .M08_AXI_awready(S_AXI5_1_AWREADY),
        .M08_AXI_awvalid(S_AXI5_1_AWVALID),
        .M08_AXI_bready(S_AXI5_1_BREADY),
        .M08_AXI_bresp(S_AXI5_1_BRESP),
        .M08_AXI_bvalid(S_AXI5_1_BVALID),
        .M08_AXI_rdata(S_AXI5_1_RDATA),
        .M08_AXI_rready(S_AXI5_1_RREADY),
        .M08_AXI_rresp(S_AXI5_1_RRESP),
        .M08_AXI_rvalid(S_AXI5_1_RVALID),
        .M08_AXI_wdata(S_AXI5_1_WDATA),
        .M08_AXI_wready(S_AXI5_1_WREADY),
        .M08_AXI_wstrb(S_AXI5_1_WSTRB),
        .M08_AXI_wvalid(S_AXI5_1_WVALID),
        .M09_AXI_araddr(S_AXI6_1_ARADDR),
        .M09_AXI_arready(S_AXI6_1_ARREADY),
        .M09_AXI_arvalid(S_AXI6_1_ARVALID),
        .M09_AXI_awaddr(S_AXI6_1_AWADDR),
        .M09_AXI_awready(S_AXI6_1_AWREADY),
        .M09_AXI_awvalid(S_AXI6_1_AWVALID),
        .M09_AXI_bready(S_AXI6_1_BREADY),
        .M09_AXI_bresp(S_AXI6_1_BRESP),
        .M09_AXI_bvalid(S_AXI6_1_BVALID),
        .M09_AXI_rdata(S_AXI6_1_RDATA),
        .M09_AXI_rready(S_AXI6_1_RREADY),
        .M09_AXI_rresp(S_AXI6_1_RRESP),
        .M09_AXI_rvalid(S_AXI6_1_RVALID),
        .M09_AXI_wdata(S_AXI6_1_WDATA),
        .M09_AXI_wready(S_AXI6_1_WREADY),
        .M09_AXI_wstrb(S_AXI6_1_WSTRB),
        .M09_AXI_wvalid(S_AXI6_1_WVALID),
        .M10_AXI_araddr(cpu_M10_AXI_ARADDR),
        .M10_AXI_arready(cpu_M10_AXI_ARREADY),
        .M10_AXI_arvalid(cpu_M10_AXI_ARVALID),
        .M10_AXI_awaddr(cpu_M10_AXI_AWADDR),
        .M10_AXI_awready(cpu_M10_AXI_AWREADY),
        .M10_AXI_awvalid(cpu_M10_AXI_AWVALID),
        .M10_AXI_bready(cpu_M10_AXI_BREADY),
        .M10_AXI_bresp(cpu_M10_AXI_BRESP),
        .M10_AXI_bvalid(cpu_M10_AXI_BVALID),
        .M10_AXI_rdata(cpu_M10_AXI_RDATA),
        .M10_AXI_rready(cpu_M10_AXI_RREADY),
        .M10_AXI_rresp(cpu_M10_AXI_RRESP),
        .M10_AXI_rvalid(cpu_M10_AXI_RVALID),
        .M10_AXI_wdata(cpu_M10_AXI_WDATA),
        .M10_AXI_wready(cpu_M10_AXI_WREADY),
        .M10_AXI_wstrb(cpu_M10_AXI_WSTRB),
        .M10_AXI_wvalid(cpu_M10_AXI_WVALID),
        .M11_AXI_araddr(cpu_M11_AXI_ARADDR),
        .M11_AXI_arready(cpu_M11_AXI_ARREADY),
        .M11_AXI_arvalid(cpu_M11_AXI_ARVALID),
        .M11_AXI_awaddr(cpu_M11_AXI_AWADDR),
        .M11_AXI_awready(cpu_M11_AXI_AWREADY),
        .M11_AXI_awvalid(cpu_M11_AXI_AWVALID),
        .M11_AXI_bready(cpu_M11_AXI_BREADY),
        .M11_AXI_bresp(cpu_M11_AXI_BRESP),
        .M11_AXI_bvalid(cpu_M11_AXI_BVALID),
        .M11_AXI_rdata(cpu_M11_AXI_RDATA),
        .M11_AXI_rready(cpu_M11_AXI_RREADY),
        .M11_AXI_rresp(cpu_M11_AXI_RRESP),
        .M11_AXI_rvalid(cpu_M11_AXI_RVALID),
        .M11_AXI_wdata(cpu_M11_AXI_WDATA),
        .M11_AXI_wready(cpu_M11_AXI_WREADY),
        .M11_AXI_wstrb(cpu_M11_AXI_WSTRB),
        .M11_AXI_wvalid(cpu_M11_AXI_WVALID),
        .M12_AXI_araddr(cpu_M12_AXI_ARADDR),
        .M12_AXI_arready(cpu_M12_AXI_ARREADY),
        .M12_AXI_arvalid(cpu_M12_AXI_ARVALID),
        .M12_AXI_awaddr(cpu_M12_AXI_AWADDR),
        .M12_AXI_awready(cpu_M12_AXI_AWREADY),
        .M12_AXI_awvalid(cpu_M12_AXI_AWVALID),
        .M12_AXI_bready(cpu_M12_AXI_BREADY),
        .M12_AXI_bresp(cpu_M12_AXI_BRESP),
        .M12_AXI_bvalid(cpu_M12_AXI_BVALID),
        .M12_AXI_rdata(cpu_M12_AXI_RDATA),
        .M12_AXI_rready(cpu_M12_AXI_RREADY),
        .M12_AXI_rresp(cpu_M12_AXI_RRESP),
        .M12_AXI_rvalid(cpu_M12_AXI_RVALID),
        .M12_AXI_wdata(cpu_M12_AXI_WDATA),
        .M12_AXI_wready(cpu_M12_AXI_WREADY),
        .M12_AXI_wstrb(cpu_M12_AXI_WSTRB),
        .M12_AXI_wvalid(cpu_M12_AXI_WVALID),
        .M13_AXI_araddr(cpu_M13_AXI_ARADDR),
        .M13_AXI_arready(cpu_M13_AXI_ARREADY),
        .M13_AXI_arvalid(cpu_M13_AXI_ARVALID),
        .M13_AXI_awaddr(cpu_M13_AXI_AWADDR),
        .M13_AXI_awready(cpu_M13_AXI_AWREADY),
        .M13_AXI_awvalid(cpu_M13_AXI_AWVALID),
        .M13_AXI_bready(cpu_M13_AXI_BREADY),
        .M13_AXI_bresp(cpu_M13_AXI_BRESP),
        .M13_AXI_bvalid(cpu_M13_AXI_BVALID),
        .M13_AXI_rdata(cpu_M13_AXI_RDATA),
        .M13_AXI_rready(cpu_M13_AXI_RREADY),
        .M13_AXI_rresp(cpu_M13_AXI_RRESP),
        .M13_AXI_rvalid(cpu_M13_AXI_RVALID),
        .M13_AXI_wdata(cpu_M13_AXI_WDATA),
        .M13_AXI_wready(cpu_M13_AXI_WREADY),
        .M13_AXI_wstrb(cpu_M13_AXI_WSTRB),
        .M13_AXI_wvalid(cpu_M13_AXI_WVALID),
        .M14_AXI_araddr(cpu_M14_AXI_ARADDR),
        .M14_AXI_arburst(cpu_M14_AXI_ARBURST),
        .M14_AXI_arcache(cpu_M14_AXI_ARCACHE),
        .M14_AXI_arid(cpu_M14_AXI_ARID),
        .M14_AXI_arlen(cpu_M14_AXI_ARLEN),
        .M14_AXI_arlock(cpu_M14_AXI_ARLOCK),
        .M14_AXI_arprot(cpu_M14_AXI_ARPROT),
        .M14_AXI_arqos(cpu_M14_AXI_ARQOS),
        .M14_AXI_arready(cpu_M14_AXI_ARREADY),
        .M14_AXI_arsize(cpu_M14_AXI_ARSIZE),
        .M14_AXI_arvalid(cpu_M14_AXI_ARVALID),
        .M14_AXI_awaddr(cpu_M14_AXI_AWADDR),
        .M14_AXI_awburst(cpu_M14_AXI_AWBURST),
        .M14_AXI_awcache(cpu_M14_AXI_AWCACHE),
        .M14_AXI_awid(cpu_M14_AXI_AWID),
        .M14_AXI_awlen(cpu_M14_AXI_AWLEN),
        .M14_AXI_awlock(cpu_M14_AXI_AWLOCK),
        .M14_AXI_awprot(cpu_M14_AXI_AWPROT),
        .M14_AXI_awqos(cpu_M14_AXI_AWQOS),
        .M14_AXI_awready(cpu_M14_AXI_AWREADY),
        .M14_AXI_awsize(cpu_M14_AXI_AWSIZE),
        .M14_AXI_awvalid(cpu_M14_AXI_AWVALID),
        .M14_AXI_bid(cpu_M14_AXI_BID),
        .M14_AXI_bready(cpu_M14_AXI_BREADY),
        .M14_AXI_bresp(cpu_M14_AXI_BRESP),
        .M14_AXI_bvalid(cpu_M14_AXI_BVALID),
        .M14_AXI_rdata(cpu_M14_AXI_RDATA),
        .M14_AXI_rid(cpu_M14_AXI_RID),
        .M14_AXI_rlast(cpu_M14_AXI_RLAST),
        .M14_AXI_rready(cpu_M14_AXI_RREADY),
        .M14_AXI_rresp(cpu_M14_AXI_RRESP),
        .M14_AXI_rvalid(cpu_M14_AXI_RVALID),
        .M14_AXI_wdata(cpu_M14_AXI_WDATA),
        .M14_AXI_wlast(cpu_M14_AXI_WLAST),
        .M14_AXI_wready(cpu_M14_AXI_WREADY),
        .M14_AXI_wstrb(cpu_M14_AXI_WSTRB),
        .M14_AXI_wvalid(cpu_M14_AXI_WVALID),
        .M15_AXI_araddr(s_axi_2_ARADDR),
        .M15_AXI_arburst(s_axi_2_ARBURST),
        .M15_AXI_arcache(s_axi_2_ARCACHE),
        .M15_AXI_arid(s_axi_2_ARID),
        .M15_AXI_arlen(s_axi_2_ARLEN),
        .M15_AXI_arlock(s_axi_2_ARLOCK),
        .M15_AXI_arprot(s_axi_2_ARPROT),
        .M15_AXI_arqos(s_axi_2_ARQOS),
        .M15_AXI_arready(s_axi_2_ARREADY),
        .M15_AXI_arsize(s_axi_2_ARSIZE),
        .M15_AXI_arvalid(s_axi_2_ARVALID),
        .M15_AXI_awaddr(s_axi_2_AWADDR),
        .M15_AXI_awburst(s_axi_2_AWBURST),
        .M15_AXI_awcache(s_axi_2_AWCACHE),
        .M15_AXI_awid(s_axi_2_AWID),
        .M15_AXI_awlen(s_axi_2_AWLEN),
        .M15_AXI_awlock(s_axi_2_AWLOCK),
        .M15_AXI_awprot(s_axi_2_AWPROT),
        .M15_AXI_awqos(s_axi_2_AWQOS),
        .M15_AXI_awready(s_axi_2_AWREADY),
        .M15_AXI_awsize(s_axi_2_AWSIZE),
        .M15_AXI_awvalid(s_axi_2_AWVALID),
        .M15_AXI_bid(s_axi_2_BID),
        .M15_AXI_bready(s_axi_2_BREADY),
        .M15_AXI_bresp(s_axi_2_BRESP),
        .M15_AXI_bvalid(s_axi_2_BVALID),
        .M15_AXI_rdata(s_axi_2_RDATA),
        .M15_AXI_rid(s_axi_2_RID),
        .M15_AXI_rlast(s_axi_2_RLAST),
        .M15_AXI_rready(s_axi_2_RREADY),
        .M15_AXI_rresp(s_axi_2_RRESP),
        .M15_AXI_rvalid(s_axi_2_RVALID),
        .M15_AXI_wdata(s_axi_2_WDATA),
        .M15_AXI_wlast(s_axi_2_WLAST),
        .M15_AXI_wready(s_axi_2_WREADY),
        .M15_AXI_wstrb(s_axi_2_WSTRB),
        .M15_AXI_wvalid(s_axi_2_WVALID),
        .M16_AXI_araddr(cpu_M16_AXI_ARADDR),
        .M16_AXI_arready(cpu_M16_AXI_ARREADY),
        .M16_AXI_arvalid(cpu_M16_AXI_ARVALID),
        .M16_AXI_awaddr(cpu_M16_AXI_AWADDR),
        .M16_AXI_awready(cpu_M16_AXI_AWREADY),
        .M16_AXI_awvalid(cpu_M16_AXI_AWVALID),
        .M16_AXI_bready(cpu_M16_AXI_BREADY),
        .M16_AXI_bresp(cpu_M16_AXI_BRESP),
        .M16_AXI_bvalid(cpu_M16_AXI_BVALID),
        .M16_AXI_rdata(cpu_M16_AXI_RDATA),
        .M16_AXI_rready(cpu_M16_AXI_RREADY),
        .M16_AXI_rresp(cpu_M16_AXI_RRESP),
        .M16_AXI_rvalid(cpu_M16_AXI_RVALID),
        .M16_AXI_wdata(cpu_M16_AXI_WDATA),
        .M16_AXI_wready(cpu_M16_AXI_WREADY),
        .M16_AXI_wstrb(cpu_M16_AXI_WSTRB),
        .M16_AXI_wvalid(cpu_M16_AXI_WVALID),
        .M17_AXI_araddr(cpu_M17_AXI_ARADDR),
        .M17_AXI_arready(cpu_M17_AXI_ARREADY),
        .M17_AXI_arvalid(cpu_M17_AXI_ARVALID),
        .M17_AXI_awaddr(cpu_M17_AXI_AWADDR),
        .M17_AXI_awready(cpu_M17_AXI_AWREADY),
        .M17_AXI_awvalid(cpu_M17_AXI_AWVALID),
        .M17_AXI_bready(cpu_M17_AXI_BREADY),
        .M17_AXI_bresp(cpu_M17_AXI_BRESP),
        .M17_AXI_bvalid(cpu_M17_AXI_BVALID),
        .M17_AXI_rdata(cpu_M17_AXI_RDATA),
        .M17_AXI_rready(cpu_M17_AXI_RREADY),
        .M17_AXI_rresp(cpu_M17_AXI_RRESP),
        .M17_AXI_rvalid(cpu_M17_AXI_RVALID),
        .M17_AXI_wdata(cpu_M17_AXI_WDATA),
        .M17_AXI_wready(cpu_M17_AXI_WREADY),
        .M17_AXI_wstrb(cpu_M17_AXI_WSTRB),
        .M17_AXI_wvalid(cpu_M17_AXI_WVALID),
        .M18_AXI_araddr(cpu_M18_AXI_ARADDR),
        .M18_AXI_arburst(cpu_M18_AXI_ARBURST),
        .M18_AXI_arcache(cpu_M18_AXI_ARCACHE),
        .M18_AXI_arid(cpu_M18_AXI_ARID),
        .M18_AXI_arlen(cpu_M18_AXI_ARLEN),
        .M18_AXI_arlock(cpu_M18_AXI_ARLOCK),
        .M18_AXI_arprot(cpu_M18_AXI_ARPROT),
        .M18_AXI_arready(cpu_M18_AXI_ARREADY),
        .M18_AXI_arsize(cpu_M18_AXI_ARSIZE),
        .M18_AXI_arvalid(cpu_M18_AXI_ARVALID),
        .M18_AXI_awaddr(cpu_M18_AXI_AWADDR),
        .M18_AXI_awburst(cpu_M18_AXI_AWBURST),
        .M18_AXI_awcache(cpu_M18_AXI_AWCACHE),
        .M18_AXI_awid(cpu_M18_AXI_AWID),
        .M18_AXI_awlen(cpu_M18_AXI_AWLEN),
        .M18_AXI_awlock(cpu_M18_AXI_AWLOCK),
        .M18_AXI_awprot(cpu_M18_AXI_AWPROT),
        .M18_AXI_awready(cpu_M18_AXI_AWREADY),
        .M18_AXI_awsize(cpu_M18_AXI_AWSIZE),
        .M18_AXI_awvalid(cpu_M18_AXI_AWVALID),
        .M18_AXI_bid(cpu_M18_AXI_BID),
        .M18_AXI_bready(cpu_M18_AXI_BREADY),
        .M18_AXI_bresp(cpu_M18_AXI_BRESP),
        .M18_AXI_bvalid(cpu_M18_AXI_BVALID),
        .M18_AXI_rdata(cpu_M18_AXI_RDATA),
        .M18_AXI_rid(cpu_M18_AXI_RID),
        .M18_AXI_rlast(cpu_M18_AXI_RLAST),
        .M18_AXI_rready(cpu_M18_AXI_RREADY),
        .M18_AXI_rresp(cpu_M18_AXI_RRESP),
        .M18_AXI_rvalid(cpu_M18_AXI_RVALID),
        .M18_AXI_wdata(cpu_M18_AXI_WDATA),
        .M18_AXI_wlast(cpu_M18_AXI_WLAST),
        .M18_AXI_wready(cpu_M18_AXI_WREADY),
        .M18_AXI_wstrb(cpu_M18_AXI_WSTRB),
        .M18_AXI_wvalid(cpu_M18_AXI_WVALID),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_HP0_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_arid(axi_mem_intercon_M00_AXI_ARID),
        .S_AXI_HP0_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_awid(axi_mem_intercon_M00_AXI_AWID),
        .S_AXI_HP0_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_bid(axi_mem_intercon_M00_AXI_BID),
        .S_AXI_HP0_bready(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_rid(axi_mem_intercon_M00_AXI_RID),
        .S_AXI_HP0_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_rready(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_wid(axi_mem_intercon_M00_AXI_WID),
        .S_AXI_HP0_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_wready(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(ARESETN_1));
  dbg_imp_5R9Y5 dbg
       (.S_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .S_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .S_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .S_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .S_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .S_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .S_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .S_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .S_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .S_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .clk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  eth1_imp_10C2ZQ7 eth1
       (.ARESETN(ARESETN_1),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S_AXI_LITE_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .S_AXI_LITE_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .S_AXI_LITE_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .S_AXI_LITE_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .S_AXI_LITE_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .S_AXI_LITE_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .S_AXI_LITE_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .S_AXI_LITE_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .S_AXI_LITE_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .S_AXI_LITE_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .S_AXI_LITE_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .S_AXI_LITE_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .S_AXI_LITE_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .S_AXI_LITE_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .S_AXI_LITE_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .S_AXI_LITE_wvalid(ps7_0_axi_periph_M02_AXI_WVALID),
        .axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .gtx_clk(processing_system7_0_FCLK_CLK2),
        .interrupt(axi_ethernet_0_interrupt),
        .mac_irq(axi_ethernet_0_mac_irq),
        .mdio_phy_mdc(axi_ethernet_0_mdio_MDC),
        .mdio_phy_mdio_i(axi_ethernet_0_mdio_MDIO_I),
        .mdio_phy_mdio_o(axi_ethernet_0_mdio_MDIO_O),
        .mdio_phy_mdio_t(axi_ethernet_0_mdio_MDIO_T),
        .mm2s_introut(axi_ethernet_0_dma_mm2s_introut),
        .phy_rst(axi_ethernet_0_phy_rst_n),
        .ref_clk(processing_system7_0_FCLK_CLK1),
        .rgmii_rd(axi_ethernet_0_rgmii_RD),
        .rgmii_rx_ctl(axi_ethernet_0_rgmii_RX_CTL),
        .rgmii_rxc(axi_ethernet_0_rgmii_RXC),
        .rgmii_td(axi_ethernet_0_rgmii_TD),
        .rgmii_tx_ctl(axi_ethernet_0_rgmii_TX_CTL),
        .rgmii_txc(axi_ethernet_0_rgmii_TXC),
        .s2mm_introut(axi_ethernet_0_dma_s2mm_introut),
        .s_axi_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .s_axi_lite_aclk(Net),
        .s_axi_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps7_0_axi_periph_M00_AXI_WVALID));
  i2c_imp_DBF5UM i2c
       (.S_AXI1_araddr(cpu_M12_AXI_ARADDR),
        .S_AXI1_arready(cpu_M12_AXI_ARREADY),
        .S_AXI1_arvalid(cpu_M12_AXI_ARVALID),
        .S_AXI1_awaddr(cpu_M12_AXI_AWADDR),
        .S_AXI1_awready(cpu_M12_AXI_AWREADY),
        .S_AXI1_awvalid(cpu_M12_AXI_AWVALID),
        .S_AXI1_bready(cpu_M12_AXI_BREADY),
        .S_AXI1_bresp(cpu_M12_AXI_BRESP),
        .S_AXI1_bvalid(cpu_M12_AXI_BVALID),
        .S_AXI1_rdata(cpu_M12_AXI_RDATA),
        .S_AXI1_rready(cpu_M12_AXI_RREADY),
        .S_AXI1_rresp(cpu_M12_AXI_RRESP),
        .S_AXI1_rvalid(cpu_M12_AXI_RVALID),
        .S_AXI1_wdata(cpu_M12_AXI_WDATA),
        .S_AXI1_wready(cpu_M12_AXI_WREADY),
        .S_AXI1_wstrb(cpu_M12_AXI_WSTRB),
        .S_AXI1_wvalid(cpu_M12_AXI_WVALID),
        .S_AXI2_araddr(cpu_M10_AXI_ARADDR),
        .S_AXI2_arready(cpu_M10_AXI_ARREADY),
        .S_AXI2_arvalid(cpu_M10_AXI_ARVALID),
        .S_AXI2_awaddr(cpu_M10_AXI_AWADDR),
        .S_AXI2_awready(cpu_M10_AXI_AWREADY),
        .S_AXI2_awvalid(cpu_M10_AXI_AWVALID),
        .S_AXI2_bready(cpu_M10_AXI_BREADY),
        .S_AXI2_bresp(cpu_M10_AXI_BRESP),
        .S_AXI2_bvalid(cpu_M10_AXI_BVALID),
        .S_AXI2_rdata(cpu_M10_AXI_RDATA),
        .S_AXI2_rready(cpu_M10_AXI_RREADY),
        .S_AXI2_rresp(cpu_M10_AXI_RRESP),
        .S_AXI2_rvalid(cpu_M10_AXI_RVALID),
        .S_AXI2_wdata(cpu_M10_AXI_WDATA),
        .S_AXI2_wready(cpu_M10_AXI_WREADY),
        .S_AXI2_wstrb(cpu_M10_AXI_WSTRB),
        .S_AXI2_wvalid(cpu_M10_AXI_WVALID),
        .S_AXI3_araddr(cpu_M16_AXI_ARADDR),
        .S_AXI3_arready(cpu_M16_AXI_ARREADY),
        .S_AXI3_arvalid(cpu_M16_AXI_ARVALID),
        .S_AXI3_awaddr(cpu_M16_AXI_AWADDR),
        .S_AXI3_awready(cpu_M16_AXI_AWREADY),
        .S_AXI3_awvalid(cpu_M16_AXI_AWVALID),
        .S_AXI3_bready(cpu_M16_AXI_BREADY),
        .S_AXI3_bresp(cpu_M16_AXI_BRESP),
        .S_AXI3_bvalid(cpu_M16_AXI_BVALID),
        .S_AXI3_rdata(cpu_M16_AXI_RDATA),
        .S_AXI3_rready(cpu_M16_AXI_RREADY),
        .S_AXI3_rresp(cpu_M16_AXI_RRESP),
        .S_AXI3_rvalid(cpu_M16_AXI_RVALID),
        .S_AXI3_wdata(cpu_M16_AXI_WDATA),
        .S_AXI3_wready(cpu_M16_AXI_WREADY),
        .S_AXI3_wstrb(cpu_M16_AXI_WSTRB),
        .S_AXI3_wvalid(cpu_M16_AXI_WVALID),
        .S_AXI4_araddr(cpu_M17_AXI_ARADDR),
        .S_AXI4_arready(cpu_M17_AXI_ARREADY),
        .S_AXI4_arvalid(cpu_M17_AXI_ARVALID),
        .S_AXI4_awaddr(cpu_M17_AXI_AWADDR),
        .S_AXI4_awready(cpu_M17_AXI_AWREADY),
        .S_AXI4_awvalid(cpu_M17_AXI_AWVALID),
        .S_AXI4_bready(cpu_M17_AXI_BREADY),
        .S_AXI4_bresp(cpu_M17_AXI_BRESP),
        .S_AXI4_bvalid(cpu_M17_AXI_BVALID),
        .S_AXI4_rdata(cpu_M17_AXI_RDATA),
        .S_AXI4_rready(cpu_M17_AXI_RREADY),
        .S_AXI4_rresp(cpu_M17_AXI_RRESP),
        .S_AXI4_rvalid(cpu_M17_AXI_RVALID),
        .S_AXI4_wdata(cpu_M17_AXI_WDATA),
        .S_AXI4_wready(cpu_M17_AXI_WREADY),
        .S_AXI4_wstrb(cpu_M17_AXI_WSTRB),
        .S_AXI4_wvalid(cpu_M17_AXI_WVALID),
        .S_AXI_araddr(cpu_M11_AXI_ARADDR),
        .S_AXI_arready(cpu_M11_AXI_ARREADY),
        .S_AXI_arvalid(cpu_M11_AXI_ARVALID),
        .S_AXI_awaddr(cpu_M11_AXI_AWADDR),
        .S_AXI_awready(cpu_M11_AXI_AWREADY),
        .S_AXI_awvalid(cpu_M11_AXI_AWVALID),
        .S_AXI_bready(cpu_M11_AXI_BREADY),
        .S_AXI_bresp(cpu_M11_AXI_BRESP),
        .S_AXI_bvalid(cpu_M11_AXI_BVALID),
        .S_AXI_rdata(cpu_M11_AXI_RDATA),
        .S_AXI_rready(cpu_M11_AXI_RREADY),
        .S_AXI_rresp(cpu_M11_AXI_RRESP),
        .S_AXI_rvalid(cpu_M11_AXI_RVALID),
        .S_AXI_wdata(cpu_M11_AXI_WDATA),
        .S_AXI_wready(cpu_M11_AXI_WREADY),
        .S_AXI_wstrb(cpu_M11_AXI_WSTRB),
        .S_AXI_wvalid(cpu_M11_AXI_WVALID),
        .iic2intc_irpt(i2c_iic2intc_irpt),
        .iic2intc_irpt1(i2c_iic2intc_irpt1),
        .iic2intc_irpt2(i2c_iic2intc_irpt2),
        .iic2intc_irpt3(i2c_iic2intc_irpt3),
        .iic2intc_irpt4(i2c_iic2intc_irpt4),
        .iic_rtl_0_scl_i(axi_iic_0_IIC_SCL_I),
        .iic_rtl_0_scl_o(axi_iic_0_IIC_SCL_O),
        .iic_rtl_0_scl_t(axi_iic_0_IIC_SCL_T),
        .iic_rtl_0_sda_i(axi_iic_0_IIC_SDA_I),
        .iic_rtl_0_sda_o(axi_iic_0_IIC_SDA_O),
        .iic_rtl_0_sda_t(axi_iic_0_IIC_SDA_T),
        .iic_rtl_1_scl_i(axi_iic_1_IIC_SCL_I),
        .iic_rtl_1_scl_o(axi_iic_1_IIC_SCL_O),
        .iic_rtl_1_scl_t(axi_iic_1_IIC_SCL_T),
        .iic_rtl_1_sda_i(axi_iic_1_IIC_SDA_I),
        .iic_rtl_1_sda_o(axi_iic_1_IIC_SDA_O),
        .iic_rtl_1_sda_t(axi_iic_1_IIC_SDA_T),
        .iic_rtl_2_scl_i(axi_iic_2_IIC_SCL_I),
        .iic_rtl_2_scl_o(axi_iic_2_IIC_SCL_O),
        .iic_rtl_2_scl_t(axi_iic_2_IIC_SCL_T),
        .iic_rtl_2_sda_i(axi_iic_2_IIC_SDA_I),
        .iic_rtl_2_sda_o(axi_iic_2_IIC_SDA_O),
        .iic_rtl_2_sda_t(axi_iic_2_IIC_SDA_T),
        .iic_rtl_3_scl_i(i2c_iic_rtl_3_SCL_I),
        .iic_rtl_3_scl_o(i2c_iic_rtl_3_SCL_O),
        .iic_rtl_3_scl_t(i2c_iic_rtl_3_SCL_T),
        .iic_rtl_3_sda_i(i2c_iic_rtl_3_SDA_I),
        .iic_rtl_3_sda_o(i2c_iic_rtl_3_SDA_O),
        .iic_rtl_3_sda_t(i2c_iic_rtl_3_SDA_T),
        .iic_rtl_4_scl_i(i2c_iic_rtl_4_SCL_I),
        .iic_rtl_4_scl_o(i2c_iic_rtl_4_SCL_O),
        .iic_rtl_4_scl_t(i2c_iic_rtl_4_SCL_T),
        .iic_rtl_4_sda_i(i2c_iic_rtl_4_SDA_I),
        .iic_rtl_4_sda_o(i2c_iic_rtl_4_SDA_O),
        .iic_rtl_4_sda_t(i2c_iic_rtl_4_SDA_T),
        .s_axi_aclk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  design_1_ila_0_0 ila_0
       (.clk(axi_c2c_phy_clk_0_1),
        .probe0(probe0_0_1),
        .probe1(chip2chip_0_axi_c2c_link_status_out),
        .probe10(chip2chip_bot_ff_aurora_reset_pb),
        .probe11(chip2chip_bot_ff_axi_c2c_config_error_out),
        .probe12(chip2chip_bot_ff_axi_c2c_multi_bit_error_out),
        .probe13(chip2chip_bot_ff_axi_c2c_link_error_out),
        .probe14(chip2chip_bot_ff_aurora_do_cc),
        .probe15(rxd_raw0),
        .probe16(rxd_raw1),
        .probe17(rxd_raw2),
        .probe18(rxd_raw3),
        .probe19(rxk_raw0),
        .probe2(chip2chip_1_axi_c2c_link_status_out),
        .probe20(rxk_raw1),
        .probe21(rxk_raw2),
        .probe22(rxk_raw3),
        .probe23(align_b0),
        .probe24(align_lock),
        .probe25(AXIS_RX_0_tdata_0_1),
        .probe26(AXIS_RX_0_tvalid_0_1),
        .probe27(AXIS_RX_0_tdata_1_1),
        .probe28(AXIS_RX_0_tvalid_1_1),
        .probe29(axi_chip2chip_1_axi_c2c_aurora_tx_tdata),
        .probe3(chip2chip_top_ff_aurora_do_cc),
        .probe30(axi_chip2chip_1_axi_c2c_aurora_tx_tvalid),
        .probe31(axisafety_1_M_AXI_ARESETN_1),
        .probe32(axi_chip2chip_0_axi_c2c_aurora_tx_tdata),
        .probe33(axi_chip2chip_0_axi_c2c_aurora_tx_tvalid),
        .probe34(axisafety_2_channel_up),
        .probe35(axisafety_1_M_AXI_ARESETN),
        .probe36(axisafety_1_channel_up),
        .probe37(proc_sys_reset_0_peripheral_aresetn),
        .probe38(axisafety_1_o_read_fault),
        .probe39(axisafety_1_o_write_fault),
        .probe4(chip2chip_top_ff_aurora_pma_init_out),
        .probe40(rxclkcorcnt_top),
        .probe41(rxclkcorcnt_bot),
        .probe42(txd_raw0),
        .probe43(txd_raw1),
        .probe44(txd_raw2),
        .probe45(txd_raw3),
        .probe46(txk_raw0),
        .probe47(txk_raw1),
        .probe48(txk_raw2),
        .probe49(txk_raw3),
        .probe5(chip2chip_top_ff_aurora_reset_pb),
        .probe6(chip2chip_top_ff_axi_c2c_config_error_out),
        .probe7(chip2chip_top_ff_axi_c2c_multi_bit_error_out),
        .probe8(chip2chip_top_ff_axi_c2c_link_error_out),
        .probe9(chip2chip_bot_ff_aurora_pma_init_out_0));
  ipmc_imp_13B1Q7C ipmc
       (.S_AXI1_araddr(S_AXI4_1_ARADDR),
        .S_AXI1_arburst(S_AXI4_1_ARBURST),
        .S_AXI1_arcache(S_AXI4_1_ARCACHE),
        .S_AXI1_arid(S_AXI4_1_ARID),
        .S_AXI1_arlen(S_AXI4_1_ARLEN),
        .S_AXI1_arlock(S_AXI4_1_ARLOCK),
        .S_AXI1_arprot(S_AXI4_1_ARPROT),
        .S_AXI1_arready(S_AXI4_1_ARREADY),
        .S_AXI1_arsize(S_AXI4_1_ARSIZE),
        .S_AXI1_arvalid(S_AXI4_1_ARVALID),
        .S_AXI1_awaddr(S_AXI4_1_AWADDR),
        .S_AXI1_awburst(S_AXI4_1_AWBURST),
        .S_AXI1_awcache(S_AXI4_1_AWCACHE),
        .S_AXI1_awid(S_AXI4_1_AWID),
        .S_AXI1_awlen(S_AXI4_1_AWLEN),
        .S_AXI1_awlock(S_AXI4_1_AWLOCK),
        .S_AXI1_awprot(S_AXI4_1_AWPROT),
        .S_AXI1_awready(S_AXI4_1_AWREADY),
        .S_AXI1_awsize(S_AXI4_1_AWSIZE),
        .S_AXI1_awvalid(S_AXI4_1_AWVALID),
        .S_AXI1_bid(S_AXI4_1_BID),
        .S_AXI1_bready(S_AXI4_1_BREADY),
        .S_AXI1_bresp(S_AXI4_1_BRESP),
        .S_AXI1_bvalid(S_AXI4_1_BVALID),
        .S_AXI1_rdata(S_AXI4_1_RDATA),
        .S_AXI1_rid(S_AXI4_1_RID),
        .S_AXI1_rlast(S_AXI4_1_RLAST),
        .S_AXI1_rready(S_AXI4_1_RREADY),
        .S_AXI1_rresp(S_AXI4_1_RRESP),
        .S_AXI1_rvalid(S_AXI4_1_RVALID),
        .S_AXI1_wdata(S_AXI4_1_WDATA),
        .S_AXI1_wlast(S_AXI4_1_WLAST),
        .S_AXI1_wready(S_AXI4_1_WREADY),
        .S_AXI1_wstrb(S_AXI4_1_WSTRB),
        .S_AXI1_wvalid(S_AXI4_1_WVALID),
        .S_AXI2_araddr(S_AXI3_1_ARADDR),
        .S_AXI2_arready(S_AXI3_1_ARREADY),
        .S_AXI2_arvalid(S_AXI3_1_ARVALID),
        .S_AXI2_awaddr(S_AXI3_1_AWADDR),
        .S_AXI2_awready(S_AXI3_1_AWREADY),
        .S_AXI2_awvalid(S_AXI3_1_AWVALID),
        .S_AXI2_bready(S_AXI3_1_BREADY),
        .S_AXI2_bresp(S_AXI3_1_BRESP),
        .S_AXI2_bvalid(S_AXI3_1_BVALID),
        .S_AXI2_rdata(S_AXI3_1_RDATA),
        .S_AXI2_rready(S_AXI3_1_RREADY),
        .S_AXI2_rresp(S_AXI3_1_RRESP),
        .S_AXI2_rvalid(S_AXI3_1_RVALID),
        .S_AXI2_wdata(S_AXI3_1_WDATA),
        .S_AXI2_wready(S_AXI3_1_WREADY),
        .S_AXI2_wstrb(S_AXI3_1_WSTRB),
        .S_AXI2_wvalid(S_AXI3_1_WVALID),
        .S_AXI3_araddr(S_AXI5_1_ARADDR),
        .S_AXI3_arready(S_AXI5_1_ARREADY),
        .S_AXI3_arvalid(S_AXI5_1_ARVALID),
        .S_AXI3_awaddr(S_AXI5_1_AWADDR),
        .S_AXI3_awready(S_AXI5_1_AWREADY),
        .S_AXI3_awvalid(S_AXI5_1_AWVALID),
        .S_AXI3_bready(S_AXI5_1_BREADY),
        .S_AXI3_bresp(S_AXI5_1_BRESP),
        .S_AXI3_bvalid(S_AXI5_1_BVALID),
        .S_AXI3_rdata(S_AXI5_1_RDATA),
        .S_AXI3_rready(S_AXI5_1_RREADY),
        .S_AXI3_rresp(S_AXI5_1_RRESP),
        .S_AXI3_rvalid(S_AXI5_1_RVALID),
        .S_AXI3_wdata(S_AXI5_1_WDATA),
        .S_AXI3_wready(S_AXI5_1_WREADY),
        .S_AXI3_wstrb(S_AXI5_1_WSTRB),
        .S_AXI3_wvalid(S_AXI5_1_WVALID),
        .S_AXI4_araddr(S_AXI6_1_ARADDR),
        .S_AXI4_arready(S_AXI6_1_ARREADY),
        .S_AXI4_arvalid(S_AXI6_1_ARVALID),
        .S_AXI4_awaddr(S_AXI6_1_AWADDR),
        .S_AXI4_awready(S_AXI6_1_AWREADY),
        .S_AXI4_awvalid(S_AXI6_1_AWVALID),
        .S_AXI4_bready(S_AXI6_1_BREADY),
        .S_AXI4_bresp(S_AXI6_1_BRESP),
        .S_AXI4_bvalid(S_AXI6_1_BVALID),
        .S_AXI4_rdata(S_AXI6_1_RDATA),
        .S_AXI4_rready(S_AXI6_1_RREADY),
        .S_AXI4_rresp(S_AXI6_1_RRESP),
        .S_AXI4_rvalid(S_AXI6_1_RVALID),
        .S_AXI4_wdata(S_AXI6_1_WDATA),
        .S_AXI4_wready(S_AXI6_1_WREADY),
        .S_AXI4_wstrb(S_AXI6_1_WSTRB),
        .S_AXI4_wvalid(S_AXI6_1_WVALID),
        .S_AXI_araddr(S_AXI2_1_ARADDR),
        .S_AXI_arburst(S_AXI2_1_ARBURST),
        .S_AXI_arcache(S_AXI2_1_ARCACHE),
        .S_AXI_arid(S_AXI2_1_ARID),
        .S_AXI_arlen(S_AXI2_1_ARLEN),
        .S_AXI_arlock(S_AXI2_1_ARLOCK),
        .S_AXI_arprot(S_AXI2_1_ARPROT),
        .S_AXI_arready(S_AXI2_1_ARREADY),
        .S_AXI_arsize(S_AXI2_1_ARSIZE),
        .S_AXI_arvalid(S_AXI2_1_ARVALID),
        .S_AXI_awaddr(S_AXI2_1_AWADDR),
        .S_AXI_awburst(S_AXI2_1_AWBURST),
        .S_AXI_awcache(S_AXI2_1_AWCACHE),
        .S_AXI_awid(S_AXI2_1_AWID),
        .S_AXI_awlen(S_AXI2_1_AWLEN),
        .S_AXI_awlock(S_AXI2_1_AWLOCK),
        .S_AXI_awprot(S_AXI2_1_AWPROT),
        .S_AXI_awready(S_AXI2_1_AWREADY),
        .S_AXI_awsize(S_AXI2_1_AWSIZE),
        .S_AXI_awvalid(S_AXI2_1_AWVALID),
        .S_AXI_bid(S_AXI2_1_BID),
        .S_AXI_bready(S_AXI2_1_BREADY),
        .S_AXI_bresp(S_AXI2_1_BRESP),
        .S_AXI_bvalid(S_AXI2_1_BVALID),
        .S_AXI_rdata(S_AXI2_1_RDATA),
        .S_AXI_rid(S_AXI2_1_RID),
        .S_AXI_rlast(S_AXI2_1_RLAST),
        .S_AXI_rready(S_AXI2_1_RREADY),
        .S_AXI_rresp(S_AXI2_1_RRESP),
        .S_AXI_rvalid(S_AXI2_1_RVALID),
        .S_AXI_wdata(S_AXI2_1_WDATA),
        .S_AXI_wlast(S_AXI2_1_WLAST),
        .S_AXI_wready(S_AXI2_1_WREADY),
        .S_AXI_wstrb(S_AXI2_1_WSTRB),
        .S_AXI_wvalid(S_AXI2_1_WVALID),
        .ha(In2_0_1),
        .iic2intc_irpt(ipmc_jtag_iic2intc_irpt),
        .ipmc_scl_0(ipmc_scl_0),
        .ipmc_scl_1(ipmc_scl_1),
        .ipmc_sda_0(ipmc_sda_0),
        .ipmc_sda_1(ipmc_sda_1),
        .irq(ipmc_jtag_irq),
        .irq1(ipmc_jtag_irq1),
        .s0_i(s0_i_1),
        .s0_i1(s0_i1_1),
        .s0_o(ipmc_jtag_s0_o),
        .s0_o1(ipmc_jtag_s0_o1),
        .s0_t(s0_t_1),
        .s0_t1(s0_t1_1),
        .s_axi_aclk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  jtag_imp_3O8OBC jtag
       (.TCK_0(ipmc_jtag_TCK_0),
        .TCK_1(ipmc_jtag_TCK_1),
        .TDI_0(ipmc_jtag_TDI_0),
        .TDI_1(ipmc_jtag_TDI_1),
        .TDO_0(TDO_0_0_1),
        .TDO_1(TDO_1_0_1),
        .TMS_0(ipmc_jtag_TMS_0),
        .TMS_1(ipmc_jtag_TMS_1),
        .s_axi1_araddr(s_axi1_1_ARADDR),
        .s_axi1_arprot(s_axi1_1_ARPROT),
        .s_axi1_arready(s_axi1_1_ARREADY),
        .s_axi1_arvalid(s_axi1_1_ARVALID),
        .s_axi1_awaddr(s_axi1_1_AWADDR),
        .s_axi1_awprot(s_axi1_1_AWPROT),
        .s_axi1_awready(s_axi1_1_AWREADY),
        .s_axi1_awvalid(s_axi1_1_AWVALID),
        .s_axi1_bready(s_axi1_1_BREADY),
        .s_axi1_bresp(s_axi1_1_BRESP),
        .s_axi1_bvalid(s_axi1_1_BVALID),
        .s_axi1_rdata(s_axi1_1_RDATA),
        .s_axi1_rready(s_axi1_1_RREADY),
        .s_axi1_rresp(s_axi1_1_RRESP),
        .s_axi1_rvalid(s_axi1_1_RVALID),
        .s_axi1_wdata(s_axi1_1_WDATA),
        .s_axi1_wready(s_axi1_1_WREADY),
        .s_axi1_wstrb(s_axi1_1_WSTRB),
        .s_axi1_wvalid(s_axi1_1_WVALID),
        .s_axi_aclk(Net),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
  design_1_reg_bank_0_0 reg_bank_0
       (.aurora_pma_init_9(cpu_peripheral_reset),
        .channel_up_15(axi_c2c_aurora_channel_up_0_1),
        .channel_up_bot_15(axi_c2c_aurora_channel_up_0_1),
        .channel_up_top_13(axi_c2c_aurora_channel_up_0_1),
        .gtp_reset_14(reg_bank_gtp_reset_14_0),
        .ha_7_0(In2_0_1),
        .hot_swap_handle_16(In8_0_1),
        .id_4_2(xlslice_0_Dout),
        .ipmb_en_1_0(reg_bank_en_ipmb_zynq),
        .link_stat_bot_14(chip2chip_1_axi_c2c_link_status_out),
        .link_stat_top_12(chip2chip_0_axi_c2c_link_status_out),
        .los_10g_10(In1_0_1),
        .payload_on_5(reg_bank_qbv_on_off),
        .pim_alarm_11(In3_0_1),
        .prbs_sel_8_6(prbs_sel),
        .ready_ipmb_zynq_9_8(In0_0_1),
        .reg_ro(reg_bank_0_reg_ro),
        .reg_rw(axi_gpio_0_gpio_io_o),
        .tx_polarity_13_10(reg_bank_Dout2));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(s_axi_2_ARADDR[26:0]),
        .SLOT_0_AXI_arburst(s_axi_2_ARBURST),
        .SLOT_0_AXI_arcache(s_axi_2_ARCACHE),
        .SLOT_0_AXI_arid(s_axi_2_ARID),
        .SLOT_0_AXI_arlen(s_axi_2_ARLEN),
        .SLOT_0_AXI_arlock(s_axi_2_ARLOCK),
        .SLOT_0_AXI_arprot(s_axi_2_ARPROT),
        .SLOT_0_AXI_arqos(s_axi_2_ARQOS),
        .SLOT_0_AXI_arready(s_axi_2_ARREADY),
        .SLOT_0_AXI_arsize(s_axi_2_ARSIZE),
        .SLOT_0_AXI_arvalid(s_axi_2_ARVALID),
        .SLOT_0_AXI_awaddr(s_axi_2_AWADDR[26:0]),
        .SLOT_0_AXI_awburst(s_axi_2_AWBURST),
        .SLOT_0_AXI_awcache(s_axi_2_AWCACHE),
        .SLOT_0_AXI_awid(s_axi_2_AWID),
        .SLOT_0_AXI_awlen(s_axi_2_AWLEN),
        .SLOT_0_AXI_awlock(s_axi_2_AWLOCK),
        .SLOT_0_AXI_awprot(s_axi_2_AWPROT),
        .SLOT_0_AXI_awqos(s_axi_2_AWQOS),
        .SLOT_0_AXI_awready(s_axi_2_AWREADY),
        .SLOT_0_AXI_awsize(s_axi_2_AWSIZE),
        .SLOT_0_AXI_awvalid(s_axi_2_AWVALID),
        .SLOT_0_AXI_bid(s_axi_2_BID),
        .SLOT_0_AXI_bready(s_axi_2_BREADY),
        .SLOT_0_AXI_bresp(s_axi_2_BRESP),
        .SLOT_0_AXI_bvalid(s_axi_2_BVALID),
        .SLOT_0_AXI_rdata(s_axi_2_RDATA),
        .SLOT_0_AXI_rid(s_axi_2_RID),
        .SLOT_0_AXI_rlast(s_axi_2_RLAST),
        .SLOT_0_AXI_rready(s_axi_2_RREADY),
        .SLOT_0_AXI_rresp(s_axi_2_RRESP),
        .SLOT_0_AXI_rvalid(s_axi_2_RVALID),
        .SLOT_0_AXI_wdata(s_axi_2_WDATA),
        .SLOT_0_AXI_wlast(s_axi_2_WLAST),
        .SLOT_0_AXI_wready(s_axi_2_WREADY),
        .SLOT_0_AXI_wstrb(s_axi_2_WSTRB),
        .SLOT_0_AXI_wvalid(s_axi_2_WVALID),
        .SLOT_1_AXI_araddr(axisafety_1_M_AXI_ARADDR),
        .SLOT_1_AXI_arburst(axisafety_1_M_AXI_ARBURST),
        .SLOT_1_AXI_arcache(axisafety_1_M_AXI_ARCACHE),
        .SLOT_1_AXI_arid(axisafety_1_M_AXI_ARID),
        .SLOT_1_AXI_arlen(axisafety_1_M_AXI_ARLEN),
        .SLOT_1_AXI_arlock(axisafety_1_M_AXI_ARLOCK),
        .SLOT_1_AXI_arprot(axisafety_1_M_AXI_ARPROT),
        .SLOT_1_AXI_arqos(axisafety_1_M_AXI_ARQOS),
        .SLOT_1_AXI_arready(axisafety_1_M_AXI_ARREADY),
        .SLOT_1_AXI_arsize(axisafety_1_M_AXI_ARSIZE),
        .SLOT_1_AXI_arvalid(axisafety_1_M_AXI_ARVALID),
        .SLOT_1_AXI_awaddr(axisafety_1_M_AXI_AWADDR),
        .SLOT_1_AXI_awburst(axisafety_1_M_AXI_AWBURST),
        .SLOT_1_AXI_awcache(axisafety_1_M_AXI_AWCACHE),
        .SLOT_1_AXI_awid(axisafety_1_M_AXI_AWID),
        .SLOT_1_AXI_awlen(axisafety_1_M_AXI_AWLEN),
        .SLOT_1_AXI_awlock(axisafety_1_M_AXI_AWLOCK),
        .SLOT_1_AXI_awprot(axisafety_1_M_AXI_AWPROT),
        .SLOT_1_AXI_awqos(axisafety_1_M_AXI_AWQOS),
        .SLOT_1_AXI_awready(axisafety_1_M_AXI_AWREADY),
        .SLOT_1_AXI_awsize(axisafety_1_M_AXI_AWSIZE),
        .SLOT_1_AXI_awvalid(axisafety_1_M_AXI_AWVALID),
        .SLOT_1_AXI_bid(axisafety_1_M_AXI_BID),
        .SLOT_1_AXI_bready(axisafety_1_M_AXI_BREADY),
        .SLOT_1_AXI_bresp(axisafety_1_M_AXI_BRESP),
        .SLOT_1_AXI_bvalid(axisafety_1_M_AXI_BVALID),
        .SLOT_1_AXI_rdata(axisafety_1_M_AXI_RDATA),
        .SLOT_1_AXI_rid(axisafety_1_M_AXI_RID),
        .SLOT_1_AXI_rlast(axisafety_1_M_AXI_RLAST),
        .SLOT_1_AXI_rready(axisafety_1_M_AXI_RREADY),
        .SLOT_1_AXI_rresp(axisafety_1_M_AXI_RRESP),
        .SLOT_1_AXI_rvalid(axisafety_1_M_AXI_RVALID),
        .SLOT_1_AXI_wdata(axisafety_1_M_AXI_WDATA),
        .SLOT_1_AXI_wlast(axisafety_1_M_AXI_WLAST),
        .SLOT_1_AXI_wready(axisafety_1_M_AXI_WREADY),
        .SLOT_1_AXI_wstrb(axisafety_1_M_AXI_WSTRB),
        .SLOT_1_AXI_wvalid(axisafety_1_M_AXI_WVALID),
        .clk(Net),
        .probe0(axisafety_1_o_read_fault),
        .probe1(axisafety_1_o_write_fault),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
endmodule

module design_1_axi_mem_intercon_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [1:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s01_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARPROT;
  wire axi_mem_intercon_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARSIZE;
  wire axi_mem_intercon_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_RDATA;
  wire axi_mem_intercon_to_s01_couplers_RLAST;
  wire axi_mem_intercon_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s01_couplers_RRESP;
  wire axi_mem_intercon_to_s01_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s02_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s02_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s02_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWPROT;
  wire axi_mem_intercon_to_s02_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWSIZE;
  wire axi_mem_intercon_to_s02_couplers_AWVALID;
  wire axi_mem_intercon_to_s02_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s02_couplers_BRESP;
  wire axi_mem_intercon_to_s02_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_WDATA;
  wire axi_mem_intercon_to_s02_couplers_WLAST;
  wire axi_mem_intercon_to_s02_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s02_couplers_WSTRB;
  wire axi_mem_intercon_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_intercon_BID;
  wire m00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BRESP;
  wire m00_couplers_to_axi_mem_intercon_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_intercon_RID;
  wire m00_couplers_to_axi_mem_intercon_RLAST;
  wire m00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RRESP;
  wire m00_couplers_to_axi_mem_intercon_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_WDATA;
  wire [1:0]m00_couplers_to_axi_mem_intercon_WID;
  wire m00_couplers_to_axi_mem_intercon_WLAST;
  wire m00_couplers_to_axi_mem_intercon_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_intercon_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wid[1:0] = m00_couplers_to_axi_mem_intercon_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_mem_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_awready = axi_mem_intercon_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_mem_intercon_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_mem_intercon_to_s02_couplers_BVALID;
  assign S02_AXI_wready = axi_mem_intercon_to_s02_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = ACLK;
  assign axi_mem_intercon_ARESETN_net = ARESETN;
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_intercon_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_mem_intercon_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_mem_intercon_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_mem_intercon_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_mem_intercon_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  m00_couplers_imp_3BIQ9E m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_intercon_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1VD573K s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
  s01_couplers_imp_87QMDT s01_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s01_couplers_RVALID));
  s02_couplers_imp_1WKDD4J s02_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s02_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s02_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(axi_mem_intercon_ACLK_net),
        .aresetn(axi_mem_intercon_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module design_1_ps7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arid,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awid,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rid,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arid,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awid,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rid,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arburst,
    M14_AXI_arcache,
    M14_AXI_arid,
    M14_AXI_arlen,
    M14_AXI_arlock,
    M14_AXI_arprot,
    M14_AXI_arqos,
    M14_AXI_arready,
    M14_AXI_arsize,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awburst,
    M14_AXI_awcache,
    M14_AXI_awid,
    M14_AXI_awlen,
    M14_AXI_awlock,
    M14_AXI_awprot,
    M14_AXI_awqos,
    M14_AXI_awready,
    M14_AXI_awsize,
    M14_AXI_awvalid,
    M14_AXI_bid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rid,
    M14_AXI_rlast,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wlast,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arburst,
    M15_AXI_arcache,
    M15_AXI_arid,
    M15_AXI_arlen,
    M15_AXI_arlock,
    M15_AXI_arprot,
    M15_AXI_arqos,
    M15_AXI_arready,
    M15_AXI_arsize,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awburst,
    M15_AXI_awcache,
    M15_AXI_awid,
    M15_AXI_awlen,
    M15_AXI_awlock,
    M15_AXI_awprot,
    M15_AXI_awqos,
    M15_AXI_awready,
    M15_AXI_awsize,
    M15_AXI_awvalid,
    M15_AXI_bid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rid,
    M15_AXI_rlast,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wlast,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    M16_ACLK,
    M16_ARESETN,
    M16_AXI_araddr,
    M16_AXI_arready,
    M16_AXI_arvalid,
    M16_AXI_awaddr,
    M16_AXI_awready,
    M16_AXI_awvalid,
    M16_AXI_bready,
    M16_AXI_bresp,
    M16_AXI_bvalid,
    M16_AXI_rdata,
    M16_AXI_rready,
    M16_AXI_rresp,
    M16_AXI_rvalid,
    M16_AXI_wdata,
    M16_AXI_wready,
    M16_AXI_wstrb,
    M16_AXI_wvalid,
    M17_ACLK,
    M17_ARESETN,
    M17_AXI_araddr,
    M17_AXI_arready,
    M17_AXI_arvalid,
    M17_AXI_awaddr,
    M17_AXI_awready,
    M17_AXI_awvalid,
    M17_AXI_bready,
    M17_AXI_bresp,
    M17_AXI_bvalid,
    M17_AXI_rdata,
    M17_AXI_rready,
    M17_AXI_rresp,
    M17_AXI_rvalid,
    M17_AXI_wdata,
    M17_AXI_wready,
    M17_AXI_wstrb,
    M17_AXI_wvalid,
    M18_ACLK,
    M18_ARESETN,
    M18_AXI_araddr,
    M18_AXI_arburst,
    M18_AXI_arcache,
    M18_AXI_arid,
    M18_AXI_arlen,
    M18_AXI_arlock,
    M18_AXI_arprot,
    M18_AXI_arready,
    M18_AXI_arsize,
    M18_AXI_arvalid,
    M18_AXI_awaddr,
    M18_AXI_awburst,
    M18_AXI_awcache,
    M18_AXI_awid,
    M18_AXI_awlen,
    M18_AXI_awlock,
    M18_AXI_awprot,
    M18_AXI_awready,
    M18_AXI_awsize,
    M18_AXI_awvalid,
    M18_AXI_bid,
    M18_AXI_bready,
    M18_AXI_bresp,
    M18_AXI_bvalid,
    M18_AXI_rdata,
    M18_AXI_rid,
    M18_AXI_rlast,
    M18_AXI_rready,
    M18_AXI_rresp,
    M18_AXI_rvalid,
    M18_AXI_wdata,
    M18_AXI_wlast,
    M18_AXI_wready,
    M18_AXI_wstrb,
    M18_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [17:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [17:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [9:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [9:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [4:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [4:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [5:0]M05_AXI_arid;
  output [7:0]M05_AXI_arlen;
  output [0:0]M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [2:0]M05_AXI_arsize;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [5:0]M05_AXI_awid;
  output [7:0]M05_AXI_awlen;
  output [0:0]M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output [0:0]M05_AXI_awvalid;
  input [5:0]M05_AXI_bid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  input [5:0]M05_AXI_rid;
  input [0:0]M05_AXI_rlast;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  output [0:0]M05_AXI_wlast;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [1:0]M07_AXI_arburst;
  output [3:0]M07_AXI_arcache;
  output [5:0]M07_AXI_arid;
  output [7:0]M07_AXI_arlen;
  output [0:0]M07_AXI_arlock;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [2:0]M07_AXI_arsize;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [1:0]M07_AXI_awburst;
  output [3:0]M07_AXI_awcache;
  output [5:0]M07_AXI_awid;
  output [7:0]M07_AXI_awlen;
  output [0:0]M07_AXI_awlock;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [2:0]M07_AXI_awsize;
  output [0:0]M07_AXI_awvalid;
  input [5:0]M07_AXI_bid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  input [5:0]M07_AXI_rid;
  input [0:0]M07_AXI_rlast;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  output [0:0]M07_AXI_wlast;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [31:0]M14_AXI_araddr;
  output [1:0]M14_AXI_arburst;
  output [3:0]M14_AXI_arcache;
  output [5:0]M14_AXI_arid;
  output [7:0]M14_AXI_arlen;
  output M14_AXI_arlock;
  output [2:0]M14_AXI_arprot;
  output [3:0]M14_AXI_arqos;
  input M14_AXI_arready;
  output [2:0]M14_AXI_arsize;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [1:0]M14_AXI_awburst;
  output [3:0]M14_AXI_awcache;
  output [5:0]M14_AXI_awid;
  output [7:0]M14_AXI_awlen;
  output M14_AXI_awlock;
  output [2:0]M14_AXI_awprot;
  output [3:0]M14_AXI_awqos;
  input M14_AXI_awready;
  output [2:0]M14_AXI_awsize;
  output M14_AXI_awvalid;
  input [5:0]M14_AXI_bid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  input [5:0]M14_AXI_rid;
  input M14_AXI_rlast;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  output M14_AXI_wlast;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [31:0]M15_AXI_araddr;
  output [1:0]M15_AXI_arburst;
  output [3:0]M15_AXI_arcache;
  output [5:0]M15_AXI_arid;
  output [7:0]M15_AXI_arlen;
  output M15_AXI_arlock;
  output [2:0]M15_AXI_arprot;
  output [3:0]M15_AXI_arqos;
  input M15_AXI_arready;
  output [2:0]M15_AXI_arsize;
  output M15_AXI_arvalid;
  output [31:0]M15_AXI_awaddr;
  output [1:0]M15_AXI_awburst;
  output [3:0]M15_AXI_awcache;
  output [5:0]M15_AXI_awid;
  output [7:0]M15_AXI_awlen;
  output M15_AXI_awlock;
  output [2:0]M15_AXI_awprot;
  output [3:0]M15_AXI_awqos;
  input M15_AXI_awready;
  output [2:0]M15_AXI_awsize;
  output M15_AXI_awvalid;
  input [5:0]M15_AXI_bid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  input [5:0]M15_AXI_rid;
  input M15_AXI_rlast;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  output M15_AXI_wlast;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input M16_ACLK;
  input M16_ARESETN;
  output [31:0]M16_AXI_araddr;
  input M16_AXI_arready;
  output M16_AXI_arvalid;
  output [31:0]M16_AXI_awaddr;
  input M16_AXI_awready;
  output M16_AXI_awvalid;
  output M16_AXI_bready;
  input [1:0]M16_AXI_bresp;
  input M16_AXI_bvalid;
  input [31:0]M16_AXI_rdata;
  output M16_AXI_rready;
  input [1:0]M16_AXI_rresp;
  input M16_AXI_rvalid;
  output [31:0]M16_AXI_wdata;
  input M16_AXI_wready;
  output [3:0]M16_AXI_wstrb;
  output M16_AXI_wvalid;
  input M17_ACLK;
  input M17_ARESETN;
  output [31:0]M17_AXI_araddr;
  input M17_AXI_arready;
  output M17_AXI_arvalid;
  output [31:0]M17_AXI_awaddr;
  input M17_AXI_awready;
  output M17_AXI_awvalid;
  output M17_AXI_bready;
  input [1:0]M17_AXI_bresp;
  input M17_AXI_bvalid;
  input [31:0]M17_AXI_rdata;
  output M17_AXI_rready;
  input [1:0]M17_AXI_rresp;
  input M17_AXI_rvalid;
  output [31:0]M17_AXI_wdata;
  input M17_AXI_wready;
  output [3:0]M17_AXI_wstrb;
  output M17_AXI_wvalid;
  input M18_ACLK;
  input M18_ARESETN;
  output [31:0]M18_AXI_araddr;
  output [1:0]M18_AXI_arburst;
  output [3:0]M18_AXI_arcache;
  output [5:0]M18_AXI_arid;
  output [7:0]M18_AXI_arlen;
  output M18_AXI_arlock;
  output [2:0]M18_AXI_arprot;
  input M18_AXI_arready;
  output [2:0]M18_AXI_arsize;
  output M18_AXI_arvalid;
  output [31:0]M18_AXI_awaddr;
  output [1:0]M18_AXI_awburst;
  output [3:0]M18_AXI_awcache;
  output [5:0]M18_AXI_awid;
  output [7:0]M18_AXI_awlen;
  output M18_AXI_awlock;
  output [2:0]M18_AXI_awprot;
  input M18_AXI_awready;
  output [2:0]M18_AXI_awsize;
  output M18_AXI_awvalid;
  input [5:0]M18_AXI_bid;
  output M18_AXI_bready;
  input [1:0]M18_AXI_bresp;
  input M18_AXI_bvalid;
  input [31:0]M18_AXI_rdata;
  input [5:0]M18_AXI_rid;
  input M18_AXI_rlast;
  output M18_AXI_rready;
  input [1:0]M18_AXI_rresp;
  input M18_AXI_rvalid;
  output [31:0]M18_AXI_wdata;
  output M18_AXI_wlast;
  input M18_AXI_wready;
  output [3:0]M18_AXI_wstrb;
  output M18_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [5:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [5:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [5:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [31:0]i00_couplers_to_tier2_xbar_0_ARADDR;
  wire [1:0]i00_couplers_to_tier2_xbar_0_ARBURST;
  wire [3:0]i00_couplers_to_tier2_xbar_0_ARCACHE;
  wire [5:0]i00_couplers_to_tier2_xbar_0_ARID;
  wire [7:0]i00_couplers_to_tier2_xbar_0_ARLEN;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARLOCK;
  wire [2:0]i00_couplers_to_tier2_xbar_0_ARPROT;
  wire [3:0]i00_couplers_to_tier2_xbar_0_ARQOS;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARREADY;
  wire [2:0]i00_couplers_to_tier2_xbar_0_ARSIZE;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_AWADDR;
  wire [1:0]i00_couplers_to_tier2_xbar_0_AWBURST;
  wire [3:0]i00_couplers_to_tier2_xbar_0_AWCACHE;
  wire [5:0]i00_couplers_to_tier2_xbar_0_AWID;
  wire [7:0]i00_couplers_to_tier2_xbar_0_AWLEN;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWLOCK;
  wire [2:0]i00_couplers_to_tier2_xbar_0_AWPROT;
  wire [3:0]i00_couplers_to_tier2_xbar_0_AWQOS;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWREADY;
  wire [2:0]i00_couplers_to_tier2_xbar_0_AWSIZE;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWVALID;
  wire [5:0]i00_couplers_to_tier2_xbar_0_BID;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_BRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_RDATA;
  wire [5:0]i00_couplers_to_tier2_xbar_0_RID;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RLAST;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_RRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_WDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WLAST;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WREADY;
  wire [3:0]i00_couplers_to_tier2_xbar_0_WSTRB;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_ARADDR;
  wire [1:0]i01_couplers_to_tier2_xbar_1_ARBURST;
  wire [3:0]i01_couplers_to_tier2_xbar_1_ARCACHE;
  wire [5:0]i01_couplers_to_tier2_xbar_1_ARID;
  wire [7:0]i01_couplers_to_tier2_xbar_1_ARLEN;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARLOCK;
  wire [2:0]i01_couplers_to_tier2_xbar_1_ARPROT;
  wire [3:0]i01_couplers_to_tier2_xbar_1_ARQOS;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARREADY;
  wire [2:0]i01_couplers_to_tier2_xbar_1_ARSIZE;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_AWADDR;
  wire [1:0]i01_couplers_to_tier2_xbar_1_AWBURST;
  wire [3:0]i01_couplers_to_tier2_xbar_1_AWCACHE;
  wire [5:0]i01_couplers_to_tier2_xbar_1_AWID;
  wire [7:0]i01_couplers_to_tier2_xbar_1_AWLEN;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWLOCK;
  wire [2:0]i01_couplers_to_tier2_xbar_1_AWPROT;
  wire [3:0]i01_couplers_to_tier2_xbar_1_AWQOS;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWREADY;
  wire [2:0]i01_couplers_to_tier2_xbar_1_AWSIZE;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWVALID;
  wire [5:0]i01_couplers_to_tier2_xbar_1_BID;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_BRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_RDATA;
  wire [5:0]i01_couplers_to_tier2_xbar_1_RID;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RLAST;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_RRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_WDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WLAST;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WREADY;
  wire [3:0]i01_couplers_to_tier2_xbar_1_WSTRB;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_ARADDR;
  wire [1:0]i02_couplers_to_tier2_xbar_2_ARBURST;
  wire [3:0]i02_couplers_to_tier2_xbar_2_ARCACHE;
  wire [5:0]i02_couplers_to_tier2_xbar_2_ARID;
  wire [7:0]i02_couplers_to_tier2_xbar_2_ARLEN;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARLOCK;
  wire [2:0]i02_couplers_to_tier2_xbar_2_ARPROT;
  wire [3:0]i02_couplers_to_tier2_xbar_2_ARQOS;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARREADY;
  wire [2:0]i02_couplers_to_tier2_xbar_2_ARSIZE;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_AWADDR;
  wire [1:0]i02_couplers_to_tier2_xbar_2_AWBURST;
  wire [3:0]i02_couplers_to_tier2_xbar_2_AWCACHE;
  wire [5:0]i02_couplers_to_tier2_xbar_2_AWID;
  wire [7:0]i02_couplers_to_tier2_xbar_2_AWLEN;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWLOCK;
  wire [2:0]i02_couplers_to_tier2_xbar_2_AWPROT;
  wire [3:0]i02_couplers_to_tier2_xbar_2_AWQOS;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWREADY;
  wire [2:0]i02_couplers_to_tier2_xbar_2_AWSIZE;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWVALID;
  wire [5:0]i02_couplers_to_tier2_xbar_2_BID;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_BRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_RDATA;
  wire [5:0]i02_couplers_to_tier2_xbar_2_RID;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RLAST;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_RRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_WDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WLAST;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WREADY;
  wire [3:0]i02_couplers_to_tier2_xbar_2_WSTRB;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WVALID;
  wire [17:0]m00_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m00_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m00_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [17:0]m00_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m00_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m00_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m00_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_BRESP;
  wire m00_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_RDATA;
  wire m00_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_RRESP;
  wire m00_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_WDATA;
  wire m00_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m00_couplers_to_ps7_0_axi_periph_WVALID;
  wire [15:0]m01_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m01_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [15:0]m01_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m01_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_BRESP;
  wire m01_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_RDATA;
  wire m01_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_RRESP;
  wire m01_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_WDATA;
  wire m01_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps7_0_axi_periph_WVALID;
  wire [9:0]m02_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m02_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m02_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [9:0]m02_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m02_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m02_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m02_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_BRESP;
  wire m02_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_RDATA;
  wire m02_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_RRESP;
  wire m02_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_WDATA;
  wire m02_couplers_to_ps7_0_axi_periph_WREADY;
  wire m02_couplers_to_ps7_0_axi_periph_WVALID;
  wire [4:0]m03_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m03_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m03_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [4:0]m03_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m03_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m03_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m03_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_BRESP;
  wire m03_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_RDATA;
  wire m03_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_RRESP;
  wire m03_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_WDATA;
  wire m03_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m03_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m04_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m04_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_BRESP;
  wire m04_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_RDATA;
  wire m04_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_RRESP;
  wire m04_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_WDATA;
  wire m04_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_ARBURST;
  wire [3:0]m05_couplers_to_ps7_0_axi_periph_ARCACHE;
  wire [5:0]m05_couplers_to_ps7_0_axi_periph_ARID;
  wire [7:0]m05_couplers_to_ps7_0_axi_periph_ARLEN;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_ARLOCK;
  wire [2:0]m05_couplers_to_ps7_0_axi_periph_ARPROT;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_ARREADY;
  wire [2:0]m05_couplers_to_ps7_0_axi_periph_ARSIZE;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_AWBURST;
  wire [3:0]m05_couplers_to_ps7_0_axi_periph_AWCACHE;
  wire [5:0]m05_couplers_to_ps7_0_axi_periph_AWID;
  wire [7:0]m05_couplers_to_ps7_0_axi_periph_AWLEN;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_AWLOCK;
  wire [2:0]m05_couplers_to_ps7_0_axi_periph_AWPROT;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_AWREADY;
  wire [2:0]m05_couplers_to_ps7_0_axi_periph_AWSIZE;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_AWVALID;
  wire [5:0]m05_couplers_to_ps7_0_axi_periph_BID;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_BRESP;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_RDATA;
  wire [5:0]m05_couplers_to_ps7_0_axi_periph_RID;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_RLAST;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_RRESP;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_WDATA;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_WLAST;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps7_0_axi_periph_WSTRB;
  wire [0:0]m05_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m06_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m06_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m06_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m06_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m06_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps7_0_axi_periph_BRESP;
  wire m06_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps7_0_axi_periph_RDATA;
  wire m06_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps7_0_axi_periph_RRESP;
  wire m06_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps7_0_axi_periph_WDATA;
  wire m06_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m06_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m07_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [1:0]m07_couplers_to_ps7_0_axi_periph_ARBURST;
  wire [3:0]m07_couplers_to_ps7_0_axi_periph_ARCACHE;
  wire [5:0]m07_couplers_to_ps7_0_axi_periph_ARID;
  wire [7:0]m07_couplers_to_ps7_0_axi_periph_ARLEN;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_ARLOCK;
  wire [2:0]m07_couplers_to_ps7_0_axi_periph_ARPROT;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_ARREADY;
  wire [2:0]m07_couplers_to_ps7_0_axi_periph_ARSIZE;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m07_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [1:0]m07_couplers_to_ps7_0_axi_periph_AWBURST;
  wire [3:0]m07_couplers_to_ps7_0_axi_periph_AWCACHE;
  wire [5:0]m07_couplers_to_ps7_0_axi_periph_AWID;
  wire [7:0]m07_couplers_to_ps7_0_axi_periph_AWLEN;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_AWLOCK;
  wire [2:0]m07_couplers_to_ps7_0_axi_periph_AWPROT;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_AWREADY;
  wire [2:0]m07_couplers_to_ps7_0_axi_periph_AWSIZE;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_AWVALID;
  wire [5:0]m07_couplers_to_ps7_0_axi_periph_BID;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps7_0_axi_periph_BRESP;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps7_0_axi_periph_RDATA;
  wire [5:0]m07_couplers_to_ps7_0_axi_periph_RID;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_RLAST;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps7_0_axi_periph_RRESP;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps7_0_axi_periph_WDATA;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_WLAST;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_ps7_0_axi_periph_WSTRB;
  wire [0:0]m07_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m08_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m08_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m08_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m08_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m08_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m08_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m08_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps7_0_axi_periph_BRESP;
  wire m08_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps7_0_axi_periph_RDATA;
  wire m08_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps7_0_axi_periph_RRESP;
  wire m08_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps7_0_axi_periph_WDATA;
  wire m08_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m08_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m09_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m09_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m09_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m09_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m09_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m09_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m09_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_ps7_0_axi_periph_BRESP;
  wire m09_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_ps7_0_axi_periph_RDATA;
  wire m09_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_ps7_0_axi_periph_RRESP;
  wire m09_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_ps7_0_axi_periph_WDATA;
  wire m09_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m09_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m10_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m10_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m10_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m10_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m10_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m10_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m10_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_ps7_0_axi_periph_BRESP;
  wire m10_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_ps7_0_axi_periph_RDATA;
  wire m10_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_ps7_0_axi_periph_RRESP;
  wire m10_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_ps7_0_axi_periph_WDATA;
  wire m10_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m10_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m10_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m11_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m11_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m11_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m11_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m11_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m11_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m11_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_ps7_0_axi_periph_BRESP;
  wire m11_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_ps7_0_axi_periph_RDATA;
  wire m11_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_ps7_0_axi_periph_RRESP;
  wire m11_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_ps7_0_axi_periph_WDATA;
  wire m11_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m11_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m12_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m12_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m12_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m12_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m12_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m12_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m12_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_ps7_0_axi_periph_BRESP;
  wire m12_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_ps7_0_axi_periph_RDATA;
  wire m12_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_ps7_0_axi_periph_RRESP;
  wire m12_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_ps7_0_axi_periph_WDATA;
  wire m12_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m12_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m13_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m13_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m13_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m13_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m13_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m13_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m13_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m13_couplers_to_ps7_0_axi_periph_BRESP;
  wire m13_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m13_couplers_to_ps7_0_axi_periph_RDATA;
  wire m13_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m13_couplers_to_ps7_0_axi_periph_RRESP;
  wire m13_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m13_couplers_to_ps7_0_axi_periph_WDATA;
  wire m13_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m13_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m13_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m14_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [1:0]m14_couplers_to_ps7_0_axi_periph_ARBURST;
  wire [3:0]m14_couplers_to_ps7_0_axi_periph_ARCACHE;
  wire [5:0]m14_couplers_to_ps7_0_axi_periph_ARID;
  wire [7:0]m14_couplers_to_ps7_0_axi_periph_ARLEN;
  wire m14_couplers_to_ps7_0_axi_periph_ARLOCK;
  wire [2:0]m14_couplers_to_ps7_0_axi_periph_ARPROT;
  wire [3:0]m14_couplers_to_ps7_0_axi_periph_ARQOS;
  wire m14_couplers_to_ps7_0_axi_periph_ARREADY;
  wire [2:0]m14_couplers_to_ps7_0_axi_periph_ARSIZE;
  wire m14_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m14_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [1:0]m14_couplers_to_ps7_0_axi_periph_AWBURST;
  wire [3:0]m14_couplers_to_ps7_0_axi_periph_AWCACHE;
  wire [5:0]m14_couplers_to_ps7_0_axi_periph_AWID;
  wire [7:0]m14_couplers_to_ps7_0_axi_periph_AWLEN;
  wire m14_couplers_to_ps7_0_axi_periph_AWLOCK;
  wire [2:0]m14_couplers_to_ps7_0_axi_periph_AWPROT;
  wire [3:0]m14_couplers_to_ps7_0_axi_periph_AWQOS;
  wire m14_couplers_to_ps7_0_axi_periph_AWREADY;
  wire [2:0]m14_couplers_to_ps7_0_axi_periph_AWSIZE;
  wire m14_couplers_to_ps7_0_axi_periph_AWVALID;
  wire [5:0]m14_couplers_to_ps7_0_axi_periph_BID;
  wire m14_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m14_couplers_to_ps7_0_axi_periph_BRESP;
  wire m14_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m14_couplers_to_ps7_0_axi_periph_RDATA;
  wire [5:0]m14_couplers_to_ps7_0_axi_periph_RID;
  wire m14_couplers_to_ps7_0_axi_periph_RLAST;
  wire m14_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m14_couplers_to_ps7_0_axi_periph_RRESP;
  wire m14_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m14_couplers_to_ps7_0_axi_periph_WDATA;
  wire m14_couplers_to_ps7_0_axi_periph_WLAST;
  wire m14_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m14_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m14_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m15_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [1:0]m15_couplers_to_ps7_0_axi_periph_ARBURST;
  wire [3:0]m15_couplers_to_ps7_0_axi_periph_ARCACHE;
  wire [5:0]m15_couplers_to_ps7_0_axi_periph_ARID;
  wire [7:0]m15_couplers_to_ps7_0_axi_periph_ARLEN;
  wire m15_couplers_to_ps7_0_axi_periph_ARLOCK;
  wire [2:0]m15_couplers_to_ps7_0_axi_periph_ARPROT;
  wire [3:0]m15_couplers_to_ps7_0_axi_periph_ARQOS;
  wire m15_couplers_to_ps7_0_axi_periph_ARREADY;
  wire [2:0]m15_couplers_to_ps7_0_axi_periph_ARSIZE;
  wire m15_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m15_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [1:0]m15_couplers_to_ps7_0_axi_periph_AWBURST;
  wire [3:0]m15_couplers_to_ps7_0_axi_periph_AWCACHE;
  wire [5:0]m15_couplers_to_ps7_0_axi_periph_AWID;
  wire [7:0]m15_couplers_to_ps7_0_axi_periph_AWLEN;
  wire m15_couplers_to_ps7_0_axi_periph_AWLOCK;
  wire [2:0]m15_couplers_to_ps7_0_axi_periph_AWPROT;
  wire [3:0]m15_couplers_to_ps7_0_axi_periph_AWQOS;
  wire m15_couplers_to_ps7_0_axi_periph_AWREADY;
  wire [2:0]m15_couplers_to_ps7_0_axi_periph_AWSIZE;
  wire m15_couplers_to_ps7_0_axi_periph_AWVALID;
  wire [5:0]m15_couplers_to_ps7_0_axi_periph_BID;
  wire m15_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m15_couplers_to_ps7_0_axi_periph_BRESP;
  wire m15_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m15_couplers_to_ps7_0_axi_periph_RDATA;
  wire [5:0]m15_couplers_to_ps7_0_axi_periph_RID;
  wire m15_couplers_to_ps7_0_axi_periph_RLAST;
  wire m15_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m15_couplers_to_ps7_0_axi_periph_RRESP;
  wire m15_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m15_couplers_to_ps7_0_axi_periph_WDATA;
  wire m15_couplers_to_ps7_0_axi_periph_WLAST;
  wire m15_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m15_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m15_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m16_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m16_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m16_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m16_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m16_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m16_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m16_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m16_couplers_to_ps7_0_axi_periph_BRESP;
  wire m16_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m16_couplers_to_ps7_0_axi_periph_RDATA;
  wire m16_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m16_couplers_to_ps7_0_axi_periph_RRESP;
  wire m16_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m16_couplers_to_ps7_0_axi_periph_WDATA;
  wire m16_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m16_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m16_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m17_couplers_to_ps7_0_axi_periph_ARADDR;
  wire m17_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m17_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m17_couplers_to_ps7_0_axi_periph_AWADDR;
  wire m17_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m17_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m17_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m17_couplers_to_ps7_0_axi_periph_BRESP;
  wire m17_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m17_couplers_to_ps7_0_axi_periph_RDATA;
  wire m17_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m17_couplers_to_ps7_0_axi_periph_RRESP;
  wire m17_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m17_couplers_to_ps7_0_axi_periph_WDATA;
  wire m17_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m17_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m17_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m18_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [1:0]m18_couplers_to_ps7_0_axi_periph_ARBURST;
  wire [3:0]m18_couplers_to_ps7_0_axi_periph_ARCACHE;
  wire [5:0]m18_couplers_to_ps7_0_axi_periph_ARID;
  wire [7:0]m18_couplers_to_ps7_0_axi_periph_ARLEN;
  wire m18_couplers_to_ps7_0_axi_periph_ARLOCK;
  wire [2:0]m18_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m18_couplers_to_ps7_0_axi_periph_ARREADY;
  wire [2:0]m18_couplers_to_ps7_0_axi_periph_ARSIZE;
  wire m18_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m18_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [1:0]m18_couplers_to_ps7_0_axi_periph_AWBURST;
  wire [3:0]m18_couplers_to_ps7_0_axi_periph_AWCACHE;
  wire [5:0]m18_couplers_to_ps7_0_axi_periph_AWID;
  wire [7:0]m18_couplers_to_ps7_0_axi_periph_AWLEN;
  wire m18_couplers_to_ps7_0_axi_periph_AWLOCK;
  wire [2:0]m18_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m18_couplers_to_ps7_0_axi_periph_AWREADY;
  wire [2:0]m18_couplers_to_ps7_0_axi_periph_AWSIZE;
  wire m18_couplers_to_ps7_0_axi_periph_AWVALID;
  wire [5:0]m18_couplers_to_ps7_0_axi_periph_BID;
  wire m18_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m18_couplers_to_ps7_0_axi_periph_BRESP;
  wire m18_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m18_couplers_to_ps7_0_axi_periph_RDATA;
  wire [5:0]m18_couplers_to_ps7_0_axi_periph_RID;
  wire m18_couplers_to_ps7_0_axi_periph_RLAST;
  wire m18_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m18_couplers_to_ps7_0_axi_periph_RRESP;
  wire m18_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m18_couplers_to_ps7_0_axi_periph_WDATA;
  wire m18_couplers_to_ps7_0_axi_periph_WLAST;
  wire m18_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m18_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m18_couplers_to_ps7_0_axi_periph_WVALID;
  wire ps7_0_axi_periph_ACLK_net;
  wire ps7_0_axi_periph_ARESETN_net;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [5:0]ps7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [5:0]ps7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [5:0]ps7_0_axi_periph_to_s00_couplers_BID;
  wire ps7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_BRESP;
  wire ps7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_RDATA;
  wire [5:0]ps7_0_axi_periph_to_s00_couplers_RID;
  wire ps7_0_axi_periph_to_s00_couplers_RLAST;
  wire ps7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_RRESP;
  wire ps7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_WDATA;
  wire [5:0]ps7_0_axi_periph_to_s00_couplers_WID;
  wire ps7_0_axi_periph_to_s00_couplers_WLAST;
  wire ps7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [5:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [5:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [5:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [5:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_ARADDR;
  wire [1:0]tier2_xbar_0_to_m00_couplers_ARBURST;
  wire [3:0]tier2_xbar_0_to_m00_couplers_ARCACHE;
  wire [5:0]tier2_xbar_0_to_m00_couplers_ARID;
  wire [7:0]tier2_xbar_0_to_m00_couplers_ARLEN;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARLOCK;
  wire [2:0]tier2_xbar_0_to_m00_couplers_ARPROT;
  wire [3:0]tier2_xbar_0_to_m00_couplers_ARQOS;
  wire tier2_xbar_0_to_m00_couplers_ARREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_ARREGION;
  wire [2:0]tier2_xbar_0_to_m00_couplers_ARSIZE;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_AWADDR;
  wire [1:0]tier2_xbar_0_to_m00_couplers_AWBURST;
  wire [3:0]tier2_xbar_0_to_m00_couplers_AWCACHE;
  wire [5:0]tier2_xbar_0_to_m00_couplers_AWID;
  wire [7:0]tier2_xbar_0_to_m00_couplers_AWLEN;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWLOCK;
  wire [2:0]tier2_xbar_0_to_m00_couplers_AWPROT;
  wire [3:0]tier2_xbar_0_to_m00_couplers_AWQOS;
  wire tier2_xbar_0_to_m00_couplers_AWREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_AWREGION;
  wire [2:0]tier2_xbar_0_to_m00_couplers_AWSIZE;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m00_couplers_BID;
  wire [0:0]tier2_xbar_0_to_m00_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_BRESP;
  wire tier2_xbar_0_to_m00_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m00_couplers_RID;
  wire tier2_xbar_0_to_m00_couplers_RLAST;
  wire [0:0]tier2_xbar_0_to_m00_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_RRESP;
  wire tier2_xbar_0_to_m00_couplers_RVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WLAST;
  wire tier2_xbar_0_to_m00_couplers_WREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_WSTRB;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_ARADDR;
  wire [3:2]tier2_xbar_0_to_m01_couplers_ARBURST;
  wire [7:4]tier2_xbar_0_to_m01_couplers_ARCACHE;
  wire [11:6]tier2_xbar_0_to_m01_couplers_ARID;
  wire [15:8]tier2_xbar_0_to_m01_couplers_ARLEN;
  wire [1:1]tier2_xbar_0_to_m01_couplers_ARLOCK;
  wire [5:3]tier2_xbar_0_to_m01_couplers_ARPROT;
  wire [7:4]tier2_xbar_0_to_m01_couplers_ARQOS;
  wire tier2_xbar_0_to_m01_couplers_ARREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_ARREGION;
  wire [5:3]tier2_xbar_0_to_m01_couplers_ARSIZE;
  wire [1:1]tier2_xbar_0_to_m01_couplers_ARVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_AWADDR;
  wire [3:2]tier2_xbar_0_to_m01_couplers_AWBURST;
  wire [7:4]tier2_xbar_0_to_m01_couplers_AWCACHE;
  wire [11:6]tier2_xbar_0_to_m01_couplers_AWID;
  wire [15:8]tier2_xbar_0_to_m01_couplers_AWLEN;
  wire [1:1]tier2_xbar_0_to_m01_couplers_AWLOCK;
  wire [5:3]tier2_xbar_0_to_m01_couplers_AWPROT;
  wire [7:4]tier2_xbar_0_to_m01_couplers_AWQOS;
  wire tier2_xbar_0_to_m01_couplers_AWREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_AWREGION;
  wire [5:3]tier2_xbar_0_to_m01_couplers_AWSIZE;
  wire [1:1]tier2_xbar_0_to_m01_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m01_couplers_BID;
  wire [1:1]tier2_xbar_0_to_m01_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_BRESP;
  wire tier2_xbar_0_to_m01_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m01_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m01_couplers_RID;
  wire tier2_xbar_0_to_m01_couplers_RLAST;
  wire [1:1]tier2_xbar_0_to_m01_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_RRESP;
  wire tier2_xbar_0_to_m01_couplers_RVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_WDATA;
  wire [1:1]tier2_xbar_0_to_m01_couplers_WLAST;
  wire tier2_xbar_0_to_m01_couplers_WREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_WSTRB;
  wire [1:1]tier2_xbar_0_to_m01_couplers_WVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_ARADDR;
  wire [5:4]tier2_xbar_0_to_m02_couplers_ARBURST;
  wire [11:8]tier2_xbar_0_to_m02_couplers_ARCACHE;
  wire [17:12]tier2_xbar_0_to_m02_couplers_ARID;
  wire [23:16]tier2_xbar_0_to_m02_couplers_ARLEN;
  wire [2:2]tier2_xbar_0_to_m02_couplers_ARLOCK;
  wire [8:6]tier2_xbar_0_to_m02_couplers_ARPROT;
  wire [11:8]tier2_xbar_0_to_m02_couplers_ARQOS;
  wire tier2_xbar_0_to_m02_couplers_ARREADY;
  wire [11:8]tier2_xbar_0_to_m02_couplers_ARREGION;
  wire [8:6]tier2_xbar_0_to_m02_couplers_ARSIZE;
  wire [2:2]tier2_xbar_0_to_m02_couplers_ARVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_AWADDR;
  wire [5:4]tier2_xbar_0_to_m02_couplers_AWBURST;
  wire [11:8]tier2_xbar_0_to_m02_couplers_AWCACHE;
  wire [17:12]tier2_xbar_0_to_m02_couplers_AWID;
  wire [23:16]tier2_xbar_0_to_m02_couplers_AWLEN;
  wire [2:2]tier2_xbar_0_to_m02_couplers_AWLOCK;
  wire [8:6]tier2_xbar_0_to_m02_couplers_AWPROT;
  wire [11:8]tier2_xbar_0_to_m02_couplers_AWQOS;
  wire tier2_xbar_0_to_m02_couplers_AWREADY;
  wire [11:8]tier2_xbar_0_to_m02_couplers_AWREGION;
  wire [8:6]tier2_xbar_0_to_m02_couplers_AWSIZE;
  wire [2:2]tier2_xbar_0_to_m02_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m02_couplers_BID;
  wire [2:2]tier2_xbar_0_to_m02_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_BRESP;
  wire tier2_xbar_0_to_m02_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m02_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m02_couplers_RID;
  wire tier2_xbar_0_to_m02_couplers_RLAST;
  wire [2:2]tier2_xbar_0_to_m02_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_RRESP;
  wire tier2_xbar_0_to_m02_couplers_RVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_WDATA;
  wire [2:2]tier2_xbar_0_to_m02_couplers_WLAST;
  wire tier2_xbar_0_to_m02_couplers_WREADY;
  wire [11:8]tier2_xbar_0_to_m02_couplers_WSTRB;
  wire [2:2]tier2_xbar_0_to_m02_couplers_WVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_ARADDR;
  wire [7:6]tier2_xbar_0_to_m03_couplers_ARBURST;
  wire [15:12]tier2_xbar_0_to_m03_couplers_ARCACHE;
  wire [23:18]tier2_xbar_0_to_m03_couplers_ARID;
  wire [31:24]tier2_xbar_0_to_m03_couplers_ARLEN;
  wire [3:3]tier2_xbar_0_to_m03_couplers_ARLOCK;
  wire [11:9]tier2_xbar_0_to_m03_couplers_ARPROT;
  wire [15:12]tier2_xbar_0_to_m03_couplers_ARQOS;
  wire tier2_xbar_0_to_m03_couplers_ARREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_ARREGION;
  wire [11:9]tier2_xbar_0_to_m03_couplers_ARSIZE;
  wire [3:3]tier2_xbar_0_to_m03_couplers_ARVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_AWADDR;
  wire [7:6]tier2_xbar_0_to_m03_couplers_AWBURST;
  wire [15:12]tier2_xbar_0_to_m03_couplers_AWCACHE;
  wire [23:18]tier2_xbar_0_to_m03_couplers_AWID;
  wire [31:24]tier2_xbar_0_to_m03_couplers_AWLEN;
  wire [3:3]tier2_xbar_0_to_m03_couplers_AWLOCK;
  wire [11:9]tier2_xbar_0_to_m03_couplers_AWPROT;
  wire [15:12]tier2_xbar_0_to_m03_couplers_AWQOS;
  wire tier2_xbar_0_to_m03_couplers_AWREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_AWREGION;
  wire [11:9]tier2_xbar_0_to_m03_couplers_AWSIZE;
  wire [3:3]tier2_xbar_0_to_m03_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m03_couplers_BID;
  wire [3:3]tier2_xbar_0_to_m03_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_BRESP;
  wire tier2_xbar_0_to_m03_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m03_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m03_couplers_RID;
  wire tier2_xbar_0_to_m03_couplers_RLAST;
  wire [3:3]tier2_xbar_0_to_m03_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_RRESP;
  wire tier2_xbar_0_to_m03_couplers_RVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_WDATA;
  wire [3:3]tier2_xbar_0_to_m03_couplers_WLAST;
  wire tier2_xbar_0_to_m03_couplers_WREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_WSTRB;
  wire [3:3]tier2_xbar_0_to_m03_couplers_WVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_ARADDR;
  wire [9:8]tier2_xbar_0_to_m04_couplers_ARBURST;
  wire [19:16]tier2_xbar_0_to_m04_couplers_ARCACHE;
  wire [29:24]tier2_xbar_0_to_m04_couplers_ARID;
  wire [39:32]tier2_xbar_0_to_m04_couplers_ARLEN;
  wire [4:4]tier2_xbar_0_to_m04_couplers_ARLOCK;
  wire [14:12]tier2_xbar_0_to_m04_couplers_ARPROT;
  wire [19:16]tier2_xbar_0_to_m04_couplers_ARQOS;
  wire tier2_xbar_0_to_m04_couplers_ARREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_ARREGION;
  wire [14:12]tier2_xbar_0_to_m04_couplers_ARSIZE;
  wire [4:4]tier2_xbar_0_to_m04_couplers_ARVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_AWADDR;
  wire [9:8]tier2_xbar_0_to_m04_couplers_AWBURST;
  wire [19:16]tier2_xbar_0_to_m04_couplers_AWCACHE;
  wire [29:24]tier2_xbar_0_to_m04_couplers_AWID;
  wire [39:32]tier2_xbar_0_to_m04_couplers_AWLEN;
  wire [4:4]tier2_xbar_0_to_m04_couplers_AWLOCK;
  wire [14:12]tier2_xbar_0_to_m04_couplers_AWPROT;
  wire [19:16]tier2_xbar_0_to_m04_couplers_AWQOS;
  wire tier2_xbar_0_to_m04_couplers_AWREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_AWREGION;
  wire [14:12]tier2_xbar_0_to_m04_couplers_AWSIZE;
  wire [4:4]tier2_xbar_0_to_m04_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m04_couplers_BID;
  wire [4:4]tier2_xbar_0_to_m04_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_BRESP;
  wire tier2_xbar_0_to_m04_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m04_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m04_couplers_RID;
  wire tier2_xbar_0_to_m04_couplers_RLAST;
  wire [4:4]tier2_xbar_0_to_m04_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_RRESP;
  wire tier2_xbar_0_to_m04_couplers_RVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_WDATA;
  wire [4:4]tier2_xbar_0_to_m04_couplers_WLAST;
  wire tier2_xbar_0_to_m04_couplers_WREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_WSTRB;
  wire [4:4]tier2_xbar_0_to_m04_couplers_WVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_ARADDR;
  wire [11:10]tier2_xbar_0_to_m05_couplers_ARBURST;
  wire [23:20]tier2_xbar_0_to_m05_couplers_ARCACHE;
  wire [35:30]tier2_xbar_0_to_m05_couplers_ARID;
  wire [47:40]tier2_xbar_0_to_m05_couplers_ARLEN;
  wire [5:5]tier2_xbar_0_to_m05_couplers_ARLOCK;
  wire [17:15]tier2_xbar_0_to_m05_couplers_ARPROT;
  wire [0:0]tier2_xbar_0_to_m05_couplers_ARREADY;
  wire [17:15]tier2_xbar_0_to_m05_couplers_ARSIZE;
  wire [5:5]tier2_xbar_0_to_m05_couplers_ARVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_AWADDR;
  wire [11:10]tier2_xbar_0_to_m05_couplers_AWBURST;
  wire [23:20]tier2_xbar_0_to_m05_couplers_AWCACHE;
  wire [35:30]tier2_xbar_0_to_m05_couplers_AWID;
  wire [47:40]tier2_xbar_0_to_m05_couplers_AWLEN;
  wire [5:5]tier2_xbar_0_to_m05_couplers_AWLOCK;
  wire [17:15]tier2_xbar_0_to_m05_couplers_AWPROT;
  wire [0:0]tier2_xbar_0_to_m05_couplers_AWREADY;
  wire [17:15]tier2_xbar_0_to_m05_couplers_AWSIZE;
  wire [5:5]tier2_xbar_0_to_m05_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m05_couplers_BID;
  wire [5:5]tier2_xbar_0_to_m05_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m05_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m05_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m05_couplers_RID;
  wire [0:0]tier2_xbar_0_to_m05_couplers_RLAST;
  wire [5:5]tier2_xbar_0_to_m05_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m05_couplers_RVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_WDATA;
  wire [5:5]tier2_xbar_0_to_m05_couplers_WLAST;
  wire [0:0]tier2_xbar_0_to_m05_couplers_WREADY;
  wire [23:20]tier2_xbar_0_to_m05_couplers_WSTRB;
  wire [5:5]tier2_xbar_0_to_m05_couplers_WVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_ARADDR;
  wire [13:12]tier2_xbar_0_to_m06_couplers_ARBURST;
  wire [27:24]tier2_xbar_0_to_m06_couplers_ARCACHE;
  wire [41:36]tier2_xbar_0_to_m06_couplers_ARID;
  wire [55:48]tier2_xbar_0_to_m06_couplers_ARLEN;
  wire [6:6]tier2_xbar_0_to_m06_couplers_ARLOCK;
  wire [20:18]tier2_xbar_0_to_m06_couplers_ARPROT;
  wire [27:24]tier2_xbar_0_to_m06_couplers_ARQOS;
  wire tier2_xbar_0_to_m06_couplers_ARREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_ARREGION;
  wire [20:18]tier2_xbar_0_to_m06_couplers_ARSIZE;
  wire [6:6]tier2_xbar_0_to_m06_couplers_ARVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_AWADDR;
  wire [13:12]tier2_xbar_0_to_m06_couplers_AWBURST;
  wire [27:24]tier2_xbar_0_to_m06_couplers_AWCACHE;
  wire [41:36]tier2_xbar_0_to_m06_couplers_AWID;
  wire [55:48]tier2_xbar_0_to_m06_couplers_AWLEN;
  wire [6:6]tier2_xbar_0_to_m06_couplers_AWLOCK;
  wire [20:18]tier2_xbar_0_to_m06_couplers_AWPROT;
  wire [27:24]tier2_xbar_0_to_m06_couplers_AWQOS;
  wire tier2_xbar_0_to_m06_couplers_AWREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_AWREGION;
  wire [20:18]tier2_xbar_0_to_m06_couplers_AWSIZE;
  wire [6:6]tier2_xbar_0_to_m06_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m06_couplers_BID;
  wire [6:6]tier2_xbar_0_to_m06_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_BRESP;
  wire tier2_xbar_0_to_m06_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m06_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m06_couplers_RID;
  wire tier2_xbar_0_to_m06_couplers_RLAST;
  wire [6:6]tier2_xbar_0_to_m06_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_RRESP;
  wire tier2_xbar_0_to_m06_couplers_RVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_WDATA;
  wire [6:6]tier2_xbar_0_to_m06_couplers_WLAST;
  wire tier2_xbar_0_to_m06_couplers_WREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_WSTRB;
  wire [6:6]tier2_xbar_0_to_m06_couplers_WVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_ARADDR;
  wire [15:14]tier2_xbar_0_to_m07_couplers_ARBURST;
  wire [31:28]tier2_xbar_0_to_m07_couplers_ARCACHE;
  wire [47:42]tier2_xbar_0_to_m07_couplers_ARID;
  wire [63:56]tier2_xbar_0_to_m07_couplers_ARLEN;
  wire [7:7]tier2_xbar_0_to_m07_couplers_ARLOCK;
  wire [23:21]tier2_xbar_0_to_m07_couplers_ARPROT;
  wire [0:0]tier2_xbar_0_to_m07_couplers_ARREADY;
  wire [23:21]tier2_xbar_0_to_m07_couplers_ARSIZE;
  wire [7:7]tier2_xbar_0_to_m07_couplers_ARVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_AWADDR;
  wire [15:14]tier2_xbar_0_to_m07_couplers_AWBURST;
  wire [31:28]tier2_xbar_0_to_m07_couplers_AWCACHE;
  wire [47:42]tier2_xbar_0_to_m07_couplers_AWID;
  wire [63:56]tier2_xbar_0_to_m07_couplers_AWLEN;
  wire [7:7]tier2_xbar_0_to_m07_couplers_AWLOCK;
  wire [23:21]tier2_xbar_0_to_m07_couplers_AWPROT;
  wire [0:0]tier2_xbar_0_to_m07_couplers_AWREADY;
  wire [23:21]tier2_xbar_0_to_m07_couplers_AWSIZE;
  wire [7:7]tier2_xbar_0_to_m07_couplers_AWVALID;
  wire [5:0]tier2_xbar_0_to_m07_couplers_BID;
  wire [7:7]tier2_xbar_0_to_m07_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m07_couplers_RDATA;
  wire [5:0]tier2_xbar_0_to_m07_couplers_RID;
  wire [0:0]tier2_xbar_0_to_m07_couplers_RLAST;
  wire [7:7]tier2_xbar_0_to_m07_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_RVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_WDATA;
  wire [7:7]tier2_xbar_0_to_m07_couplers_WLAST;
  wire [0:0]tier2_xbar_0_to_m07_couplers_WREADY;
  wire [31:28]tier2_xbar_0_to_m07_couplers_WSTRB;
  wire [7:7]tier2_xbar_0_to_m07_couplers_WVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_ARADDR;
  wire [1:0]tier2_xbar_1_to_m08_couplers_ARBURST;
  wire [3:0]tier2_xbar_1_to_m08_couplers_ARCACHE;
  wire [5:0]tier2_xbar_1_to_m08_couplers_ARID;
  wire [7:0]tier2_xbar_1_to_m08_couplers_ARLEN;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARLOCK;
  wire [2:0]tier2_xbar_1_to_m08_couplers_ARPROT;
  wire [3:0]tier2_xbar_1_to_m08_couplers_ARQOS;
  wire tier2_xbar_1_to_m08_couplers_ARREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_ARREGION;
  wire [2:0]tier2_xbar_1_to_m08_couplers_ARSIZE;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_AWADDR;
  wire [1:0]tier2_xbar_1_to_m08_couplers_AWBURST;
  wire [3:0]tier2_xbar_1_to_m08_couplers_AWCACHE;
  wire [5:0]tier2_xbar_1_to_m08_couplers_AWID;
  wire [7:0]tier2_xbar_1_to_m08_couplers_AWLEN;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWLOCK;
  wire [2:0]tier2_xbar_1_to_m08_couplers_AWPROT;
  wire [3:0]tier2_xbar_1_to_m08_couplers_AWQOS;
  wire tier2_xbar_1_to_m08_couplers_AWREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_AWREGION;
  wire [2:0]tier2_xbar_1_to_m08_couplers_AWSIZE;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m08_couplers_BID;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_BRESP;
  wire tier2_xbar_1_to_m08_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m08_couplers_RID;
  wire tier2_xbar_1_to_m08_couplers_RLAST;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_RRESP;
  wire tier2_xbar_1_to_m08_couplers_RVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WLAST;
  wire tier2_xbar_1_to_m08_couplers_WREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_WSTRB;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_ARADDR;
  wire [3:2]tier2_xbar_1_to_m09_couplers_ARBURST;
  wire [7:4]tier2_xbar_1_to_m09_couplers_ARCACHE;
  wire [11:6]tier2_xbar_1_to_m09_couplers_ARID;
  wire [15:8]tier2_xbar_1_to_m09_couplers_ARLEN;
  wire [1:1]tier2_xbar_1_to_m09_couplers_ARLOCK;
  wire [5:3]tier2_xbar_1_to_m09_couplers_ARPROT;
  wire [7:4]tier2_xbar_1_to_m09_couplers_ARQOS;
  wire tier2_xbar_1_to_m09_couplers_ARREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_ARREGION;
  wire [5:3]tier2_xbar_1_to_m09_couplers_ARSIZE;
  wire [1:1]tier2_xbar_1_to_m09_couplers_ARVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_AWADDR;
  wire [3:2]tier2_xbar_1_to_m09_couplers_AWBURST;
  wire [7:4]tier2_xbar_1_to_m09_couplers_AWCACHE;
  wire [11:6]tier2_xbar_1_to_m09_couplers_AWID;
  wire [15:8]tier2_xbar_1_to_m09_couplers_AWLEN;
  wire [1:1]tier2_xbar_1_to_m09_couplers_AWLOCK;
  wire [5:3]tier2_xbar_1_to_m09_couplers_AWPROT;
  wire [7:4]tier2_xbar_1_to_m09_couplers_AWQOS;
  wire tier2_xbar_1_to_m09_couplers_AWREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_AWREGION;
  wire [5:3]tier2_xbar_1_to_m09_couplers_AWSIZE;
  wire [1:1]tier2_xbar_1_to_m09_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m09_couplers_BID;
  wire [1:1]tier2_xbar_1_to_m09_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_BRESP;
  wire tier2_xbar_1_to_m09_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m09_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m09_couplers_RID;
  wire tier2_xbar_1_to_m09_couplers_RLAST;
  wire [1:1]tier2_xbar_1_to_m09_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_RRESP;
  wire tier2_xbar_1_to_m09_couplers_RVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_WDATA;
  wire [1:1]tier2_xbar_1_to_m09_couplers_WLAST;
  wire tier2_xbar_1_to_m09_couplers_WREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_WSTRB;
  wire [1:1]tier2_xbar_1_to_m09_couplers_WVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_ARADDR;
  wire [5:4]tier2_xbar_1_to_m10_couplers_ARBURST;
  wire [11:8]tier2_xbar_1_to_m10_couplers_ARCACHE;
  wire [17:12]tier2_xbar_1_to_m10_couplers_ARID;
  wire [23:16]tier2_xbar_1_to_m10_couplers_ARLEN;
  wire [2:2]tier2_xbar_1_to_m10_couplers_ARLOCK;
  wire [8:6]tier2_xbar_1_to_m10_couplers_ARPROT;
  wire [11:8]tier2_xbar_1_to_m10_couplers_ARQOS;
  wire tier2_xbar_1_to_m10_couplers_ARREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_ARREGION;
  wire [8:6]tier2_xbar_1_to_m10_couplers_ARSIZE;
  wire [2:2]tier2_xbar_1_to_m10_couplers_ARVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_AWADDR;
  wire [5:4]tier2_xbar_1_to_m10_couplers_AWBURST;
  wire [11:8]tier2_xbar_1_to_m10_couplers_AWCACHE;
  wire [17:12]tier2_xbar_1_to_m10_couplers_AWID;
  wire [23:16]tier2_xbar_1_to_m10_couplers_AWLEN;
  wire [2:2]tier2_xbar_1_to_m10_couplers_AWLOCK;
  wire [8:6]tier2_xbar_1_to_m10_couplers_AWPROT;
  wire [11:8]tier2_xbar_1_to_m10_couplers_AWQOS;
  wire tier2_xbar_1_to_m10_couplers_AWREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_AWREGION;
  wire [8:6]tier2_xbar_1_to_m10_couplers_AWSIZE;
  wire [2:2]tier2_xbar_1_to_m10_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m10_couplers_BID;
  wire [2:2]tier2_xbar_1_to_m10_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_BRESP;
  wire tier2_xbar_1_to_m10_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m10_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m10_couplers_RID;
  wire tier2_xbar_1_to_m10_couplers_RLAST;
  wire [2:2]tier2_xbar_1_to_m10_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_RRESP;
  wire tier2_xbar_1_to_m10_couplers_RVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_WDATA;
  wire [2:2]tier2_xbar_1_to_m10_couplers_WLAST;
  wire tier2_xbar_1_to_m10_couplers_WREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_WSTRB;
  wire [2:2]tier2_xbar_1_to_m10_couplers_WVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_ARADDR;
  wire [7:6]tier2_xbar_1_to_m11_couplers_ARBURST;
  wire [15:12]tier2_xbar_1_to_m11_couplers_ARCACHE;
  wire [23:18]tier2_xbar_1_to_m11_couplers_ARID;
  wire [31:24]tier2_xbar_1_to_m11_couplers_ARLEN;
  wire [3:3]tier2_xbar_1_to_m11_couplers_ARLOCK;
  wire [11:9]tier2_xbar_1_to_m11_couplers_ARPROT;
  wire [15:12]tier2_xbar_1_to_m11_couplers_ARQOS;
  wire tier2_xbar_1_to_m11_couplers_ARREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_ARREGION;
  wire [11:9]tier2_xbar_1_to_m11_couplers_ARSIZE;
  wire [3:3]tier2_xbar_1_to_m11_couplers_ARVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_AWADDR;
  wire [7:6]tier2_xbar_1_to_m11_couplers_AWBURST;
  wire [15:12]tier2_xbar_1_to_m11_couplers_AWCACHE;
  wire [23:18]tier2_xbar_1_to_m11_couplers_AWID;
  wire [31:24]tier2_xbar_1_to_m11_couplers_AWLEN;
  wire [3:3]tier2_xbar_1_to_m11_couplers_AWLOCK;
  wire [11:9]tier2_xbar_1_to_m11_couplers_AWPROT;
  wire [15:12]tier2_xbar_1_to_m11_couplers_AWQOS;
  wire tier2_xbar_1_to_m11_couplers_AWREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_AWREGION;
  wire [11:9]tier2_xbar_1_to_m11_couplers_AWSIZE;
  wire [3:3]tier2_xbar_1_to_m11_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m11_couplers_BID;
  wire [3:3]tier2_xbar_1_to_m11_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_BRESP;
  wire tier2_xbar_1_to_m11_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m11_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m11_couplers_RID;
  wire tier2_xbar_1_to_m11_couplers_RLAST;
  wire [3:3]tier2_xbar_1_to_m11_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_RRESP;
  wire tier2_xbar_1_to_m11_couplers_RVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_WDATA;
  wire [3:3]tier2_xbar_1_to_m11_couplers_WLAST;
  wire tier2_xbar_1_to_m11_couplers_WREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_WSTRB;
  wire [3:3]tier2_xbar_1_to_m11_couplers_WVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_ARADDR;
  wire [9:8]tier2_xbar_1_to_m12_couplers_ARBURST;
  wire [19:16]tier2_xbar_1_to_m12_couplers_ARCACHE;
  wire [29:24]tier2_xbar_1_to_m12_couplers_ARID;
  wire [39:32]tier2_xbar_1_to_m12_couplers_ARLEN;
  wire [4:4]tier2_xbar_1_to_m12_couplers_ARLOCK;
  wire [14:12]tier2_xbar_1_to_m12_couplers_ARPROT;
  wire [19:16]tier2_xbar_1_to_m12_couplers_ARQOS;
  wire tier2_xbar_1_to_m12_couplers_ARREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_ARREGION;
  wire [14:12]tier2_xbar_1_to_m12_couplers_ARSIZE;
  wire [4:4]tier2_xbar_1_to_m12_couplers_ARVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_AWADDR;
  wire [9:8]tier2_xbar_1_to_m12_couplers_AWBURST;
  wire [19:16]tier2_xbar_1_to_m12_couplers_AWCACHE;
  wire [29:24]tier2_xbar_1_to_m12_couplers_AWID;
  wire [39:32]tier2_xbar_1_to_m12_couplers_AWLEN;
  wire [4:4]tier2_xbar_1_to_m12_couplers_AWLOCK;
  wire [14:12]tier2_xbar_1_to_m12_couplers_AWPROT;
  wire [19:16]tier2_xbar_1_to_m12_couplers_AWQOS;
  wire tier2_xbar_1_to_m12_couplers_AWREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_AWREGION;
  wire [14:12]tier2_xbar_1_to_m12_couplers_AWSIZE;
  wire [4:4]tier2_xbar_1_to_m12_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m12_couplers_BID;
  wire [4:4]tier2_xbar_1_to_m12_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_BRESP;
  wire tier2_xbar_1_to_m12_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m12_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m12_couplers_RID;
  wire tier2_xbar_1_to_m12_couplers_RLAST;
  wire [4:4]tier2_xbar_1_to_m12_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_RRESP;
  wire tier2_xbar_1_to_m12_couplers_RVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_WDATA;
  wire [4:4]tier2_xbar_1_to_m12_couplers_WLAST;
  wire tier2_xbar_1_to_m12_couplers_WREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_WSTRB;
  wire [4:4]tier2_xbar_1_to_m12_couplers_WVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_ARADDR;
  wire [11:10]tier2_xbar_1_to_m13_couplers_ARBURST;
  wire [23:20]tier2_xbar_1_to_m13_couplers_ARCACHE;
  wire [35:30]tier2_xbar_1_to_m13_couplers_ARID;
  wire [47:40]tier2_xbar_1_to_m13_couplers_ARLEN;
  wire [5:5]tier2_xbar_1_to_m13_couplers_ARLOCK;
  wire [17:15]tier2_xbar_1_to_m13_couplers_ARPROT;
  wire [23:20]tier2_xbar_1_to_m13_couplers_ARQOS;
  wire tier2_xbar_1_to_m13_couplers_ARREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_ARREGION;
  wire [17:15]tier2_xbar_1_to_m13_couplers_ARSIZE;
  wire [5:5]tier2_xbar_1_to_m13_couplers_ARVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_AWADDR;
  wire [11:10]tier2_xbar_1_to_m13_couplers_AWBURST;
  wire [23:20]tier2_xbar_1_to_m13_couplers_AWCACHE;
  wire [35:30]tier2_xbar_1_to_m13_couplers_AWID;
  wire [47:40]tier2_xbar_1_to_m13_couplers_AWLEN;
  wire [5:5]tier2_xbar_1_to_m13_couplers_AWLOCK;
  wire [17:15]tier2_xbar_1_to_m13_couplers_AWPROT;
  wire [23:20]tier2_xbar_1_to_m13_couplers_AWQOS;
  wire tier2_xbar_1_to_m13_couplers_AWREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_AWREGION;
  wire [17:15]tier2_xbar_1_to_m13_couplers_AWSIZE;
  wire [5:5]tier2_xbar_1_to_m13_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m13_couplers_BID;
  wire [5:5]tier2_xbar_1_to_m13_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_BRESP;
  wire tier2_xbar_1_to_m13_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m13_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m13_couplers_RID;
  wire tier2_xbar_1_to_m13_couplers_RLAST;
  wire [5:5]tier2_xbar_1_to_m13_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_RRESP;
  wire tier2_xbar_1_to_m13_couplers_RVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_WDATA;
  wire [5:5]tier2_xbar_1_to_m13_couplers_WLAST;
  wire tier2_xbar_1_to_m13_couplers_WREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_WSTRB;
  wire [5:5]tier2_xbar_1_to_m13_couplers_WVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_ARADDR;
  wire [13:12]tier2_xbar_1_to_m14_couplers_ARBURST;
  wire [27:24]tier2_xbar_1_to_m14_couplers_ARCACHE;
  wire [41:36]tier2_xbar_1_to_m14_couplers_ARID;
  wire [55:48]tier2_xbar_1_to_m14_couplers_ARLEN;
  wire [6:6]tier2_xbar_1_to_m14_couplers_ARLOCK;
  wire [20:18]tier2_xbar_1_to_m14_couplers_ARPROT;
  wire [27:24]tier2_xbar_1_to_m14_couplers_ARQOS;
  wire tier2_xbar_1_to_m14_couplers_ARREADY;
  wire [20:18]tier2_xbar_1_to_m14_couplers_ARSIZE;
  wire [6:6]tier2_xbar_1_to_m14_couplers_ARVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_AWADDR;
  wire [13:12]tier2_xbar_1_to_m14_couplers_AWBURST;
  wire [27:24]tier2_xbar_1_to_m14_couplers_AWCACHE;
  wire [41:36]tier2_xbar_1_to_m14_couplers_AWID;
  wire [55:48]tier2_xbar_1_to_m14_couplers_AWLEN;
  wire [6:6]tier2_xbar_1_to_m14_couplers_AWLOCK;
  wire [20:18]tier2_xbar_1_to_m14_couplers_AWPROT;
  wire [27:24]tier2_xbar_1_to_m14_couplers_AWQOS;
  wire tier2_xbar_1_to_m14_couplers_AWREADY;
  wire [20:18]tier2_xbar_1_to_m14_couplers_AWSIZE;
  wire [6:6]tier2_xbar_1_to_m14_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m14_couplers_BID;
  wire [6:6]tier2_xbar_1_to_m14_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_BRESP;
  wire tier2_xbar_1_to_m14_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m14_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m14_couplers_RID;
  wire tier2_xbar_1_to_m14_couplers_RLAST;
  wire [6:6]tier2_xbar_1_to_m14_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_RRESP;
  wire tier2_xbar_1_to_m14_couplers_RVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_WDATA;
  wire [6:6]tier2_xbar_1_to_m14_couplers_WLAST;
  wire tier2_xbar_1_to_m14_couplers_WREADY;
  wire [27:24]tier2_xbar_1_to_m14_couplers_WSTRB;
  wire [6:6]tier2_xbar_1_to_m14_couplers_WVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_ARADDR;
  wire [15:14]tier2_xbar_1_to_m15_couplers_ARBURST;
  wire [31:28]tier2_xbar_1_to_m15_couplers_ARCACHE;
  wire [47:42]tier2_xbar_1_to_m15_couplers_ARID;
  wire [63:56]tier2_xbar_1_to_m15_couplers_ARLEN;
  wire [7:7]tier2_xbar_1_to_m15_couplers_ARLOCK;
  wire [23:21]tier2_xbar_1_to_m15_couplers_ARPROT;
  wire [31:28]tier2_xbar_1_to_m15_couplers_ARQOS;
  wire tier2_xbar_1_to_m15_couplers_ARREADY;
  wire [23:21]tier2_xbar_1_to_m15_couplers_ARSIZE;
  wire [7:7]tier2_xbar_1_to_m15_couplers_ARVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_AWADDR;
  wire [15:14]tier2_xbar_1_to_m15_couplers_AWBURST;
  wire [31:28]tier2_xbar_1_to_m15_couplers_AWCACHE;
  wire [47:42]tier2_xbar_1_to_m15_couplers_AWID;
  wire [63:56]tier2_xbar_1_to_m15_couplers_AWLEN;
  wire [7:7]tier2_xbar_1_to_m15_couplers_AWLOCK;
  wire [23:21]tier2_xbar_1_to_m15_couplers_AWPROT;
  wire [31:28]tier2_xbar_1_to_m15_couplers_AWQOS;
  wire tier2_xbar_1_to_m15_couplers_AWREADY;
  wire [23:21]tier2_xbar_1_to_m15_couplers_AWSIZE;
  wire [7:7]tier2_xbar_1_to_m15_couplers_AWVALID;
  wire [5:0]tier2_xbar_1_to_m15_couplers_BID;
  wire [7:7]tier2_xbar_1_to_m15_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_BRESP;
  wire tier2_xbar_1_to_m15_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m15_couplers_RDATA;
  wire [5:0]tier2_xbar_1_to_m15_couplers_RID;
  wire tier2_xbar_1_to_m15_couplers_RLAST;
  wire [7:7]tier2_xbar_1_to_m15_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_RRESP;
  wire tier2_xbar_1_to_m15_couplers_RVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_WDATA;
  wire [7:7]tier2_xbar_1_to_m15_couplers_WLAST;
  wire tier2_xbar_1_to_m15_couplers_WREADY;
  wire [31:28]tier2_xbar_1_to_m15_couplers_WSTRB;
  wire [7:7]tier2_xbar_1_to_m15_couplers_WVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_ARADDR;
  wire [1:0]tier2_xbar_2_to_m16_couplers_ARBURST;
  wire [3:0]tier2_xbar_2_to_m16_couplers_ARCACHE;
  wire [5:0]tier2_xbar_2_to_m16_couplers_ARID;
  wire [7:0]tier2_xbar_2_to_m16_couplers_ARLEN;
  wire [0:0]tier2_xbar_2_to_m16_couplers_ARLOCK;
  wire [2:0]tier2_xbar_2_to_m16_couplers_ARPROT;
  wire [3:0]tier2_xbar_2_to_m16_couplers_ARQOS;
  wire tier2_xbar_2_to_m16_couplers_ARREADY;
  wire [3:0]tier2_xbar_2_to_m16_couplers_ARREGION;
  wire [2:0]tier2_xbar_2_to_m16_couplers_ARSIZE;
  wire [0:0]tier2_xbar_2_to_m16_couplers_ARVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_AWADDR;
  wire [1:0]tier2_xbar_2_to_m16_couplers_AWBURST;
  wire [3:0]tier2_xbar_2_to_m16_couplers_AWCACHE;
  wire [5:0]tier2_xbar_2_to_m16_couplers_AWID;
  wire [7:0]tier2_xbar_2_to_m16_couplers_AWLEN;
  wire [0:0]tier2_xbar_2_to_m16_couplers_AWLOCK;
  wire [2:0]tier2_xbar_2_to_m16_couplers_AWPROT;
  wire [3:0]tier2_xbar_2_to_m16_couplers_AWQOS;
  wire tier2_xbar_2_to_m16_couplers_AWREADY;
  wire [3:0]tier2_xbar_2_to_m16_couplers_AWREGION;
  wire [2:0]tier2_xbar_2_to_m16_couplers_AWSIZE;
  wire [0:0]tier2_xbar_2_to_m16_couplers_AWVALID;
  wire [5:0]tier2_xbar_2_to_m16_couplers_BID;
  wire [0:0]tier2_xbar_2_to_m16_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_BRESP;
  wire tier2_xbar_2_to_m16_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_RDATA;
  wire [5:0]tier2_xbar_2_to_m16_couplers_RID;
  wire tier2_xbar_2_to_m16_couplers_RLAST;
  wire [0:0]tier2_xbar_2_to_m16_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_RRESP;
  wire tier2_xbar_2_to_m16_couplers_RVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m16_couplers_WLAST;
  wire tier2_xbar_2_to_m16_couplers_WREADY;
  wire [3:0]tier2_xbar_2_to_m16_couplers_WSTRB;
  wire [0:0]tier2_xbar_2_to_m16_couplers_WVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_ARADDR;
  wire [3:2]tier2_xbar_2_to_m17_couplers_ARBURST;
  wire [7:4]tier2_xbar_2_to_m17_couplers_ARCACHE;
  wire [11:6]tier2_xbar_2_to_m17_couplers_ARID;
  wire [15:8]tier2_xbar_2_to_m17_couplers_ARLEN;
  wire [1:1]tier2_xbar_2_to_m17_couplers_ARLOCK;
  wire [5:3]tier2_xbar_2_to_m17_couplers_ARPROT;
  wire [7:4]tier2_xbar_2_to_m17_couplers_ARQOS;
  wire tier2_xbar_2_to_m17_couplers_ARREADY;
  wire [7:4]tier2_xbar_2_to_m17_couplers_ARREGION;
  wire [5:3]tier2_xbar_2_to_m17_couplers_ARSIZE;
  wire [1:1]tier2_xbar_2_to_m17_couplers_ARVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_AWADDR;
  wire [3:2]tier2_xbar_2_to_m17_couplers_AWBURST;
  wire [7:4]tier2_xbar_2_to_m17_couplers_AWCACHE;
  wire [11:6]tier2_xbar_2_to_m17_couplers_AWID;
  wire [15:8]tier2_xbar_2_to_m17_couplers_AWLEN;
  wire [1:1]tier2_xbar_2_to_m17_couplers_AWLOCK;
  wire [5:3]tier2_xbar_2_to_m17_couplers_AWPROT;
  wire [7:4]tier2_xbar_2_to_m17_couplers_AWQOS;
  wire tier2_xbar_2_to_m17_couplers_AWREADY;
  wire [7:4]tier2_xbar_2_to_m17_couplers_AWREGION;
  wire [5:3]tier2_xbar_2_to_m17_couplers_AWSIZE;
  wire [1:1]tier2_xbar_2_to_m17_couplers_AWVALID;
  wire [5:0]tier2_xbar_2_to_m17_couplers_BID;
  wire [1:1]tier2_xbar_2_to_m17_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_BRESP;
  wire tier2_xbar_2_to_m17_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m17_couplers_RDATA;
  wire [5:0]tier2_xbar_2_to_m17_couplers_RID;
  wire tier2_xbar_2_to_m17_couplers_RLAST;
  wire [1:1]tier2_xbar_2_to_m17_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_RRESP;
  wire tier2_xbar_2_to_m17_couplers_RVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_WDATA;
  wire [1:1]tier2_xbar_2_to_m17_couplers_WLAST;
  wire tier2_xbar_2_to_m17_couplers_WREADY;
  wire [7:4]tier2_xbar_2_to_m17_couplers_WSTRB;
  wire [1:1]tier2_xbar_2_to_m17_couplers_WVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_ARADDR;
  wire [5:4]tier2_xbar_2_to_m18_couplers_ARBURST;
  wire [11:8]tier2_xbar_2_to_m18_couplers_ARCACHE;
  wire [17:12]tier2_xbar_2_to_m18_couplers_ARID;
  wire [23:16]tier2_xbar_2_to_m18_couplers_ARLEN;
  wire [2:2]tier2_xbar_2_to_m18_couplers_ARLOCK;
  wire [8:6]tier2_xbar_2_to_m18_couplers_ARPROT;
  wire tier2_xbar_2_to_m18_couplers_ARREADY;
  wire [8:6]tier2_xbar_2_to_m18_couplers_ARSIZE;
  wire [2:2]tier2_xbar_2_to_m18_couplers_ARVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_AWADDR;
  wire [5:4]tier2_xbar_2_to_m18_couplers_AWBURST;
  wire [11:8]tier2_xbar_2_to_m18_couplers_AWCACHE;
  wire [17:12]tier2_xbar_2_to_m18_couplers_AWID;
  wire [23:16]tier2_xbar_2_to_m18_couplers_AWLEN;
  wire [2:2]tier2_xbar_2_to_m18_couplers_AWLOCK;
  wire [8:6]tier2_xbar_2_to_m18_couplers_AWPROT;
  wire tier2_xbar_2_to_m18_couplers_AWREADY;
  wire [8:6]tier2_xbar_2_to_m18_couplers_AWSIZE;
  wire [2:2]tier2_xbar_2_to_m18_couplers_AWVALID;
  wire [5:0]tier2_xbar_2_to_m18_couplers_BID;
  wire [2:2]tier2_xbar_2_to_m18_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_BRESP;
  wire tier2_xbar_2_to_m18_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m18_couplers_RDATA;
  wire [5:0]tier2_xbar_2_to_m18_couplers_RID;
  wire tier2_xbar_2_to_m18_couplers_RLAST;
  wire [2:2]tier2_xbar_2_to_m18_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_RRESP;
  wire tier2_xbar_2_to_m18_couplers_RVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_WDATA;
  wire [2:2]tier2_xbar_2_to_m18_couplers_WLAST;
  wire tier2_xbar_2_to_m18_couplers_WREADY;
  wire [11:8]tier2_xbar_2_to_m18_couplers_WSTRB;
  wire [2:2]tier2_xbar_2_to_m18_couplers_WVALID;
  wire [31:0]xbar_to_i00_couplers_ARADDR;
  wire [1:0]xbar_to_i00_couplers_ARBURST;
  wire [3:0]xbar_to_i00_couplers_ARCACHE;
  wire [5:0]xbar_to_i00_couplers_ARID;
  wire [7:0]xbar_to_i00_couplers_ARLEN;
  wire [0:0]xbar_to_i00_couplers_ARLOCK;
  wire [2:0]xbar_to_i00_couplers_ARPROT;
  wire [3:0]xbar_to_i00_couplers_ARQOS;
  wire [0:0]xbar_to_i00_couplers_ARREADY;
  wire [2:0]xbar_to_i00_couplers_ARSIZE;
  wire [0:0]xbar_to_i00_couplers_ARVALID;
  wire [31:0]xbar_to_i00_couplers_AWADDR;
  wire [1:0]xbar_to_i00_couplers_AWBURST;
  wire [3:0]xbar_to_i00_couplers_AWCACHE;
  wire [5:0]xbar_to_i00_couplers_AWID;
  wire [7:0]xbar_to_i00_couplers_AWLEN;
  wire [0:0]xbar_to_i00_couplers_AWLOCK;
  wire [2:0]xbar_to_i00_couplers_AWPROT;
  wire [3:0]xbar_to_i00_couplers_AWQOS;
  wire [0:0]xbar_to_i00_couplers_AWREADY;
  wire [2:0]xbar_to_i00_couplers_AWSIZE;
  wire [0:0]xbar_to_i00_couplers_AWVALID;
  wire [5:0]xbar_to_i00_couplers_BID;
  wire [0:0]xbar_to_i00_couplers_BREADY;
  wire [1:0]xbar_to_i00_couplers_BRESP;
  wire [0:0]xbar_to_i00_couplers_BVALID;
  wire [31:0]xbar_to_i00_couplers_RDATA;
  wire [5:0]xbar_to_i00_couplers_RID;
  wire [0:0]xbar_to_i00_couplers_RLAST;
  wire [0:0]xbar_to_i00_couplers_RREADY;
  wire [1:0]xbar_to_i00_couplers_RRESP;
  wire [0:0]xbar_to_i00_couplers_RVALID;
  wire [31:0]xbar_to_i00_couplers_WDATA;
  wire [0:0]xbar_to_i00_couplers_WLAST;
  wire [0:0]xbar_to_i00_couplers_WREADY;
  wire [3:0]xbar_to_i00_couplers_WSTRB;
  wire [0:0]xbar_to_i00_couplers_WVALID;
  wire [63:32]xbar_to_i01_couplers_ARADDR;
  wire [3:2]xbar_to_i01_couplers_ARBURST;
  wire [7:4]xbar_to_i01_couplers_ARCACHE;
  wire [11:6]xbar_to_i01_couplers_ARID;
  wire [15:8]xbar_to_i01_couplers_ARLEN;
  wire [1:1]xbar_to_i01_couplers_ARLOCK;
  wire [5:3]xbar_to_i01_couplers_ARPROT;
  wire [7:4]xbar_to_i01_couplers_ARQOS;
  wire [0:0]xbar_to_i01_couplers_ARREADY;
  wire [5:3]xbar_to_i01_couplers_ARSIZE;
  wire [1:1]xbar_to_i01_couplers_ARVALID;
  wire [63:32]xbar_to_i01_couplers_AWADDR;
  wire [3:2]xbar_to_i01_couplers_AWBURST;
  wire [7:4]xbar_to_i01_couplers_AWCACHE;
  wire [11:6]xbar_to_i01_couplers_AWID;
  wire [15:8]xbar_to_i01_couplers_AWLEN;
  wire [1:1]xbar_to_i01_couplers_AWLOCK;
  wire [5:3]xbar_to_i01_couplers_AWPROT;
  wire [7:4]xbar_to_i01_couplers_AWQOS;
  wire [0:0]xbar_to_i01_couplers_AWREADY;
  wire [5:3]xbar_to_i01_couplers_AWSIZE;
  wire [1:1]xbar_to_i01_couplers_AWVALID;
  wire [5:0]xbar_to_i01_couplers_BID;
  wire [1:1]xbar_to_i01_couplers_BREADY;
  wire [1:0]xbar_to_i01_couplers_BRESP;
  wire [0:0]xbar_to_i01_couplers_BVALID;
  wire [31:0]xbar_to_i01_couplers_RDATA;
  wire [5:0]xbar_to_i01_couplers_RID;
  wire [0:0]xbar_to_i01_couplers_RLAST;
  wire [1:1]xbar_to_i01_couplers_RREADY;
  wire [1:0]xbar_to_i01_couplers_RRESP;
  wire [0:0]xbar_to_i01_couplers_RVALID;
  wire [63:32]xbar_to_i01_couplers_WDATA;
  wire [1:1]xbar_to_i01_couplers_WLAST;
  wire [0:0]xbar_to_i01_couplers_WREADY;
  wire [7:4]xbar_to_i01_couplers_WSTRB;
  wire [1:1]xbar_to_i01_couplers_WVALID;
  wire [95:64]xbar_to_i02_couplers_ARADDR;
  wire [5:4]xbar_to_i02_couplers_ARBURST;
  wire [11:8]xbar_to_i02_couplers_ARCACHE;
  wire [17:12]xbar_to_i02_couplers_ARID;
  wire [23:16]xbar_to_i02_couplers_ARLEN;
  wire [2:2]xbar_to_i02_couplers_ARLOCK;
  wire [8:6]xbar_to_i02_couplers_ARPROT;
  wire [11:8]xbar_to_i02_couplers_ARQOS;
  wire [0:0]xbar_to_i02_couplers_ARREADY;
  wire [8:6]xbar_to_i02_couplers_ARSIZE;
  wire [2:2]xbar_to_i02_couplers_ARVALID;
  wire [95:64]xbar_to_i02_couplers_AWADDR;
  wire [5:4]xbar_to_i02_couplers_AWBURST;
  wire [11:8]xbar_to_i02_couplers_AWCACHE;
  wire [17:12]xbar_to_i02_couplers_AWID;
  wire [23:16]xbar_to_i02_couplers_AWLEN;
  wire [2:2]xbar_to_i02_couplers_AWLOCK;
  wire [8:6]xbar_to_i02_couplers_AWPROT;
  wire [11:8]xbar_to_i02_couplers_AWQOS;
  wire [0:0]xbar_to_i02_couplers_AWREADY;
  wire [8:6]xbar_to_i02_couplers_AWSIZE;
  wire [2:2]xbar_to_i02_couplers_AWVALID;
  wire [5:0]xbar_to_i02_couplers_BID;
  wire [2:2]xbar_to_i02_couplers_BREADY;
  wire [1:0]xbar_to_i02_couplers_BRESP;
  wire [0:0]xbar_to_i02_couplers_BVALID;
  wire [31:0]xbar_to_i02_couplers_RDATA;
  wire [5:0]xbar_to_i02_couplers_RID;
  wire [0:0]xbar_to_i02_couplers_RLAST;
  wire [2:2]xbar_to_i02_couplers_RREADY;
  wire [1:0]xbar_to_i02_couplers_RRESP;
  wire [0:0]xbar_to_i02_couplers_RVALID;
  wire [95:64]xbar_to_i02_couplers_WDATA;
  wire [2:2]xbar_to_i02_couplers_WLAST;
  wire [0:0]xbar_to_i02_couplers_WREADY;
  wire [11:8]xbar_to_i02_couplers_WSTRB;
  wire [2:2]xbar_to_i02_couplers_WVALID;
  wire [31:0]NLW_tier2_xbar_0_m_axi_arqos_UNCONNECTED;
  wire [31:0]NLW_tier2_xbar_0_m_axi_arregion_UNCONNECTED;
  wire [31:0]NLW_tier2_xbar_0_m_axi_awqos_UNCONNECTED;
  wire [31:0]NLW_tier2_xbar_0_m_axi_awregion_UNCONNECTED;

  assign M00_AXI_araddr[17:0] = m00_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[17:0] = m00_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps7_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps7_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps7_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_ps7_0_axi_periph_WVALID;
  assign M01_AXI_araddr[15:0] = m01_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps7_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps7_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps7_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps7_0_axi_periph_WVALID;
  assign M02_AXI_araddr[9:0] = m02_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[9:0] = m02_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps7_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps7_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps7_0_axi_periph_WDATA;
  assign M02_AXI_wvalid = m02_couplers_to_ps7_0_axi_periph_WVALID;
  assign M03_AXI_araddr[4:0] = m03_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[4:0] = m03_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps7_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps7_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps7_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps7_0_axi_periph_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps7_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps7_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps7_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps7_0_axi_periph_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M05_AXI_arburst[1:0] = m05_couplers_to_ps7_0_axi_periph_ARBURST;
  assign M05_AXI_arcache[3:0] = m05_couplers_to_ps7_0_axi_periph_ARCACHE;
  assign M05_AXI_arid[5:0] = m05_couplers_to_ps7_0_axi_periph_ARID;
  assign M05_AXI_arlen[7:0] = m05_couplers_to_ps7_0_axi_periph_ARLEN;
  assign M05_AXI_arlock[0] = m05_couplers_to_ps7_0_axi_periph_ARLOCK;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M05_AXI_arsize[2:0] = m05_couplers_to_ps7_0_axi_periph_ARSIZE;
  assign M05_AXI_arvalid[0] = m05_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_ps7_0_axi_periph_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_ps7_0_axi_periph_AWCACHE;
  assign M05_AXI_awid[5:0] = m05_couplers_to_ps7_0_axi_periph_AWID;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_ps7_0_axi_periph_AWLEN;
  assign M05_AXI_awlock[0] = m05_couplers_to_ps7_0_axi_periph_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_ps7_0_axi_periph_AWSIZE;
  assign M05_AXI_awvalid[0] = m05_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_ps7_0_axi_periph_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_ps7_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps7_0_axi_periph_WDATA;
  assign M05_AXI_wlast[0] = m05_couplers_to_ps7_0_axi_periph_WLAST;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_ps7_0_axi_periph_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps7_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps7_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps7_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps7_0_axi_periph_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M07_AXI_arburst[1:0] = m07_couplers_to_ps7_0_axi_periph_ARBURST;
  assign M07_AXI_arcache[3:0] = m07_couplers_to_ps7_0_axi_periph_ARCACHE;
  assign M07_AXI_arid[5:0] = m07_couplers_to_ps7_0_axi_periph_ARID;
  assign M07_AXI_arlen[7:0] = m07_couplers_to_ps7_0_axi_periph_ARLEN;
  assign M07_AXI_arlock[0] = m07_couplers_to_ps7_0_axi_periph_ARLOCK;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M07_AXI_arsize[2:0] = m07_couplers_to_ps7_0_axi_periph_ARSIZE;
  assign M07_AXI_arvalid[0] = m07_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M07_AXI_awburst[1:0] = m07_couplers_to_ps7_0_axi_periph_AWBURST;
  assign M07_AXI_awcache[3:0] = m07_couplers_to_ps7_0_axi_periph_AWCACHE;
  assign M07_AXI_awid[5:0] = m07_couplers_to_ps7_0_axi_periph_AWID;
  assign M07_AXI_awlen[7:0] = m07_couplers_to_ps7_0_axi_periph_AWLEN;
  assign M07_AXI_awlock[0] = m07_couplers_to_ps7_0_axi_periph_AWLOCK;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M07_AXI_awsize[2:0] = m07_couplers_to_ps7_0_axi_periph_AWSIZE;
  assign M07_AXI_awvalid[0] = m07_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_ps7_0_axi_periph_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_ps7_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps7_0_axi_periph_WDATA;
  assign M07_AXI_wlast[0] = m07_couplers_to_ps7_0_axi_periph_WLAST;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_ps7_0_axi_periph_WVALID;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_ps7_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_ps7_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps7_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_ps7_0_axi_periph_WVALID;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_ps7_0_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_ps7_0_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_ps7_0_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_ps7_0_axi_periph_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_ps7_0_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_ps7_0_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_ps7_0_axi_periph_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_ps7_0_axi_periph_WVALID;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_ps7_0_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_ps7_0_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_ps7_0_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_ps7_0_axi_periph_WVALID;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_ps7_0_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_ps7_0_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_ps7_0_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_ps7_0_axi_periph_WVALID;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_ps7_0_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_ps7_0_axi_periph_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_ps7_0_axi_periph_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_ps7_0_axi_periph_WVALID;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M14_AXI_arburst[1:0] = m14_couplers_to_ps7_0_axi_periph_ARBURST;
  assign M14_AXI_arcache[3:0] = m14_couplers_to_ps7_0_axi_periph_ARCACHE;
  assign M14_AXI_arid[5:0] = m14_couplers_to_ps7_0_axi_periph_ARID;
  assign M14_AXI_arlen[7:0] = m14_couplers_to_ps7_0_axi_periph_ARLEN;
  assign M14_AXI_arlock = m14_couplers_to_ps7_0_axi_periph_ARLOCK;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M14_AXI_arqos[3:0] = m14_couplers_to_ps7_0_axi_periph_ARQOS;
  assign M14_AXI_arsize[2:0] = m14_couplers_to_ps7_0_axi_periph_ARSIZE;
  assign M14_AXI_arvalid = m14_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M14_AXI_awburst[1:0] = m14_couplers_to_ps7_0_axi_periph_AWBURST;
  assign M14_AXI_awcache[3:0] = m14_couplers_to_ps7_0_axi_periph_AWCACHE;
  assign M14_AXI_awid[5:0] = m14_couplers_to_ps7_0_axi_periph_AWID;
  assign M14_AXI_awlen[7:0] = m14_couplers_to_ps7_0_axi_periph_AWLEN;
  assign M14_AXI_awlock = m14_couplers_to_ps7_0_axi_periph_AWLOCK;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M14_AXI_awqos[3:0] = m14_couplers_to_ps7_0_axi_periph_AWQOS;
  assign M14_AXI_awsize[2:0] = m14_couplers_to_ps7_0_axi_periph_AWSIZE;
  assign M14_AXI_awvalid = m14_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_ps7_0_axi_periph_BREADY;
  assign M14_AXI_rready = m14_couplers_to_ps7_0_axi_periph_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_ps7_0_axi_periph_WDATA;
  assign M14_AXI_wlast = m14_couplers_to_ps7_0_axi_periph_WLAST;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_ps7_0_axi_periph_WVALID;
  assign M15_AXI_araddr[31:0] = m15_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M15_AXI_arburst[1:0] = m15_couplers_to_ps7_0_axi_periph_ARBURST;
  assign M15_AXI_arcache[3:0] = m15_couplers_to_ps7_0_axi_periph_ARCACHE;
  assign M15_AXI_arid[5:0] = m15_couplers_to_ps7_0_axi_periph_ARID;
  assign M15_AXI_arlen[7:0] = m15_couplers_to_ps7_0_axi_periph_ARLEN;
  assign M15_AXI_arlock = m15_couplers_to_ps7_0_axi_periph_ARLOCK;
  assign M15_AXI_arprot[2:0] = m15_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M15_AXI_arqos[3:0] = m15_couplers_to_ps7_0_axi_periph_ARQOS;
  assign M15_AXI_arsize[2:0] = m15_couplers_to_ps7_0_axi_periph_ARSIZE;
  assign M15_AXI_arvalid = m15_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M15_AXI_awaddr[31:0] = m15_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M15_AXI_awburst[1:0] = m15_couplers_to_ps7_0_axi_periph_AWBURST;
  assign M15_AXI_awcache[3:0] = m15_couplers_to_ps7_0_axi_periph_AWCACHE;
  assign M15_AXI_awid[5:0] = m15_couplers_to_ps7_0_axi_periph_AWID;
  assign M15_AXI_awlen[7:0] = m15_couplers_to_ps7_0_axi_periph_AWLEN;
  assign M15_AXI_awlock = m15_couplers_to_ps7_0_axi_periph_AWLOCK;
  assign M15_AXI_awprot[2:0] = m15_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M15_AXI_awqos[3:0] = m15_couplers_to_ps7_0_axi_periph_AWQOS;
  assign M15_AXI_awsize[2:0] = m15_couplers_to_ps7_0_axi_periph_AWSIZE;
  assign M15_AXI_awvalid = m15_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_ps7_0_axi_periph_BREADY;
  assign M15_AXI_rready = m15_couplers_to_ps7_0_axi_periph_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_ps7_0_axi_periph_WDATA;
  assign M15_AXI_wlast = m15_couplers_to_ps7_0_axi_periph_WLAST;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_ps7_0_axi_periph_WVALID;
  assign M16_AXI_araddr[31:0] = m16_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M16_AXI_arvalid = m16_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M16_AXI_awaddr[31:0] = m16_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M16_AXI_awvalid = m16_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M16_AXI_bready = m16_couplers_to_ps7_0_axi_periph_BREADY;
  assign M16_AXI_rready = m16_couplers_to_ps7_0_axi_periph_RREADY;
  assign M16_AXI_wdata[31:0] = m16_couplers_to_ps7_0_axi_periph_WDATA;
  assign M16_AXI_wstrb[3:0] = m16_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M16_AXI_wvalid = m16_couplers_to_ps7_0_axi_periph_WVALID;
  assign M17_AXI_araddr[31:0] = m17_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M17_AXI_arvalid = m17_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M17_AXI_awaddr[31:0] = m17_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M17_AXI_awvalid = m17_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M17_AXI_bready = m17_couplers_to_ps7_0_axi_periph_BREADY;
  assign M17_AXI_rready = m17_couplers_to_ps7_0_axi_periph_RREADY;
  assign M17_AXI_wdata[31:0] = m17_couplers_to_ps7_0_axi_periph_WDATA;
  assign M17_AXI_wstrb[3:0] = m17_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M17_AXI_wvalid = m17_couplers_to_ps7_0_axi_periph_WVALID;
  assign M18_AXI_araddr[31:0] = m18_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M18_AXI_arburst[1:0] = m18_couplers_to_ps7_0_axi_periph_ARBURST;
  assign M18_AXI_arcache[3:0] = m18_couplers_to_ps7_0_axi_periph_ARCACHE;
  assign M18_AXI_arid[5:0] = m18_couplers_to_ps7_0_axi_periph_ARID;
  assign M18_AXI_arlen[7:0] = m18_couplers_to_ps7_0_axi_periph_ARLEN;
  assign M18_AXI_arlock = m18_couplers_to_ps7_0_axi_periph_ARLOCK;
  assign M18_AXI_arprot[2:0] = m18_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M18_AXI_arsize[2:0] = m18_couplers_to_ps7_0_axi_periph_ARSIZE;
  assign M18_AXI_arvalid = m18_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M18_AXI_awaddr[31:0] = m18_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M18_AXI_awburst[1:0] = m18_couplers_to_ps7_0_axi_periph_AWBURST;
  assign M18_AXI_awcache[3:0] = m18_couplers_to_ps7_0_axi_periph_AWCACHE;
  assign M18_AXI_awid[5:0] = m18_couplers_to_ps7_0_axi_periph_AWID;
  assign M18_AXI_awlen[7:0] = m18_couplers_to_ps7_0_axi_periph_AWLEN;
  assign M18_AXI_awlock = m18_couplers_to_ps7_0_axi_periph_AWLOCK;
  assign M18_AXI_awprot[2:0] = m18_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M18_AXI_awsize[2:0] = m18_couplers_to_ps7_0_axi_periph_AWSIZE;
  assign M18_AXI_awvalid = m18_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M18_AXI_bready = m18_couplers_to_ps7_0_axi_periph_BREADY;
  assign M18_AXI_rready = m18_couplers_to_ps7_0_axi_periph_RREADY;
  assign M18_AXI_wdata[31:0] = m18_couplers_to_ps7_0_axi_periph_WDATA;
  assign M18_AXI_wlast = m18_couplers_to_ps7_0_axi_periph_WLAST;
  assign M18_AXI_wstrb[3:0] = m18_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M18_AXI_wvalid = m18_couplers_to_ps7_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = ps7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = ps7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps7_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps7_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps7_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps7_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps7_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps7_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps7_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps7_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps7_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps7_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps7_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps7_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps7_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps7_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps7_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps7_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps7_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps7_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps7_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps7_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps7_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps7_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps7_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps7_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps7_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps7_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps7_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps7_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps7_0_axi_periph_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_ps7_0_axi_periph_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_ps7_0_axi_periph_BID = M05_AXI_bid[5:0];
  assign m05_couplers_to_ps7_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps7_0_axi_periph_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_ps7_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps7_0_axi_periph_RID = M05_AXI_rid[5:0];
  assign m05_couplers_to_ps7_0_axi_periph_RLAST = M05_AXI_rlast[0];
  assign m05_couplers_to_ps7_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps7_0_axi_periph_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_ps7_0_axi_periph_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_ps7_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps7_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps7_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps7_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps7_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps7_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps7_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps7_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps7_0_axi_periph_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_ps7_0_axi_periph_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_ps7_0_axi_periph_BID = M07_AXI_bid[5:0];
  assign m07_couplers_to_ps7_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps7_0_axi_periph_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_ps7_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps7_0_axi_periph_RID = M07_AXI_rid[5:0];
  assign m07_couplers_to_ps7_0_axi_periph_RLAST = M07_AXI_rlast[0];
  assign m07_couplers_to_ps7_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps7_0_axi_periph_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_ps7_0_axi_periph_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_ps7_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_ps7_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_ps7_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps7_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_ps7_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps7_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps7_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_ps7_0_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_ps7_0_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_ps7_0_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_ps7_0_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_ps7_0_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_ps7_0_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_ps7_0_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_ps7_0_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_ps7_0_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_ps7_0_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_ps7_0_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_ps7_0_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_ps7_0_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_ps7_0_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_ps7_0_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_ps7_0_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_ps7_0_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_ps7_0_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_ps7_0_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_ps7_0_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_ps7_0_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_ps7_0_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_ps7_0_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_ps7_0_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_ps7_0_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_ps7_0_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_ps7_0_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_ps7_0_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_ps7_0_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_ps7_0_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_ps7_0_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_ps7_0_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_ps7_0_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_ps7_0_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_ps7_0_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_ps7_0_axi_periph_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_ps7_0_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_ps7_0_axi_periph_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_ps7_0_axi_periph_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_ps7_0_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_ps7_0_axi_periph_WREADY = M13_AXI_wready;
  assign m14_couplers_to_ps7_0_axi_periph_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_ps7_0_axi_periph_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_ps7_0_axi_periph_BID = M14_AXI_bid[5:0];
  assign m14_couplers_to_ps7_0_axi_periph_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_ps7_0_axi_periph_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_ps7_0_axi_periph_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_ps7_0_axi_periph_RID = M14_AXI_rid[5:0];
  assign m14_couplers_to_ps7_0_axi_periph_RLAST = M14_AXI_rlast;
  assign m14_couplers_to_ps7_0_axi_periph_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_ps7_0_axi_periph_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_ps7_0_axi_periph_WREADY = M14_AXI_wready;
  assign m15_couplers_to_ps7_0_axi_periph_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_ps7_0_axi_periph_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_ps7_0_axi_periph_BID = M15_AXI_bid[5:0];
  assign m15_couplers_to_ps7_0_axi_periph_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_ps7_0_axi_periph_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_ps7_0_axi_periph_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_ps7_0_axi_periph_RID = M15_AXI_rid[5:0];
  assign m15_couplers_to_ps7_0_axi_periph_RLAST = M15_AXI_rlast;
  assign m15_couplers_to_ps7_0_axi_periph_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_ps7_0_axi_periph_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_ps7_0_axi_periph_WREADY = M15_AXI_wready;
  assign m16_couplers_to_ps7_0_axi_periph_ARREADY = M16_AXI_arready;
  assign m16_couplers_to_ps7_0_axi_periph_AWREADY = M16_AXI_awready;
  assign m16_couplers_to_ps7_0_axi_periph_BRESP = M16_AXI_bresp[1:0];
  assign m16_couplers_to_ps7_0_axi_periph_BVALID = M16_AXI_bvalid;
  assign m16_couplers_to_ps7_0_axi_periph_RDATA = M16_AXI_rdata[31:0];
  assign m16_couplers_to_ps7_0_axi_periph_RRESP = M16_AXI_rresp[1:0];
  assign m16_couplers_to_ps7_0_axi_periph_RVALID = M16_AXI_rvalid;
  assign m16_couplers_to_ps7_0_axi_periph_WREADY = M16_AXI_wready;
  assign m17_couplers_to_ps7_0_axi_periph_ARREADY = M17_AXI_arready;
  assign m17_couplers_to_ps7_0_axi_periph_AWREADY = M17_AXI_awready;
  assign m17_couplers_to_ps7_0_axi_periph_BRESP = M17_AXI_bresp[1:0];
  assign m17_couplers_to_ps7_0_axi_periph_BVALID = M17_AXI_bvalid;
  assign m17_couplers_to_ps7_0_axi_periph_RDATA = M17_AXI_rdata[31:0];
  assign m17_couplers_to_ps7_0_axi_periph_RRESP = M17_AXI_rresp[1:0];
  assign m17_couplers_to_ps7_0_axi_periph_RVALID = M17_AXI_rvalid;
  assign m17_couplers_to_ps7_0_axi_periph_WREADY = M17_AXI_wready;
  assign m18_couplers_to_ps7_0_axi_periph_ARREADY = M18_AXI_arready;
  assign m18_couplers_to_ps7_0_axi_periph_AWREADY = M18_AXI_awready;
  assign m18_couplers_to_ps7_0_axi_periph_BID = M18_AXI_bid[5:0];
  assign m18_couplers_to_ps7_0_axi_periph_BRESP = M18_AXI_bresp[1:0];
  assign m18_couplers_to_ps7_0_axi_periph_BVALID = M18_AXI_bvalid;
  assign m18_couplers_to_ps7_0_axi_periph_RDATA = M18_AXI_rdata[31:0];
  assign m18_couplers_to_ps7_0_axi_periph_RID = M18_AXI_rid[5:0];
  assign m18_couplers_to_ps7_0_axi_periph_RLAST = M18_AXI_rlast;
  assign m18_couplers_to_ps7_0_axi_periph_RRESP = M18_AXI_rresp[1:0];
  assign m18_couplers_to_ps7_0_axi_periph_RVALID = M18_AXI_rvalid;
  assign m18_couplers_to_ps7_0_axi_periph_WREADY = M18_AXI_wready;
  assign ps7_0_axi_periph_ACLK_net = ACLK;
  assign ps7_0_axi_periph_ARESETN_net = ARESETN;
  assign ps7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[5:0];
  assign ps7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  i00_couplers_imp_BSNLAM i00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .M_AXI_arburst(i00_couplers_to_tier2_xbar_0_ARBURST),
        .M_AXI_arcache(i00_couplers_to_tier2_xbar_0_ARCACHE),
        .M_AXI_arid(i00_couplers_to_tier2_xbar_0_ARID),
        .M_AXI_arlen(i00_couplers_to_tier2_xbar_0_ARLEN),
        .M_AXI_arlock(i00_couplers_to_tier2_xbar_0_ARLOCK),
        .M_AXI_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .M_AXI_arqos(i00_couplers_to_tier2_xbar_0_ARQOS),
        .M_AXI_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .M_AXI_arsize(i00_couplers_to_tier2_xbar_0_ARSIZE),
        .M_AXI_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .M_AXI_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .M_AXI_awburst(i00_couplers_to_tier2_xbar_0_AWBURST),
        .M_AXI_awcache(i00_couplers_to_tier2_xbar_0_AWCACHE),
        .M_AXI_awid(i00_couplers_to_tier2_xbar_0_AWID),
        .M_AXI_awlen(i00_couplers_to_tier2_xbar_0_AWLEN),
        .M_AXI_awlock(i00_couplers_to_tier2_xbar_0_AWLOCK),
        .M_AXI_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .M_AXI_awqos(i00_couplers_to_tier2_xbar_0_AWQOS),
        .M_AXI_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .M_AXI_awsize(i00_couplers_to_tier2_xbar_0_AWSIZE),
        .M_AXI_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .M_AXI_bid(i00_couplers_to_tier2_xbar_0_BID),
        .M_AXI_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .M_AXI_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .M_AXI_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .M_AXI_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .M_AXI_rid(i00_couplers_to_tier2_xbar_0_RID),
        .M_AXI_rlast(i00_couplers_to_tier2_xbar_0_RLAST),
        .M_AXI_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .M_AXI_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .M_AXI_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .M_AXI_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .M_AXI_wlast(i00_couplers_to_tier2_xbar_0_WLAST),
        .M_AXI_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .M_AXI_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .M_AXI_wvalid(i00_couplers_to_tier2_xbar_0_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_i00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_i00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_i00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_i00_couplers_ARID),
        .S_AXI_arlen(xbar_to_i00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_i00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_i00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_i00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_i00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_i00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_i00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_i00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_i00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_i00_couplers_AWID),
        .S_AXI_awlen(xbar_to_i00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_i00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_i00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_i00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_i00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_i00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_i00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_i00_couplers_BID),
        .S_AXI_bready(xbar_to_i00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i00_couplers_RDATA),
        .S_AXI_rid(xbar_to_i00_couplers_RID),
        .S_AXI_rlast(xbar_to_i00_couplers_RLAST),
        .S_AXI_rready(xbar_to_i00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_i00_couplers_WLAST),
        .S_AXI_wready(xbar_to_i00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i00_couplers_WVALID));
  i01_couplers_imp_1IVYO33 i01_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .M_AXI_arburst(i01_couplers_to_tier2_xbar_1_ARBURST),
        .M_AXI_arcache(i01_couplers_to_tier2_xbar_1_ARCACHE),
        .M_AXI_arid(i01_couplers_to_tier2_xbar_1_ARID),
        .M_AXI_arlen(i01_couplers_to_tier2_xbar_1_ARLEN),
        .M_AXI_arlock(i01_couplers_to_tier2_xbar_1_ARLOCK),
        .M_AXI_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .M_AXI_arqos(i01_couplers_to_tier2_xbar_1_ARQOS),
        .M_AXI_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .M_AXI_arsize(i01_couplers_to_tier2_xbar_1_ARSIZE),
        .M_AXI_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .M_AXI_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .M_AXI_awburst(i01_couplers_to_tier2_xbar_1_AWBURST),
        .M_AXI_awcache(i01_couplers_to_tier2_xbar_1_AWCACHE),
        .M_AXI_awid(i01_couplers_to_tier2_xbar_1_AWID),
        .M_AXI_awlen(i01_couplers_to_tier2_xbar_1_AWLEN),
        .M_AXI_awlock(i01_couplers_to_tier2_xbar_1_AWLOCK),
        .M_AXI_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .M_AXI_awqos(i01_couplers_to_tier2_xbar_1_AWQOS),
        .M_AXI_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .M_AXI_awsize(i01_couplers_to_tier2_xbar_1_AWSIZE),
        .M_AXI_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .M_AXI_bid(i01_couplers_to_tier2_xbar_1_BID),
        .M_AXI_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .M_AXI_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .M_AXI_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .M_AXI_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .M_AXI_rid(i01_couplers_to_tier2_xbar_1_RID),
        .M_AXI_rlast(i01_couplers_to_tier2_xbar_1_RLAST),
        .M_AXI_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .M_AXI_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .M_AXI_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .M_AXI_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .M_AXI_wlast(i01_couplers_to_tier2_xbar_1_WLAST),
        .M_AXI_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .M_AXI_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .M_AXI_wvalid(i01_couplers_to_tier2_xbar_1_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_i01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_i01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_i01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_i01_couplers_ARID),
        .S_AXI_arlen(xbar_to_i01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_i01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_i01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_i01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_i01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_i01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_i01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_i01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_i01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_i01_couplers_AWID),
        .S_AXI_awlen(xbar_to_i01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_i01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_i01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_i01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_i01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_i01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_i01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_i01_couplers_BID),
        .S_AXI_bready(xbar_to_i01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i01_couplers_RDATA),
        .S_AXI_rid(xbar_to_i01_couplers_RID),
        .S_AXI_rlast(xbar_to_i01_couplers_RLAST),
        .S_AXI_rready(xbar_to_i01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_i01_couplers_WLAST),
        .S_AXI_wready(xbar_to_i01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i01_couplers_WVALID));
  i02_couplers_imp_D4V959 i02_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .M_AXI_arburst(i02_couplers_to_tier2_xbar_2_ARBURST),
        .M_AXI_arcache(i02_couplers_to_tier2_xbar_2_ARCACHE),
        .M_AXI_arid(i02_couplers_to_tier2_xbar_2_ARID),
        .M_AXI_arlen(i02_couplers_to_tier2_xbar_2_ARLEN),
        .M_AXI_arlock(i02_couplers_to_tier2_xbar_2_ARLOCK),
        .M_AXI_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .M_AXI_arqos(i02_couplers_to_tier2_xbar_2_ARQOS),
        .M_AXI_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .M_AXI_arsize(i02_couplers_to_tier2_xbar_2_ARSIZE),
        .M_AXI_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .M_AXI_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .M_AXI_awburst(i02_couplers_to_tier2_xbar_2_AWBURST),
        .M_AXI_awcache(i02_couplers_to_tier2_xbar_2_AWCACHE),
        .M_AXI_awid(i02_couplers_to_tier2_xbar_2_AWID),
        .M_AXI_awlen(i02_couplers_to_tier2_xbar_2_AWLEN),
        .M_AXI_awlock(i02_couplers_to_tier2_xbar_2_AWLOCK),
        .M_AXI_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .M_AXI_awqos(i02_couplers_to_tier2_xbar_2_AWQOS),
        .M_AXI_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .M_AXI_awsize(i02_couplers_to_tier2_xbar_2_AWSIZE),
        .M_AXI_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .M_AXI_bid(i02_couplers_to_tier2_xbar_2_BID),
        .M_AXI_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .M_AXI_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .M_AXI_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .M_AXI_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .M_AXI_rid(i02_couplers_to_tier2_xbar_2_RID),
        .M_AXI_rlast(i02_couplers_to_tier2_xbar_2_RLAST),
        .M_AXI_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .M_AXI_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .M_AXI_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .M_AXI_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .M_AXI_wlast(i02_couplers_to_tier2_xbar_2_WLAST),
        .M_AXI_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .M_AXI_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .M_AXI_wvalid(i02_couplers_to_tier2_xbar_2_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_i02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_i02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_i02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_i02_couplers_ARID),
        .S_AXI_arlen(xbar_to_i02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_i02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_i02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_i02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_i02_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_i02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_i02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_i02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_i02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_i02_couplers_AWID),
        .S_AXI_awlen(xbar_to_i02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_i02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_i02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_i02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_i02_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_i02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_i02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_i02_couplers_BID),
        .S_AXI_bready(xbar_to_i02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i02_couplers_RDATA),
        .S_AXI_rid(xbar_to_i02_couplers_RID),
        .S_AXI_rlast(xbar_to_i02_couplers_RLAST),
        .S_AXI_rready(xbar_to_i02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_i02_couplers_WLAST),
        .S_AXI_wready(xbar_to_i02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i02_couplers_WVALID));
  m00_couplers_imp_RV6QXJ m00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m00_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m00_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m00_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m00_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m00_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m00_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m00_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m00_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m00_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m00_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m00_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m00_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m00_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m00_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m00_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m00_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m00_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m00_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m00_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m00_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m00_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m00_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m00_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m00_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m00_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m00_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m00_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m00_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m00_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m00_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m00_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m00_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m00_couplers_WVALID));
  m01_couplers_imp_12MS3EE m01_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m01_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m01_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m01_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m01_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m01_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m01_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m01_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m01_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m01_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m01_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m01_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m01_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m01_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m01_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m01_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m01_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m01_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m01_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m01_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m01_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m01_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m01_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m01_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m01_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m01_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m01_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m01_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m01_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m01_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m01_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m01_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m01_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m01_couplers_WVALID));
  m02_couplers_imp_R477TG m02_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wvalid(m02_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m02_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m02_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m02_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m02_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m02_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m02_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m02_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m02_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m02_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m02_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m02_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m02_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m02_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m02_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m02_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m02_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m02_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m02_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m02_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m02_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m02_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m02_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m02_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m02_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m02_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m02_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m02_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m02_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m02_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m02_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m02_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m02_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m02_couplers_WVALID));
  m03_couplers_imp_13NGLV9 m03_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m03_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m03_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m03_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m03_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m03_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m03_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m03_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m03_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m03_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m03_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m03_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m03_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m03_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m03_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m03_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m03_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m03_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m03_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m03_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m03_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m03_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m03_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m03_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m03_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m03_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m03_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m03_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m03_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m03_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m03_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m03_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m03_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m03_couplers_WVALID));
  m04_couplers_imp_V0HHOX m04_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m04_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m04_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m04_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m04_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m04_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m04_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m04_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m04_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m04_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m04_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m04_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m04_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m04_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m04_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m04_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m04_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m04_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m04_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m04_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m04_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m04_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m04_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m04_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m04_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m04_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m04_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m04_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m04_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m04_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m04_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m04_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m04_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m04_couplers_WVALID));
  m05_couplers_imp_ZODA9C m05_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m05_couplers_to_ps7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m05_couplers_to_ps7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m05_couplers_to_ps7_0_axi_periph_ARID),
        .M_AXI_arlen(m05_couplers_to_ps7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m05_couplers_to_ps7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m05_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m05_couplers_to_ps7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m05_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m05_couplers_to_ps7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m05_couplers_to_ps7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m05_couplers_to_ps7_0_axi_periph_AWID),
        .M_AXI_awlen(m05_couplers_to_ps7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m05_couplers_to_ps7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m05_couplers_to_ps7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bid(m05_couplers_to_ps7_0_axi_periph_BID),
        .M_AXI_bready(m05_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rid(m05_couplers_to_ps7_0_axi_periph_RID),
        .M_AXI_rlast(m05_couplers_to_ps7_0_axi_periph_RLAST),
        .M_AXI_rready(m05_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wlast(m05_couplers_to_ps7_0_axi_periph_WLAST),
        .M_AXI_wready(m05_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m05_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m05_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m05_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m05_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m05_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m05_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m05_couplers_ARREADY),
        .S_AXI_arsize(tier2_xbar_0_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m05_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m05_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m05_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m05_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m05_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m05_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m05_couplers_AWREADY),
        .S_AXI_awsize(tier2_xbar_0_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m05_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m05_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m05_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m05_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m05_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m05_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m05_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m05_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m05_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m05_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m05_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m05_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m05_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m05_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m05_couplers_WVALID));
  m06_couplers_imp_TFIFYQ m06_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m06_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m06_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m06_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m06_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m06_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m06_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_0_to_m06_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_0_to_m06_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_0_to_m06_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_0_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m06_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m06_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m06_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m06_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m06_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m06_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_0_to_m06_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_0_to_m06_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_0_to_m06_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_0_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m06_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m06_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m06_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m06_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m06_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m06_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m06_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m06_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m06_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m06_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m06_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m06_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m06_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m06_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m06_couplers_WVALID));
  m07_couplers_imp_10Z0P83 m07_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m07_couplers_to_ps7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m07_couplers_to_ps7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m07_couplers_to_ps7_0_axi_periph_ARID),
        .M_AXI_arlen(m07_couplers_to_ps7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m07_couplers_to_ps7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m07_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m07_couplers_to_ps7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m07_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m07_couplers_to_ps7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m07_couplers_to_ps7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m07_couplers_to_ps7_0_axi_periph_AWID),
        .M_AXI_awlen(m07_couplers_to_ps7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m07_couplers_to_ps7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m07_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m07_couplers_to_ps7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m07_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bid(m07_couplers_to_ps7_0_axi_periph_BID),
        .M_AXI_bready(m07_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rid(m07_couplers_to_ps7_0_axi_periph_RID),
        .M_AXI_rlast(m07_couplers_to_ps7_0_axi_periph_RLAST),
        .M_AXI_rready(m07_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wlast(m07_couplers_to_ps7_0_axi_periph_WLAST),
        .M_AXI_wready(m07_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m07_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_0_to_m07_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_0_to_m07_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_0_to_m07_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_0_to_m07_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_0_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_0_to_m07_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m07_couplers_ARREADY),
        .S_AXI_arsize(tier2_xbar_0_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_0_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m07_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_0_to_m07_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_0_to_m07_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_0_to_m07_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_0_to_m07_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_0_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_0_to_m07_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m07_couplers_AWREADY),
        .S_AXI_awsize(tier2_xbar_0_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_0_to_m07_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_0_to_m07_couplers_BID),
        .S_AXI_bready(tier2_xbar_0_to_m07_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m07_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m07_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m07_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_0_to_m07_couplers_RID),
        .S_AXI_rlast(tier2_xbar_0_to_m07_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_0_to_m07_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m07_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m07_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m07_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_0_to_m07_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_0_to_m07_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m07_couplers_WVALID));
  m08_couplers_imp_VZ63MJ m08_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m08_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m08_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m08_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m08_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m08_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m08_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m08_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m08_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m08_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m08_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m08_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m08_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m08_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m08_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m08_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m08_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m08_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m08_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m08_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m08_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m08_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m08_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m08_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m08_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m08_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m08_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m08_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m08_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m08_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m08_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m08_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m08_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m08_couplers_WVALID));
  m09_couplers_imp_17EIGXM m09_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m09_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m09_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m09_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m09_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m09_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m09_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m09_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m09_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m09_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m09_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m09_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m09_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m09_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m09_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m09_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m09_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m09_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m09_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m09_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m09_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m09_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m09_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m09_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m09_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m09_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m09_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m09_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m09_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m09_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m09_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m09_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m09_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m09_couplers_WVALID));
  m10_couplers_imp_1DTG3V3 m10_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m10_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m10_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m10_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m10_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m10_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m10_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m10_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m10_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m10_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m10_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m10_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m10_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m10_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m10_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m10_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m10_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m10_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m10_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m10_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m10_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m10_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m10_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m10_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m10_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m10_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m10_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m10_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m10_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m10_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m10_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m10_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m10_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m10_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m10_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m10_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m10_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m10_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m10_couplers_WVALID));
  m11_couplers_imp_PRNFQM m11_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m11_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m11_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m11_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m11_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m11_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m11_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m11_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m11_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m11_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m11_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m11_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m11_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m11_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m11_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m11_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m11_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m11_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m11_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m11_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m11_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m11_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m11_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m11_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m11_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m11_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m11_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m11_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m11_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m11_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m11_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m11_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m11_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m11_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m11_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m11_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m11_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m11_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m11_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m11_couplers_WVALID));
  m12_couplers_imp_1ELECCS m12_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m12_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m12_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m12_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m12_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m12_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m12_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m12_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m12_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m12_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m12_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m12_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m12_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m12_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m12_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m12_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m12_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m12_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m12_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m12_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m12_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m12_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m12_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m12_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m12_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m12_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m12_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m12_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m12_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m12_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m12_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m12_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m12_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m12_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m12_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m12_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m12_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m12_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m12_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m12_couplers_WVALID));
  m13_couplers_imp_OPEZU5 m13_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m13_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m13_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m13_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m13_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m13_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m13_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m13_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m13_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m13_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m13_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m13_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m13_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m13_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m13_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m13_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_1_to_m13_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_1_to_m13_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m13_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m13_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m13_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m13_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m13_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m13_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m13_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m13_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m13_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_1_to_m13_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_1_to_m13_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m13_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m13_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m13_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m13_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m13_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m13_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m13_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m13_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m13_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m13_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m13_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m13_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m13_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m13_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m13_couplers_WVALID));
  m14_couplers_imp_1F3CZUX m14_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m14_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m14_couplers_to_ps7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m14_couplers_to_ps7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m14_couplers_to_ps7_0_axi_periph_ARID),
        .M_AXI_arlen(m14_couplers_to_ps7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m14_couplers_to_ps7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m14_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m14_couplers_to_ps7_0_axi_periph_ARQOS),
        .M_AXI_arready(m14_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m14_couplers_to_ps7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m14_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m14_couplers_to_ps7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m14_couplers_to_ps7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m14_couplers_to_ps7_0_axi_periph_AWID),
        .M_AXI_awlen(m14_couplers_to_ps7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m14_couplers_to_ps7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m14_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m14_couplers_to_ps7_0_axi_periph_AWQOS),
        .M_AXI_awready(m14_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m14_couplers_to_ps7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m14_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bid(m14_couplers_to_ps7_0_axi_periph_BID),
        .M_AXI_bready(m14_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m14_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m14_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m14_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rid(m14_couplers_to_ps7_0_axi_periph_RID),
        .M_AXI_rlast(m14_couplers_to_ps7_0_axi_periph_RLAST),
        .M_AXI_rready(m14_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m14_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m14_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m14_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wlast(m14_couplers_to_ps7_0_axi_periph_WLAST),
        .M_AXI_wready(m14_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m14_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m14_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m14_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m14_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m14_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m14_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m14_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m14_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m14_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m14_couplers_ARREADY),
        .S_AXI_arsize(tier2_xbar_1_to_m14_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m14_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m14_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m14_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m14_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m14_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m14_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m14_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m14_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m14_couplers_AWREADY),
        .S_AXI_awsize(tier2_xbar_1_to_m14_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m14_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m14_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m14_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m14_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m14_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m14_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m14_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m14_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m14_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m14_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m14_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m14_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m14_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m14_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m14_couplers_WVALID));
  m15_couplers_imp_O9N3AG m15_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m15_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m15_couplers_to_ps7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m15_couplers_to_ps7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m15_couplers_to_ps7_0_axi_periph_ARID),
        .M_AXI_arlen(m15_couplers_to_ps7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m15_couplers_to_ps7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m15_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m15_couplers_to_ps7_0_axi_periph_ARQOS),
        .M_AXI_arready(m15_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m15_couplers_to_ps7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m15_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m15_couplers_to_ps7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m15_couplers_to_ps7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m15_couplers_to_ps7_0_axi_periph_AWID),
        .M_AXI_awlen(m15_couplers_to_ps7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m15_couplers_to_ps7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m15_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m15_couplers_to_ps7_0_axi_periph_AWQOS),
        .M_AXI_awready(m15_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m15_couplers_to_ps7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m15_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bid(m15_couplers_to_ps7_0_axi_periph_BID),
        .M_AXI_bready(m15_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m15_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m15_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m15_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rid(m15_couplers_to_ps7_0_axi_periph_RID),
        .M_AXI_rlast(m15_couplers_to_ps7_0_axi_periph_RLAST),
        .M_AXI_rready(m15_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m15_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m15_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m15_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wlast(m15_couplers_to_ps7_0_axi_periph_WLAST),
        .M_AXI_wready(m15_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m15_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m15_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_1_to_m15_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_1_to_m15_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_1_to_m15_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_1_to_m15_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_1_to_m15_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_1_to_m15_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_1_to_m15_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_1_to_m15_couplers_ARREADY),
        .S_AXI_arsize(tier2_xbar_1_to_m15_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_1_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m15_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_1_to_m15_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_1_to_m15_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_1_to_m15_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_1_to_m15_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_1_to_m15_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_1_to_m15_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_1_to_m15_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_1_to_m15_couplers_AWREADY),
        .S_AXI_awsize(tier2_xbar_1_to_m15_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_1_to_m15_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_1_to_m15_couplers_BID),
        .S_AXI_bready(tier2_xbar_1_to_m15_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m15_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m15_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m15_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_1_to_m15_couplers_RID),
        .S_AXI_rlast(tier2_xbar_1_to_m15_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_1_to_m15_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m15_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m15_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m15_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_1_to_m15_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_1_to_m15_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m15_couplers_WVALID));
  m16_couplers_imp_1GP9A16 m16_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m16_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m16_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m16_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m16_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m16_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m16_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m16_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m16_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m16_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m16_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m16_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m16_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m16_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m16_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m16_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m16_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m16_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m16_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_2_to_m16_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_2_to_m16_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_2_to_m16_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_2_to_m16_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_2_to_m16_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_2_to_m16_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_2_to_m16_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_2_to_m16_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_2_to_m16_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_2_to_m16_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_2_to_m16_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m16_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_2_to_m16_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_2_to_m16_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_2_to_m16_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_2_to_m16_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_2_to_m16_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_2_to_m16_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_2_to_m16_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_2_to_m16_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_2_to_m16_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_2_to_m16_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_2_to_m16_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_2_to_m16_couplers_BID),
        .S_AXI_bready(tier2_xbar_2_to_m16_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m16_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m16_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m16_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_2_to_m16_couplers_RID),
        .S_AXI_rlast(tier2_xbar_2_to_m16_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_2_to_m16_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m16_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m16_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m16_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_2_to_m16_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_2_to_m16_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m16_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m16_couplers_WVALID));
  m17_couplers_imp_MXED4B m17_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m17_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(m17_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m17_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m17_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(m17_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m17_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m17_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m17_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m17_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m17_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m17_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m17_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m17_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m17_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m17_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m17_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m17_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m17_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_2_to_m17_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_2_to_m17_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_2_to_m17_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_2_to_m17_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_2_to_m17_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_2_to_m17_couplers_ARPROT),
        .S_AXI_arqos(tier2_xbar_2_to_m17_couplers_ARQOS),
        .S_AXI_arready(tier2_xbar_2_to_m17_couplers_ARREADY),
        .S_AXI_arregion(tier2_xbar_2_to_m17_couplers_ARREGION),
        .S_AXI_arsize(tier2_xbar_2_to_m17_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_2_to_m17_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m17_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_2_to_m17_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_2_to_m17_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_2_to_m17_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_2_to_m17_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_2_to_m17_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_2_to_m17_couplers_AWPROT),
        .S_AXI_awqos(tier2_xbar_2_to_m17_couplers_AWQOS),
        .S_AXI_awready(tier2_xbar_2_to_m17_couplers_AWREADY),
        .S_AXI_awregion(tier2_xbar_2_to_m17_couplers_AWREGION),
        .S_AXI_awsize(tier2_xbar_2_to_m17_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_2_to_m17_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_2_to_m17_couplers_BID),
        .S_AXI_bready(tier2_xbar_2_to_m17_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m17_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m17_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m17_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_2_to_m17_couplers_RID),
        .S_AXI_rlast(tier2_xbar_2_to_m17_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_2_to_m17_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m17_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m17_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m17_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_2_to_m17_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_2_to_m17_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m17_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m17_couplers_WVALID));
  m18_couplers_imp_19QSUBN m18_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m18_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m18_couplers_to_ps7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m18_couplers_to_ps7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m18_couplers_to_ps7_0_axi_periph_ARID),
        .M_AXI_arlen(m18_couplers_to_ps7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m18_couplers_to_ps7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m18_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m18_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m18_couplers_to_ps7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m18_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m18_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m18_couplers_to_ps7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m18_couplers_to_ps7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m18_couplers_to_ps7_0_axi_periph_AWID),
        .M_AXI_awlen(m18_couplers_to_ps7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m18_couplers_to_ps7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m18_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m18_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m18_couplers_to_ps7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m18_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bid(m18_couplers_to_ps7_0_axi_periph_BID),
        .M_AXI_bready(m18_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m18_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m18_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m18_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rid(m18_couplers_to_ps7_0_axi_periph_RID),
        .M_AXI_rlast(m18_couplers_to_ps7_0_axi_periph_RLAST),
        .M_AXI_rready(m18_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m18_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m18_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m18_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wlast(m18_couplers_to_ps7_0_axi_periph_WLAST),
        .M_AXI_wready(m18_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m18_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m18_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m18_couplers_ARADDR),
        .S_AXI_arburst(tier2_xbar_2_to_m18_couplers_ARBURST),
        .S_AXI_arcache(tier2_xbar_2_to_m18_couplers_ARCACHE),
        .S_AXI_arid(tier2_xbar_2_to_m18_couplers_ARID),
        .S_AXI_arlen(tier2_xbar_2_to_m18_couplers_ARLEN),
        .S_AXI_arlock(tier2_xbar_2_to_m18_couplers_ARLOCK),
        .S_AXI_arprot(tier2_xbar_2_to_m18_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m18_couplers_ARREADY),
        .S_AXI_arsize(tier2_xbar_2_to_m18_couplers_ARSIZE),
        .S_AXI_arvalid(tier2_xbar_2_to_m18_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m18_couplers_AWADDR),
        .S_AXI_awburst(tier2_xbar_2_to_m18_couplers_AWBURST),
        .S_AXI_awcache(tier2_xbar_2_to_m18_couplers_AWCACHE),
        .S_AXI_awid(tier2_xbar_2_to_m18_couplers_AWID),
        .S_AXI_awlen(tier2_xbar_2_to_m18_couplers_AWLEN),
        .S_AXI_awlock(tier2_xbar_2_to_m18_couplers_AWLOCK),
        .S_AXI_awprot(tier2_xbar_2_to_m18_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m18_couplers_AWREADY),
        .S_AXI_awsize(tier2_xbar_2_to_m18_couplers_AWSIZE),
        .S_AXI_awvalid(tier2_xbar_2_to_m18_couplers_AWVALID),
        .S_AXI_bid(tier2_xbar_2_to_m18_couplers_BID),
        .S_AXI_bready(tier2_xbar_2_to_m18_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m18_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m18_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m18_couplers_RDATA),
        .S_AXI_rid(tier2_xbar_2_to_m18_couplers_RID),
        .S_AXI_rlast(tier2_xbar_2_to_m18_couplers_RLAST),
        .S_AXI_rready(tier2_xbar_2_to_m18_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m18_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m18_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m18_couplers_WDATA),
        .S_AXI_wlast(tier2_xbar_2_to_m18_couplers_WLAST),
        .S_AXI_wready(tier2_xbar_2_to_m18_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m18_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m18_couplers_WVALID));
  s00_couplers_imp_17NDAC5 s00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_to_s00_couplers_WVALID));
  design_1_tier2_xbar_0_0 tier2_xbar_0
       (.aclk(ps7_0_axi_periph_ACLK_net),
        .aresetn(ps7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({tier2_xbar_0_to_m07_couplers_ARADDR,tier2_xbar_0_to_m06_couplers_ARADDR,tier2_xbar_0_to_m05_couplers_ARADDR,tier2_xbar_0_to_m04_couplers_ARADDR,tier2_xbar_0_to_m03_couplers_ARADDR,tier2_xbar_0_to_m02_couplers_ARADDR,tier2_xbar_0_to_m01_couplers_ARADDR,tier2_xbar_0_to_m00_couplers_ARADDR}),
        .m_axi_arburst({tier2_xbar_0_to_m07_couplers_ARBURST,tier2_xbar_0_to_m06_couplers_ARBURST,tier2_xbar_0_to_m05_couplers_ARBURST,tier2_xbar_0_to_m04_couplers_ARBURST,tier2_xbar_0_to_m03_couplers_ARBURST,tier2_xbar_0_to_m02_couplers_ARBURST,tier2_xbar_0_to_m01_couplers_ARBURST,tier2_xbar_0_to_m00_couplers_ARBURST}),
        .m_axi_arcache({tier2_xbar_0_to_m07_couplers_ARCACHE,tier2_xbar_0_to_m06_couplers_ARCACHE,tier2_xbar_0_to_m05_couplers_ARCACHE,tier2_xbar_0_to_m04_couplers_ARCACHE,tier2_xbar_0_to_m03_couplers_ARCACHE,tier2_xbar_0_to_m02_couplers_ARCACHE,tier2_xbar_0_to_m01_couplers_ARCACHE,tier2_xbar_0_to_m00_couplers_ARCACHE}),
        .m_axi_arid({tier2_xbar_0_to_m07_couplers_ARID,tier2_xbar_0_to_m06_couplers_ARID,tier2_xbar_0_to_m05_couplers_ARID,tier2_xbar_0_to_m04_couplers_ARID,tier2_xbar_0_to_m03_couplers_ARID,tier2_xbar_0_to_m02_couplers_ARID,tier2_xbar_0_to_m01_couplers_ARID,tier2_xbar_0_to_m00_couplers_ARID}),
        .m_axi_arlen({tier2_xbar_0_to_m07_couplers_ARLEN,tier2_xbar_0_to_m06_couplers_ARLEN,tier2_xbar_0_to_m05_couplers_ARLEN,tier2_xbar_0_to_m04_couplers_ARLEN,tier2_xbar_0_to_m03_couplers_ARLEN,tier2_xbar_0_to_m02_couplers_ARLEN,tier2_xbar_0_to_m01_couplers_ARLEN,tier2_xbar_0_to_m00_couplers_ARLEN}),
        .m_axi_arlock({tier2_xbar_0_to_m07_couplers_ARLOCK,tier2_xbar_0_to_m06_couplers_ARLOCK,tier2_xbar_0_to_m05_couplers_ARLOCK,tier2_xbar_0_to_m04_couplers_ARLOCK,tier2_xbar_0_to_m03_couplers_ARLOCK,tier2_xbar_0_to_m02_couplers_ARLOCK,tier2_xbar_0_to_m01_couplers_ARLOCK,tier2_xbar_0_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({tier2_xbar_0_to_m07_couplers_ARPROT,tier2_xbar_0_to_m06_couplers_ARPROT,tier2_xbar_0_to_m05_couplers_ARPROT,tier2_xbar_0_to_m04_couplers_ARPROT,tier2_xbar_0_to_m03_couplers_ARPROT,tier2_xbar_0_to_m02_couplers_ARPROT,tier2_xbar_0_to_m01_couplers_ARPROT,tier2_xbar_0_to_m00_couplers_ARPROT}),
        .m_axi_arqos({tier2_xbar_0_to_m06_couplers_ARQOS,NLW_tier2_xbar_0_m_axi_arqos_UNCONNECTED[23:20],tier2_xbar_0_to_m04_couplers_ARQOS,tier2_xbar_0_to_m03_couplers_ARQOS,tier2_xbar_0_to_m02_couplers_ARQOS,tier2_xbar_0_to_m01_couplers_ARQOS,tier2_xbar_0_to_m00_couplers_ARQOS}),
        .m_axi_arready({tier2_xbar_0_to_m07_couplers_ARREADY,tier2_xbar_0_to_m06_couplers_ARREADY,tier2_xbar_0_to_m05_couplers_ARREADY,tier2_xbar_0_to_m04_couplers_ARREADY,tier2_xbar_0_to_m03_couplers_ARREADY,tier2_xbar_0_to_m02_couplers_ARREADY,tier2_xbar_0_to_m01_couplers_ARREADY,tier2_xbar_0_to_m00_couplers_ARREADY}),
        .m_axi_arregion({tier2_xbar_0_to_m06_couplers_ARREGION,NLW_tier2_xbar_0_m_axi_arregion_UNCONNECTED[23:20],tier2_xbar_0_to_m04_couplers_ARREGION,tier2_xbar_0_to_m03_couplers_ARREGION,tier2_xbar_0_to_m02_couplers_ARREGION,tier2_xbar_0_to_m01_couplers_ARREGION,tier2_xbar_0_to_m00_couplers_ARREGION}),
        .m_axi_arsize({tier2_xbar_0_to_m07_couplers_ARSIZE,tier2_xbar_0_to_m06_couplers_ARSIZE,tier2_xbar_0_to_m05_couplers_ARSIZE,tier2_xbar_0_to_m04_couplers_ARSIZE,tier2_xbar_0_to_m03_couplers_ARSIZE,tier2_xbar_0_to_m02_couplers_ARSIZE,tier2_xbar_0_to_m01_couplers_ARSIZE,tier2_xbar_0_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({tier2_xbar_0_to_m07_couplers_ARVALID,tier2_xbar_0_to_m06_couplers_ARVALID,tier2_xbar_0_to_m05_couplers_ARVALID,tier2_xbar_0_to_m04_couplers_ARVALID,tier2_xbar_0_to_m03_couplers_ARVALID,tier2_xbar_0_to_m02_couplers_ARVALID,tier2_xbar_0_to_m01_couplers_ARVALID,tier2_xbar_0_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_0_to_m07_couplers_AWADDR,tier2_xbar_0_to_m06_couplers_AWADDR,tier2_xbar_0_to_m05_couplers_AWADDR,tier2_xbar_0_to_m04_couplers_AWADDR,tier2_xbar_0_to_m03_couplers_AWADDR,tier2_xbar_0_to_m02_couplers_AWADDR,tier2_xbar_0_to_m01_couplers_AWADDR,tier2_xbar_0_to_m00_couplers_AWADDR}),
        .m_axi_awburst({tier2_xbar_0_to_m07_couplers_AWBURST,tier2_xbar_0_to_m06_couplers_AWBURST,tier2_xbar_0_to_m05_couplers_AWBURST,tier2_xbar_0_to_m04_couplers_AWBURST,tier2_xbar_0_to_m03_couplers_AWBURST,tier2_xbar_0_to_m02_couplers_AWBURST,tier2_xbar_0_to_m01_couplers_AWBURST,tier2_xbar_0_to_m00_couplers_AWBURST}),
        .m_axi_awcache({tier2_xbar_0_to_m07_couplers_AWCACHE,tier2_xbar_0_to_m06_couplers_AWCACHE,tier2_xbar_0_to_m05_couplers_AWCACHE,tier2_xbar_0_to_m04_couplers_AWCACHE,tier2_xbar_0_to_m03_couplers_AWCACHE,tier2_xbar_0_to_m02_couplers_AWCACHE,tier2_xbar_0_to_m01_couplers_AWCACHE,tier2_xbar_0_to_m00_couplers_AWCACHE}),
        .m_axi_awid({tier2_xbar_0_to_m07_couplers_AWID,tier2_xbar_0_to_m06_couplers_AWID,tier2_xbar_0_to_m05_couplers_AWID,tier2_xbar_0_to_m04_couplers_AWID,tier2_xbar_0_to_m03_couplers_AWID,tier2_xbar_0_to_m02_couplers_AWID,tier2_xbar_0_to_m01_couplers_AWID,tier2_xbar_0_to_m00_couplers_AWID}),
        .m_axi_awlen({tier2_xbar_0_to_m07_couplers_AWLEN,tier2_xbar_0_to_m06_couplers_AWLEN,tier2_xbar_0_to_m05_couplers_AWLEN,tier2_xbar_0_to_m04_couplers_AWLEN,tier2_xbar_0_to_m03_couplers_AWLEN,tier2_xbar_0_to_m02_couplers_AWLEN,tier2_xbar_0_to_m01_couplers_AWLEN,tier2_xbar_0_to_m00_couplers_AWLEN}),
        .m_axi_awlock({tier2_xbar_0_to_m07_couplers_AWLOCK,tier2_xbar_0_to_m06_couplers_AWLOCK,tier2_xbar_0_to_m05_couplers_AWLOCK,tier2_xbar_0_to_m04_couplers_AWLOCK,tier2_xbar_0_to_m03_couplers_AWLOCK,tier2_xbar_0_to_m02_couplers_AWLOCK,tier2_xbar_0_to_m01_couplers_AWLOCK,tier2_xbar_0_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({tier2_xbar_0_to_m07_couplers_AWPROT,tier2_xbar_0_to_m06_couplers_AWPROT,tier2_xbar_0_to_m05_couplers_AWPROT,tier2_xbar_0_to_m04_couplers_AWPROT,tier2_xbar_0_to_m03_couplers_AWPROT,tier2_xbar_0_to_m02_couplers_AWPROT,tier2_xbar_0_to_m01_couplers_AWPROT,tier2_xbar_0_to_m00_couplers_AWPROT}),
        .m_axi_awqos({tier2_xbar_0_to_m06_couplers_AWQOS,NLW_tier2_xbar_0_m_axi_awqos_UNCONNECTED[23:20],tier2_xbar_0_to_m04_couplers_AWQOS,tier2_xbar_0_to_m03_couplers_AWQOS,tier2_xbar_0_to_m02_couplers_AWQOS,tier2_xbar_0_to_m01_couplers_AWQOS,tier2_xbar_0_to_m00_couplers_AWQOS}),
        .m_axi_awready({tier2_xbar_0_to_m07_couplers_AWREADY,tier2_xbar_0_to_m06_couplers_AWREADY,tier2_xbar_0_to_m05_couplers_AWREADY,tier2_xbar_0_to_m04_couplers_AWREADY,tier2_xbar_0_to_m03_couplers_AWREADY,tier2_xbar_0_to_m02_couplers_AWREADY,tier2_xbar_0_to_m01_couplers_AWREADY,tier2_xbar_0_to_m00_couplers_AWREADY}),
        .m_axi_awregion({tier2_xbar_0_to_m06_couplers_AWREGION,NLW_tier2_xbar_0_m_axi_awregion_UNCONNECTED[23:20],tier2_xbar_0_to_m04_couplers_AWREGION,tier2_xbar_0_to_m03_couplers_AWREGION,tier2_xbar_0_to_m02_couplers_AWREGION,tier2_xbar_0_to_m01_couplers_AWREGION,tier2_xbar_0_to_m00_couplers_AWREGION}),
        .m_axi_awsize({tier2_xbar_0_to_m07_couplers_AWSIZE,tier2_xbar_0_to_m06_couplers_AWSIZE,tier2_xbar_0_to_m05_couplers_AWSIZE,tier2_xbar_0_to_m04_couplers_AWSIZE,tier2_xbar_0_to_m03_couplers_AWSIZE,tier2_xbar_0_to_m02_couplers_AWSIZE,tier2_xbar_0_to_m01_couplers_AWSIZE,tier2_xbar_0_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({tier2_xbar_0_to_m07_couplers_AWVALID,tier2_xbar_0_to_m06_couplers_AWVALID,tier2_xbar_0_to_m05_couplers_AWVALID,tier2_xbar_0_to_m04_couplers_AWVALID,tier2_xbar_0_to_m03_couplers_AWVALID,tier2_xbar_0_to_m02_couplers_AWVALID,tier2_xbar_0_to_m01_couplers_AWVALID,tier2_xbar_0_to_m00_couplers_AWVALID}),
        .m_axi_bid({tier2_xbar_0_to_m07_couplers_BID,tier2_xbar_0_to_m06_couplers_BID,tier2_xbar_0_to_m05_couplers_BID,tier2_xbar_0_to_m04_couplers_BID,tier2_xbar_0_to_m03_couplers_BID,tier2_xbar_0_to_m02_couplers_BID,tier2_xbar_0_to_m01_couplers_BID,tier2_xbar_0_to_m00_couplers_BID}),
        .m_axi_bready({tier2_xbar_0_to_m07_couplers_BREADY,tier2_xbar_0_to_m06_couplers_BREADY,tier2_xbar_0_to_m05_couplers_BREADY,tier2_xbar_0_to_m04_couplers_BREADY,tier2_xbar_0_to_m03_couplers_BREADY,tier2_xbar_0_to_m02_couplers_BREADY,tier2_xbar_0_to_m01_couplers_BREADY,tier2_xbar_0_to_m00_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_0_to_m07_couplers_BRESP,tier2_xbar_0_to_m06_couplers_BRESP,tier2_xbar_0_to_m05_couplers_BRESP,tier2_xbar_0_to_m04_couplers_BRESP,tier2_xbar_0_to_m03_couplers_BRESP,tier2_xbar_0_to_m02_couplers_BRESP,tier2_xbar_0_to_m01_couplers_BRESP,tier2_xbar_0_to_m00_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_0_to_m07_couplers_BVALID,tier2_xbar_0_to_m06_couplers_BVALID,tier2_xbar_0_to_m05_couplers_BVALID,tier2_xbar_0_to_m04_couplers_BVALID,tier2_xbar_0_to_m03_couplers_BVALID,tier2_xbar_0_to_m02_couplers_BVALID,tier2_xbar_0_to_m01_couplers_BVALID,tier2_xbar_0_to_m00_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_0_to_m07_couplers_RDATA,tier2_xbar_0_to_m06_couplers_RDATA,tier2_xbar_0_to_m05_couplers_RDATA,tier2_xbar_0_to_m04_couplers_RDATA,tier2_xbar_0_to_m03_couplers_RDATA,tier2_xbar_0_to_m02_couplers_RDATA,tier2_xbar_0_to_m01_couplers_RDATA,tier2_xbar_0_to_m00_couplers_RDATA}),
        .m_axi_rid({tier2_xbar_0_to_m07_couplers_RID,tier2_xbar_0_to_m06_couplers_RID,tier2_xbar_0_to_m05_couplers_RID,tier2_xbar_0_to_m04_couplers_RID,tier2_xbar_0_to_m03_couplers_RID,tier2_xbar_0_to_m02_couplers_RID,tier2_xbar_0_to_m01_couplers_RID,tier2_xbar_0_to_m00_couplers_RID}),
        .m_axi_rlast({tier2_xbar_0_to_m07_couplers_RLAST,tier2_xbar_0_to_m06_couplers_RLAST,tier2_xbar_0_to_m05_couplers_RLAST,tier2_xbar_0_to_m04_couplers_RLAST,tier2_xbar_0_to_m03_couplers_RLAST,tier2_xbar_0_to_m02_couplers_RLAST,tier2_xbar_0_to_m01_couplers_RLAST,tier2_xbar_0_to_m00_couplers_RLAST}),
        .m_axi_rready({tier2_xbar_0_to_m07_couplers_RREADY,tier2_xbar_0_to_m06_couplers_RREADY,tier2_xbar_0_to_m05_couplers_RREADY,tier2_xbar_0_to_m04_couplers_RREADY,tier2_xbar_0_to_m03_couplers_RREADY,tier2_xbar_0_to_m02_couplers_RREADY,tier2_xbar_0_to_m01_couplers_RREADY,tier2_xbar_0_to_m00_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_0_to_m07_couplers_RRESP,tier2_xbar_0_to_m06_couplers_RRESP,tier2_xbar_0_to_m05_couplers_RRESP,tier2_xbar_0_to_m04_couplers_RRESP,tier2_xbar_0_to_m03_couplers_RRESP,tier2_xbar_0_to_m02_couplers_RRESP,tier2_xbar_0_to_m01_couplers_RRESP,tier2_xbar_0_to_m00_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_0_to_m07_couplers_RVALID,tier2_xbar_0_to_m06_couplers_RVALID,tier2_xbar_0_to_m05_couplers_RVALID,tier2_xbar_0_to_m04_couplers_RVALID,tier2_xbar_0_to_m03_couplers_RVALID,tier2_xbar_0_to_m02_couplers_RVALID,tier2_xbar_0_to_m01_couplers_RVALID,tier2_xbar_0_to_m00_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_0_to_m07_couplers_WDATA,tier2_xbar_0_to_m06_couplers_WDATA,tier2_xbar_0_to_m05_couplers_WDATA,tier2_xbar_0_to_m04_couplers_WDATA,tier2_xbar_0_to_m03_couplers_WDATA,tier2_xbar_0_to_m02_couplers_WDATA,tier2_xbar_0_to_m01_couplers_WDATA,tier2_xbar_0_to_m00_couplers_WDATA}),
        .m_axi_wlast({tier2_xbar_0_to_m07_couplers_WLAST,tier2_xbar_0_to_m06_couplers_WLAST,tier2_xbar_0_to_m05_couplers_WLAST,tier2_xbar_0_to_m04_couplers_WLAST,tier2_xbar_0_to_m03_couplers_WLAST,tier2_xbar_0_to_m02_couplers_WLAST,tier2_xbar_0_to_m01_couplers_WLAST,tier2_xbar_0_to_m00_couplers_WLAST}),
        .m_axi_wready({tier2_xbar_0_to_m07_couplers_WREADY,tier2_xbar_0_to_m06_couplers_WREADY,tier2_xbar_0_to_m05_couplers_WREADY,tier2_xbar_0_to_m04_couplers_WREADY,tier2_xbar_0_to_m03_couplers_WREADY,tier2_xbar_0_to_m02_couplers_WREADY,tier2_xbar_0_to_m01_couplers_WREADY,tier2_xbar_0_to_m00_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_0_to_m07_couplers_WSTRB,tier2_xbar_0_to_m06_couplers_WSTRB,tier2_xbar_0_to_m05_couplers_WSTRB,tier2_xbar_0_to_m04_couplers_WSTRB,tier2_xbar_0_to_m03_couplers_WSTRB,tier2_xbar_0_to_m02_couplers_WSTRB,tier2_xbar_0_to_m01_couplers_WSTRB,tier2_xbar_0_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_0_to_m07_couplers_WVALID,tier2_xbar_0_to_m06_couplers_WVALID,tier2_xbar_0_to_m05_couplers_WVALID,tier2_xbar_0_to_m04_couplers_WVALID,tier2_xbar_0_to_m03_couplers_WVALID,tier2_xbar_0_to_m02_couplers_WVALID,tier2_xbar_0_to_m01_couplers_WVALID,tier2_xbar_0_to_m00_couplers_WVALID}),
        .s_axi_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .s_axi_arburst(i00_couplers_to_tier2_xbar_0_ARBURST),
        .s_axi_arcache(i00_couplers_to_tier2_xbar_0_ARCACHE),
        .s_axi_arid(i00_couplers_to_tier2_xbar_0_ARID),
        .s_axi_arlen(i00_couplers_to_tier2_xbar_0_ARLEN),
        .s_axi_arlock(i00_couplers_to_tier2_xbar_0_ARLOCK),
        .s_axi_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .s_axi_arqos(i00_couplers_to_tier2_xbar_0_ARQOS),
        .s_axi_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .s_axi_arsize(i00_couplers_to_tier2_xbar_0_ARSIZE),
        .s_axi_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .s_axi_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .s_axi_awburst(i00_couplers_to_tier2_xbar_0_AWBURST),
        .s_axi_awcache(i00_couplers_to_tier2_xbar_0_AWCACHE),
        .s_axi_awid(i00_couplers_to_tier2_xbar_0_AWID),
        .s_axi_awlen(i00_couplers_to_tier2_xbar_0_AWLEN),
        .s_axi_awlock(i00_couplers_to_tier2_xbar_0_AWLOCK),
        .s_axi_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .s_axi_awqos(i00_couplers_to_tier2_xbar_0_AWQOS),
        .s_axi_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .s_axi_awsize(i00_couplers_to_tier2_xbar_0_AWSIZE),
        .s_axi_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .s_axi_bid(i00_couplers_to_tier2_xbar_0_BID),
        .s_axi_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .s_axi_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .s_axi_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .s_axi_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .s_axi_rid(i00_couplers_to_tier2_xbar_0_RID),
        .s_axi_rlast(i00_couplers_to_tier2_xbar_0_RLAST),
        .s_axi_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .s_axi_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .s_axi_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .s_axi_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .s_axi_wlast(i00_couplers_to_tier2_xbar_0_WLAST),
        .s_axi_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .s_axi_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .s_axi_wvalid(i00_couplers_to_tier2_xbar_0_WVALID));
  design_1_tier2_xbar_1_0 tier2_xbar_1
       (.aclk(ps7_0_axi_periph_ACLK_net),
        .aresetn(ps7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({tier2_xbar_1_to_m15_couplers_ARADDR,tier2_xbar_1_to_m14_couplers_ARADDR,tier2_xbar_1_to_m13_couplers_ARADDR,tier2_xbar_1_to_m12_couplers_ARADDR,tier2_xbar_1_to_m11_couplers_ARADDR,tier2_xbar_1_to_m10_couplers_ARADDR,tier2_xbar_1_to_m09_couplers_ARADDR,tier2_xbar_1_to_m08_couplers_ARADDR}),
        .m_axi_arburst({tier2_xbar_1_to_m15_couplers_ARBURST,tier2_xbar_1_to_m14_couplers_ARBURST,tier2_xbar_1_to_m13_couplers_ARBURST,tier2_xbar_1_to_m12_couplers_ARBURST,tier2_xbar_1_to_m11_couplers_ARBURST,tier2_xbar_1_to_m10_couplers_ARBURST,tier2_xbar_1_to_m09_couplers_ARBURST,tier2_xbar_1_to_m08_couplers_ARBURST}),
        .m_axi_arcache({tier2_xbar_1_to_m15_couplers_ARCACHE,tier2_xbar_1_to_m14_couplers_ARCACHE,tier2_xbar_1_to_m13_couplers_ARCACHE,tier2_xbar_1_to_m12_couplers_ARCACHE,tier2_xbar_1_to_m11_couplers_ARCACHE,tier2_xbar_1_to_m10_couplers_ARCACHE,tier2_xbar_1_to_m09_couplers_ARCACHE,tier2_xbar_1_to_m08_couplers_ARCACHE}),
        .m_axi_arid({tier2_xbar_1_to_m15_couplers_ARID,tier2_xbar_1_to_m14_couplers_ARID,tier2_xbar_1_to_m13_couplers_ARID,tier2_xbar_1_to_m12_couplers_ARID,tier2_xbar_1_to_m11_couplers_ARID,tier2_xbar_1_to_m10_couplers_ARID,tier2_xbar_1_to_m09_couplers_ARID,tier2_xbar_1_to_m08_couplers_ARID}),
        .m_axi_arlen({tier2_xbar_1_to_m15_couplers_ARLEN,tier2_xbar_1_to_m14_couplers_ARLEN,tier2_xbar_1_to_m13_couplers_ARLEN,tier2_xbar_1_to_m12_couplers_ARLEN,tier2_xbar_1_to_m11_couplers_ARLEN,tier2_xbar_1_to_m10_couplers_ARLEN,tier2_xbar_1_to_m09_couplers_ARLEN,tier2_xbar_1_to_m08_couplers_ARLEN}),
        .m_axi_arlock({tier2_xbar_1_to_m15_couplers_ARLOCK,tier2_xbar_1_to_m14_couplers_ARLOCK,tier2_xbar_1_to_m13_couplers_ARLOCK,tier2_xbar_1_to_m12_couplers_ARLOCK,tier2_xbar_1_to_m11_couplers_ARLOCK,tier2_xbar_1_to_m10_couplers_ARLOCK,tier2_xbar_1_to_m09_couplers_ARLOCK,tier2_xbar_1_to_m08_couplers_ARLOCK}),
        .m_axi_arprot({tier2_xbar_1_to_m15_couplers_ARPROT,tier2_xbar_1_to_m14_couplers_ARPROT,tier2_xbar_1_to_m13_couplers_ARPROT,tier2_xbar_1_to_m12_couplers_ARPROT,tier2_xbar_1_to_m11_couplers_ARPROT,tier2_xbar_1_to_m10_couplers_ARPROT,tier2_xbar_1_to_m09_couplers_ARPROT,tier2_xbar_1_to_m08_couplers_ARPROT}),
        .m_axi_arqos({tier2_xbar_1_to_m15_couplers_ARQOS,tier2_xbar_1_to_m14_couplers_ARQOS,tier2_xbar_1_to_m13_couplers_ARQOS,tier2_xbar_1_to_m12_couplers_ARQOS,tier2_xbar_1_to_m11_couplers_ARQOS,tier2_xbar_1_to_m10_couplers_ARQOS,tier2_xbar_1_to_m09_couplers_ARQOS,tier2_xbar_1_to_m08_couplers_ARQOS}),
        .m_axi_arready({tier2_xbar_1_to_m15_couplers_ARREADY,tier2_xbar_1_to_m14_couplers_ARREADY,tier2_xbar_1_to_m13_couplers_ARREADY,tier2_xbar_1_to_m12_couplers_ARREADY,tier2_xbar_1_to_m11_couplers_ARREADY,tier2_xbar_1_to_m10_couplers_ARREADY,tier2_xbar_1_to_m09_couplers_ARREADY,tier2_xbar_1_to_m08_couplers_ARREADY}),
        .m_axi_arregion({tier2_xbar_1_to_m13_couplers_ARREGION,tier2_xbar_1_to_m12_couplers_ARREGION,tier2_xbar_1_to_m11_couplers_ARREGION,tier2_xbar_1_to_m10_couplers_ARREGION,tier2_xbar_1_to_m09_couplers_ARREGION,tier2_xbar_1_to_m08_couplers_ARREGION}),
        .m_axi_arsize({tier2_xbar_1_to_m15_couplers_ARSIZE,tier2_xbar_1_to_m14_couplers_ARSIZE,tier2_xbar_1_to_m13_couplers_ARSIZE,tier2_xbar_1_to_m12_couplers_ARSIZE,tier2_xbar_1_to_m11_couplers_ARSIZE,tier2_xbar_1_to_m10_couplers_ARSIZE,tier2_xbar_1_to_m09_couplers_ARSIZE,tier2_xbar_1_to_m08_couplers_ARSIZE}),
        .m_axi_arvalid({tier2_xbar_1_to_m15_couplers_ARVALID,tier2_xbar_1_to_m14_couplers_ARVALID,tier2_xbar_1_to_m13_couplers_ARVALID,tier2_xbar_1_to_m12_couplers_ARVALID,tier2_xbar_1_to_m11_couplers_ARVALID,tier2_xbar_1_to_m10_couplers_ARVALID,tier2_xbar_1_to_m09_couplers_ARVALID,tier2_xbar_1_to_m08_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_1_to_m15_couplers_AWADDR,tier2_xbar_1_to_m14_couplers_AWADDR,tier2_xbar_1_to_m13_couplers_AWADDR,tier2_xbar_1_to_m12_couplers_AWADDR,tier2_xbar_1_to_m11_couplers_AWADDR,tier2_xbar_1_to_m10_couplers_AWADDR,tier2_xbar_1_to_m09_couplers_AWADDR,tier2_xbar_1_to_m08_couplers_AWADDR}),
        .m_axi_awburst({tier2_xbar_1_to_m15_couplers_AWBURST,tier2_xbar_1_to_m14_couplers_AWBURST,tier2_xbar_1_to_m13_couplers_AWBURST,tier2_xbar_1_to_m12_couplers_AWBURST,tier2_xbar_1_to_m11_couplers_AWBURST,tier2_xbar_1_to_m10_couplers_AWBURST,tier2_xbar_1_to_m09_couplers_AWBURST,tier2_xbar_1_to_m08_couplers_AWBURST}),
        .m_axi_awcache({tier2_xbar_1_to_m15_couplers_AWCACHE,tier2_xbar_1_to_m14_couplers_AWCACHE,tier2_xbar_1_to_m13_couplers_AWCACHE,tier2_xbar_1_to_m12_couplers_AWCACHE,tier2_xbar_1_to_m11_couplers_AWCACHE,tier2_xbar_1_to_m10_couplers_AWCACHE,tier2_xbar_1_to_m09_couplers_AWCACHE,tier2_xbar_1_to_m08_couplers_AWCACHE}),
        .m_axi_awid({tier2_xbar_1_to_m15_couplers_AWID,tier2_xbar_1_to_m14_couplers_AWID,tier2_xbar_1_to_m13_couplers_AWID,tier2_xbar_1_to_m12_couplers_AWID,tier2_xbar_1_to_m11_couplers_AWID,tier2_xbar_1_to_m10_couplers_AWID,tier2_xbar_1_to_m09_couplers_AWID,tier2_xbar_1_to_m08_couplers_AWID}),
        .m_axi_awlen({tier2_xbar_1_to_m15_couplers_AWLEN,tier2_xbar_1_to_m14_couplers_AWLEN,tier2_xbar_1_to_m13_couplers_AWLEN,tier2_xbar_1_to_m12_couplers_AWLEN,tier2_xbar_1_to_m11_couplers_AWLEN,tier2_xbar_1_to_m10_couplers_AWLEN,tier2_xbar_1_to_m09_couplers_AWLEN,tier2_xbar_1_to_m08_couplers_AWLEN}),
        .m_axi_awlock({tier2_xbar_1_to_m15_couplers_AWLOCK,tier2_xbar_1_to_m14_couplers_AWLOCK,tier2_xbar_1_to_m13_couplers_AWLOCK,tier2_xbar_1_to_m12_couplers_AWLOCK,tier2_xbar_1_to_m11_couplers_AWLOCK,tier2_xbar_1_to_m10_couplers_AWLOCK,tier2_xbar_1_to_m09_couplers_AWLOCK,tier2_xbar_1_to_m08_couplers_AWLOCK}),
        .m_axi_awprot({tier2_xbar_1_to_m15_couplers_AWPROT,tier2_xbar_1_to_m14_couplers_AWPROT,tier2_xbar_1_to_m13_couplers_AWPROT,tier2_xbar_1_to_m12_couplers_AWPROT,tier2_xbar_1_to_m11_couplers_AWPROT,tier2_xbar_1_to_m10_couplers_AWPROT,tier2_xbar_1_to_m09_couplers_AWPROT,tier2_xbar_1_to_m08_couplers_AWPROT}),
        .m_axi_awqos({tier2_xbar_1_to_m15_couplers_AWQOS,tier2_xbar_1_to_m14_couplers_AWQOS,tier2_xbar_1_to_m13_couplers_AWQOS,tier2_xbar_1_to_m12_couplers_AWQOS,tier2_xbar_1_to_m11_couplers_AWQOS,tier2_xbar_1_to_m10_couplers_AWQOS,tier2_xbar_1_to_m09_couplers_AWQOS,tier2_xbar_1_to_m08_couplers_AWQOS}),
        .m_axi_awready({tier2_xbar_1_to_m15_couplers_AWREADY,tier2_xbar_1_to_m14_couplers_AWREADY,tier2_xbar_1_to_m13_couplers_AWREADY,tier2_xbar_1_to_m12_couplers_AWREADY,tier2_xbar_1_to_m11_couplers_AWREADY,tier2_xbar_1_to_m10_couplers_AWREADY,tier2_xbar_1_to_m09_couplers_AWREADY,tier2_xbar_1_to_m08_couplers_AWREADY}),
        .m_axi_awregion({tier2_xbar_1_to_m13_couplers_AWREGION,tier2_xbar_1_to_m12_couplers_AWREGION,tier2_xbar_1_to_m11_couplers_AWREGION,tier2_xbar_1_to_m10_couplers_AWREGION,tier2_xbar_1_to_m09_couplers_AWREGION,tier2_xbar_1_to_m08_couplers_AWREGION}),
        .m_axi_awsize({tier2_xbar_1_to_m15_couplers_AWSIZE,tier2_xbar_1_to_m14_couplers_AWSIZE,tier2_xbar_1_to_m13_couplers_AWSIZE,tier2_xbar_1_to_m12_couplers_AWSIZE,tier2_xbar_1_to_m11_couplers_AWSIZE,tier2_xbar_1_to_m10_couplers_AWSIZE,tier2_xbar_1_to_m09_couplers_AWSIZE,tier2_xbar_1_to_m08_couplers_AWSIZE}),
        .m_axi_awvalid({tier2_xbar_1_to_m15_couplers_AWVALID,tier2_xbar_1_to_m14_couplers_AWVALID,tier2_xbar_1_to_m13_couplers_AWVALID,tier2_xbar_1_to_m12_couplers_AWVALID,tier2_xbar_1_to_m11_couplers_AWVALID,tier2_xbar_1_to_m10_couplers_AWVALID,tier2_xbar_1_to_m09_couplers_AWVALID,tier2_xbar_1_to_m08_couplers_AWVALID}),
        .m_axi_bid({tier2_xbar_1_to_m15_couplers_BID,tier2_xbar_1_to_m14_couplers_BID,tier2_xbar_1_to_m13_couplers_BID,tier2_xbar_1_to_m12_couplers_BID,tier2_xbar_1_to_m11_couplers_BID,tier2_xbar_1_to_m10_couplers_BID,tier2_xbar_1_to_m09_couplers_BID,tier2_xbar_1_to_m08_couplers_BID}),
        .m_axi_bready({tier2_xbar_1_to_m15_couplers_BREADY,tier2_xbar_1_to_m14_couplers_BREADY,tier2_xbar_1_to_m13_couplers_BREADY,tier2_xbar_1_to_m12_couplers_BREADY,tier2_xbar_1_to_m11_couplers_BREADY,tier2_xbar_1_to_m10_couplers_BREADY,tier2_xbar_1_to_m09_couplers_BREADY,tier2_xbar_1_to_m08_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_1_to_m15_couplers_BRESP,tier2_xbar_1_to_m14_couplers_BRESP,tier2_xbar_1_to_m13_couplers_BRESP,tier2_xbar_1_to_m12_couplers_BRESP,tier2_xbar_1_to_m11_couplers_BRESP,tier2_xbar_1_to_m10_couplers_BRESP,tier2_xbar_1_to_m09_couplers_BRESP,tier2_xbar_1_to_m08_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_1_to_m15_couplers_BVALID,tier2_xbar_1_to_m14_couplers_BVALID,tier2_xbar_1_to_m13_couplers_BVALID,tier2_xbar_1_to_m12_couplers_BVALID,tier2_xbar_1_to_m11_couplers_BVALID,tier2_xbar_1_to_m10_couplers_BVALID,tier2_xbar_1_to_m09_couplers_BVALID,tier2_xbar_1_to_m08_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_1_to_m15_couplers_RDATA,tier2_xbar_1_to_m14_couplers_RDATA,tier2_xbar_1_to_m13_couplers_RDATA,tier2_xbar_1_to_m12_couplers_RDATA,tier2_xbar_1_to_m11_couplers_RDATA,tier2_xbar_1_to_m10_couplers_RDATA,tier2_xbar_1_to_m09_couplers_RDATA,tier2_xbar_1_to_m08_couplers_RDATA}),
        .m_axi_rid({tier2_xbar_1_to_m15_couplers_RID,tier2_xbar_1_to_m14_couplers_RID,tier2_xbar_1_to_m13_couplers_RID,tier2_xbar_1_to_m12_couplers_RID,tier2_xbar_1_to_m11_couplers_RID,tier2_xbar_1_to_m10_couplers_RID,tier2_xbar_1_to_m09_couplers_RID,tier2_xbar_1_to_m08_couplers_RID}),
        .m_axi_rlast({tier2_xbar_1_to_m15_couplers_RLAST,tier2_xbar_1_to_m14_couplers_RLAST,tier2_xbar_1_to_m13_couplers_RLAST,tier2_xbar_1_to_m12_couplers_RLAST,tier2_xbar_1_to_m11_couplers_RLAST,tier2_xbar_1_to_m10_couplers_RLAST,tier2_xbar_1_to_m09_couplers_RLAST,tier2_xbar_1_to_m08_couplers_RLAST}),
        .m_axi_rready({tier2_xbar_1_to_m15_couplers_RREADY,tier2_xbar_1_to_m14_couplers_RREADY,tier2_xbar_1_to_m13_couplers_RREADY,tier2_xbar_1_to_m12_couplers_RREADY,tier2_xbar_1_to_m11_couplers_RREADY,tier2_xbar_1_to_m10_couplers_RREADY,tier2_xbar_1_to_m09_couplers_RREADY,tier2_xbar_1_to_m08_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_1_to_m15_couplers_RRESP,tier2_xbar_1_to_m14_couplers_RRESP,tier2_xbar_1_to_m13_couplers_RRESP,tier2_xbar_1_to_m12_couplers_RRESP,tier2_xbar_1_to_m11_couplers_RRESP,tier2_xbar_1_to_m10_couplers_RRESP,tier2_xbar_1_to_m09_couplers_RRESP,tier2_xbar_1_to_m08_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_1_to_m15_couplers_RVALID,tier2_xbar_1_to_m14_couplers_RVALID,tier2_xbar_1_to_m13_couplers_RVALID,tier2_xbar_1_to_m12_couplers_RVALID,tier2_xbar_1_to_m11_couplers_RVALID,tier2_xbar_1_to_m10_couplers_RVALID,tier2_xbar_1_to_m09_couplers_RVALID,tier2_xbar_1_to_m08_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_1_to_m15_couplers_WDATA,tier2_xbar_1_to_m14_couplers_WDATA,tier2_xbar_1_to_m13_couplers_WDATA,tier2_xbar_1_to_m12_couplers_WDATA,tier2_xbar_1_to_m11_couplers_WDATA,tier2_xbar_1_to_m10_couplers_WDATA,tier2_xbar_1_to_m09_couplers_WDATA,tier2_xbar_1_to_m08_couplers_WDATA}),
        .m_axi_wlast({tier2_xbar_1_to_m15_couplers_WLAST,tier2_xbar_1_to_m14_couplers_WLAST,tier2_xbar_1_to_m13_couplers_WLAST,tier2_xbar_1_to_m12_couplers_WLAST,tier2_xbar_1_to_m11_couplers_WLAST,tier2_xbar_1_to_m10_couplers_WLAST,tier2_xbar_1_to_m09_couplers_WLAST,tier2_xbar_1_to_m08_couplers_WLAST}),
        .m_axi_wready({tier2_xbar_1_to_m15_couplers_WREADY,tier2_xbar_1_to_m14_couplers_WREADY,tier2_xbar_1_to_m13_couplers_WREADY,tier2_xbar_1_to_m12_couplers_WREADY,tier2_xbar_1_to_m11_couplers_WREADY,tier2_xbar_1_to_m10_couplers_WREADY,tier2_xbar_1_to_m09_couplers_WREADY,tier2_xbar_1_to_m08_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_1_to_m15_couplers_WSTRB,tier2_xbar_1_to_m14_couplers_WSTRB,tier2_xbar_1_to_m13_couplers_WSTRB,tier2_xbar_1_to_m12_couplers_WSTRB,tier2_xbar_1_to_m11_couplers_WSTRB,tier2_xbar_1_to_m10_couplers_WSTRB,tier2_xbar_1_to_m09_couplers_WSTRB,tier2_xbar_1_to_m08_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_1_to_m15_couplers_WVALID,tier2_xbar_1_to_m14_couplers_WVALID,tier2_xbar_1_to_m13_couplers_WVALID,tier2_xbar_1_to_m12_couplers_WVALID,tier2_xbar_1_to_m11_couplers_WVALID,tier2_xbar_1_to_m10_couplers_WVALID,tier2_xbar_1_to_m09_couplers_WVALID,tier2_xbar_1_to_m08_couplers_WVALID}),
        .s_axi_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .s_axi_arburst(i01_couplers_to_tier2_xbar_1_ARBURST),
        .s_axi_arcache(i01_couplers_to_tier2_xbar_1_ARCACHE),
        .s_axi_arid(i01_couplers_to_tier2_xbar_1_ARID),
        .s_axi_arlen(i01_couplers_to_tier2_xbar_1_ARLEN),
        .s_axi_arlock(i01_couplers_to_tier2_xbar_1_ARLOCK),
        .s_axi_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .s_axi_arqos(i01_couplers_to_tier2_xbar_1_ARQOS),
        .s_axi_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .s_axi_arsize(i01_couplers_to_tier2_xbar_1_ARSIZE),
        .s_axi_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .s_axi_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .s_axi_awburst(i01_couplers_to_tier2_xbar_1_AWBURST),
        .s_axi_awcache(i01_couplers_to_tier2_xbar_1_AWCACHE),
        .s_axi_awid(i01_couplers_to_tier2_xbar_1_AWID),
        .s_axi_awlen(i01_couplers_to_tier2_xbar_1_AWLEN),
        .s_axi_awlock(i01_couplers_to_tier2_xbar_1_AWLOCK),
        .s_axi_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .s_axi_awqos(i01_couplers_to_tier2_xbar_1_AWQOS),
        .s_axi_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .s_axi_awsize(i01_couplers_to_tier2_xbar_1_AWSIZE),
        .s_axi_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .s_axi_bid(i01_couplers_to_tier2_xbar_1_BID),
        .s_axi_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .s_axi_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .s_axi_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .s_axi_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .s_axi_rid(i01_couplers_to_tier2_xbar_1_RID),
        .s_axi_rlast(i01_couplers_to_tier2_xbar_1_RLAST),
        .s_axi_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .s_axi_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .s_axi_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .s_axi_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .s_axi_wlast(i01_couplers_to_tier2_xbar_1_WLAST),
        .s_axi_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .s_axi_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .s_axi_wvalid(i01_couplers_to_tier2_xbar_1_WVALID));
  design_1_tier2_xbar_2_0 tier2_xbar_2
       (.aclk(ps7_0_axi_periph_ACLK_net),
        .aresetn(ps7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({tier2_xbar_2_to_m18_couplers_ARADDR,tier2_xbar_2_to_m17_couplers_ARADDR,tier2_xbar_2_to_m16_couplers_ARADDR}),
        .m_axi_arburst({tier2_xbar_2_to_m18_couplers_ARBURST,tier2_xbar_2_to_m17_couplers_ARBURST,tier2_xbar_2_to_m16_couplers_ARBURST}),
        .m_axi_arcache({tier2_xbar_2_to_m18_couplers_ARCACHE,tier2_xbar_2_to_m17_couplers_ARCACHE,tier2_xbar_2_to_m16_couplers_ARCACHE}),
        .m_axi_arid({tier2_xbar_2_to_m18_couplers_ARID,tier2_xbar_2_to_m17_couplers_ARID,tier2_xbar_2_to_m16_couplers_ARID}),
        .m_axi_arlen({tier2_xbar_2_to_m18_couplers_ARLEN,tier2_xbar_2_to_m17_couplers_ARLEN,tier2_xbar_2_to_m16_couplers_ARLEN}),
        .m_axi_arlock({tier2_xbar_2_to_m18_couplers_ARLOCK,tier2_xbar_2_to_m17_couplers_ARLOCK,tier2_xbar_2_to_m16_couplers_ARLOCK}),
        .m_axi_arprot({tier2_xbar_2_to_m18_couplers_ARPROT,tier2_xbar_2_to_m17_couplers_ARPROT,tier2_xbar_2_to_m16_couplers_ARPROT}),
        .m_axi_arqos({tier2_xbar_2_to_m17_couplers_ARQOS,tier2_xbar_2_to_m16_couplers_ARQOS}),
        .m_axi_arready({tier2_xbar_2_to_m18_couplers_ARREADY,tier2_xbar_2_to_m17_couplers_ARREADY,tier2_xbar_2_to_m16_couplers_ARREADY}),
        .m_axi_arregion({tier2_xbar_2_to_m17_couplers_ARREGION,tier2_xbar_2_to_m16_couplers_ARREGION}),
        .m_axi_arsize({tier2_xbar_2_to_m18_couplers_ARSIZE,tier2_xbar_2_to_m17_couplers_ARSIZE,tier2_xbar_2_to_m16_couplers_ARSIZE}),
        .m_axi_arvalid({tier2_xbar_2_to_m18_couplers_ARVALID,tier2_xbar_2_to_m17_couplers_ARVALID,tier2_xbar_2_to_m16_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_2_to_m18_couplers_AWADDR,tier2_xbar_2_to_m17_couplers_AWADDR,tier2_xbar_2_to_m16_couplers_AWADDR}),
        .m_axi_awburst({tier2_xbar_2_to_m18_couplers_AWBURST,tier2_xbar_2_to_m17_couplers_AWBURST,tier2_xbar_2_to_m16_couplers_AWBURST}),
        .m_axi_awcache({tier2_xbar_2_to_m18_couplers_AWCACHE,tier2_xbar_2_to_m17_couplers_AWCACHE,tier2_xbar_2_to_m16_couplers_AWCACHE}),
        .m_axi_awid({tier2_xbar_2_to_m18_couplers_AWID,tier2_xbar_2_to_m17_couplers_AWID,tier2_xbar_2_to_m16_couplers_AWID}),
        .m_axi_awlen({tier2_xbar_2_to_m18_couplers_AWLEN,tier2_xbar_2_to_m17_couplers_AWLEN,tier2_xbar_2_to_m16_couplers_AWLEN}),
        .m_axi_awlock({tier2_xbar_2_to_m18_couplers_AWLOCK,tier2_xbar_2_to_m17_couplers_AWLOCK,tier2_xbar_2_to_m16_couplers_AWLOCK}),
        .m_axi_awprot({tier2_xbar_2_to_m18_couplers_AWPROT,tier2_xbar_2_to_m17_couplers_AWPROT,tier2_xbar_2_to_m16_couplers_AWPROT}),
        .m_axi_awqos({tier2_xbar_2_to_m17_couplers_AWQOS,tier2_xbar_2_to_m16_couplers_AWQOS}),
        .m_axi_awready({tier2_xbar_2_to_m18_couplers_AWREADY,tier2_xbar_2_to_m17_couplers_AWREADY,tier2_xbar_2_to_m16_couplers_AWREADY}),
        .m_axi_awregion({tier2_xbar_2_to_m17_couplers_AWREGION,tier2_xbar_2_to_m16_couplers_AWREGION}),
        .m_axi_awsize({tier2_xbar_2_to_m18_couplers_AWSIZE,tier2_xbar_2_to_m17_couplers_AWSIZE,tier2_xbar_2_to_m16_couplers_AWSIZE}),
        .m_axi_awvalid({tier2_xbar_2_to_m18_couplers_AWVALID,tier2_xbar_2_to_m17_couplers_AWVALID,tier2_xbar_2_to_m16_couplers_AWVALID}),
        .m_axi_bid({tier2_xbar_2_to_m18_couplers_BID,tier2_xbar_2_to_m17_couplers_BID,tier2_xbar_2_to_m16_couplers_BID}),
        .m_axi_bready({tier2_xbar_2_to_m18_couplers_BREADY,tier2_xbar_2_to_m17_couplers_BREADY,tier2_xbar_2_to_m16_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_2_to_m18_couplers_BRESP,tier2_xbar_2_to_m17_couplers_BRESP,tier2_xbar_2_to_m16_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_2_to_m18_couplers_BVALID,tier2_xbar_2_to_m17_couplers_BVALID,tier2_xbar_2_to_m16_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_2_to_m18_couplers_RDATA,tier2_xbar_2_to_m17_couplers_RDATA,tier2_xbar_2_to_m16_couplers_RDATA}),
        .m_axi_rid({tier2_xbar_2_to_m18_couplers_RID,tier2_xbar_2_to_m17_couplers_RID,tier2_xbar_2_to_m16_couplers_RID}),
        .m_axi_rlast({tier2_xbar_2_to_m18_couplers_RLAST,tier2_xbar_2_to_m17_couplers_RLAST,tier2_xbar_2_to_m16_couplers_RLAST}),
        .m_axi_rready({tier2_xbar_2_to_m18_couplers_RREADY,tier2_xbar_2_to_m17_couplers_RREADY,tier2_xbar_2_to_m16_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_2_to_m18_couplers_RRESP,tier2_xbar_2_to_m17_couplers_RRESP,tier2_xbar_2_to_m16_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_2_to_m18_couplers_RVALID,tier2_xbar_2_to_m17_couplers_RVALID,tier2_xbar_2_to_m16_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_2_to_m18_couplers_WDATA,tier2_xbar_2_to_m17_couplers_WDATA,tier2_xbar_2_to_m16_couplers_WDATA}),
        .m_axi_wlast({tier2_xbar_2_to_m18_couplers_WLAST,tier2_xbar_2_to_m17_couplers_WLAST,tier2_xbar_2_to_m16_couplers_WLAST}),
        .m_axi_wready({tier2_xbar_2_to_m18_couplers_WREADY,tier2_xbar_2_to_m17_couplers_WREADY,tier2_xbar_2_to_m16_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_2_to_m18_couplers_WSTRB,tier2_xbar_2_to_m17_couplers_WSTRB,tier2_xbar_2_to_m16_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_2_to_m18_couplers_WVALID,tier2_xbar_2_to_m17_couplers_WVALID,tier2_xbar_2_to_m16_couplers_WVALID}),
        .s_axi_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .s_axi_arburst(i02_couplers_to_tier2_xbar_2_ARBURST),
        .s_axi_arcache(i02_couplers_to_tier2_xbar_2_ARCACHE),
        .s_axi_arid(i02_couplers_to_tier2_xbar_2_ARID),
        .s_axi_arlen(i02_couplers_to_tier2_xbar_2_ARLEN),
        .s_axi_arlock(i02_couplers_to_tier2_xbar_2_ARLOCK),
        .s_axi_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .s_axi_arqos(i02_couplers_to_tier2_xbar_2_ARQOS),
        .s_axi_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .s_axi_arsize(i02_couplers_to_tier2_xbar_2_ARSIZE),
        .s_axi_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .s_axi_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .s_axi_awburst(i02_couplers_to_tier2_xbar_2_AWBURST),
        .s_axi_awcache(i02_couplers_to_tier2_xbar_2_AWCACHE),
        .s_axi_awid(i02_couplers_to_tier2_xbar_2_AWID),
        .s_axi_awlen(i02_couplers_to_tier2_xbar_2_AWLEN),
        .s_axi_awlock(i02_couplers_to_tier2_xbar_2_AWLOCK),
        .s_axi_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .s_axi_awqos(i02_couplers_to_tier2_xbar_2_AWQOS),
        .s_axi_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .s_axi_awsize(i02_couplers_to_tier2_xbar_2_AWSIZE),
        .s_axi_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .s_axi_bid(i02_couplers_to_tier2_xbar_2_BID),
        .s_axi_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .s_axi_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .s_axi_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .s_axi_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .s_axi_rid(i02_couplers_to_tier2_xbar_2_RID),
        .s_axi_rlast(i02_couplers_to_tier2_xbar_2_RLAST),
        .s_axi_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .s_axi_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .s_axi_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .s_axi_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .s_axi_wlast(i02_couplers_to_tier2_xbar_2_WLAST),
        .s_axi_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .s_axi_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .s_axi_wvalid(i02_couplers_to_tier2_xbar_2_WVALID));
  design_1_xbar_0 xbar
       (.aclk(ps7_0_axi_periph_ACLK_net),
        .aresetn(ps7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_i02_couplers_ARADDR,xbar_to_i01_couplers_ARADDR,xbar_to_i00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_i02_couplers_ARBURST,xbar_to_i01_couplers_ARBURST,xbar_to_i00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_i02_couplers_ARCACHE,xbar_to_i01_couplers_ARCACHE,xbar_to_i00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_i02_couplers_ARID,xbar_to_i01_couplers_ARID,xbar_to_i00_couplers_ARID}),
        .m_axi_arlen({xbar_to_i02_couplers_ARLEN,xbar_to_i01_couplers_ARLEN,xbar_to_i00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_i02_couplers_ARLOCK,xbar_to_i01_couplers_ARLOCK,xbar_to_i00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_i02_couplers_ARPROT,xbar_to_i01_couplers_ARPROT,xbar_to_i00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_i02_couplers_ARQOS,xbar_to_i01_couplers_ARQOS,xbar_to_i00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_i02_couplers_ARREADY,xbar_to_i01_couplers_ARREADY,xbar_to_i00_couplers_ARREADY}),
        .m_axi_arsize({xbar_to_i02_couplers_ARSIZE,xbar_to_i01_couplers_ARSIZE,xbar_to_i00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_i02_couplers_ARVALID,xbar_to_i01_couplers_ARVALID,xbar_to_i00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_i02_couplers_AWADDR,xbar_to_i01_couplers_AWADDR,xbar_to_i00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_i02_couplers_AWBURST,xbar_to_i01_couplers_AWBURST,xbar_to_i00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_i02_couplers_AWCACHE,xbar_to_i01_couplers_AWCACHE,xbar_to_i00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_i02_couplers_AWID,xbar_to_i01_couplers_AWID,xbar_to_i00_couplers_AWID}),
        .m_axi_awlen({xbar_to_i02_couplers_AWLEN,xbar_to_i01_couplers_AWLEN,xbar_to_i00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_i02_couplers_AWLOCK,xbar_to_i01_couplers_AWLOCK,xbar_to_i00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_i02_couplers_AWPROT,xbar_to_i01_couplers_AWPROT,xbar_to_i00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_i02_couplers_AWQOS,xbar_to_i01_couplers_AWQOS,xbar_to_i00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_i02_couplers_AWREADY,xbar_to_i01_couplers_AWREADY,xbar_to_i00_couplers_AWREADY}),
        .m_axi_awsize({xbar_to_i02_couplers_AWSIZE,xbar_to_i01_couplers_AWSIZE,xbar_to_i00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_i02_couplers_AWVALID,xbar_to_i01_couplers_AWVALID,xbar_to_i00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_i02_couplers_BID,xbar_to_i01_couplers_BID,xbar_to_i00_couplers_BID}),
        .m_axi_bready({xbar_to_i02_couplers_BREADY,xbar_to_i01_couplers_BREADY,xbar_to_i00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_i02_couplers_BRESP,xbar_to_i01_couplers_BRESP,xbar_to_i00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_i02_couplers_BVALID,xbar_to_i01_couplers_BVALID,xbar_to_i00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_i02_couplers_RDATA,xbar_to_i01_couplers_RDATA,xbar_to_i00_couplers_RDATA}),
        .m_axi_rid({xbar_to_i02_couplers_RID,xbar_to_i01_couplers_RID,xbar_to_i00_couplers_RID}),
        .m_axi_rlast({xbar_to_i02_couplers_RLAST,xbar_to_i01_couplers_RLAST,xbar_to_i00_couplers_RLAST}),
        .m_axi_rready({xbar_to_i02_couplers_RREADY,xbar_to_i01_couplers_RREADY,xbar_to_i00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_i02_couplers_RRESP,xbar_to_i01_couplers_RRESP,xbar_to_i00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_i02_couplers_RVALID,xbar_to_i01_couplers_RVALID,xbar_to_i00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_i02_couplers_WDATA,xbar_to_i01_couplers_WDATA,xbar_to_i00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_i02_couplers_WLAST,xbar_to_i01_couplers_WLAST,xbar_to_i00_couplers_WLAST}),
        .m_axi_wready({xbar_to_i02_couplers_WREADY,xbar_to_i01_couplers_WREADY,xbar_to_i00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_i02_couplers_WSTRB,xbar_to_i01_couplers_WSTRB,xbar_to_i00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_i02_couplers_WVALID,xbar_to_i01_couplers_WVALID,xbar_to_i00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module eth1_imp_10C2ZQ7
   (ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    axi_resetn,
    ext_reset_in,
    gtx_clk,
    interrupt,
    mac_irq,
    mdio_phy_mdc,
    mdio_phy_mdio_i,
    mdio_phy_mdio_o,
    mdio_phy_mdio_t,
    mm2s_introut,
    phy_rst,
    ref_clk,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    s2mm_introut,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_lite_aclk,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [1:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input [9:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [9:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input axi_resetn;
  input ext_reset_in;
  input gtx_clk;
  output interrupt;
  output mac_irq;
  output mdio_phy_mdc;
  input mdio_phy_mdio_i;
  output mdio_phy_mdio_o;
  output mdio_phy_mdio_t;
  output mm2s_introut;
  output [0:0]phy_rst;
  input ref_clk;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;
  output s2mm_introut;
  input [17:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [17:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_lite_aclk;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire ARESETN_1;
  wire Net;
  wire [0:0]S00_ARESETN_1;
  wire [31:0]axi_ethernet_0_dma_M_AXIS_CNTRL_TDATA;
  wire [3:0]axi_ethernet_0_dma_M_AXIS_CNTRL_TKEEP;
  wire axi_ethernet_0_dma_M_AXIS_CNTRL_TLAST;
  wire axi_ethernet_0_dma_M_AXIS_CNTRL_TREADY;
  wire axi_ethernet_0_dma_M_AXIS_CNTRL_TVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_ethernet_0_dma_M_AXIS_MM2S_TKEEP;
  wire axi_ethernet_0_dma_M_AXIS_MM2S_TLAST;
  wire axi_ethernet_0_dma_M_AXIS_MM2S_TREADY;
  wire axi_ethernet_0_dma_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_ethernet_0_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_ethernet_0_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_ethernet_0_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_ethernet_0_dma_M_AXI_MM2S_ARPROT;
  wire axi_ethernet_0_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_ethernet_0_dma_M_AXI_MM2S_ARSIZE;
  wire axi_ethernet_0_dma_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_MM2S_RDATA;
  wire axi_ethernet_0_dma_M_AXI_MM2S_RLAST;
  wire axi_ethernet_0_dma_M_AXI_MM2S_RREADY;
  wire [1:0]axi_ethernet_0_dma_M_AXI_MM2S_RRESP;
  wire axi_ethernet_0_dma_M_AXI_MM2S_RVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_ethernet_0_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_ethernet_0_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_ethernet_0_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_ethernet_0_dma_M_AXI_S2MM_AWPROT;
  wire axi_ethernet_0_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_ethernet_0_dma_M_AXI_S2MM_AWSIZE;
  wire axi_ethernet_0_dma_M_AXI_S2MM_AWVALID;
  wire axi_ethernet_0_dma_M_AXI_S2MM_BREADY;
  wire [1:0]axi_ethernet_0_dma_M_AXI_S2MM_BRESP;
  wire axi_ethernet_0_dma_M_AXI_S2MM_BVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_S2MM_WDATA;
  wire axi_ethernet_0_dma_M_AXI_S2MM_WLAST;
  wire axi_ethernet_0_dma_M_AXI_S2MM_WREADY;
  wire [3:0]axi_ethernet_0_dma_M_AXI_S2MM_WSTRB;
  wire axi_ethernet_0_dma_M_AXI_S2MM_WVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_SG_ARADDR;
  wire [1:0]axi_ethernet_0_dma_M_AXI_SG_ARBURST;
  wire [3:0]axi_ethernet_0_dma_M_AXI_SG_ARCACHE;
  wire [7:0]axi_ethernet_0_dma_M_AXI_SG_ARLEN;
  wire [2:0]axi_ethernet_0_dma_M_AXI_SG_ARPROT;
  wire axi_ethernet_0_dma_M_AXI_SG_ARREADY;
  wire [2:0]axi_ethernet_0_dma_M_AXI_SG_ARSIZE;
  wire axi_ethernet_0_dma_M_AXI_SG_ARVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_SG_AWADDR;
  wire [1:0]axi_ethernet_0_dma_M_AXI_SG_AWBURST;
  wire [3:0]axi_ethernet_0_dma_M_AXI_SG_AWCACHE;
  wire [7:0]axi_ethernet_0_dma_M_AXI_SG_AWLEN;
  wire [2:0]axi_ethernet_0_dma_M_AXI_SG_AWPROT;
  wire axi_ethernet_0_dma_M_AXI_SG_AWREADY;
  wire [2:0]axi_ethernet_0_dma_M_AXI_SG_AWSIZE;
  wire axi_ethernet_0_dma_M_AXI_SG_AWVALID;
  wire axi_ethernet_0_dma_M_AXI_SG_BREADY;
  wire [1:0]axi_ethernet_0_dma_M_AXI_SG_BRESP;
  wire axi_ethernet_0_dma_M_AXI_SG_BVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_SG_RDATA;
  wire axi_ethernet_0_dma_M_AXI_SG_RLAST;
  wire axi_ethernet_0_dma_M_AXI_SG_RREADY;
  wire [1:0]axi_ethernet_0_dma_M_AXI_SG_RRESP;
  wire axi_ethernet_0_dma_M_AXI_SG_RVALID;
  wire [31:0]axi_ethernet_0_dma_M_AXI_SG_WDATA;
  wire axi_ethernet_0_dma_M_AXI_SG_WLAST;
  wire axi_ethernet_0_dma_M_AXI_SG_WREADY;
  wire [3:0]axi_ethernet_0_dma_M_AXI_SG_WSTRB;
  wire axi_ethernet_0_dma_M_AXI_SG_WVALID;
  wire axi_ethernet_0_dma_mm2s_cntrl_reset_out_n;
  wire axi_ethernet_0_dma_mm2s_introut;
  wire axi_ethernet_0_dma_mm2s_prmry_reset_out_n;
  wire axi_ethernet_0_dma_s2mm_introut;
  wire axi_ethernet_0_dma_s2mm_prmry_reset_out_n;
  wire axi_ethernet_0_dma_s2mm_sts_reset_out_n;
  wire axi_ethernet_0_interrupt;
  wire [31:0]axi_ethernet_0_m_axis_rxd_TDATA;
  wire [3:0]axi_ethernet_0_m_axis_rxd_TKEEP;
  wire axi_ethernet_0_m_axis_rxd_TLAST;
  wire axi_ethernet_0_m_axis_rxd_TREADY;
  wire axi_ethernet_0_m_axis_rxd_TVALID;
  wire [31:0]axi_ethernet_0_m_axis_rxs_TDATA;
  wire [3:0]axi_ethernet_0_m_axis_rxs_TKEEP;
  wire axi_ethernet_0_m_axis_rxs_TLAST;
  wire axi_ethernet_0_m_axis_rxs_TREADY;
  wire axi_ethernet_0_m_axis_rxs_TVALID;
  wire axi_ethernet_0_mac_irq;
  wire axi_ethernet_0_mdio_MDC;
  wire axi_ethernet_0_mdio_MDIO_I;
  wire axi_ethernet_0_mdio_MDIO_O;
  wire axi_ethernet_0_mdio_MDIO_T;
  wire [0:0]axi_ethernet_0_phy_rst_n;
  wire [3:0]axi_ethernet_0_rgmii_RD;
  wire axi_ethernet_0_rgmii_RXC;
  wire axi_ethernet_0_rgmii_RX_CTL;
  wire [3:0]axi_ethernet_0_rgmii_TD;
  wire axi_ethernet_0_rgmii_TXC;
  wire axi_ethernet_0_rgmii_TX_CTL;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [1:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire ext_reset_in_1;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire [17:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [17:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire ps7_0_axi_periph_M00_AXI_AWVALID;
  wire ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  wire ps7_0_axi_periph_M00_AXI_WVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_ARADDR;
  wire ps7_0_axi_periph_M02_AXI_ARREADY;
  wire ps7_0_axi_periph_M02_AXI_ARVALID;
  wire [9:0]ps7_0_axi_periph_M02_AXI_AWADDR;
  wire ps7_0_axi_periph_M02_AXI_AWREADY;
  wire ps7_0_axi_periph_M02_AXI_AWVALID;
  wire ps7_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_BRESP;
  wire ps7_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_RDATA;
  wire ps7_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_RRESP;
  wire ps7_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_WDATA;
  wire ps7_0_axi_periph_M02_AXI_WREADY;
  wire ps7_0_axi_periph_M02_AXI_WVALID;

  assign ARESETN_1 = ARESETN;
  assign M00_AXI_araddr[31:0] = axi_mem_intercon_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = axi_mem_intercon_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = axi_mem_intercon_M00_AXI_ARCACHE;
  assign M00_AXI_arid[1:0] = axi_mem_intercon_M00_AXI_ARID;
  assign M00_AXI_arlen[3:0] = axi_mem_intercon_M00_AXI_ARLEN;
  assign M00_AXI_arlock[1:0] = axi_mem_intercon_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = axi_mem_intercon_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = axi_mem_intercon_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = axi_mem_intercon_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = axi_mem_intercon_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = axi_mem_intercon_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = axi_mem_intercon_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = axi_mem_intercon_M00_AXI_AWCACHE;
  assign M00_AXI_awid[1:0] = axi_mem_intercon_M00_AXI_AWID;
  assign M00_AXI_awlen[3:0] = axi_mem_intercon_M00_AXI_AWLEN;
  assign M00_AXI_awlock[1:0] = axi_mem_intercon_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = axi_mem_intercon_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = axi_mem_intercon_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = axi_mem_intercon_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = axi_mem_intercon_M00_AXI_AWVALID;
  assign M00_AXI_bready = axi_mem_intercon_M00_AXI_BREADY;
  assign M00_AXI_rready = axi_mem_intercon_M00_AXI_RREADY;
  assign M00_AXI_wdata[63:0] = axi_mem_intercon_M00_AXI_WDATA;
  assign M00_AXI_wid[1:0] = axi_mem_intercon_M00_AXI_WID;
  assign M00_AXI_wlast = axi_mem_intercon_M00_AXI_WLAST;
  assign M00_AXI_wstrb[7:0] = axi_mem_intercon_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = axi_mem_intercon_M00_AXI_WVALID;
  assign Net = s_axi_lite_aclk;
  assign S_AXI_LITE_arready = ps7_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_LITE_awready = ps7_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = ps7_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_LITE_bvalid = ps7_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_LITE_rdata[31:0] = ps7_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_LITE_rresp[1:0] = ps7_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_LITE_rvalid = ps7_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_LITE_wready = ps7_0_axi_periph_M02_AXI_WREADY;
  assign axi_ethernet_0_mdio_MDIO_I = mdio_phy_mdio_i;
  assign axi_ethernet_0_rgmii_RD = rgmii_rd[3:0];
  assign axi_ethernet_0_rgmii_RXC = rgmii_rxc;
  assign axi_ethernet_0_rgmii_RX_CTL = rgmii_rx_ctl;
  assign axi_mem_intercon_M00_AXI_ARREADY = M00_AXI_arready;
  assign axi_mem_intercon_M00_AXI_AWREADY = M00_AXI_awready;
  assign axi_mem_intercon_M00_AXI_BID = M00_AXI_bid[5:0];
  assign axi_mem_intercon_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign axi_mem_intercon_M00_AXI_BVALID = M00_AXI_bvalid;
  assign axi_mem_intercon_M00_AXI_RDATA = M00_AXI_rdata[63:0];
  assign axi_mem_intercon_M00_AXI_RID = M00_AXI_rid[5:0];
  assign axi_mem_intercon_M00_AXI_RLAST = M00_AXI_rlast;
  assign axi_mem_intercon_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign axi_mem_intercon_M00_AXI_RVALID = M00_AXI_rvalid;
  assign axi_mem_intercon_M00_AXI_WREADY = M00_AXI_wready;
  assign ext_reset_in_1 = ext_reset_in;
  assign interrupt = axi_ethernet_0_interrupt;
  assign mac_irq = axi_ethernet_0_mac_irq;
  assign mdio_phy_mdc = axi_ethernet_0_mdio_MDC;
  assign mdio_phy_mdio_o = axi_ethernet_0_mdio_MDIO_O;
  assign mdio_phy_mdio_t = axi_ethernet_0_mdio_MDIO_T;
  assign mm2s_introut = axi_ethernet_0_dma_mm2s_introut;
  assign phy_rst[0] = axi_ethernet_0_phy_rst_n;
  assign proc_sys_reset_0_peripheral_aresetn = axi_resetn;
  assign processing_system7_0_FCLK_CLK1 = ref_clk;
  assign processing_system7_0_FCLK_CLK2 = gtx_clk;
  assign ps7_0_axi_periph_M00_AXI_ARADDR = s_axi_araddr[17:0];
  assign ps7_0_axi_periph_M00_AXI_ARVALID = s_axi_arvalid;
  assign ps7_0_axi_periph_M00_AXI_AWADDR = s_axi_awaddr[17:0];
  assign ps7_0_axi_periph_M00_AXI_AWVALID = s_axi_awvalid;
  assign ps7_0_axi_periph_M00_AXI_BREADY = s_axi_bready;
  assign ps7_0_axi_periph_M00_AXI_RREADY = s_axi_rready;
  assign ps7_0_axi_periph_M00_AXI_WDATA = s_axi_wdata[31:0];
  assign ps7_0_axi_periph_M00_AXI_WSTRB = s_axi_wstrb[3:0];
  assign ps7_0_axi_periph_M00_AXI_WVALID = s_axi_wvalid;
  assign ps7_0_axi_periph_M02_AXI_ARADDR = S_AXI_LITE_araddr[9:0];
  assign ps7_0_axi_periph_M02_AXI_ARVALID = S_AXI_LITE_arvalid;
  assign ps7_0_axi_periph_M02_AXI_AWADDR = S_AXI_LITE_awaddr[9:0];
  assign ps7_0_axi_periph_M02_AXI_AWVALID = S_AXI_LITE_awvalid;
  assign ps7_0_axi_periph_M02_AXI_BREADY = S_AXI_LITE_bready;
  assign ps7_0_axi_periph_M02_AXI_RREADY = S_AXI_LITE_rready;
  assign ps7_0_axi_periph_M02_AXI_WDATA = S_AXI_LITE_wdata[31:0];
  assign ps7_0_axi_periph_M02_AXI_WVALID = S_AXI_LITE_wvalid;
  assign rgmii_td[3:0] = axi_ethernet_0_rgmii_TD;
  assign rgmii_tx_ctl = axi_ethernet_0_rgmii_TX_CTL;
  assign rgmii_txc = axi_ethernet_0_rgmii_TXC;
  assign s2mm_introut = axi_ethernet_0_dma_s2mm_introut;
  assign s_axi_arready = ps7_0_axi_periph_M00_AXI_ARREADY;
  assign s_axi_awready = ps7_0_axi_periph_M00_AXI_AWREADY;
  assign s_axi_bresp[1:0] = ps7_0_axi_periph_M00_AXI_BRESP;
  assign s_axi_bvalid = ps7_0_axi_periph_M00_AXI_BVALID;
  assign s_axi_rdata[31:0] = ps7_0_axi_periph_M00_AXI_RDATA;
  assign s_axi_rresp[1:0] = ps7_0_axi_periph_M00_AXI_RRESP;
  assign s_axi_rvalid = ps7_0_axi_periph_M00_AXI_RVALID;
  assign s_axi_wready = ps7_0_axi_periph_M00_AXI_WREADY;
  design_1_axi_ethernet_0_1 axi_ethernet_0
       (.axi_rxd_arstn(axi_ethernet_0_dma_s2mm_prmry_reset_out_n),
        .axi_rxs_arstn(axi_ethernet_0_dma_s2mm_sts_reset_out_n),
        .axi_txc_arstn(axi_ethernet_0_dma_mm2s_cntrl_reset_out_n),
        .axi_txd_arstn(axi_ethernet_0_dma_mm2s_prmry_reset_out_n),
        .axis_clk(processing_system7_0_FCLK_CLK2),
        .gtx_clk(processing_system7_0_FCLK_CLK2),
        .interrupt(axi_ethernet_0_interrupt),
        .m_axis_rxd_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_ethernet_0_m_axis_rxd_TVALID),
        .m_axis_rxs_tdata(axi_ethernet_0_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axi_ethernet_0_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axi_ethernet_0_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axi_ethernet_0_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axi_ethernet_0_m_axis_rxs_TVALID),
        .mac_irq(axi_ethernet_0_mac_irq),
        .mdio_mdc(axi_ethernet_0_mdio_MDC),
        .mdio_mdio_i(axi_ethernet_0_mdio_MDIO_I),
        .mdio_mdio_o(axi_ethernet_0_mdio_MDIO_O),
        .mdio_mdio_t(axi_ethernet_0_mdio_MDIO_T),
        .phy_rst_n(axi_ethernet_0_phy_rst_n),
        .ref_clk(processing_system7_0_FCLK_CLK1),
        .rgmii_rd(axi_ethernet_0_rgmii_RD),
        .rgmii_rx_ctl(axi_ethernet_0_rgmii_RX_CTL),
        .rgmii_rxc(axi_ethernet_0_rgmii_RXC),
        .rgmii_td(axi_ethernet_0_rgmii_TD),
        .rgmii_tx_ctl(axi_ethernet_0_rgmii_TX_CTL),
        .rgmii_txc(axi_ethernet_0_rgmii_TXC),
        .s_axi_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .s_axi_lite_clk(Net),
        .s_axi_lite_resetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .s_axis_txc_tdata(axi_ethernet_0_dma_M_AXIS_CNTRL_TDATA),
        .s_axis_txc_tkeep(axi_ethernet_0_dma_M_AXIS_CNTRL_TKEEP),
        .s_axis_txc_tlast(axi_ethernet_0_dma_M_AXIS_CNTRL_TLAST),
        .s_axis_txc_tready(axi_ethernet_0_dma_M_AXIS_CNTRL_TREADY),
        .s_axis_txc_tvalid(axi_ethernet_0_dma_M_AXIS_CNTRL_TVALID),
        .s_axis_txd_tdata(axi_ethernet_0_dma_M_AXIS_MM2S_TDATA),
        .s_axis_txd_tkeep(axi_ethernet_0_dma_M_AXIS_MM2S_TKEEP),
        .s_axis_txd_tlast(axi_ethernet_0_dma_M_AXIS_MM2S_TLAST),
        .s_axis_txd_tready(axi_ethernet_0_dma_M_AXIS_MM2S_TREADY),
        .s_axis_txd_tvalid(axi_ethernet_0_dma_M_AXIS_MM2S_TVALID));
  design_1_axi_ethernet_0_dma_4 axi_ethernet_0_dma
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK2),
        .m_axi_mm2s_araddr(axi_ethernet_0_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_ethernet_0_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_ethernet_0_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_ethernet_0_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_ethernet_0_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_ethernet_0_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_ethernet_0_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_ethernet_0_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_ethernet_0_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_ethernet_0_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_ethernet_0_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_ethernet_0_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_ethernet_0_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK2),
        .m_axi_s2mm_awaddr(axi_ethernet_0_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_ethernet_0_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_ethernet_0_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_ethernet_0_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_ethernet_0_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_ethernet_0_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_ethernet_0_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_ethernet_0_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_ethernet_0_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_ethernet_0_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_ethernet_0_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_ethernet_0_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_ethernet_0_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_ethernet_0_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_ethernet_0_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_ethernet_0_dma_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(processing_system7_0_FCLK_CLK2),
        .m_axi_sg_araddr(axi_ethernet_0_dma_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_ethernet_0_dma_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_ethernet_0_dma_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_ethernet_0_dma_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_ethernet_0_dma_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_ethernet_0_dma_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_ethernet_0_dma_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_ethernet_0_dma_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_ethernet_0_dma_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_ethernet_0_dma_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_ethernet_0_dma_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_ethernet_0_dma_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_ethernet_0_dma_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_ethernet_0_dma_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_ethernet_0_dma_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_ethernet_0_dma_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_ethernet_0_dma_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_ethernet_0_dma_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_ethernet_0_dma_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_ethernet_0_dma_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_ethernet_0_dma_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_ethernet_0_dma_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_ethernet_0_dma_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_ethernet_0_dma_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_ethernet_0_dma_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_ethernet_0_dma_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_ethernet_0_dma_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_ethernet_0_dma_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_ethernet_0_dma_M_AXI_SG_WVALID),
        .m_axis_mm2s_cntrl_tdata(axi_ethernet_0_dma_M_AXIS_CNTRL_TDATA),
        .m_axis_mm2s_cntrl_tkeep(axi_ethernet_0_dma_M_AXIS_CNTRL_TKEEP),
        .m_axis_mm2s_cntrl_tlast(axi_ethernet_0_dma_M_AXIS_CNTRL_TLAST),
        .m_axis_mm2s_cntrl_tready(axi_ethernet_0_dma_M_AXIS_CNTRL_TREADY),
        .m_axis_mm2s_cntrl_tvalid(axi_ethernet_0_dma_M_AXIS_CNTRL_TVALID),
        .m_axis_mm2s_tdata(axi_ethernet_0_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_ethernet_0_dma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_ethernet_0_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_ethernet_0_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_ethernet_0_dma_M_AXIS_MM2S_TVALID),
        .mm2s_cntrl_reset_out_n(axi_ethernet_0_dma_mm2s_cntrl_reset_out_n),
        .mm2s_introut(axi_ethernet_0_dma_mm2s_introut),
        .mm2s_prmry_reset_out_n(axi_ethernet_0_dma_mm2s_prmry_reset_out_n),
        .s2mm_introut(axi_ethernet_0_dma_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_ethernet_0_dma_s2mm_prmry_reset_out_n),
        .s2mm_sts_reset_out_n(axi_ethernet_0_dma_s2mm_sts_reset_out_n),
        .s_axi_lite_aclk(Net),
        .s_axi_lite_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_lite_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_lite_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_lite_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .s_axi_lite_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .s_axi_lite_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .s_axi_lite_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .s_axi_lite_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .s_axi_lite_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .s_axi_lite_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .s_axi_lite_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .s_axi_lite_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .s_axi_lite_wvalid(ps7_0_axi_periph_M02_AXI_WVALID),
        .s_axis_s2mm_sts_tdata(axi_ethernet_0_m_axis_rxs_TDATA),
        .s_axis_s2mm_sts_tkeep(axi_ethernet_0_m_axis_rxs_TKEEP),
        .s_axis_s2mm_sts_tlast(axi_ethernet_0_m_axis_rxs_TLAST),
        .s_axis_s2mm_sts_tready(axi_ethernet_0_m_axis_rxs_TREADY),
        .s_axis_s2mm_sts_tvalid(axi_ethernet_0_m_axis_rxs_TVALID),
        .s_axis_s2mm_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .s_axis_s2mm_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .s_axis_s2mm_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .s_axis_s2mm_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .s_axis_s2mm_tvalid(axi_ethernet_0_m_axis_rxd_TVALID));
  design_1_axi_mem_intercon_2 axi_mem_intercon
       (.ACLK(Net),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Net),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK2),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(axi_ethernet_0_dma_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_ethernet_0_dma_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_ethernet_0_dma_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_ethernet_0_dma_M_AXI_SG_ARLEN),
        .S00_AXI_arprot(axi_ethernet_0_dma_M_AXI_SG_ARPROT),
        .S00_AXI_arready(axi_ethernet_0_dma_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_ethernet_0_dma_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_ethernet_0_dma_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_ethernet_0_dma_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_ethernet_0_dma_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_ethernet_0_dma_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_ethernet_0_dma_M_AXI_SG_AWLEN),
        .S00_AXI_awprot(axi_ethernet_0_dma_M_AXI_SG_AWPROT),
        .S00_AXI_awready(axi_ethernet_0_dma_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_ethernet_0_dma_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_ethernet_0_dma_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_ethernet_0_dma_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_ethernet_0_dma_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_ethernet_0_dma_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_ethernet_0_dma_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_ethernet_0_dma_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_ethernet_0_dma_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_ethernet_0_dma_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_ethernet_0_dma_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_ethernet_0_dma_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_ethernet_0_dma_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_ethernet_0_dma_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_ethernet_0_dma_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_ethernet_0_dma_M_AXI_SG_WVALID),
        .S01_ACLK(processing_system7_0_FCLK_CLK2),
        .S01_ARESETN(S00_ARESETN_1),
        .S01_AXI_araddr(axi_ethernet_0_dma_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_ethernet_0_dma_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_ethernet_0_dma_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_ethernet_0_dma_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(axi_ethernet_0_dma_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(axi_ethernet_0_dma_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_ethernet_0_dma_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_ethernet_0_dma_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_ethernet_0_dma_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_ethernet_0_dma_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_ethernet_0_dma_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_ethernet_0_dma_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_ethernet_0_dma_M_AXI_MM2S_RVALID),
        .S02_ACLK(processing_system7_0_FCLK_CLK2),
        .S02_ARESETN(S00_ARESETN_1),
        .S02_AXI_awaddr(axi_ethernet_0_dma_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_ethernet_0_dma_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_ethernet_0_dma_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_ethernet_0_dma_M_AXI_S2MM_AWLEN),
        .S02_AXI_awprot(axi_ethernet_0_dma_M_AXI_S2MM_AWPROT),
        .S02_AXI_awready(axi_ethernet_0_dma_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_ethernet_0_dma_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awvalid(axi_ethernet_0_dma_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_ethernet_0_dma_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_ethernet_0_dma_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_ethernet_0_dma_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_ethernet_0_dma_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_ethernet_0_dma_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_ethernet_0_dma_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_ethernet_0_dma_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_ethernet_0_dma_M_AXI_S2MM_WVALID));
  design_1_proc_sys_reset_0_1 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(S00_ARESETN_1),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK2));
endmodule

module i00_couplers_imp_BSNLAM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i00_couplers_to_i00_couplers_ARADDR;
  wire [1:0]i00_couplers_to_i00_couplers_ARBURST;
  wire [3:0]i00_couplers_to_i00_couplers_ARCACHE;
  wire [5:0]i00_couplers_to_i00_couplers_ARID;
  wire [7:0]i00_couplers_to_i00_couplers_ARLEN;
  wire [0:0]i00_couplers_to_i00_couplers_ARLOCK;
  wire [2:0]i00_couplers_to_i00_couplers_ARPROT;
  wire [3:0]i00_couplers_to_i00_couplers_ARQOS;
  wire [0:0]i00_couplers_to_i00_couplers_ARREADY;
  wire [2:0]i00_couplers_to_i00_couplers_ARSIZE;
  wire [0:0]i00_couplers_to_i00_couplers_ARVALID;
  wire [31:0]i00_couplers_to_i00_couplers_AWADDR;
  wire [1:0]i00_couplers_to_i00_couplers_AWBURST;
  wire [3:0]i00_couplers_to_i00_couplers_AWCACHE;
  wire [5:0]i00_couplers_to_i00_couplers_AWID;
  wire [7:0]i00_couplers_to_i00_couplers_AWLEN;
  wire [0:0]i00_couplers_to_i00_couplers_AWLOCK;
  wire [2:0]i00_couplers_to_i00_couplers_AWPROT;
  wire [3:0]i00_couplers_to_i00_couplers_AWQOS;
  wire [0:0]i00_couplers_to_i00_couplers_AWREADY;
  wire [2:0]i00_couplers_to_i00_couplers_AWSIZE;
  wire [0:0]i00_couplers_to_i00_couplers_AWVALID;
  wire [5:0]i00_couplers_to_i00_couplers_BID;
  wire [0:0]i00_couplers_to_i00_couplers_BREADY;
  wire [1:0]i00_couplers_to_i00_couplers_BRESP;
  wire [0:0]i00_couplers_to_i00_couplers_BVALID;
  wire [31:0]i00_couplers_to_i00_couplers_RDATA;
  wire [5:0]i00_couplers_to_i00_couplers_RID;
  wire [0:0]i00_couplers_to_i00_couplers_RLAST;
  wire [0:0]i00_couplers_to_i00_couplers_RREADY;
  wire [1:0]i00_couplers_to_i00_couplers_RRESP;
  wire [0:0]i00_couplers_to_i00_couplers_RVALID;
  wire [31:0]i00_couplers_to_i00_couplers_WDATA;
  wire [0:0]i00_couplers_to_i00_couplers_WLAST;
  wire [0:0]i00_couplers_to_i00_couplers_WREADY;
  wire [3:0]i00_couplers_to_i00_couplers_WSTRB;
  wire [0:0]i00_couplers_to_i00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i00_couplers_to_i00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = i00_couplers_to_i00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = i00_couplers_to_i00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = i00_couplers_to_i00_couplers_ARID;
  assign M_AXI_arlen[7:0] = i00_couplers_to_i00_couplers_ARLEN;
  assign M_AXI_arlock[0] = i00_couplers_to_i00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = i00_couplers_to_i00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = i00_couplers_to_i00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = i00_couplers_to_i00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = i00_couplers_to_i00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i00_couplers_to_i00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = i00_couplers_to_i00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = i00_couplers_to_i00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = i00_couplers_to_i00_couplers_AWID;
  assign M_AXI_awlen[7:0] = i00_couplers_to_i00_couplers_AWLEN;
  assign M_AXI_awlock[0] = i00_couplers_to_i00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = i00_couplers_to_i00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = i00_couplers_to_i00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = i00_couplers_to_i00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = i00_couplers_to_i00_couplers_AWVALID;
  assign M_AXI_bready[0] = i00_couplers_to_i00_couplers_BREADY;
  assign M_AXI_rready[0] = i00_couplers_to_i00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i00_couplers_to_i00_couplers_WDATA;
  assign M_AXI_wlast[0] = i00_couplers_to_i00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = i00_couplers_to_i00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i00_couplers_to_i00_couplers_WVALID;
  assign S_AXI_arready[0] = i00_couplers_to_i00_couplers_ARREADY;
  assign S_AXI_awready[0] = i00_couplers_to_i00_couplers_AWREADY;
  assign S_AXI_bid[5:0] = i00_couplers_to_i00_couplers_BID;
  assign S_AXI_bresp[1:0] = i00_couplers_to_i00_couplers_BRESP;
  assign S_AXI_bvalid[0] = i00_couplers_to_i00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i00_couplers_to_i00_couplers_RDATA;
  assign S_AXI_rid[5:0] = i00_couplers_to_i00_couplers_RID;
  assign S_AXI_rlast[0] = i00_couplers_to_i00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = i00_couplers_to_i00_couplers_RRESP;
  assign S_AXI_rvalid[0] = i00_couplers_to_i00_couplers_RVALID;
  assign S_AXI_wready[0] = i00_couplers_to_i00_couplers_WREADY;
  assign i00_couplers_to_i00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i00_couplers_to_i00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign i00_couplers_to_i00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign i00_couplers_to_i00_couplers_ARID = S_AXI_arid[5:0];
  assign i00_couplers_to_i00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign i00_couplers_to_i00_couplers_ARLOCK = S_AXI_arlock[0];
  assign i00_couplers_to_i00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i00_couplers_to_i00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign i00_couplers_to_i00_couplers_ARREADY = M_AXI_arready[0];
  assign i00_couplers_to_i00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign i00_couplers_to_i00_couplers_ARVALID = S_AXI_arvalid[0];
  assign i00_couplers_to_i00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i00_couplers_to_i00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign i00_couplers_to_i00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign i00_couplers_to_i00_couplers_AWID = S_AXI_awid[5:0];
  assign i00_couplers_to_i00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign i00_couplers_to_i00_couplers_AWLOCK = S_AXI_awlock[0];
  assign i00_couplers_to_i00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i00_couplers_to_i00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign i00_couplers_to_i00_couplers_AWREADY = M_AXI_awready[0];
  assign i00_couplers_to_i00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign i00_couplers_to_i00_couplers_AWVALID = S_AXI_awvalid[0];
  assign i00_couplers_to_i00_couplers_BID = M_AXI_bid[5:0];
  assign i00_couplers_to_i00_couplers_BREADY = S_AXI_bready[0];
  assign i00_couplers_to_i00_couplers_BRESP = M_AXI_bresp[1:0];
  assign i00_couplers_to_i00_couplers_BVALID = M_AXI_bvalid[0];
  assign i00_couplers_to_i00_couplers_RDATA = M_AXI_rdata[31:0];
  assign i00_couplers_to_i00_couplers_RID = M_AXI_rid[5:0];
  assign i00_couplers_to_i00_couplers_RLAST = M_AXI_rlast[0];
  assign i00_couplers_to_i00_couplers_RREADY = S_AXI_rready[0];
  assign i00_couplers_to_i00_couplers_RRESP = M_AXI_rresp[1:0];
  assign i00_couplers_to_i00_couplers_RVALID = M_AXI_rvalid[0];
  assign i00_couplers_to_i00_couplers_WDATA = S_AXI_wdata[31:0];
  assign i00_couplers_to_i00_couplers_WLAST = S_AXI_wlast[0];
  assign i00_couplers_to_i00_couplers_WREADY = M_AXI_wready[0];
  assign i00_couplers_to_i00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i00_couplers_to_i00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i01_couplers_imp_1IVYO33
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i01_couplers_to_i01_couplers_ARADDR;
  wire [1:0]i01_couplers_to_i01_couplers_ARBURST;
  wire [3:0]i01_couplers_to_i01_couplers_ARCACHE;
  wire [5:0]i01_couplers_to_i01_couplers_ARID;
  wire [7:0]i01_couplers_to_i01_couplers_ARLEN;
  wire [0:0]i01_couplers_to_i01_couplers_ARLOCK;
  wire [2:0]i01_couplers_to_i01_couplers_ARPROT;
  wire [3:0]i01_couplers_to_i01_couplers_ARQOS;
  wire [0:0]i01_couplers_to_i01_couplers_ARREADY;
  wire [2:0]i01_couplers_to_i01_couplers_ARSIZE;
  wire [0:0]i01_couplers_to_i01_couplers_ARVALID;
  wire [31:0]i01_couplers_to_i01_couplers_AWADDR;
  wire [1:0]i01_couplers_to_i01_couplers_AWBURST;
  wire [3:0]i01_couplers_to_i01_couplers_AWCACHE;
  wire [5:0]i01_couplers_to_i01_couplers_AWID;
  wire [7:0]i01_couplers_to_i01_couplers_AWLEN;
  wire [0:0]i01_couplers_to_i01_couplers_AWLOCK;
  wire [2:0]i01_couplers_to_i01_couplers_AWPROT;
  wire [3:0]i01_couplers_to_i01_couplers_AWQOS;
  wire [0:0]i01_couplers_to_i01_couplers_AWREADY;
  wire [2:0]i01_couplers_to_i01_couplers_AWSIZE;
  wire [0:0]i01_couplers_to_i01_couplers_AWVALID;
  wire [5:0]i01_couplers_to_i01_couplers_BID;
  wire [0:0]i01_couplers_to_i01_couplers_BREADY;
  wire [1:0]i01_couplers_to_i01_couplers_BRESP;
  wire [0:0]i01_couplers_to_i01_couplers_BVALID;
  wire [31:0]i01_couplers_to_i01_couplers_RDATA;
  wire [5:0]i01_couplers_to_i01_couplers_RID;
  wire [0:0]i01_couplers_to_i01_couplers_RLAST;
  wire [0:0]i01_couplers_to_i01_couplers_RREADY;
  wire [1:0]i01_couplers_to_i01_couplers_RRESP;
  wire [0:0]i01_couplers_to_i01_couplers_RVALID;
  wire [31:0]i01_couplers_to_i01_couplers_WDATA;
  wire [0:0]i01_couplers_to_i01_couplers_WLAST;
  wire [0:0]i01_couplers_to_i01_couplers_WREADY;
  wire [3:0]i01_couplers_to_i01_couplers_WSTRB;
  wire [0:0]i01_couplers_to_i01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i01_couplers_to_i01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = i01_couplers_to_i01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = i01_couplers_to_i01_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = i01_couplers_to_i01_couplers_ARID;
  assign M_AXI_arlen[7:0] = i01_couplers_to_i01_couplers_ARLEN;
  assign M_AXI_arlock[0] = i01_couplers_to_i01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = i01_couplers_to_i01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = i01_couplers_to_i01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = i01_couplers_to_i01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = i01_couplers_to_i01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i01_couplers_to_i01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = i01_couplers_to_i01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = i01_couplers_to_i01_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = i01_couplers_to_i01_couplers_AWID;
  assign M_AXI_awlen[7:0] = i01_couplers_to_i01_couplers_AWLEN;
  assign M_AXI_awlock[0] = i01_couplers_to_i01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = i01_couplers_to_i01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = i01_couplers_to_i01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = i01_couplers_to_i01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = i01_couplers_to_i01_couplers_AWVALID;
  assign M_AXI_bready[0] = i01_couplers_to_i01_couplers_BREADY;
  assign M_AXI_rready[0] = i01_couplers_to_i01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i01_couplers_to_i01_couplers_WDATA;
  assign M_AXI_wlast[0] = i01_couplers_to_i01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = i01_couplers_to_i01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i01_couplers_to_i01_couplers_WVALID;
  assign S_AXI_arready[0] = i01_couplers_to_i01_couplers_ARREADY;
  assign S_AXI_awready[0] = i01_couplers_to_i01_couplers_AWREADY;
  assign S_AXI_bid[5:0] = i01_couplers_to_i01_couplers_BID;
  assign S_AXI_bresp[1:0] = i01_couplers_to_i01_couplers_BRESP;
  assign S_AXI_bvalid[0] = i01_couplers_to_i01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i01_couplers_to_i01_couplers_RDATA;
  assign S_AXI_rid[5:0] = i01_couplers_to_i01_couplers_RID;
  assign S_AXI_rlast[0] = i01_couplers_to_i01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = i01_couplers_to_i01_couplers_RRESP;
  assign S_AXI_rvalid[0] = i01_couplers_to_i01_couplers_RVALID;
  assign S_AXI_wready[0] = i01_couplers_to_i01_couplers_WREADY;
  assign i01_couplers_to_i01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i01_couplers_to_i01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign i01_couplers_to_i01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign i01_couplers_to_i01_couplers_ARID = S_AXI_arid[5:0];
  assign i01_couplers_to_i01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign i01_couplers_to_i01_couplers_ARLOCK = S_AXI_arlock[0];
  assign i01_couplers_to_i01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i01_couplers_to_i01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign i01_couplers_to_i01_couplers_ARREADY = M_AXI_arready[0];
  assign i01_couplers_to_i01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign i01_couplers_to_i01_couplers_ARVALID = S_AXI_arvalid[0];
  assign i01_couplers_to_i01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i01_couplers_to_i01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign i01_couplers_to_i01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign i01_couplers_to_i01_couplers_AWID = S_AXI_awid[5:0];
  assign i01_couplers_to_i01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign i01_couplers_to_i01_couplers_AWLOCK = S_AXI_awlock[0];
  assign i01_couplers_to_i01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i01_couplers_to_i01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign i01_couplers_to_i01_couplers_AWREADY = M_AXI_awready[0];
  assign i01_couplers_to_i01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign i01_couplers_to_i01_couplers_AWVALID = S_AXI_awvalid[0];
  assign i01_couplers_to_i01_couplers_BID = M_AXI_bid[5:0];
  assign i01_couplers_to_i01_couplers_BREADY = S_AXI_bready[0];
  assign i01_couplers_to_i01_couplers_BRESP = M_AXI_bresp[1:0];
  assign i01_couplers_to_i01_couplers_BVALID = M_AXI_bvalid[0];
  assign i01_couplers_to_i01_couplers_RDATA = M_AXI_rdata[31:0];
  assign i01_couplers_to_i01_couplers_RID = M_AXI_rid[5:0];
  assign i01_couplers_to_i01_couplers_RLAST = M_AXI_rlast[0];
  assign i01_couplers_to_i01_couplers_RREADY = S_AXI_rready[0];
  assign i01_couplers_to_i01_couplers_RRESP = M_AXI_rresp[1:0];
  assign i01_couplers_to_i01_couplers_RVALID = M_AXI_rvalid[0];
  assign i01_couplers_to_i01_couplers_WDATA = S_AXI_wdata[31:0];
  assign i01_couplers_to_i01_couplers_WLAST = S_AXI_wlast[0];
  assign i01_couplers_to_i01_couplers_WREADY = M_AXI_wready[0];
  assign i01_couplers_to_i01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i01_couplers_to_i01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i02_couplers_imp_D4V959
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i02_couplers_to_i02_couplers_ARADDR;
  wire [1:0]i02_couplers_to_i02_couplers_ARBURST;
  wire [3:0]i02_couplers_to_i02_couplers_ARCACHE;
  wire [5:0]i02_couplers_to_i02_couplers_ARID;
  wire [7:0]i02_couplers_to_i02_couplers_ARLEN;
  wire [0:0]i02_couplers_to_i02_couplers_ARLOCK;
  wire [2:0]i02_couplers_to_i02_couplers_ARPROT;
  wire [3:0]i02_couplers_to_i02_couplers_ARQOS;
  wire [0:0]i02_couplers_to_i02_couplers_ARREADY;
  wire [2:0]i02_couplers_to_i02_couplers_ARSIZE;
  wire [0:0]i02_couplers_to_i02_couplers_ARVALID;
  wire [31:0]i02_couplers_to_i02_couplers_AWADDR;
  wire [1:0]i02_couplers_to_i02_couplers_AWBURST;
  wire [3:0]i02_couplers_to_i02_couplers_AWCACHE;
  wire [5:0]i02_couplers_to_i02_couplers_AWID;
  wire [7:0]i02_couplers_to_i02_couplers_AWLEN;
  wire [0:0]i02_couplers_to_i02_couplers_AWLOCK;
  wire [2:0]i02_couplers_to_i02_couplers_AWPROT;
  wire [3:0]i02_couplers_to_i02_couplers_AWQOS;
  wire [0:0]i02_couplers_to_i02_couplers_AWREADY;
  wire [2:0]i02_couplers_to_i02_couplers_AWSIZE;
  wire [0:0]i02_couplers_to_i02_couplers_AWVALID;
  wire [5:0]i02_couplers_to_i02_couplers_BID;
  wire [0:0]i02_couplers_to_i02_couplers_BREADY;
  wire [1:0]i02_couplers_to_i02_couplers_BRESP;
  wire [0:0]i02_couplers_to_i02_couplers_BVALID;
  wire [31:0]i02_couplers_to_i02_couplers_RDATA;
  wire [5:0]i02_couplers_to_i02_couplers_RID;
  wire [0:0]i02_couplers_to_i02_couplers_RLAST;
  wire [0:0]i02_couplers_to_i02_couplers_RREADY;
  wire [1:0]i02_couplers_to_i02_couplers_RRESP;
  wire [0:0]i02_couplers_to_i02_couplers_RVALID;
  wire [31:0]i02_couplers_to_i02_couplers_WDATA;
  wire [0:0]i02_couplers_to_i02_couplers_WLAST;
  wire [0:0]i02_couplers_to_i02_couplers_WREADY;
  wire [3:0]i02_couplers_to_i02_couplers_WSTRB;
  wire [0:0]i02_couplers_to_i02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i02_couplers_to_i02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = i02_couplers_to_i02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = i02_couplers_to_i02_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = i02_couplers_to_i02_couplers_ARID;
  assign M_AXI_arlen[7:0] = i02_couplers_to_i02_couplers_ARLEN;
  assign M_AXI_arlock[0] = i02_couplers_to_i02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = i02_couplers_to_i02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = i02_couplers_to_i02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = i02_couplers_to_i02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = i02_couplers_to_i02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i02_couplers_to_i02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = i02_couplers_to_i02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = i02_couplers_to_i02_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = i02_couplers_to_i02_couplers_AWID;
  assign M_AXI_awlen[7:0] = i02_couplers_to_i02_couplers_AWLEN;
  assign M_AXI_awlock[0] = i02_couplers_to_i02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = i02_couplers_to_i02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = i02_couplers_to_i02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = i02_couplers_to_i02_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = i02_couplers_to_i02_couplers_AWVALID;
  assign M_AXI_bready[0] = i02_couplers_to_i02_couplers_BREADY;
  assign M_AXI_rready[0] = i02_couplers_to_i02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i02_couplers_to_i02_couplers_WDATA;
  assign M_AXI_wlast[0] = i02_couplers_to_i02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = i02_couplers_to_i02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i02_couplers_to_i02_couplers_WVALID;
  assign S_AXI_arready[0] = i02_couplers_to_i02_couplers_ARREADY;
  assign S_AXI_awready[0] = i02_couplers_to_i02_couplers_AWREADY;
  assign S_AXI_bid[5:0] = i02_couplers_to_i02_couplers_BID;
  assign S_AXI_bresp[1:0] = i02_couplers_to_i02_couplers_BRESP;
  assign S_AXI_bvalid[0] = i02_couplers_to_i02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i02_couplers_to_i02_couplers_RDATA;
  assign S_AXI_rid[5:0] = i02_couplers_to_i02_couplers_RID;
  assign S_AXI_rlast[0] = i02_couplers_to_i02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = i02_couplers_to_i02_couplers_RRESP;
  assign S_AXI_rvalid[0] = i02_couplers_to_i02_couplers_RVALID;
  assign S_AXI_wready[0] = i02_couplers_to_i02_couplers_WREADY;
  assign i02_couplers_to_i02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i02_couplers_to_i02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign i02_couplers_to_i02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign i02_couplers_to_i02_couplers_ARID = S_AXI_arid[5:0];
  assign i02_couplers_to_i02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign i02_couplers_to_i02_couplers_ARLOCK = S_AXI_arlock[0];
  assign i02_couplers_to_i02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i02_couplers_to_i02_couplers_ARQOS = S_AXI_arqos[3:0];
  assign i02_couplers_to_i02_couplers_ARREADY = M_AXI_arready[0];
  assign i02_couplers_to_i02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign i02_couplers_to_i02_couplers_ARVALID = S_AXI_arvalid[0];
  assign i02_couplers_to_i02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i02_couplers_to_i02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign i02_couplers_to_i02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign i02_couplers_to_i02_couplers_AWID = S_AXI_awid[5:0];
  assign i02_couplers_to_i02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign i02_couplers_to_i02_couplers_AWLOCK = S_AXI_awlock[0];
  assign i02_couplers_to_i02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i02_couplers_to_i02_couplers_AWQOS = S_AXI_awqos[3:0];
  assign i02_couplers_to_i02_couplers_AWREADY = M_AXI_awready[0];
  assign i02_couplers_to_i02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign i02_couplers_to_i02_couplers_AWVALID = S_AXI_awvalid[0];
  assign i02_couplers_to_i02_couplers_BID = M_AXI_bid[5:0];
  assign i02_couplers_to_i02_couplers_BREADY = S_AXI_bready[0];
  assign i02_couplers_to_i02_couplers_BRESP = M_AXI_bresp[1:0];
  assign i02_couplers_to_i02_couplers_BVALID = M_AXI_bvalid[0];
  assign i02_couplers_to_i02_couplers_RDATA = M_AXI_rdata[31:0];
  assign i02_couplers_to_i02_couplers_RID = M_AXI_rid[5:0];
  assign i02_couplers_to_i02_couplers_RLAST = M_AXI_rlast[0];
  assign i02_couplers_to_i02_couplers_RREADY = S_AXI_rready[0];
  assign i02_couplers_to_i02_couplers_RRESP = M_AXI_rresp[1:0];
  assign i02_couplers_to_i02_couplers_RVALID = M_AXI_rvalid[0];
  assign i02_couplers_to_i02_couplers_WDATA = S_AXI_wdata[31:0];
  assign i02_couplers_to_i02_couplers_WLAST = S_AXI_wlast[0];
  assign i02_couplers_to_i02_couplers_WREADY = M_AXI_wready[0];
  assign i02_couplers_to_i02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i02_couplers_to_i02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i2c_imp_DBF5UM
   (S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arready,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awready,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI4_araddr,
    S_AXI4_arready,
    S_AXI4_arvalid,
    S_AXI4_awaddr,
    S_AXI4_awready,
    S_AXI4_awvalid,
    S_AXI4_bready,
    S_AXI4_bresp,
    S_AXI4_bvalid,
    S_AXI4_rdata,
    S_AXI4_rready,
    S_AXI4_rresp,
    S_AXI4_rvalid,
    S_AXI4_wdata,
    S_AXI4_wready,
    S_AXI4_wstrb,
    S_AXI4_wvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    iic2intc_irpt,
    iic2intc_irpt1,
    iic2intc_irpt2,
    iic2intc_irpt3,
    iic2intc_irpt4,
    iic_rtl_0_scl_i,
    iic_rtl_0_scl_o,
    iic_rtl_0_scl_t,
    iic_rtl_0_sda_i,
    iic_rtl_0_sda_o,
    iic_rtl_0_sda_t,
    iic_rtl_1_scl_i,
    iic_rtl_1_scl_o,
    iic_rtl_1_scl_t,
    iic_rtl_1_sda_i,
    iic_rtl_1_sda_o,
    iic_rtl_1_sda_t,
    iic_rtl_2_scl_i,
    iic_rtl_2_scl_o,
    iic_rtl_2_scl_t,
    iic_rtl_2_sda_i,
    iic_rtl_2_sda_o,
    iic_rtl_2_sda_t,
    iic_rtl_3_scl_i,
    iic_rtl_3_scl_o,
    iic_rtl_3_scl_t,
    iic_rtl_3_sda_i,
    iic_rtl_3_sda_o,
    iic_rtl_3_sda_t,
    iic_rtl_4_scl_i,
    iic_rtl_4_scl_o,
    iic_rtl_4_scl_t,
    iic_rtl_4_sda_i,
    iic_rtl_4_sda_o,
    iic_rtl_4_sda_t,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI2_araddr;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [31:0]S_AXI2_awaddr;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [31:0]S_AXI3_araddr;
  output S_AXI3_arready;
  input S_AXI3_arvalid;
  input [31:0]S_AXI3_awaddr;
  output S_AXI3_awready;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [31:0]S_AXI3_rdata;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [31:0]S_AXI3_wdata;
  output S_AXI3_wready;
  input [3:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input [31:0]S_AXI4_araddr;
  output S_AXI4_arready;
  input S_AXI4_arvalid;
  input [31:0]S_AXI4_awaddr;
  output S_AXI4_awready;
  input S_AXI4_awvalid;
  input S_AXI4_bready;
  output [1:0]S_AXI4_bresp;
  output S_AXI4_bvalid;
  output [31:0]S_AXI4_rdata;
  input S_AXI4_rready;
  output [1:0]S_AXI4_rresp;
  output S_AXI4_rvalid;
  input [31:0]S_AXI4_wdata;
  output S_AXI4_wready;
  input [3:0]S_AXI4_wstrb;
  input S_AXI4_wvalid;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output iic2intc_irpt;
  output iic2intc_irpt1;
  output iic2intc_irpt2;
  output iic2intc_irpt3;
  output iic2intc_irpt4;
  input iic_rtl_0_scl_i;
  output iic_rtl_0_scl_o;
  output iic_rtl_0_scl_t;
  input iic_rtl_0_sda_i;
  output iic_rtl_0_sda_o;
  output iic_rtl_0_sda_t;
  input iic_rtl_1_scl_i;
  output iic_rtl_1_scl_o;
  output iic_rtl_1_scl_t;
  input iic_rtl_1_sda_i;
  output iic_rtl_1_sda_o;
  output iic_rtl_1_sda_t;
  input iic_rtl_2_scl_i;
  output iic_rtl_2_scl_o;
  output iic_rtl_2_scl_t;
  input iic_rtl_2_sda_i;
  output iic_rtl_2_sda_o;
  output iic_rtl_2_sda_t;
  input iic_rtl_3_scl_i;
  output iic_rtl_3_scl_o;
  output iic_rtl_3_scl_t;
  input iic_rtl_3_sda_i;
  output iic_rtl_3_sda_o;
  output iic_rtl_3_sda_t;
  input iic_rtl_4_scl_i;
  output iic_rtl_4_scl_o;
  output iic_rtl_4_scl_t;
  input iic_rtl_4_sda_i;
  output iic_rtl_4_sda_o;
  output iic_rtl_4_sda_t;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire Conn1_SCL_I;
  wire Conn1_SCL_O;
  wire Conn1_SCL_T;
  wire Conn1_SDA_I;
  wire Conn1_SDA_O;
  wire Conn1_SDA_T;
  wire Conn2_SCL_I;
  wire Conn2_SCL_O;
  wire Conn2_SCL_T;
  wire Conn2_SDA_I;
  wire Conn2_SDA_O;
  wire Conn2_SDA_T;
  wire Net;
  wire [31:0]S_AXI3_1_ARADDR;
  wire S_AXI3_1_ARREADY;
  wire S_AXI3_1_ARVALID;
  wire [31:0]S_AXI3_1_AWADDR;
  wire S_AXI3_1_AWREADY;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire [31:0]S_AXI4_1_ARADDR;
  wire S_AXI4_1_ARREADY;
  wire S_AXI4_1_ARVALID;
  wire [31:0]S_AXI4_1_AWADDR;
  wire S_AXI4_1_AWREADY;
  wire S_AXI4_1_AWVALID;
  wire S_AXI4_1_BREADY;
  wire [1:0]S_AXI4_1_BRESP;
  wire S_AXI4_1_BVALID;
  wire [31:0]S_AXI4_1_RDATA;
  wire S_AXI4_1_RREADY;
  wire [1:0]S_AXI4_1_RRESP;
  wire S_AXI4_1_RVALID;
  wire [31:0]S_AXI4_1_WDATA;
  wire S_AXI4_1_WREADY;
  wire [3:0]S_AXI4_1_WSTRB;
  wire S_AXI4_1_WVALID;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_1_iic2intc_irpt;
  wire axi_iic_2_IIC_SCL_I;
  wire axi_iic_2_IIC_SCL_O;
  wire axi_iic_2_IIC_SCL_T;
  wire axi_iic_2_IIC_SDA_I;
  wire axi_iic_2_IIC_SDA_O;
  wire axi_iic_2_IIC_SDA_T;
  wire axi_iic_2_iic2intc_irpt;
  wire axi_iic_3_iic2intc_irpt;
  wire axi_iic_4_iic2intc_irpt;
  wire [31:0]cpu_M10_AXI_ARADDR;
  wire cpu_M10_AXI_ARREADY;
  wire cpu_M10_AXI_ARVALID;
  wire [31:0]cpu_M10_AXI_AWADDR;
  wire cpu_M10_AXI_AWREADY;
  wire cpu_M10_AXI_AWVALID;
  wire cpu_M10_AXI_BREADY;
  wire [1:0]cpu_M10_AXI_BRESP;
  wire cpu_M10_AXI_BVALID;
  wire [31:0]cpu_M10_AXI_RDATA;
  wire cpu_M10_AXI_RREADY;
  wire [1:0]cpu_M10_AXI_RRESP;
  wire cpu_M10_AXI_RVALID;
  wire [31:0]cpu_M10_AXI_WDATA;
  wire cpu_M10_AXI_WREADY;
  wire [3:0]cpu_M10_AXI_WSTRB;
  wire cpu_M10_AXI_WVALID;
  wire [31:0]cpu_M11_AXI_ARADDR;
  wire cpu_M11_AXI_ARREADY;
  wire cpu_M11_AXI_ARVALID;
  wire [31:0]cpu_M11_AXI_AWADDR;
  wire cpu_M11_AXI_AWREADY;
  wire cpu_M11_AXI_AWVALID;
  wire cpu_M11_AXI_BREADY;
  wire [1:0]cpu_M11_AXI_BRESP;
  wire cpu_M11_AXI_BVALID;
  wire [31:0]cpu_M11_AXI_RDATA;
  wire cpu_M11_AXI_RREADY;
  wire [1:0]cpu_M11_AXI_RRESP;
  wire cpu_M11_AXI_RVALID;
  wire [31:0]cpu_M11_AXI_WDATA;
  wire cpu_M11_AXI_WREADY;
  wire [3:0]cpu_M11_AXI_WSTRB;
  wire cpu_M11_AXI_WVALID;
  wire [31:0]cpu_M12_AXI_ARADDR;
  wire cpu_M12_AXI_ARREADY;
  wire cpu_M12_AXI_ARVALID;
  wire [31:0]cpu_M12_AXI_AWADDR;
  wire cpu_M12_AXI_AWREADY;
  wire cpu_M12_AXI_AWVALID;
  wire cpu_M12_AXI_BREADY;
  wire [1:0]cpu_M12_AXI_BRESP;
  wire cpu_M12_AXI_BVALID;
  wire [31:0]cpu_M12_AXI_RDATA;
  wire cpu_M12_AXI_RREADY;
  wire [1:0]cpu_M12_AXI_RRESP;
  wire cpu_M12_AXI_RVALID;
  wire [31:0]cpu_M12_AXI_WDATA;
  wire cpu_M12_AXI_WREADY;
  wire [3:0]cpu_M12_AXI_WSTRB;
  wire cpu_M12_AXI_WVALID;
  wire proc_sys_reset_0_peripheral_aresetn;

  assign Conn1_SCL_I = iic_rtl_3_scl_i;
  assign Conn1_SDA_I = iic_rtl_3_sda_i;
  assign Conn2_SCL_I = iic_rtl_4_scl_i;
  assign Conn2_SDA_I = iic_rtl_4_sda_i;
  assign Net = s_axi_aclk;
  assign S_AXI1_arready = cpu_M12_AXI_ARREADY;
  assign S_AXI1_awready = cpu_M12_AXI_AWREADY;
  assign S_AXI1_bresp[1:0] = cpu_M12_AXI_BRESP;
  assign S_AXI1_bvalid = cpu_M12_AXI_BVALID;
  assign S_AXI1_rdata[31:0] = cpu_M12_AXI_RDATA;
  assign S_AXI1_rresp[1:0] = cpu_M12_AXI_RRESP;
  assign S_AXI1_rvalid = cpu_M12_AXI_RVALID;
  assign S_AXI1_wready = cpu_M12_AXI_WREADY;
  assign S_AXI2_arready = cpu_M10_AXI_ARREADY;
  assign S_AXI2_awready = cpu_M10_AXI_AWREADY;
  assign S_AXI2_bresp[1:0] = cpu_M10_AXI_BRESP;
  assign S_AXI2_bvalid = cpu_M10_AXI_BVALID;
  assign S_AXI2_rdata[31:0] = cpu_M10_AXI_RDATA;
  assign S_AXI2_rresp[1:0] = cpu_M10_AXI_RRESP;
  assign S_AXI2_rvalid = cpu_M10_AXI_RVALID;
  assign S_AXI2_wready = cpu_M10_AXI_WREADY;
  assign S_AXI3_1_ARADDR = S_AXI3_araddr[31:0];
  assign S_AXI3_1_ARVALID = S_AXI3_arvalid;
  assign S_AXI3_1_AWADDR = S_AXI3_awaddr[31:0];
  assign S_AXI3_1_AWVALID = S_AXI3_awvalid;
  assign S_AXI3_1_BREADY = S_AXI3_bready;
  assign S_AXI3_1_RREADY = S_AXI3_rready;
  assign S_AXI3_1_WDATA = S_AXI3_wdata[31:0];
  assign S_AXI3_1_WSTRB = S_AXI3_wstrb[3:0];
  assign S_AXI3_1_WVALID = S_AXI3_wvalid;
  assign S_AXI3_arready = S_AXI3_1_ARREADY;
  assign S_AXI3_awready = S_AXI3_1_AWREADY;
  assign S_AXI3_bresp[1:0] = S_AXI3_1_BRESP;
  assign S_AXI3_bvalid = S_AXI3_1_BVALID;
  assign S_AXI3_rdata[31:0] = S_AXI3_1_RDATA;
  assign S_AXI3_rresp[1:0] = S_AXI3_1_RRESP;
  assign S_AXI3_rvalid = S_AXI3_1_RVALID;
  assign S_AXI3_wready = S_AXI3_1_WREADY;
  assign S_AXI4_1_ARADDR = S_AXI4_araddr[31:0];
  assign S_AXI4_1_ARVALID = S_AXI4_arvalid;
  assign S_AXI4_1_AWADDR = S_AXI4_awaddr[31:0];
  assign S_AXI4_1_AWVALID = S_AXI4_awvalid;
  assign S_AXI4_1_BREADY = S_AXI4_bready;
  assign S_AXI4_1_RREADY = S_AXI4_rready;
  assign S_AXI4_1_WDATA = S_AXI4_wdata[31:0];
  assign S_AXI4_1_WSTRB = S_AXI4_wstrb[3:0];
  assign S_AXI4_1_WVALID = S_AXI4_wvalid;
  assign S_AXI4_arready = S_AXI4_1_ARREADY;
  assign S_AXI4_awready = S_AXI4_1_AWREADY;
  assign S_AXI4_bresp[1:0] = S_AXI4_1_BRESP;
  assign S_AXI4_bvalid = S_AXI4_1_BVALID;
  assign S_AXI4_rdata[31:0] = S_AXI4_1_RDATA;
  assign S_AXI4_rresp[1:0] = S_AXI4_1_RRESP;
  assign S_AXI4_rvalid = S_AXI4_1_RVALID;
  assign S_AXI4_wready = S_AXI4_1_WREADY;
  assign S_AXI_arready = cpu_M11_AXI_ARREADY;
  assign S_AXI_awready = cpu_M11_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = cpu_M11_AXI_BRESP;
  assign S_AXI_bvalid = cpu_M11_AXI_BVALID;
  assign S_AXI_rdata[31:0] = cpu_M11_AXI_RDATA;
  assign S_AXI_rresp[1:0] = cpu_M11_AXI_RRESP;
  assign S_AXI_rvalid = cpu_M11_AXI_RVALID;
  assign S_AXI_wready = cpu_M11_AXI_WREADY;
  assign axi_iic_0_IIC_SCL_I = iic_rtl_0_scl_i;
  assign axi_iic_0_IIC_SDA_I = iic_rtl_0_sda_i;
  assign axi_iic_1_IIC_SCL_I = iic_rtl_1_scl_i;
  assign axi_iic_1_IIC_SDA_I = iic_rtl_1_sda_i;
  assign axi_iic_2_IIC_SCL_I = iic_rtl_2_scl_i;
  assign axi_iic_2_IIC_SDA_I = iic_rtl_2_sda_i;
  assign cpu_M10_AXI_ARADDR = S_AXI2_araddr[31:0];
  assign cpu_M10_AXI_ARVALID = S_AXI2_arvalid;
  assign cpu_M10_AXI_AWADDR = S_AXI2_awaddr[31:0];
  assign cpu_M10_AXI_AWVALID = S_AXI2_awvalid;
  assign cpu_M10_AXI_BREADY = S_AXI2_bready;
  assign cpu_M10_AXI_RREADY = S_AXI2_rready;
  assign cpu_M10_AXI_WDATA = S_AXI2_wdata[31:0];
  assign cpu_M10_AXI_WSTRB = S_AXI2_wstrb[3:0];
  assign cpu_M10_AXI_WVALID = S_AXI2_wvalid;
  assign cpu_M11_AXI_ARADDR = S_AXI_araddr[31:0];
  assign cpu_M11_AXI_ARVALID = S_AXI_arvalid;
  assign cpu_M11_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign cpu_M11_AXI_AWVALID = S_AXI_awvalid;
  assign cpu_M11_AXI_BREADY = S_AXI_bready;
  assign cpu_M11_AXI_RREADY = S_AXI_rready;
  assign cpu_M11_AXI_WDATA = S_AXI_wdata[31:0];
  assign cpu_M11_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign cpu_M11_AXI_WVALID = S_AXI_wvalid;
  assign cpu_M12_AXI_ARADDR = S_AXI1_araddr[31:0];
  assign cpu_M12_AXI_ARVALID = S_AXI1_arvalid;
  assign cpu_M12_AXI_AWADDR = S_AXI1_awaddr[31:0];
  assign cpu_M12_AXI_AWVALID = S_AXI1_awvalid;
  assign cpu_M12_AXI_BREADY = S_AXI1_bready;
  assign cpu_M12_AXI_RREADY = S_AXI1_rready;
  assign cpu_M12_AXI_WDATA = S_AXI1_wdata[31:0];
  assign cpu_M12_AXI_WSTRB = S_AXI1_wstrb[3:0];
  assign cpu_M12_AXI_WVALID = S_AXI1_wvalid;
  assign iic2intc_irpt = axi_iic_1_iic2intc_irpt;
  assign iic2intc_irpt1 = axi_iic_2_iic2intc_irpt;
  assign iic2intc_irpt2 = axi_iic_0_iic2intc_irpt;
  assign iic2intc_irpt3 = axi_iic_3_iic2intc_irpt;
  assign iic2intc_irpt4 = axi_iic_4_iic2intc_irpt;
  assign iic_rtl_0_scl_o = axi_iic_0_IIC_SCL_O;
  assign iic_rtl_0_scl_t = axi_iic_0_IIC_SCL_T;
  assign iic_rtl_0_sda_o = axi_iic_0_IIC_SDA_O;
  assign iic_rtl_0_sda_t = axi_iic_0_IIC_SDA_T;
  assign iic_rtl_1_scl_o = axi_iic_1_IIC_SCL_O;
  assign iic_rtl_1_scl_t = axi_iic_1_IIC_SCL_T;
  assign iic_rtl_1_sda_o = axi_iic_1_IIC_SDA_O;
  assign iic_rtl_1_sda_t = axi_iic_1_IIC_SDA_T;
  assign iic_rtl_2_scl_o = axi_iic_2_IIC_SCL_O;
  assign iic_rtl_2_scl_t = axi_iic_2_IIC_SCL_T;
  assign iic_rtl_2_sda_o = axi_iic_2_IIC_SDA_O;
  assign iic_rtl_2_sda_t = axi_iic_2_IIC_SDA_T;
  assign iic_rtl_3_scl_o = Conn1_SCL_O;
  assign iic_rtl_3_scl_t = Conn1_SCL_T;
  assign iic_rtl_3_sda_o = Conn1_SDA_O;
  assign iic_rtl_3_sda_t = Conn1_SDA_T;
  assign iic_rtl_4_scl_o = Conn2_SCL_O;
  assign iic_rtl_4_scl_t = Conn2_SCL_T;
  assign iic_rtl_4_sda_o = Conn2_SDA_O;
  assign iic_rtl_4_sda_t = Conn2_SDA_T;
  assign proc_sys_reset_0_peripheral_aresetn = s_axi_aresetn;
  design_1_axi_iic_0_1 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(cpu_M10_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(cpu_M10_AXI_ARREADY),
        .s_axi_arvalid(cpu_M10_AXI_ARVALID),
        .s_axi_awaddr(cpu_M10_AXI_AWADDR[8:0]),
        .s_axi_awready(cpu_M10_AXI_AWREADY),
        .s_axi_awvalid(cpu_M10_AXI_AWVALID),
        .s_axi_bready(cpu_M10_AXI_BREADY),
        .s_axi_bresp(cpu_M10_AXI_BRESP),
        .s_axi_bvalid(cpu_M10_AXI_BVALID),
        .s_axi_rdata(cpu_M10_AXI_RDATA),
        .s_axi_rready(cpu_M10_AXI_RREADY),
        .s_axi_rresp(cpu_M10_AXI_RRESP),
        .s_axi_rvalid(cpu_M10_AXI_RVALID),
        .s_axi_wdata(cpu_M10_AXI_WDATA),
        .s_axi_wready(cpu_M10_AXI_WREADY),
        .s_axi_wstrb(cpu_M10_AXI_WSTRB),
        .s_axi_wvalid(cpu_M10_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  design_1_axi_iic_0_2 axi_iic_1
       (.iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(cpu_M11_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(cpu_M11_AXI_ARREADY),
        .s_axi_arvalid(cpu_M11_AXI_ARVALID),
        .s_axi_awaddr(cpu_M11_AXI_AWADDR[8:0]),
        .s_axi_awready(cpu_M11_AXI_AWREADY),
        .s_axi_awvalid(cpu_M11_AXI_AWVALID),
        .s_axi_bready(cpu_M11_AXI_BREADY),
        .s_axi_bresp(cpu_M11_AXI_BRESP),
        .s_axi_bvalid(cpu_M11_AXI_BVALID),
        .s_axi_rdata(cpu_M11_AXI_RDATA),
        .s_axi_rready(cpu_M11_AXI_RREADY),
        .s_axi_rresp(cpu_M11_AXI_RRESP),
        .s_axi_rvalid(cpu_M11_AXI_RVALID),
        .s_axi_wdata(cpu_M11_AXI_WDATA),
        .s_axi_wready(cpu_M11_AXI_WREADY),
        .s_axi_wstrb(cpu_M11_AXI_WSTRB),
        .s_axi_wvalid(cpu_M11_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  design_1_axi_iic_0_3 axi_iic_2
       (.iic2intc_irpt(axi_iic_2_iic2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(cpu_M12_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(cpu_M12_AXI_ARREADY),
        .s_axi_arvalid(cpu_M12_AXI_ARVALID),
        .s_axi_awaddr(cpu_M12_AXI_AWADDR[8:0]),
        .s_axi_awready(cpu_M12_AXI_AWREADY),
        .s_axi_awvalid(cpu_M12_AXI_AWVALID),
        .s_axi_bready(cpu_M12_AXI_BREADY),
        .s_axi_bresp(cpu_M12_AXI_BRESP),
        .s_axi_bvalid(cpu_M12_AXI_BVALID),
        .s_axi_rdata(cpu_M12_AXI_RDATA),
        .s_axi_rready(cpu_M12_AXI_RREADY),
        .s_axi_rresp(cpu_M12_AXI_RRESP),
        .s_axi_rvalid(cpu_M12_AXI_RVALID),
        .s_axi_wdata(cpu_M12_AXI_WDATA),
        .s_axi_wready(cpu_M12_AXI_WREADY),
        .s_axi_wstrb(cpu_M12_AXI_WSTRB),
        .s_axi_wvalid(cpu_M12_AXI_WVALID),
        .scl_i(axi_iic_2_IIC_SCL_I),
        .scl_o(axi_iic_2_IIC_SCL_O),
        .scl_t(axi_iic_2_IIC_SCL_T),
        .sda_i(axi_iic_2_IIC_SDA_I),
        .sda_o(axi_iic_2_IIC_SDA_O),
        .sda_t(axi_iic_2_IIC_SDA_T));
  design_1_axi_iic_2_0 axi_iic_3
       (.iic2intc_irpt(axi_iic_3_iic2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(S_AXI3_1_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(S_AXI3_1_ARREADY),
        .s_axi_arvalid(S_AXI3_1_ARVALID),
        .s_axi_awaddr(S_AXI3_1_AWADDR[8:0]),
        .s_axi_awready(S_AXI3_1_AWREADY),
        .s_axi_awvalid(S_AXI3_1_AWVALID),
        .s_axi_bready(S_AXI3_1_BREADY),
        .s_axi_bresp(S_AXI3_1_BRESP),
        .s_axi_bvalid(S_AXI3_1_BVALID),
        .s_axi_rdata(S_AXI3_1_RDATA),
        .s_axi_rready(S_AXI3_1_RREADY),
        .s_axi_rresp(S_AXI3_1_RRESP),
        .s_axi_rvalid(S_AXI3_1_RVALID),
        .s_axi_wdata(S_AXI3_1_WDATA),
        .s_axi_wready(S_AXI3_1_WREADY),
        .s_axi_wstrb(S_AXI3_1_WSTRB),
        .s_axi_wvalid(S_AXI3_1_WVALID),
        .scl_i(Conn1_SCL_I),
        .scl_o(Conn1_SCL_O),
        .scl_t(Conn1_SCL_T),
        .sda_i(Conn1_SDA_I),
        .sda_o(Conn1_SDA_O),
        .sda_t(Conn1_SDA_T));
  design_1_axi_iic_3_0 axi_iic_4
       (.iic2intc_irpt(axi_iic_4_iic2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(S_AXI4_1_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(S_AXI4_1_ARREADY),
        .s_axi_arvalid(S_AXI4_1_ARVALID),
        .s_axi_awaddr(S_AXI4_1_AWADDR[8:0]),
        .s_axi_awready(S_AXI4_1_AWREADY),
        .s_axi_awvalid(S_AXI4_1_AWVALID),
        .s_axi_bready(S_AXI4_1_BREADY),
        .s_axi_bresp(S_AXI4_1_BRESP),
        .s_axi_bvalid(S_AXI4_1_BVALID),
        .s_axi_rdata(S_AXI4_1_RDATA),
        .s_axi_rready(S_AXI4_1_RREADY),
        .s_axi_rresp(S_AXI4_1_RRESP),
        .s_axi_rvalid(S_AXI4_1_RVALID),
        .s_axi_wdata(S_AXI4_1_WDATA),
        .s_axi_wready(S_AXI4_1_WREADY),
        .s_axi_wstrb(S_AXI4_1_WSTRB),
        .s_axi_wvalid(S_AXI4_1_WVALID),
        .scl_i(Conn2_SCL_I),
        .scl_o(Conn2_SCL_O),
        .scl_t(Conn2_SCL_T),
        .sda_i(Conn2_SDA_I),
        .sda_o(Conn2_SDA_O),
        .sda_t(Conn2_SDA_T));
endmodule

module ipmc_i2c_0_imp_LA8XA0
   (S_AXI2_araddr,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ha,
    i2c1_scl,
    i2c1_sda,
    i2c_addr_received,
    irq,
    s0_i,
    s0_i1,
    s0_o,
    s0_o1,
    s0_t,
    s0_t1,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]S_AXI2_araddr;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [31:0]S_AXI2_awaddr;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input [7:0]ha;
  inout i2c1_scl;
  inout i2c1_sda;
  output [6:0]i2c_addr_received;
  output irq;
  input s0_i;
  input s0_i1;
  output s0_o;
  output s0_o1;
  input s0_t;
  input s0_t1;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire Net;
  wire Net1;
  wire [12:0]axi_bram_ctrl_0_bram_addr_a;
  wire axi_bram_ctrl_0_bram_clk_a;
  wire axi_bram_ctrl_0_bram_en_a;
  wire axi_bram_ctrl_0_bram_rst_a;
  wire [3:0]axi_bram_ctrl_0_bram_we_a;
  wire [31:0]axi_bram_ctrl_0_bram_wrdata_a;
  wire [0:0]axi_gpio_0_gpio_io_o1;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_ARID;
  wire [7:0]axi_interconnect_0_M02_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_ARPROT;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_AWID;
  wire [7:0]axi_interconnect_0_M02_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_AWPROT;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M02_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M02_AXI_BID;
  wire [0:0]axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M02_AXI_RID;
  wire axi_interconnect_0_M02_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M02_AXI_WLAST;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M02_AXI_WVALID;
  wire [7:0]ha_1;
  wire [31:0]i2cSlave_0_bram_rddata;
  wire [6:0]i2cSlave_0_i2c_addr_received;
  wire i2cSlave_0_int;
  wire i2cSlave_0_sda_out;
  wire i2cSlave_0_sda_t;
  wire i2c_switch_0_s0_o;
  wire i2c_switch_0_s1_o;
  wire i2c_switch_1_s0_o;
  wire i2c_switch_1_s1_o;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire s0_i1_1;
  wire s0_i_1;
  wire s0_t1_1;
  wire s0_t_1;
  wire [0:0]xlconstant_0_dout;

  assign Conn1_ARADDR = S_AXI2_araddr[31:0];
  assign Conn1_ARVALID = S_AXI2_arvalid;
  assign Conn1_AWADDR = S_AXI2_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI2_awvalid;
  assign Conn1_BREADY = S_AXI2_bready;
  assign Conn1_RREADY = S_AXI2_rready;
  assign Conn1_WDATA = S_AXI2_wdata[31:0];
  assign Conn1_WSTRB = S_AXI2_wstrb[3:0];
  assign Conn1_WVALID = S_AXI2_wvalid;
  assign S_AXI2_arready = Conn1_ARREADY;
  assign S_AXI2_awready = Conn1_AWREADY;
  assign S_AXI2_bresp[1:0] = Conn1_BRESP;
  assign S_AXI2_bvalid = Conn1_BVALID;
  assign S_AXI2_rdata[31:0] = Conn1_RDATA;
  assign S_AXI2_rresp[1:0] = Conn1_RRESP;
  assign S_AXI2_rvalid = Conn1_RVALID;
  assign S_AXI2_wready = Conn1_WREADY;
  assign S_AXI_arready[0] = axi_interconnect_0_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = axi_interconnect_0_M02_AXI_AWREADY;
  assign S_AXI_bid[5:0] = axi_interconnect_0_M02_AXI_BID;
  assign S_AXI_bresp[1:0] = axi_interconnect_0_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = axi_interconnect_0_M02_AXI_BVALID;
  assign S_AXI_rdata[31:0] = axi_interconnect_0_M02_AXI_RDATA;
  assign S_AXI_rid[5:0] = axi_interconnect_0_M02_AXI_RID;
  assign S_AXI_rlast[0] = axi_interconnect_0_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = axi_interconnect_0_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = axi_interconnect_0_M02_AXI_RVALID;
  assign S_AXI_wready[0] = axi_interconnect_0_M02_AXI_WREADY;
  assign axi_interconnect_0_M02_AXI_ARADDR = S_AXI_araddr[31:0];
  assign axi_interconnect_0_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign axi_interconnect_0_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign axi_interconnect_0_M02_AXI_ARID = S_AXI_arid[5:0];
  assign axi_interconnect_0_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign axi_interconnect_0_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign axi_interconnect_0_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign axi_interconnect_0_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign axi_interconnect_0_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign axi_interconnect_0_M02_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign axi_interconnect_0_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign axi_interconnect_0_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign axi_interconnect_0_M02_AXI_AWID = S_AXI_awid[5:0];
  assign axi_interconnect_0_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign axi_interconnect_0_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign axi_interconnect_0_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign axi_interconnect_0_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign axi_interconnect_0_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign axi_interconnect_0_M02_AXI_BREADY = S_AXI_bready[0];
  assign axi_interconnect_0_M02_AXI_RREADY = S_AXI_rready[0];
  assign axi_interconnect_0_M02_AXI_WDATA = S_AXI_wdata[31:0];
  assign axi_interconnect_0_M02_AXI_WLAST = S_AXI_wlast[0];
  assign axi_interconnect_0_M02_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign axi_interconnect_0_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign ha_1 = ha[7:0];
  assign i2c_addr_received[6:0] = i2cSlave_0_i2c_addr_received;
  assign irq = i2cSlave_0_int;
  assign proc_sys_reset_0_peripheral_aresetn = s_axi_aresetn;
  assign processing_system7_0_FCLK_CLK0 = s_axi_aclk;
  assign s0_i1_1 = s0_i1;
  assign s0_i_1 = s0_i;
  assign s0_o = i2c_switch_1_s0_o;
  assign s0_o1 = i2c_switch_0_s0_o;
  assign s0_t1_1 = s0_t1;
  assign s0_t_1 = s0_t;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk_a(axi_bram_ctrl_0_bram_clk_a),
        .bram_en_a(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata_a(i2cSlave_0_bram_rddata),
        .bram_rst_a(axi_bram_ctrl_0_bram_rst_a),
        .bram_we_a(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_wrdata_a),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_interconnect_0_M02_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arid(axi_interconnect_0_M02_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M02_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_interconnect_0_M02_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M02_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M02_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M02_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M02_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M02_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M02_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M02_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_0_gpio_io_o1),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(Conn1_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[8:0]),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
  design_1_i2cSlave_0_0 i2cSlave_0
       (.bram_addr(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk(axi_bram_ctrl_0_bram_clk_a),
        .bram_en(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata(i2cSlave_0_bram_rddata),
        .bram_rst(axi_bram_ctrl_0_bram_rst_a),
        .bram_we(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata(axi_bram_ctrl_0_bram_wrdata_a),
        .clk(processing_system7_0_FCLK_CLK0),
        .hardware_address(ha_1),
        .i2c_addr_received(i2cSlave_0_i2c_addr_received),
        .irq(i2cSlave_0_int),
        .rst(proc_sys_reset_0_peripheral_aresetn),
        .scl(i2c_switch_0_s1_o),
        .sda_in(i2c_switch_1_s1_o),
        .sda_out(i2cSlave_0_sda_out),
        .sda_t(i2cSlave_0_sda_t));
  design_1_i2c_switch_0_0 i2c_switch_0
       (.s(i2c1_scl),
        .s0_i(s0_i1_1),
        .s0_o(i2c_switch_0_s0_o),
        .s0_t(s0_t1_1),
        .s1_i(xlconstant_0_dout),
        .s1_o(i2c_switch_0_s1_o),
        .s1_t(xlconstant_0_dout),
        .sel(axi_gpio_0_gpio_io_o1));
  design_1_i2c_switch_1_0 i2c_switch_1
       (.s(i2c1_sda),
        .s0_i(s0_i_1),
        .s0_o(i2c_switch_1_s0_o),
        .s0_t(s0_t_1),
        .s1_i(i2cSlave_0_sda_out),
        .s1_o(i2c_switch_1_s1_o),
        .s1_t(i2cSlave_0_sda_t),
        .sel(axi_gpio_0_gpio_io_o1));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module ipmc_i2c_1_imp_PGZ2NV
   (S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ha,
    i2c1_scl,
    i2c1_sda,
    i2c_addr_received,
    iic2intc_irpt,
    irq,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI2_araddr;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [31:0]S_AXI2_awaddr;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input [7:0]ha;
  inout i2c1_scl;
  inout i2c1_sda;
  output [6:0]i2c_addr_received;
  output iic2intc_irpt;
  output irq;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire Net;
  wire Net1;
  wire [12:0]axi_bram_ctrl_0_bram_addr_a;
  wire axi_bram_ctrl_0_bram_clk_a;
  wire axi_bram_ctrl_0_bram_en_a;
  wire axi_bram_ctrl_0_bram_rst_a;
  wire [3:0]axi_bram_ctrl_0_bram_we_a;
  wire [31:0]axi_bram_ctrl_0_bram_wrdata_a;
  wire [0:0]axi_gpio_0_gpio_io_o1;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_0_scl_o;
  wire axi_iic_0_scl_t;
  wire axi_iic_0_sda_o;
  wire axi_iic_0_sda_t;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_ARID;
  wire [7:0]axi_interconnect_0_M02_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_ARPROT;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_AWID;
  wire [7:0]axi_interconnect_0_M02_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_AWPROT;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M02_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M02_AXI_BID;
  wire [0:0]axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M02_AXI_RID;
  wire axi_interconnect_0_M02_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M02_AXI_WLAST;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_ARADDR;
  wire axi_interconnect_0_M05_AXI_ARREADY;
  wire axi_interconnect_0_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_AWADDR;
  wire axi_interconnect_0_M05_AXI_AWREADY;
  wire axi_interconnect_0_M05_AXI_AWVALID;
  wire axi_interconnect_0_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_BRESP;
  wire axi_interconnect_0_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_RDATA;
  wire axi_interconnect_0_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_RRESP;
  wire axi_interconnect_0_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_WDATA;
  wire axi_interconnect_0_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M05_AXI_WSTRB;
  wire axi_interconnect_0_M05_AXI_WVALID;
  wire [7:0]ha_1;
  wire [31:0]i2cSlave_0_bram_rddata;
  wire [6:0]i2cSlave_0_i2c_addr_received;
  wire i2cSlave_0_int;
  wire i2cSlave_0_sda_out;
  wire i2cSlave_0_sda_t;
  wire i2c_switch_0_s0_o;
  wire i2c_switch_0_s1_o;
  wire i2c_switch_1_s0_o;
  wire i2c_switch_1_s1_o;
  wire processing_system7_0_FCLK_CLK0;
  wire s_axi_aresetn_1;
  wire [0:0]xlconstant_0_dout;

  assign Conn1_ARADDR = S_AXI2_araddr[31:0];
  assign Conn1_ARVALID = S_AXI2_arvalid;
  assign Conn1_AWADDR = S_AXI2_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI2_awvalid;
  assign Conn1_BREADY = S_AXI2_bready;
  assign Conn1_RREADY = S_AXI2_rready;
  assign Conn1_WDATA = S_AXI2_wdata[31:0];
  assign Conn1_WSTRB = S_AXI2_wstrb[3:0];
  assign Conn1_WVALID = S_AXI2_wvalid;
  assign S_AXI1_arready = axi_interconnect_0_M05_AXI_ARREADY;
  assign S_AXI1_awready = axi_interconnect_0_M05_AXI_AWREADY;
  assign S_AXI1_bresp[1:0] = axi_interconnect_0_M05_AXI_BRESP;
  assign S_AXI1_bvalid = axi_interconnect_0_M05_AXI_BVALID;
  assign S_AXI1_rdata[31:0] = axi_interconnect_0_M05_AXI_RDATA;
  assign S_AXI1_rresp[1:0] = axi_interconnect_0_M05_AXI_RRESP;
  assign S_AXI1_rvalid = axi_interconnect_0_M05_AXI_RVALID;
  assign S_AXI1_wready = axi_interconnect_0_M05_AXI_WREADY;
  assign S_AXI2_arready = Conn1_ARREADY;
  assign S_AXI2_awready = Conn1_AWREADY;
  assign S_AXI2_bresp[1:0] = Conn1_BRESP;
  assign S_AXI2_bvalid = Conn1_BVALID;
  assign S_AXI2_rdata[31:0] = Conn1_RDATA;
  assign S_AXI2_rresp[1:0] = Conn1_RRESP;
  assign S_AXI2_rvalid = Conn1_RVALID;
  assign S_AXI2_wready = Conn1_WREADY;
  assign S_AXI_arready[0] = axi_interconnect_0_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = axi_interconnect_0_M02_AXI_AWREADY;
  assign S_AXI_bid[5:0] = axi_interconnect_0_M02_AXI_BID;
  assign S_AXI_bresp[1:0] = axi_interconnect_0_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = axi_interconnect_0_M02_AXI_BVALID;
  assign S_AXI_rdata[31:0] = axi_interconnect_0_M02_AXI_RDATA;
  assign S_AXI_rid[5:0] = axi_interconnect_0_M02_AXI_RID;
  assign S_AXI_rlast[0] = axi_interconnect_0_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = axi_interconnect_0_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = axi_interconnect_0_M02_AXI_RVALID;
  assign S_AXI_wready[0] = axi_interconnect_0_M02_AXI_WREADY;
  assign axi_interconnect_0_M02_AXI_ARADDR = S_AXI_araddr[31:0];
  assign axi_interconnect_0_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign axi_interconnect_0_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign axi_interconnect_0_M02_AXI_ARID = S_AXI_arid[5:0];
  assign axi_interconnect_0_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign axi_interconnect_0_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign axi_interconnect_0_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign axi_interconnect_0_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign axi_interconnect_0_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign axi_interconnect_0_M02_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign axi_interconnect_0_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign axi_interconnect_0_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign axi_interconnect_0_M02_AXI_AWID = S_AXI_awid[5:0];
  assign axi_interconnect_0_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign axi_interconnect_0_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign axi_interconnect_0_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign axi_interconnect_0_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign axi_interconnect_0_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign axi_interconnect_0_M02_AXI_BREADY = S_AXI_bready[0];
  assign axi_interconnect_0_M02_AXI_RREADY = S_AXI_rready[0];
  assign axi_interconnect_0_M02_AXI_WDATA = S_AXI_wdata[31:0];
  assign axi_interconnect_0_M02_AXI_WLAST = S_AXI_wlast[0];
  assign axi_interconnect_0_M02_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign axi_interconnect_0_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign axi_interconnect_0_M05_AXI_ARADDR = S_AXI1_araddr[31:0];
  assign axi_interconnect_0_M05_AXI_ARVALID = S_AXI1_arvalid;
  assign axi_interconnect_0_M05_AXI_AWADDR = S_AXI1_awaddr[31:0];
  assign axi_interconnect_0_M05_AXI_AWVALID = S_AXI1_awvalid;
  assign axi_interconnect_0_M05_AXI_BREADY = S_AXI1_bready;
  assign axi_interconnect_0_M05_AXI_RREADY = S_AXI1_rready;
  assign axi_interconnect_0_M05_AXI_WDATA = S_AXI1_wdata[31:0];
  assign axi_interconnect_0_M05_AXI_WSTRB = S_AXI1_wstrb[3:0];
  assign axi_interconnect_0_M05_AXI_WVALID = S_AXI1_wvalid;
  assign ha_1 = ha[7:0];
  assign i2c_addr_received[6:0] = i2cSlave_0_i2c_addr_received;
  assign iic2intc_irpt = axi_iic_0_iic2intc_irpt;
  assign irq = i2cSlave_0_int;
  assign processing_system7_0_FCLK_CLK0 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  design_1_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk_a(axi_bram_ctrl_0_bram_clk_a),
        .bram_en_a(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata_a(i2cSlave_0_bram_rddata),
        .bram_rst_a(axi_bram_ctrl_0_bram_rst_a),
        .bram_we_a(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_wrdata_a),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_interconnect_0_M02_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M02_AXI_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arid(axi_interconnect_0_M02_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M02_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_interconnect_0_M02_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M02_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M02_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M02_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M02_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M02_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M02_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M02_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_0_gpio_io_o1),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(Conn1_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[8:0]),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
  design_1_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_0_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M05_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M05_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M05_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M05_AXI_WVALID),
        .scl_i(i2c_switch_0_s0_o),
        .scl_o(axi_iic_0_scl_o),
        .scl_t(axi_iic_0_scl_t),
        .sda_i(i2c_switch_1_s0_o),
        .sda_o(axi_iic_0_sda_o),
        .sda_t(axi_iic_0_sda_t));
  design_1_i2cSlave_0_1 i2cSlave_0
       (.bram_addr(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk(axi_bram_ctrl_0_bram_clk_a),
        .bram_en(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata(i2cSlave_0_bram_rddata),
        .bram_rst(axi_bram_ctrl_0_bram_rst_a),
        .bram_we(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata(axi_bram_ctrl_0_bram_wrdata_a),
        .clk(processing_system7_0_FCLK_CLK0),
        .hardware_address(ha_1),
        .i2c_addr_received(i2cSlave_0_i2c_addr_received),
        .irq(i2cSlave_0_int),
        .rst(s_axi_aresetn_1),
        .scl(i2c_switch_0_s1_o),
        .sda_in(i2c_switch_1_s1_o),
        .sda_out(i2cSlave_0_sda_out),
        .sda_t(i2cSlave_0_sda_t));
  design_1_i2c_switch_0_1 i2c_switch_0
       (.s(i2c1_scl),
        .s0_i(axi_iic_0_scl_o),
        .s0_o(i2c_switch_0_s0_o),
        .s0_t(axi_iic_0_scl_t),
        .s1_i(xlconstant_0_dout),
        .s1_o(i2c_switch_0_s1_o),
        .s1_t(xlconstant_0_dout),
        .sel(axi_gpio_0_gpio_io_o1));
  design_1_i2c_switch_1_1 i2c_switch_1
       (.s(i2c1_sda),
        .s0_i(axi_iic_0_sda_o),
        .s0_o(i2c_switch_1_s0_o),
        .s0_t(axi_iic_0_sda_t),
        .s1_i(i2cSlave_0_sda_out),
        .s1_o(i2c_switch_1_s1_o),
        .s1_t(i2cSlave_0_sda_t),
        .sel(axi_gpio_0_gpio_io_o1));
  design_1_xlconstant_0_2 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module ipmc_imp_13B1Q7C
   (S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arid,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arready,
    S_AXI1_arsize,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awid,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awready,
    S_AXI1_awsize,
    S_AXI1_awvalid,
    S_AXI1_bid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rid,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arready,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awready,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI4_araddr,
    S_AXI4_arready,
    S_AXI4_arvalid,
    S_AXI4_awaddr,
    S_AXI4_awready,
    S_AXI4_awvalid,
    S_AXI4_bready,
    S_AXI4_bresp,
    S_AXI4_bvalid,
    S_AXI4_rdata,
    S_AXI4_rready,
    S_AXI4_rresp,
    S_AXI4_rvalid,
    S_AXI4_wdata,
    S_AXI4_wready,
    S_AXI4_wstrb,
    S_AXI4_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ha,
    i2c_addr_received,
    i2c_addr_received1,
    iic2intc_irpt,
    ipmc_scl_0,
    ipmc_scl_1,
    ipmc_sda_0,
    ipmc_sda_1,
    irq,
    irq1,
    s0_i,
    s0_i1,
    s0_o,
    s0_o1,
    s0_t,
    s0_t1,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [5:0]S_AXI1_arid;
  input [7:0]S_AXI1_arlen;
  input [0:0]S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  output [0:0]S_AXI1_arready;
  input [2:0]S_AXI1_arsize;
  input [0:0]S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [5:0]S_AXI1_awid;
  input [7:0]S_AXI1_awlen;
  input [0:0]S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  output [0:0]S_AXI1_awready;
  input [2:0]S_AXI1_awsize;
  input [0:0]S_AXI1_awvalid;
  output [5:0]S_AXI1_bid;
  input [0:0]S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output [0:0]S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  output [5:0]S_AXI1_rid;
  output [0:0]S_AXI1_rlast;
  input [0:0]S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output [0:0]S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  input [0:0]S_AXI1_wlast;
  output [0:0]S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input [0:0]S_AXI1_wvalid;
  input [31:0]S_AXI2_araddr;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [31:0]S_AXI2_awaddr;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [31:0]S_AXI3_araddr;
  output S_AXI3_arready;
  input S_AXI3_arvalid;
  input [31:0]S_AXI3_awaddr;
  output S_AXI3_awready;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [31:0]S_AXI3_rdata;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [31:0]S_AXI3_wdata;
  output S_AXI3_wready;
  input [3:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input [31:0]S_AXI4_araddr;
  output S_AXI4_arready;
  input S_AXI4_arvalid;
  input [31:0]S_AXI4_awaddr;
  output S_AXI4_awready;
  input S_AXI4_awvalid;
  input S_AXI4_bready;
  output [1:0]S_AXI4_bresp;
  output S_AXI4_bvalid;
  output [31:0]S_AXI4_rdata;
  input S_AXI4_rready;
  output [1:0]S_AXI4_rresp;
  output S_AXI4_rvalid;
  input [31:0]S_AXI4_wdata;
  output S_AXI4_wready;
  input [3:0]S_AXI4_wstrb;
  input S_AXI4_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input [7:0]ha;
  output [6:0]i2c_addr_received;
  output [6:0]i2c_addr_received1;
  output iic2intc_irpt;
  inout ipmc_scl_0;
  inout ipmc_scl_1;
  inout ipmc_sda_0;
  inout ipmc_sda_1;
  output irq;
  output irq1;
  input s0_i;
  input s0_i1;
  output s0_o;
  output s0_o1;
  input s0_t;
  input s0_t1;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire [31:0]S_AXI2_1_ARADDR;
  wire [1:0]S_AXI2_1_ARBURST;
  wire [3:0]S_AXI2_1_ARCACHE;
  wire [5:0]S_AXI2_1_ARID;
  wire [7:0]S_AXI2_1_ARLEN;
  wire [0:0]S_AXI2_1_ARLOCK;
  wire [2:0]S_AXI2_1_ARPROT;
  wire [0:0]S_AXI2_1_ARREADY;
  wire [2:0]S_AXI2_1_ARSIZE;
  wire [0:0]S_AXI2_1_ARVALID;
  wire [31:0]S_AXI2_1_AWADDR;
  wire [1:0]S_AXI2_1_AWBURST;
  wire [3:0]S_AXI2_1_AWCACHE;
  wire [5:0]S_AXI2_1_AWID;
  wire [7:0]S_AXI2_1_AWLEN;
  wire [0:0]S_AXI2_1_AWLOCK;
  wire [2:0]S_AXI2_1_AWPROT;
  wire [0:0]S_AXI2_1_AWREADY;
  wire [2:0]S_AXI2_1_AWSIZE;
  wire [0:0]S_AXI2_1_AWVALID;
  wire [5:0]S_AXI2_1_BID;
  wire [0:0]S_AXI2_1_BREADY;
  wire [1:0]S_AXI2_1_BRESP;
  wire [0:0]S_AXI2_1_BVALID;
  wire [31:0]S_AXI2_1_RDATA;
  wire [5:0]S_AXI2_1_RID;
  wire [0:0]S_AXI2_1_RLAST;
  wire [0:0]S_AXI2_1_RREADY;
  wire [1:0]S_AXI2_1_RRESP;
  wire [0:0]S_AXI2_1_RVALID;
  wire [31:0]S_AXI2_1_WDATA;
  wire [0:0]S_AXI2_1_WLAST;
  wire [0:0]S_AXI2_1_WREADY;
  wire [3:0]S_AXI2_1_WSTRB;
  wire [0:0]S_AXI2_1_WVALID;
  wire [31:0]S_AXI3_1_ARADDR;
  wire S_AXI3_1_ARREADY;
  wire S_AXI3_1_ARVALID;
  wire [31:0]S_AXI3_1_AWADDR;
  wire S_AXI3_1_AWREADY;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire [31:0]S_AXI4_1_ARADDR;
  wire [1:0]S_AXI4_1_ARBURST;
  wire [3:0]S_AXI4_1_ARCACHE;
  wire [5:0]S_AXI4_1_ARID;
  wire [7:0]S_AXI4_1_ARLEN;
  wire [0:0]S_AXI4_1_ARLOCK;
  wire [2:0]S_AXI4_1_ARPROT;
  wire [0:0]S_AXI4_1_ARREADY;
  wire [2:0]S_AXI4_1_ARSIZE;
  wire [0:0]S_AXI4_1_ARVALID;
  wire [31:0]S_AXI4_1_AWADDR;
  wire [1:0]S_AXI4_1_AWBURST;
  wire [3:0]S_AXI4_1_AWCACHE;
  wire [5:0]S_AXI4_1_AWID;
  wire [7:0]S_AXI4_1_AWLEN;
  wire [0:0]S_AXI4_1_AWLOCK;
  wire [2:0]S_AXI4_1_AWPROT;
  wire [0:0]S_AXI4_1_AWREADY;
  wire [2:0]S_AXI4_1_AWSIZE;
  wire [0:0]S_AXI4_1_AWVALID;
  wire [5:0]S_AXI4_1_BID;
  wire [0:0]S_AXI4_1_BREADY;
  wire [1:0]S_AXI4_1_BRESP;
  wire [0:0]S_AXI4_1_BVALID;
  wire [31:0]S_AXI4_1_RDATA;
  wire [5:0]S_AXI4_1_RID;
  wire [0:0]S_AXI4_1_RLAST;
  wire [0:0]S_AXI4_1_RREADY;
  wire [1:0]S_AXI4_1_RRESP;
  wire [0:0]S_AXI4_1_RVALID;
  wire [31:0]S_AXI4_1_WDATA;
  wire [0:0]S_AXI4_1_WLAST;
  wire [0:0]S_AXI4_1_WREADY;
  wire [3:0]S_AXI4_1_WSTRB;
  wire [0:0]S_AXI4_1_WVALID;
  wire [31:0]S_AXI5_1_ARADDR;
  wire S_AXI5_1_ARREADY;
  wire S_AXI5_1_ARVALID;
  wire [31:0]S_AXI5_1_AWADDR;
  wire S_AXI5_1_AWREADY;
  wire S_AXI5_1_AWVALID;
  wire S_AXI5_1_BREADY;
  wire [1:0]S_AXI5_1_BRESP;
  wire S_AXI5_1_BVALID;
  wire [31:0]S_AXI5_1_RDATA;
  wire S_AXI5_1_RREADY;
  wire [1:0]S_AXI5_1_RRESP;
  wire S_AXI5_1_RVALID;
  wire [31:0]S_AXI5_1_WDATA;
  wire S_AXI5_1_WREADY;
  wire [3:0]S_AXI5_1_WSTRB;
  wire S_AXI5_1_WVALID;
  wire [31:0]S_AXI6_1_ARADDR;
  wire S_AXI6_1_ARREADY;
  wire S_AXI6_1_ARVALID;
  wire [31:0]S_AXI6_1_AWADDR;
  wire S_AXI6_1_AWREADY;
  wire S_AXI6_1_AWVALID;
  wire S_AXI6_1_BREADY;
  wire [1:0]S_AXI6_1_BRESP;
  wire S_AXI6_1_BVALID;
  wire [31:0]S_AXI6_1_RDATA;
  wire S_AXI6_1_RREADY;
  wire [1:0]S_AXI6_1_RRESP;
  wire S_AXI6_1_RVALID;
  wire [31:0]S_AXI6_1_WDATA;
  wire S_AXI6_1_WREADY;
  wire [3:0]S_AXI6_1_WSTRB;
  wire S_AXI6_1_WVALID;
  wire [7:0]ha_1;
  wire [6:0]ipmc_i2c_0_i2c_addr_received;
  wire [6:0]ipmc_i2c_1_i2c_addr_received;
  wire ipmc_jtag_iic2intc_irpt;
  wire ipmc_jtag_irq;
  wire ipmc_jtag_irq1;
  wire ipmc_jtag_s0_o;
  wire ipmc_jtag_s0_o1;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire s0_i1_1;
  wire s0_i_1;
  wire s0_t1_1;
  wire s0_t_1;

  assign Net = s_axi_aclk;
  assign S_AXI1_arready[0] = S_AXI4_1_ARREADY;
  assign S_AXI1_awready[0] = S_AXI4_1_AWREADY;
  assign S_AXI1_bid[5:0] = S_AXI4_1_BID;
  assign S_AXI1_bresp[1:0] = S_AXI4_1_BRESP;
  assign S_AXI1_bvalid[0] = S_AXI4_1_BVALID;
  assign S_AXI1_rdata[31:0] = S_AXI4_1_RDATA;
  assign S_AXI1_rid[5:0] = S_AXI4_1_RID;
  assign S_AXI1_rlast[0] = S_AXI4_1_RLAST;
  assign S_AXI1_rresp[1:0] = S_AXI4_1_RRESP;
  assign S_AXI1_rvalid[0] = S_AXI4_1_RVALID;
  assign S_AXI1_wready[0] = S_AXI4_1_WREADY;
  assign S_AXI2_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI2_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI2_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI2_1_ARID = S_AXI_arid[5:0];
  assign S_AXI2_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI2_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI2_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI2_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI2_1_ARVALID = S_AXI_arvalid[0];
  assign S_AXI2_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI2_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI2_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI2_1_AWID = S_AXI_awid[5:0];
  assign S_AXI2_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI2_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI2_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI2_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI2_1_AWVALID = S_AXI_awvalid[0];
  assign S_AXI2_1_BREADY = S_AXI_bready[0];
  assign S_AXI2_1_RREADY = S_AXI_rready[0];
  assign S_AXI2_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI2_1_WLAST = S_AXI_wlast[0];
  assign S_AXI2_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI2_1_WVALID = S_AXI_wvalid[0];
  assign S_AXI2_arready = S_AXI3_1_ARREADY;
  assign S_AXI2_awready = S_AXI3_1_AWREADY;
  assign S_AXI2_bresp[1:0] = S_AXI3_1_BRESP;
  assign S_AXI2_bvalid = S_AXI3_1_BVALID;
  assign S_AXI2_rdata[31:0] = S_AXI3_1_RDATA;
  assign S_AXI2_rresp[1:0] = S_AXI3_1_RRESP;
  assign S_AXI2_rvalid = S_AXI3_1_RVALID;
  assign S_AXI2_wready = S_AXI3_1_WREADY;
  assign S_AXI3_1_ARADDR = S_AXI2_araddr[31:0];
  assign S_AXI3_1_ARVALID = S_AXI2_arvalid;
  assign S_AXI3_1_AWADDR = S_AXI2_awaddr[31:0];
  assign S_AXI3_1_AWVALID = S_AXI2_awvalid;
  assign S_AXI3_1_BREADY = S_AXI2_bready;
  assign S_AXI3_1_RREADY = S_AXI2_rready;
  assign S_AXI3_1_WDATA = S_AXI2_wdata[31:0];
  assign S_AXI3_1_WSTRB = S_AXI2_wstrb[3:0];
  assign S_AXI3_1_WVALID = S_AXI2_wvalid;
  assign S_AXI3_arready = S_AXI5_1_ARREADY;
  assign S_AXI3_awready = S_AXI5_1_AWREADY;
  assign S_AXI3_bresp[1:0] = S_AXI5_1_BRESP;
  assign S_AXI3_bvalid = S_AXI5_1_BVALID;
  assign S_AXI3_rdata[31:0] = S_AXI5_1_RDATA;
  assign S_AXI3_rresp[1:0] = S_AXI5_1_RRESP;
  assign S_AXI3_rvalid = S_AXI5_1_RVALID;
  assign S_AXI3_wready = S_AXI5_1_WREADY;
  assign S_AXI4_1_ARADDR = S_AXI1_araddr[31:0];
  assign S_AXI4_1_ARBURST = S_AXI1_arburst[1:0];
  assign S_AXI4_1_ARCACHE = S_AXI1_arcache[3:0];
  assign S_AXI4_1_ARID = S_AXI1_arid[5:0];
  assign S_AXI4_1_ARLEN = S_AXI1_arlen[7:0];
  assign S_AXI4_1_ARLOCK = S_AXI1_arlock[0];
  assign S_AXI4_1_ARPROT = S_AXI1_arprot[2:0];
  assign S_AXI4_1_ARSIZE = S_AXI1_arsize[2:0];
  assign S_AXI4_1_ARVALID = S_AXI1_arvalid[0];
  assign S_AXI4_1_AWADDR = S_AXI1_awaddr[31:0];
  assign S_AXI4_1_AWBURST = S_AXI1_awburst[1:0];
  assign S_AXI4_1_AWCACHE = S_AXI1_awcache[3:0];
  assign S_AXI4_1_AWID = S_AXI1_awid[5:0];
  assign S_AXI4_1_AWLEN = S_AXI1_awlen[7:0];
  assign S_AXI4_1_AWLOCK = S_AXI1_awlock[0];
  assign S_AXI4_1_AWPROT = S_AXI1_awprot[2:0];
  assign S_AXI4_1_AWSIZE = S_AXI1_awsize[2:0];
  assign S_AXI4_1_AWVALID = S_AXI1_awvalid[0];
  assign S_AXI4_1_BREADY = S_AXI1_bready[0];
  assign S_AXI4_1_RREADY = S_AXI1_rready[0];
  assign S_AXI4_1_WDATA = S_AXI1_wdata[31:0];
  assign S_AXI4_1_WLAST = S_AXI1_wlast[0];
  assign S_AXI4_1_WSTRB = S_AXI1_wstrb[3:0];
  assign S_AXI4_1_WVALID = S_AXI1_wvalid[0];
  assign S_AXI4_arready = S_AXI6_1_ARREADY;
  assign S_AXI4_awready = S_AXI6_1_AWREADY;
  assign S_AXI4_bresp[1:0] = S_AXI6_1_BRESP;
  assign S_AXI4_bvalid = S_AXI6_1_BVALID;
  assign S_AXI4_rdata[31:0] = S_AXI6_1_RDATA;
  assign S_AXI4_rresp[1:0] = S_AXI6_1_RRESP;
  assign S_AXI4_rvalid = S_AXI6_1_RVALID;
  assign S_AXI4_wready = S_AXI6_1_WREADY;
  assign S_AXI5_1_ARADDR = S_AXI3_araddr[31:0];
  assign S_AXI5_1_ARVALID = S_AXI3_arvalid;
  assign S_AXI5_1_AWADDR = S_AXI3_awaddr[31:0];
  assign S_AXI5_1_AWVALID = S_AXI3_awvalid;
  assign S_AXI5_1_BREADY = S_AXI3_bready;
  assign S_AXI5_1_RREADY = S_AXI3_rready;
  assign S_AXI5_1_WDATA = S_AXI3_wdata[31:0];
  assign S_AXI5_1_WSTRB = S_AXI3_wstrb[3:0];
  assign S_AXI5_1_WVALID = S_AXI3_wvalid;
  assign S_AXI6_1_ARADDR = S_AXI4_araddr[31:0];
  assign S_AXI6_1_ARVALID = S_AXI4_arvalid;
  assign S_AXI6_1_AWADDR = S_AXI4_awaddr[31:0];
  assign S_AXI6_1_AWVALID = S_AXI4_awvalid;
  assign S_AXI6_1_BREADY = S_AXI4_bready;
  assign S_AXI6_1_RREADY = S_AXI4_rready;
  assign S_AXI6_1_WDATA = S_AXI4_wdata[31:0];
  assign S_AXI6_1_WSTRB = S_AXI4_wstrb[3:0];
  assign S_AXI6_1_WVALID = S_AXI4_wvalid;
  assign S_AXI_arready[0] = S_AXI2_1_ARREADY;
  assign S_AXI_awready[0] = S_AXI2_1_AWREADY;
  assign S_AXI_bid[5:0] = S_AXI2_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI2_1_BRESP;
  assign S_AXI_bvalid[0] = S_AXI2_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI2_1_RDATA;
  assign S_AXI_rid[5:0] = S_AXI2_1_RID;
  assign S_AXI_rlast[0] = S_AXI2_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI2_1_RRESP;
  assign S_AXI_rvalid[0] = S_AXI2_1_RVALID;
  assign S_AXI_wready[0] = S_AXI2_1_WREADY;
  assign ha_1 = ha[7:0];
  assign i2c_addr_received[6:0] = ipmc_i2c_0_i2c_addr_received;
  assign i2c_addr_received1[6:0] = ipmc_i2c_1_i2c_addr_received;
  assign iic2intc_irpt = ipmc_jtag_iic2intc_irpt;
  assign irq = ipmc_jtag_irq;
  assign irq1 = ipmc_jtag_irq1;
  assign proc_sys_reset_0_peripheral_aresetn = s_axi_aresetn;
  assign s0_i1_1 = s0_i1;
  assign s0_i_1 = s0_i;
  assign s0_o = ipmc_jtag_s0_o;
  assign s0_o1 = ipmc_jtag_s0_o1;
  assign s0_t1_1 = s0_t1;
  assign s0_t_1 = s0_t;
  ipmc_i2c_0_imp_LA8XA0 ipmc_i2c_0
       (.S_AXI2_araddr(S_AXI3_1_ARADDR),
        .S_AXI2_arready(S_AXI3_1_ARREADY),
        .S_AXI2_arvalid(S_AXI3_1_ARVALID),
        .S_AXI2_awaddr(S_AXI3_1_AWADDR),
        .S_AXI2_awready(S_AXI3_1_AWREADY),
        .S_AXI2_awvalid(S_AXI3_1_AWVALID),
        .S_AXI2_bready(S_AXI3_1_BREADY),
        .S_AXI2_bresp(S_AXI3_1_BRESP),
        .S_AXI2_bvalid(S_AXI3_1_BVALID),
        .S_AXI2_rdata(S_AXI3_1_RDATA),
        .S_AXI2_rready(S_AXI3_1_RREADY),
        .S_AXI2_rresp(S_AXI3_1_RRESP),
        .S_AXI2_rvalid(S_AXI3_1_RVALID),
        .S_AXI2_wdata(S_AXI3_1_WDATA),
        .S_AXI2_wready(S_AXI3_1_WREADY),
        .S_AXI2_wstrb(S_AXI3_1_WSTRB),
        .S_AXI2_wvalid(S_AXI3_1_WVALID),
        .S_AXI_araddr(S_AXI2_1_ARADDR),
        .S_AXI_arburst(S_AXI2_1_ARBURST),
        .S_AXI_arcache(S_AXI2_1_ARCACHE),
        .S_AXI_arid(S_AXI2_1_ARID),
        .S_AXI_arlen(S_AXI2_1_ARLEN),
        .S_AXI_arlock(S_AXI2_1_ARLOCK),
        .S_AXI_arprot(S_AXI2_1_ARPROT),
        .S_AXI_arready(S_AXI2_1_ARREADY),
        .S_AXI_arsize(S_AXI2_1_ARSIZE),
        .S_AXI_arvalid(S_AXI2_1_ARVALID),
        .S_AXI_awaddr(S_AXI2_1_AWADDR),
        .S_AXI_awburst(S_AXI2_1_AWBURST),
        .S_AXI_awcache(S_AXI2_1_AWCACHE),
        .S_AXI_awid(S_AXI2_1_AWID),
        .S_AXI_awlen(S_AXI2_1_AWLEN),
        .S_AXI_awlock(S_AXI2_1_AWLOCK),
        .S_AXI_awprot(S_AXI2_1_AWPROT),
        .S_AXI_awready(S_AXI2_1_AWREADY),
        .S_AXI_awsize(S_AXI2_1_AWSIZE),
        .S_AXI_awvalid(S_AXI2_1_AWVALID),
        .S_AXI_bid(S_AXI2_1_BID),
        .S_AXI_bready(S_AXI2_1_BREADY),
        .S_AXI_bresp(S_AXI2_1_BRESP),
        .S_AXI_bvalid(S_AXI2_1_BVALID),
        .S_AXI_rdata(S_AXI2_1_RDATA),
        .S_AXI_rid(S_AXI2_1_RID),
        .S_AXI_rlast(S_AXI2_1_RLAST),
        .S_AXI_rready(S_AXI2_1_RREADY),
        .S_AXI_rresp(S_AXI2_1_RRESP),
        .S_AXI_rvalid(S_AXI2_1_RVALID),
        .S_AXI_wdata(S_AXI2_1_WDATA),
        .S_AXI_wlast(S_AXI2_1_WLAST),
        .S_AXI_wready(S_AXI2_1_WREADY),
        .S_AXI_wstrb(S_AXI2_1_WSTRB),
        .S_AXI_wvalid(S_AXI2_1_WVALID),
        .ha(ha_1),
        .i2c1_scl(ipmc_scl_0),
        .i2c1_sda(ipmc_sda_0),
        .i2c_addr_received(ipmc_i2c_0_i2c_addr_received),
        .irq(ipmc_jtag_irq),
        .s0_i(s0_i_1),
        .s0_i1(s0_i1_1),
        .s0_o(ipmc_jtag_s0_o),
        .s0_o1(ipmc_jtag_s0_o1),
        .s0_t(s0_t_1),
        .s0_t1(s0_t1_1),
        .s_axi_aclk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  ipmc_i2c_1_imp_PGZ2NV ipmc_i2c_1
       (.S_AXI1_araddr(S_AXI5_1_ARADDR),
        .S_AXI1_arready(S_AXI5_1_ARREADY),
        .S_AXI1_arvalid(S_AXI5_1_ARVALID),
        .S_AXI1_awaddr(S_AXI5_1_AWADDR),
        .S_AXI1_awready(S_AXI5_1_AWREADY),
        .S_AXI1_awvalid(S_AXI5_1_AWVALID),
        .S_AXI1_bready(S_AXI5_1_BREADY),
        .S_AXI1_bresp(S_AXI5_1_BRESP),
        .S_AXI1_bvalid(S_AXI5_1_BVALID),
        .S_AXI1_rdata(S_AXI5_1_RDATA),
        .S_AXI1_rready(S_AXI5_1_RREADY),
        .S_AXI1_rresp(S_AXI5_1_RRESP),
        .S_AXI1_rvalid(S_AXI5_1_RVALID),
        .S_AXI1_wdata(S_AXI5_1_WDATA),
        .S_AXI1_wready(S_AXI5_1_WREADY),
        .S_AXI1_wstrb(S_AXI5_1_WSTRB),
        .S_AXI1_wvalid(S_AXI5_1_WVALID),
        .S_AXI2_araddr(S_AXI6_1_ARADDR),
        .S_AXI2_arready(S_AXI6_1_ARREADY),
        .S_AXI2_arvalid(S_AXI6_1_ARVALID),
        .S_AXI2_awaddr(S_AXI6_1_AWADDR),
        .S_AXI2_awready(S_AXI6_1_AWREADY),
        .S_AXI2_awvalid(S_AXI6_1_AWVALID),
        .S_AXI2_bready(S_AXI6_1_BREADY),
        .S_AXI2_bresp(S_AXI6_1_BRESP),
        .S_AXI2_bvalid(S_AXI6_1_BVALID),
        .S_AXI2_rdata(S_AXI6_1_RDATA),
        .S_AXI2_rready(S_AXI6_1_RREADY),
        .S_AXI2_rresp(S_AXI6_1_RRESP),
        .S_AXI2_rvalid(S_AXI6_1_RVALID),
        .S_AXI2_wdata(S_AXI6_1_WDATA),
        .S_AXI2_wready(S_AXI6_1_WREADY),
        .S_AXI2_wstrb(S_AXI6_1_WSTRB),
        .S_AXI2_wvalid(S_AXI6_1_WVALID),
        .S_AXI_araddr(S_AXI4_1_ARADDR),
        .S_AXI_arburst(S_AXI4_1_ARBURST),
        .S_AXI_arcache(S_AXI4_1_ARCACHE),
        .S_AXI_arid(S_AXI4_1_ARID),
        .S_AXI_arlen(S_AXI4_1_ARLEN),
        .S_AXI_arlock(S_AXI4_1_ARLOCK),
        .S_AXI_arprot(S_AXI4_1_ARPROT),
        .S_AXI_arready(S_AXI4_1_ARREADY),
        .S_AXI_arsize(S_AXI4_1_ARSIZE),
        .S_AXI_arvalid(S_AXI4_1_ARVALID),
        .S_AXI_awaddr(S_AXI4_1_AWADDR),
        .S_AXI_awburst(S_AXI4_1_AWBURST),
        .S_AXI_awcache(S_AXI4_1_AWCACHE),
        .S_AXI_awid(S_AXI4_1_AWID),
        .S_AXI_awlen(S_AXI4_1_AWLEN),
        .S_AXI_awlock(S_AXI4_1_AWLOCK),
        .S_AXI_awprot(S_AXI4_1_AWPROT),
        .S_AXI_awready(S_AXI4_1_AWREADY),
        .S_AXI_awsize(S_AXI4_1_AWSIZE),
        .S_AXI_awvalid(S_AXI4_1_AWVALID),
        .S_AXI_bid(S_AXI4_1_BID),
        .S_AXI_bready(S_AXI4_1_BREADY),
        .S_AXI_bresp(S_AXI4_1_BRESP),
        .S_AXI_bvalid(S_AXI4_1_BVALID),
        .S_AXI_rdata(S_AXI4_1_RDATA),
        .S_AXI_rid(S_AXI4_1_RID),
        .S_AXI_rlast(S_AXI4_1_RLAST),
        .S_AXI_rready(S_AXI4_1_RREADY),
        .S_AXI_rresp(S_AXI4_1_RRESP),
        .S_AXI_rvalid(S_AXI4_1_RVALID),
        .S_AXI_wdata(S_AXI4_1_WDATA),
        .S_AXI_wlast(S_AXI4_1_WLAST),
        .S_AXI_wready(S_AXI4_1_WREADY),
        .S_AXI_wstrb(S_AXI4_1_WSTRB),
        .S_AXI_wvalid(S_AXI4_1_WVALID),
        .ha(ha_1),
        .i2c1_scl(ipmc_scl_1),
        .i2c1_sda(ipmc_sda_1),
        .i2c_addr_received(ipmc_i2c_1_i2c_addr_received),
        .iic2intc_irpt(ipmc_jtag_iic2intc_irpt),
        .irq(ipmc_jtag_irq1),
        .s_axi_aclk(Net),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
endmodule

module jtag_imp_3O8OBC
   (TCK_0,
    TCK_1,
    TDI_0,
    TDI_1,
    TDO_0,
    TDO_1,
    TMS_0,
    TMS_1,
    s_axi1_araddr,
    s_axi1_arprot,
    s_axi1_arready,
    s_axi1_arvalid,
    s_axi1_awaddr,
    s_axi1_awprot,
    s_axi1_awready,
    s_axi1_awvalid,
    s_axi1_bready,
    s_axi1_bresp,
    s_axi1_bvalid,
    s_axi1_rdata,
    s_axi1_rready,
    s_axi1_rresp,
    s_axi1_rvalid,
    s_axi1_wdata,
    s_axi1_wready,
    s_axi1_wstrb,
    s_axi1_wvalid,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  output TCK_0;
  output TCK_1;
  output TDI_0;
  output TDI_1;
  input TDO_0;
  input TDO_1;
  output TMS_0;
  output TMS_1;
  input [31:0]s_axi1_araddr;
  input [2:0]s_axi1_arprot;
  output s_axi1_arready;
  input s_axi1_arvalid;
  input [31:0]s_axi1_awaddr;
  input [2:0]s_axi1_awprot;
  output s_axi1_awready;
  input s_axi1_awvalid;
  input s_axi1_bready;
  output [1:0]s_axi1_bresp;
  output s_axi1_bvalid;
  output [31:0]s_axi1_rdata;
  input s_axi1_rready;
  output [1:0]s_axi1_rresp;
  output s_axi1_rvalid;
  input [31:0]s_axi1_wdata;
  output s_axi1_wready;
  input [3:0]s_axi1_wstrb;
  input s_axi1_wvalid;
  input s_axi_aclk;
  input [4:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [4:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire Net;
  wire TDO_0_0_1;
  wire TDO_1_0_1;
  wire ipmc_jtag_TCK_0;
  wire ipmc_jtag_TCK_1;
  wire ipmc_jtag_TDI_0;
  wire ipmc_jtag_TDI_1;
  wire ipmc_jtag_TMS_0;
  wire ipmc_jtag_TMS_1;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire [31:0]s_axi1_1_ARADDR;
  wire [2:0]s_axi1_1_ARPROT;
  wire s_axi1_1_ARREADY;
  wire s_axi1_1_ARVALID;
  wire [31:0]s_axi1_1_AWADDR;
  wire [2:0]s_axi1_1_AWPROT;
  wire s_axi1_1_AWREADY;
  wire s_axi1_1_AWVALID;
  wire s_axi1_1_BREADY;
  wire [1:0]s_axi1_1_BRESP;
  wire s_axi1_1_BVALID;
  wire [31:0]s_axi1_1_RDATA;
  wire s_axi1_1_RREADY;
  wire [1:0]s_axi1_1_RRESP;
  wire s_axi1_1_RVALID;
  wire [31:0]s_axi1_1_WDATA;
  wire s_axi1_1_WREADY;
  wire [3:0]s_axi1_1_WSTRB;
  wire s_axi1_1_WVALID;
  wire [4:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [4:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;

  assign Net = s_axi_aclk;
  assign TCK_0 = ipmc_jtag_TCK_0;
  assign TCK_1 = ipmc_jtag_TCK_1;
  assign TDI_0 = ipmc_jtag_TDI_0;
  assign TDI_1 = ipmc_jtag_TDI_1;
  assign TDO_0_0_1 = TDO_0;
  assign TDO_1_0_1 = TDO_1;
  assign TMS_0 = ipmc_jtag_TMS_0;
  assign TMS_1 = ipmc_jtag_TMS_1;
  assign proc_sys_reset_0_peripheral_aresetn = s_axi_aresetn;
  assign s_axi1_1_ARADDR = s_axi1_araddr[31:0];
  assign s_axi1_1_ARPROT = s_axi1_arprot[2:0];
  assign s_axi1_1_ARVALID = s_axi1_arvalid;
  assign s_axi1_1_AWADDR = s_axi1_awaddr[31:0];
  assign s_axi1_1_AWPROT = s_axi1_awprot[2:0];
  assign s_axi1_1_AWVALID = s_axi1_awvalid;
  assign s_axi1_1_BREADY = s_axi1_bready;
  assign s_axi1_1_RREADY = s_axi1_rready;
  assign s_axi1_1_WDATA = s_axi1_wdata[31:0];
  assign s_axi1_1_WSTRB = s_axi1_wstrb[3:0];
  assign s_axi1_1_WVALID = s_axi1_wvalid;
  assign s_axi1_arready = s_axi1_1_ARREADY;
  assign s_axi1_awready = s_axi1_1_AWREADY;
  assign s_axi1_bresp[1:0] = s_axi1_1_BRESP;
  assign s_axi1_bvalid = s_axi1_1_BVALID;
  assign s_axi1_rdata[31:0] = s_axi1_1_RDATA;
  assign s_axi1_rresp[1:0] = s_axi1_1_RRESP;
  assign s_axi1_rvalid = s_axi1_1_RVALID;
  assign s_axi1_wready = s_axi1_1_WREADY;
  assign s_axi_1_ARADDR = s_axi_araddr[4:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[4:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  design_1_axi_jtag_0_0 axi_jtag_0
       (.TCK(ipmc_jtag_TCK_0),
        .TDI(ipmc_jtag_TDI_0),
        .TDO(TDO_0_0_1),
        .TMS(ipmc_jtag_TMS_0),
        .s_axi_aclk(Net),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
  design_1_axi_jtag_1_0 axi_jtag_1
       (.TCK(ipmc_jtag_TCK_1),
        .TDI(ipmc_jtag_TDI_1),
        .TDO(TDO_1_0_1),
        .TMS(ipmc_jtag_TMS_1),
        .s_axi_aclk(Net),
        .s_axi_araddr(s_axi1_1_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arprot(s_axi1_1_ARPROT),
        .s_axi_arready(s_axi1_1_ARREADY),
        .s_axi_arvalid(s_axi1_1_ARVALID),
        .s_axi_awaddr(s_axi1_1_AWADDR[4:0]),
        .s_axi_awprot(s_axi1_1_AWPROT),
        .s_axi_awready(s_axi1_1_AWREADY),
        .s_axi_awvalid(s_axi1_1_AWVALID),
        .s_axi_bready(s_axi1_1_BREADY),
        .s_axi_bresp(s_axi1_1_BRESP),
        .s_axi_bvalid(s_axi1_1_BVALID),
        .s_axi_rdata(s_axi1_1_RDATA),
        .s_axi_rready(s_axi1_1_RREADY),
        .s_axi_rresp(s_axi1_1_RRESP),
        .s_axi_rvalid(s_axi1_1_RVALID),
        .s_axi_wdata(s_axi1_1_WDATA),
        .s_axi_wready(s_axi1_1_WREADY),
        .s_axi_wstrb(s_axi1_1_WSTRB),
        .s_axi_wvalid(s_axi1_1_WVALID));
endmodule

module m00_couplers_imp_3BIQ9E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [1:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [1:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [1:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [1:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [1:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [1:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[1:0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[1:0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[1:0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_RV6QXJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [17:0]auto_pc_to_m00_regslice_ARADDR;
  wire [2:0]auto_pc_to_m00_regslice_ARPROT;
  wire auto_pc_to_m00_regslice_ARREADY;
  wire auto_pc_to_m00_regslice_ARVALID;
  wire [17:0]auto_pc_to_m00_regslice_AWADDR;
  wire [2:0]auto_pc_to_m00_regslice_AWPROT;
  wire auto_pc_to_m00_regslice_AWREADY;
  wire auto_pc_to_m00_regslice_AWVALID;
  wire auto_pc_to_m00_regslice_BREADY;
  wire [1:0]auto_pc_to_m00_regslice_BRESP;
  wire auto_pc_to_m00_regslice_BVALID;
  wire [31:0]auto_pc_to_m00_regslice_RDATA;
  wire auto_pc_to_m00_regslice_RREADY;
  wire [1:0]auto_pc_to_m00_regslice_RRESP;
  wire auto_pc_to_m00_regslice_RVALID;
  wire [31:0]auto_pc_to_m00_regslice_WDATA;
  wire auto_pc_to_m00_regslice_WREADY;
  wire [3:0]auto_pc_to_m00_regslice_WSTRB;
  wire auto_pc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [5:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire [5:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;
  wire [17:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [17:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR[17:0]),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR[17:0]),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
  design_1_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .s_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .s_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_12MS3EE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [15:0]auto_pc_to_m01_regslice_ARADDR;
  wire [2:0]auto_pc_to_m01_regslice_ARPROT;
  wire auto_pc_to_m01_regslice_ARREADY;
  wire auto_pc_to_m01_regslice_ARVALID;
  wire [15:0]auto_pc_to_m01_regslice_AWADDR;
  wire [2:0]auto_pc_to_m01_regslice_AWPROT;
  wire auto_pc_to_m01_regslice_AWREADY;
  wire auto_pc_to_m01_regslice_AWVALID;
  wire auto_pc_to_m01_regslice_BREADY;
  wire [1:0]auto_pc_to_m01_regslice_BRESP;
  wire auto_pc_to_m01_regslice_BVALID;
  wire [31:0]auto_pc_to_m01_regslice_RDATA;
  wire auto_pc_to_m01_regslice_RREADY;
  wire [1:0]auto_pc_to_m01_regslice_RRESP;
  wire auto_pc_to_m01_regslice_RVALID;
  wire [31:0]auto_pc_to_m01_regslice_WDATA;
  wire auto_pc_to_m01_regslice_WREADY;
  wire [3:0]auto_pc_to_m01_regslice_WSTRB;
  wire auto_pc_to_m01_regslice_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m01_couplers_to_auto_pc_ARID;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m01_couplers_to_auto_pc_AWID;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire [5:0]m01_couplers_to_auto_pc_BID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire [5:0]m01_couplers_to_auto_pc_RID;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;
  wire [15:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [15:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[15:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m01_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m01_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_regslice_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR[15:0]),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m01_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR[15:0]),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_pc_BID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_pc_RID),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
  design_1_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_R477TG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [9:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [9:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m02_regslice_ARADDR;
  wire [2:0]auto_pc_to_m02_regslice_ARPROT;
  wire auto_pc_to_m02_regslice_ARREADY;
  wire auto_pc_to_m02_regslice_ARVALID;
  wire [31:0]auto_pc_to_m02_regslice_AWADDR;
  wire [2:0]auto_pc_to_m02_regslice_AWPROT;
  wire auto_pc_to_m02_regslice_AWREADY;
  wire auto_pc_to_m02_regslice_AWVALID;
  wire auto_pc_to_m02_regslice_BREADY;
  wire [1:0]auto_pc_to_m02_regslice_BRESP;
  wire auto_pc_to_m02_regslice_BVALID;
  wire [31:0]auto_pc_to_m02_regslice_RDATA;
  wire auto_pc_to_m02_regslice_RREADY;
  wire [1:0]auto_pc_to_m02_regslice_RRESP;
  wire auto_pc_to_m02_regslice_RVALID;
  wire [31:0]auto_pc_to_m02_regslice_WDATA;
  wire auto_pc_to_m02_regslice_WREADY;
  wire [3:0]auto_pc_to_m02_regslice_WSTRB;
  wire auto_pc_to_m02_regslice_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [1:0]m02_couplers_to_auto_pc_ARBURST;
  wire [3:0]m02_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m02_couplers_to_auto_pc_ARID;
  wire [7:0]m02_couplers_to_auto_pc_ARLEN;
  wire [0:0]m02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire [3:0]m02_couplers_to_auto_pc_ARQOS;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire [3:0]m02_couplers_to_auto_pc_ARREGION;
  wire [2:0]m02_couplers_to_auto_pc_ARSIZE;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [1:0]m02_couplers_to_auto_pc_AWBURST;
  wire [3:0]m02_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m02_couplers_to_auto_pc_AWID;
  wire [7:0]m02_couplers_to_auto_pc_AWLEN;
  wire [0:0]m02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire [3:0]m02_couplers_to_auto_pc_AWQOS;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire [3:0]m02_couplers_to_auto_pc_AWREGION;
  wire [2:0]m02_couplers_to_auto_pc_AWSIZE;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire [5:0]m02_couplers_to_auto_pc_BID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire [5:0]m02_couplers_to_auto_pc_RID;
  wire m02_couplers_to_auto_pc_RLAST;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WLAST;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;
  wire [9:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [9:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[9:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[9:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m02_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m02_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m02_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m02_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m02_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m02_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m02_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m02_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m02_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m02_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m02_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m02_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m02_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_regslice_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m02_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_pc_BID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_pc_RID),
        .s_axi_rlast(m02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
  design_1_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m02_regslice_ARADDR[9:0]),
        .s_axi_arprot(auto_pc_to_m02_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m02_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m02_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m02_regslice_AWADDR[9:0]),
        .s_axi_awprot(auto_pc_to_m02_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m02_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m02_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m02_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m02_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m02_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m02_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m02_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m02_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m02_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m02_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m02_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m02_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_13NGLV9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [4:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m03_regslice_ARADDR;
  wire [2:0]auto_pc_to_m03_regslice_ARPROT;
  wire auto_pc_to_m03_regslice_ARREADY;
  wire auto_pc_to_m03_regslice_ARVALID;
  wire [31:0]auto_pc_to_m03_regslice_AWADDR;
  wire [2:0]auto_pc_to_m03_regslice_AWPROT;
  wire auto_pc_to_m03_regslice_AWREADY;
  wire auto_pc_to_m03_regslice_AWVALID;
  wire auto_pc_to_m03_regslice_BREADY;
  wire [1:0]auto_pc_to_m03_regslice_BRESP;
  wire auto_pc_to_m03_regslice_BVALID;
  wire [31:0]auto_pc_to_m03_regslice_RDATA;
  wire auto_pc_to_m03_regslice_RREADY;
  wire [1:0]auto_pc_to_m03_regslice_RRESP;
  wire auto_pc_to_m03_regslice_RVALID;
  wire [31:0]auto_pc_to_m03_regslice_WDATA;
  wire auto_pc_to_m03_regslice_WREADY;
  wire [3:0]auto_pc_to_m03_regslice_WSTRB;
  wire auto_pc_to_m03_regslice_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m03_couplers_to_auto_pc_ARID;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m03_couplers_to_auto_pc_AWID;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire [5:0]m03_couplers_to_auto_pc_BID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire [5:0]m03_couplers_to_auto_pc_RID;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;
  wire [4:0]m03_regslice_to_m03_couplers_ARADDR;
  wire [2:0]m03_regslice_to_m03_couplers_ARPROT;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [4:0]m03_regslice_to_m03_couplers_AWADDR;
  wire [2:0]m03_regslice_to_m03_couplers_AWPROT;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[4:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_regslice_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_regslice_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m03_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m03_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m03_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m03_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m03_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m03_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m03_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m03_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m03_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m03_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m03_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m03_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m03_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_regslice_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m03_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_pc_BID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m03_couplers_to_auto_pc_RID),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
  design_1_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arprot(m03_regslice_to_m03_couplers_ARPROT),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awprot(m03_regslice_to_m03_couplers_AWPROT),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m03_regslice_ARADDR[4:0]),
        .s_axi_arprot(auto_pc_to_m03_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m03_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m03_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m03_regslice_AWADDR[4:0]),
        .s_axi_awprot(auto_pc_to_m03_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m03_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m03_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m03_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m03_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m03_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m03_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m03_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m03_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m03_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m03_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m03_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m03_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m03_regslice_WVALID));
endmodule

module m04_couplers_imp_V0HHOX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire [2:0]auto_pc_to_m04_couplers_ARPROT;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire [2:0]auto_pc_to_m04_couplers_AWPROT;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m04_couplers_to_auto_pc_ARID;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m04_couplers_to_auto_pc_AWID;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire [5:0]m04_couplers_to_auto_pc_BID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire [5:0]m04_couplers_to_auto_pc_RID;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m04_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m04_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m04_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m04_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m04_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_pc_BID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m04_couplers_to_auto_pc_RID),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_ZODA9C
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [1:0]m05_couplers_to_m05_couplers_ARBURST;
  wire [3:0]m05_couplers_to_m05_couplers_ARCACHE;
  wire [5:0]m05_couplers_to_m05_couplers_ARID;
  wire [7:0]m05_couplers_to_m05_couplers_ARLEN;
  wire [0:0]m05_couplers_to_m05_couplers_ARLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [2:0]m05_couplers_to_m05_couplers_ARSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [1:0]m05_couplers_to_m05_couplers_AWBURST;
  wire [3:0]m05_couplers_to_m05_couplers_AWCACHE;
  wire [5:0]m05_couplers_to_m05_couplers_AWID;
  wire [7:0]m05_couplers_to_m05_couplers_AWLEN;
  wire [0:0]m05_couplers_to_m05_couplers_AWLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [2:0]m05_couplers_to_m05_couplers_AWSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [5:0]m05_couplers_to_m05_couplers_BID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [5:0]m05_couplers_to_m05_couplers_RID;
  wire [0:0]m05_couplers_to_m05_couplers_RLAST;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WLAST;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m05_couplers_to_m05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m05_couplers_to_m05_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m05_couplers_to_m05_couplers_ARID;
  assign M_AXI_arlen[7:0] = m05_couplers_to_m05_couplers_ARLEN;
  assign M_AXI_arlock[0] = m05_couplers_to_m05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m05_couplers_to_m05_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m05_couplers_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m05_couplers_to_m05_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m05_couplers_to_m05_couplers_AWID;
  assign M_AXI_awlen[7:0] = m05_couplers_to_m05_couplers_AWLEN;
  assign M_AXI_awlock[0] = m05_couplers_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m05_couplers_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wlast[0] = m05_couplers_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m05_couplers_to_m05_couplers_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rid[5:0] = m05_couplers_to_m05_couplers_RID;
  assign S_AXI_rlast[0] = m05_couplers_to_m05_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_m05_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_m05_couplers_ARID = S_AXI_arid[5:0];
  assign m05_couplers_to_m05_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_m05_couplers_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_m05_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_m05_couplers_AWID = S_AXI_awid[5:0];
  assign m05_couplers_to_m05_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_m05_couplers_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BID = M_AXI_bid[5:0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RID = M_AXI_rid[5:0];
  assign m05_couplers_to_m05_couplers_RLAST = M_AXI_rlast[0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WLAST = S_AXI_wlast[0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_TFIFYQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_pc_ARADDR;
  wire [1:0]m06_couplers_to_auto_pc_ARBURST;
  wire [3:0]m06_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m06_couplers_to_auto_pc_ARID;
  wire [7:0]m06_couplers_to_auto_pc_ARLEN;
  wire [0:0]m06_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_pc_ARPROT;
  wire [3:0]m06_couplers_to_auto_pc_ARQOS;
  wire m06_couplers_to_auto_pc_ARREADY;
  wire [3:0]m06_couplers_to_auto_pc_ARREGION;
  wire [2:0]m06_couplers_to_auto_pc_ARSIZE;
  wire m06_couplers_to_auto_pc_ARVALID;
  wire [31:0]m06_couplers_to_auto_pc_AWADDR;
  wire [1:0]m06_couplers_to_auto_pc_AWBURST;
  wire [3:0]m06_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m06_couplers_to_auto_pc_AWID;
  wire [7:0]m06_couplers_to_auto_pc_AWLEN;
  wire [0:0]m06_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_pc_AWPROT;
  wire [3:0]m06_couplers_to_auto_pc_AWQOS;
  wire m06_couplers_to_auto_pc_AWREADY;
  wire [3:0]m06_couplers_to_auto_pc_AWREGION;
  wire [2:0]m06_couplers_to_auto_pc_AWSIZE;
  wire m06_couplers_to_auto_pc_AWVALID;
  wire [5:0]m06_couplers_to_auto_pc_BID;
  wire m06_couplers_to_auto_pc_BREADY;
  wire [1:0]m06_couplers_to_auto_pc_BRESP;
  wire m06_couplers_to_auto_pc_BVALID;
  wire [31:0]m06_couplers_to_auto_pc_RDATA;
  wire [5:0]m06_couplers_to_auto_pc_RID;
  wire m06_couplers_to_auto_pc_RLAST;
  wire m06_couplers_to_auto_pc_RREADY;
  wire [1:0]m06_couplers_to_auto_pc_RRESP;
  wire m06_couplers_to_auto_pc_RVALID;
  wire [31:0]m06_couplers_to_auto_pc_WDATA;
  wire m06_couplers_to_auto_pc_WLAST;
  wire m06_couplers_to_auto_pc_WREADY;
  wire [3:0]m06_couplers_to_auto_pc_WSTRB;
  wire m06_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m06_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m06_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m06_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m06_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m06_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m06_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m06_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m06_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m06_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m06_couplers_to_auto_pc_BID),
        .s_axi_bready(m06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m06_couplers_to_auto_pc_RID),
        .s_axi_rlast(m06_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_10Z0P83
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [1:0]m07_couplers_to_m07_couplers_ARBURST;
  wire [3:0]m07_couplers_to_m07_couplers_ARCACHE;
  wire [5:0]m07_couplers_to_m07_couplers_ARID;
  wire [7:0]m07_couplers_to_m07_couplers_ARLEN;
  wire [0:0]m07_couplers_to_m07_couplers_ARLOCK;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [2:0]m07_couplers_to_m07_couplers_ARSIZE;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [1:0]m07_couplers_to_m07_couplers_AWBURST;
  wire [3:0]m07_couplers_to_m07_couplers_AWCACHE;
  wire [5:0]m07_couplers_to_m07_couplers_AWID;
  wire [7:0]m07_couplers_to_m07_couplers_AWLEN;
  wire [0:0]m07_couplers_to_m07_couplers_AWLOCK;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [2:0]m07_couplers_to_m07_couplers_AWSIZE;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [5:0]m07_couplers_to_m07_couplers_BID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [5:0]m07_couplers_to_m07_couplers_RID;
  wire [0:0]m07_couplers_to_m07_couplers_RLAST;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WLAST;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m07_couplers_to_m07_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m07_couplers_to_m07_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m07_couplers_to_m07_couplers_ARID;
  assign M_AXI_arlen[7:0] = m07_couplers_to_m07_couplers_ARLEN;
  assign M_AXI_arlock[0] = m07_couplers_to_m07_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m07_couplers_to_m07_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m07_couplers_to_m07_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m07_couplers_to_m07_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m07_couplers_to_m07_couplers_AWID;
  assign M_AXI_awlen[7:0] = m07_couplers_to_m07_couplers_AWLEN;
  assign M_AXI_awlock[0] = m07_couplers_to_m07_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m07_couplers_to_m07_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wlast[0] = m07_couplers_to_m07_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m07_couplers_to_m07_couplers_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rid[5:0] = m07_couplers_to_m07_couplers_RID;
  assign S_AXI_rlast[0] = m07_couplers_to_m07_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_m07_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_m07_couplers_ARID = S_AXI_arid[5:0];
  assign m07_couplers_to_m07_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_m07_couplers_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_m07_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_m07_couplers_AWID = S_AXI_awid[5:0];
  assign m07_couplers_to_m07_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_m07_couplers_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BID = M_AXI_bid[5:0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RID = M_AXI_rid[5:0];
  assign m07_couplers_to_m07_couplers_RLAST = M_AXI_rlast[0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WLAST = S_AXI_wlast[0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_VZ63MJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m08_couplers_ARADDR;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [31:0]auto_pc_to_m08_couplers_AWADDR;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_pc_ARADDR;
  wire [1:0]m08_couplers_to_auto_pc_ARBURST;
  wire [3:0]m08_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m08_couplers_to_auto_pc_ARID;
  wire [7:0]m08_couplers_to_auto_pc_ARLEN;
  wire [0:0]m08_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m08_couplers_to_auto_pc_ARPROT;
  wire [3:0]m08_couplers_to_auto_pc_ARQOS;
  wire m08_couplers_to_auto_pc_ARREADY;
  wire [3:0]m08_couplers_to_auto_pc_ARREGION;
  wire [2:0]m08_couplers_to_auto_pc_ARSIZE;
  wire m08_couplers_to_auto_pc_ARVALID;
  wire [31:0]m08_couplers_to_auto_pc_AWADDR;
  wire [1:0]m08_couplers_to_auto_pc_AWBURST;
  wire [3:0]m08_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m08_couplers_to_auto_pc_AWID;
  wire [7:0]m08_couplers_to_auto_pc_AWLEN;
  wire [0:0]m08_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m08_couplers_to_auto_pc_AWPROT;
  wire [3:0]m08_couplers_to_auto_pc_AWQOS;
  wire m08_couplers_to_auto_pc_AWREADY;
  wire [3:0]m08_couplers_to_auto_pc_AWREGION;
  wire [2:0]m08_couplers_to_auto_pc_AWSIZE;
  wire m08_couplers_to_auto_pc_AWVALID;
  wire [5:0]m08_couplers_to_auto_pc_BID;
  wire m08_couplers_to_auto_pc_BREADY;
  wire [1:0]m08_couplers_to_auto_pc_BRESP;
  wire m08_couplers_to_auto_pc_BVALID;
  wire [31:0]m08_couplers_to_auto_pc_RDATA;
  wire [5:0]m08_couplers_to_auto_pc_RID;
  wire m08_couplers_to_auto_pc_RLAST;
  wire m08_couplers_to_auto_pc_RREADY;
  wire [1:0]m08_couplers_to_auto_pc_RRESP;
  wire m08_couplers_to_auto_pc_RVALID;
  wire [31:0]m08_couplers_to_auto_pc_WDATA;
  wire m08_couplers_to_auto_pc_WLAST;
  wire m08_couplers_to_auto_pc_WREADY;
  wire [3:0]m08_couplers_to_auto_pc_WSTRB;
  wire m08_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m08_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m08_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m08_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m08_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m08_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m08_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m08_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m08_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m08_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m08_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m08_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m08_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m08_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m08_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m08_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m08_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m08_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m08_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m08_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m08_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m08_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m08_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m08_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m08_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m08_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m08_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m08_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m08_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m08_couplers_to_auto_pc_BID),
        .s_axi_bready(m08_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m08_couplers_to_auto_pc_RID),
        .s_axi_rlast(m08_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m08_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m08_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m08_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_pc_WVALID));
endmodule

module m09_couplers_imp_17EIGXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m09_couplers_ARADDR;
  wire auto_pc_to_m09_couplers_ARREADY;
  wire auto_pc_to_m09_couplers_ARVALID;
  wire [31:0]auto_pc_to_m09_couplers_AWADDR;
  wire auto_pc_to_m09_couplers_AWREADY;
  wire auto_pc_to_m09_couplers_AWVALID;
  wire auto_pc_to_m09_couplers_BREADY;
  wire [1:0]auto_pc_to_m09_couplers_BRESP;
  wire auto_pc_to_m09_couplers_BVALID;
  wire [31:0]auto_pc_to_m09_couplers_RDATA;
  wire auto_pc_to_m09_couplers_RREADY;
  wire [1:0]auto_pc_to_m09_couplers_RRESP;
  wire auto_pc_to_m09_couplers_RVALID;
  wire [31:0]auto_pc_to_m09_couplers_WDATA;
  wire auto_pc_to_m09_couplers_WREADY;
  wire [3:0]auto_pc_to_m09_couplers_WSTRB;
  wire auto_pc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_pc_ARADDR;
  wire [1:0]m09_couplers_to_auto_pc_ARBURST;
  wire [3:0]m09_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m09_couplers_to_auto_pc_ARID;
  wire [7:0]m09_couplers_to_auto_pc_ARLEN;
  wire [0:0]m09_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m09_couplers_to_auto_pc_ARPROT;
  wire [3:0]m09_couplers_to_auto_pc_ARQOS;
  wire m09_couplers_to_auto_pc_ARREADY;
  wire [3:0]m09_couplers_to_auto_pc_ARREGION;
  wire [2:0]m09_couplers_to_auto_pc_ARSIZE;
  wire m09_couplers_to_auto_pc_ARVALID;
  wire [31:0]m09_couplers_to_auto_pc_AWADDR;
  wire [1:0]m09_couplers_to_auto_pc_AWBURST;
  wire [3:0]m09_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m09_couplers_to_auto_pc_AWID;
  wire [7:0]m09_couplers_to_auto_pc_AWLEN;
  wire [0:0]m09_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m09_couplers_to_auto_pc_AWPROT;
  wire [3:0]m09_couplers_to_auto_pc_AWQOS;
  wire m09_couplers_to_auto_pc_AWREADY;
  wire [3:0]m09_couplers_to_auto_pc_AWREGION;
  wire [2:0]m09_couplers_to_auto_pc_AWSIZE;
  wire m09_couplers_to_auto_pc_AWVALID;
  wire [5:0]m09_couplers_to_auto_pc_BID;
  wire m09_couplers_to_auto_pc_BREADY;
  wire [1:0]m09_couplers_to_auto_pc_BRESP;
  wire m09_couplers_to_auto_pc_BVALID;
  wire [31:0]m09_couplers_to_auto_pc_RDATA;
  wire [5:0]m09_couplers_to_auto_pc_RID;
  wire m09_couplers_to_auto_pc_RLAST;
  wire m09_couplers_to_auto_pc_RREADY;
  wire [1:0]m09_couplers_to_auto_pc_RRESP;
  wire m09_couplers_to_auto_pc_RVALID;
  wire [31:0]m09_couplers_to_auto_pc_WDATA;
  wire m09_couplers_to_auto_pc_WLAST;
  wire m09_couplers_to_auto_pc_WREADY;
  wire [3:0]m09_couplers_to_auto_pc_WSTRB;
  wire m09_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m09_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m09_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m09_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m09_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m09_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m09_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m09_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m09_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m09_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m09_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m09_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m09_couplers_WVALID),
        .s_axi_araddr(m09_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m09_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m09_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m09_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m09_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m09_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m09_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m09_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m09_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m09_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m09_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m09_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m09_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m09_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m09_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m09_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m09_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m09_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m09_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m09_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m09_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m09_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m09_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m09_couplers_to_auto_pc_BID),
        .s_axi_bready(m09_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m09_couplers_to_auto_pc_RID),
        .s_axi_rlast(m09_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m09_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m09_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m09_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_pc_WVALID));
endmodule

module m10_couplers_imp_1DTG3V3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m10_couplers_ARADDR;
  wire auto_pc_to_m10_couplers_ARREADY;
  wire auto_pc_to_m10_couplers_ARVALID;
  wire [31:0]auto_pc_to_m10_couplers_AWADDR;
  wire auto_pc_to_m10_couplers_AWREADY;
  wire auto_pc_to_m10_couplers_AWVALID;
  wire auto_pc_to_m10_couplers_BREADY;
  wire [1:0]auto_pc_to_m10_couplers_BRESP;
  wire auto_pc_to_m10_couplers_BVALID;
  wire [31:0]auto_pc_to_m10_couplers_RDATA;
  wire auto_pc_to_m10_couplers_RREADY;
  wire [1:0]auto_pc_to_m10_couplers_RRESP;
  wire auto_pc_to_m10_couplers_RVALID;
  wire [31:0]auto_pc_to_m10_couplers_WDATA;
  wire auto_pc_to_m10_couplers_WREADY;
  wire [3:0]auto_pc_to_m10_couplers_WSTRB;
  wire auto_pc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_pc_ARADDR;
  wire [1:0]m10_couplers_to_auto_pc_ARBURST;
  wire [3:0]m10_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m10_couplers_to_auto_pc_ARID;
  wire [7:0]m10_couplers_to_auto_pc_ARLEN;
  wire [0:0]m10_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m10_couplers_to_auto_pc_ARPROT;
  wire [3:0]m10_couplers_to_auto_pc_ARQOS;
  wire m10_couplers_to_auto_pc_ARREADY;
  wire [3:0]m10_couplers_to_auto_pc_ARREGION;
  wire [2:0]m10_couplers_to_auto_pc_ARSIZE;
  wire m10_couplers_to_auto_pc_ARVALID;
  wire [31:0]m10_couplers_to_auto_pc_AWADDR;
  wire [1:0]m10_couplers_to_auto_pc_AWBURST;
  wire [3:0]m10_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m10_couplers_to_auto_pc_AWID;
  wire [7:0]m10_couplers_to_auto_pc_AWLEN;
  wire [0:0]m10_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m10_couplers_to_auto_pc_AWPROT;
  wire [3:0]m10_couplers_to_auto_pc_AWQOS;
  wire m10_couplers_to_auto_pc_AWREADY;
  wire [3:0]m10_couplers_to_auto_pc_AWREGION;
  wire [2:0]m10_couplers_to_auto_pc_AWSIZE;
  wire m10_couplers_to_auto_pc_AWVALID;
  wire [5:0]m10_couplers_to_auto_pc_BID;
  wire m10_couplers_to_auto_pc_BREADY;
  wire [1:0]m10_couplers_to_auto_pc_BRESP;
  wire m10_couplers_to_auto_pc_BVALID;
  wire [31:0]m10_couplers_to_auto_pc_RDATA;
  wire [5:0]m10_couplers_to_auto_pc_RID;
  wire m10_couplers_to_auto_pc_RLAST;
  wire m10_couplers_to_auto_pc_RREADY;
  wire [1:0]m10_couplers_to_auto_pc_RRESP;
  wire m10_couplers_to_auto_pc_RVALID;
  wire [31:0]m10_couplers_to_auto_pc_WDATA;
  wire m10_couplers_to_auto_pc_WLAST;
  wire m10_couplers_to_auto_pc_WREADY;
  wire [3:0]m10_couplers_to_auto_pc_WSTRB;
  wire m10_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m10_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m10_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m10_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m10_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m10_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m10_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m10_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m10_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m10_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m10_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_9 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m10_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m10_couplers_WVALID),
        .s_axi_araddr(m10_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m10_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m10_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m10_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m10_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m10_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m10_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m10_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m10_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m10_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m10_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m10_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m10_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m10_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m10_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m10_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m10_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m10_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m10_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m10_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m10_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m10_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m10_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m10_couplers_to_auto_pc_BID),
        .s_axi_bready(m10_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m10_couplers_to_auto_pc_RID),
        .s_axi_rlast(m10_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m10_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m10_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m10_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_pc_WVALID));
endmodule

module m11_couplers_imp_PRNFQM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m11_couplers_ARADDR;
  wire auto_pc_to_m11_couplers_ARREADY;
  wire auto_pc_to_m11_couplers_ARVALID;
  wire [31:0]auto_pc_to_m11_couplers_AWADDR;
  wire auto_pc_to_m11_couplers_AWREADY;
  wire auto_pc_to_m11_couplers_AWVALID;
  wire auto_pc_to_m11_couplers_BREADY;
  wire [1:0]auto_pc_to_m11_couplers_BRESP;
  wire auto_pc_to_m11_couplers_BVALID;
  wire [31:0]auto_pc_to_m11_couplers_RDATA;
  wire auto_pc_to_m11_couplers_RREADY;
  wire [1:0]auto_pc_to_m11_couplers_RRESP;
  wire auto_pc_to_m11_couplers_RVALID;
  wire [31:0]auto_pc_to_m11_couplers_WDATA;
  wire auto_pc_to_m11_couplers_WREADY;
  wire [3:0]auto_pc_to_m11_couplers_WSTRB;
  wire auto_pc_to_m11_couplers_WVALID;
  wire [31:0]m11_couplers_to_auto_pc_ARADDR;
  wire [1:0]m11_couplers_to_auto_pc_ARBURST;
  wire [3:0]m11_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m11_couplers_to_auto_pc_ARID;
  wire [7:0]m11_couplers_to_auto_pc_ARLEN;
  wire [0:0]m11_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m11_couplers_to_auto_pc_ARPROT;
  wire [3:0]m11_couplers_to_auto_pc_ARQOS;
  wire m11_couplers_to_auto_pc_ARREADY;
  wire [3:0]m11_couplers_to_auto_pc_ARREGION;
  wire [2:0]m11_couplers_to_auto_pc_ARSIZE;
  wire m11_couplers_to_auto_pc_ARVALID;
  wire [31:0]m11_couplers_to_auto_pc_AWADDR;
  wire [1:0]m11_couplers_to_auto_pc_AWBURST;
  wire [3:0]m11_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m11_couplers_to_auto_pc_AWID;
  wire [7:0]m11_couplers_to_auto_pc_AWLEN;
  wire [0:0]m11_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m11_couplers_to_auto_pc_AWPROT;
  wire [3:0]m11_couplers_to_auto_pc_AWQOS;
  wire m11_couplers_to_auto_pc_AWREADY;
  wire [3:0]m11_couplers_to_auto_pc_AWREGION;
  wire [2:0]m11_couplers_to_auto_pc_AWSIZE;
  wire m11_couplers_to_auto_pc_AWVALID;
  wire [5:0]m11_couplers_to_auto_pc_BID;
  wire m11_couplers_to_auto_pc_BREADY;
  wire [1:0]m11_couplers_to_auto_pc_BRESP;
  wire m11_couplers_to_auto_pc_BVALID;
  wire [31:0]m11_couplers_to_auto_pc_RDATA;
  wire [5:0]m11_couplers_to_auto_pc_RID;
  wire m11_couplers_to_auto_pc_RLAST;
  wire m11_couplers_to_auto_pc_RREADY;
  wire [1:0]m11_couplers_to_auto_pc_RRESP;
  wire m11_couplers_to_auto_pc_RVALID;
  wire [31:0]m11_couplers_to_auto_pc_WDATA;
  wire m11_couplers_to_auto_pc_WLAST;
  wire m11_couplers_to_auto_pc_WREADY;
  wire [3:0]m11_couplers_to_auto_pc_WSTRB;
  wire m11_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m11_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m11_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m11_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m11_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m11_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m11_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m11_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m11_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m11_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m11_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m11_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m11_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m11_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m11_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m11_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m11_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m11_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m11_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m11_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m11_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m11_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_10 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m11_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m11_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m11_couplers_WVALID),
        .s_axi_araddr(m11_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m11_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m11_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m11_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m11_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m11_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m11_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m11_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m11_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m11_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m11_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m11_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m11_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m11_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m11_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m11_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m11_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m11_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m11_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m11_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m11_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m11_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m11_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m11_couplers_to_auto_pc_BID),
        .s_axi_bready(m11_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m11_couplers_to_auto_pc_RID),
        .s_axi_rlast(m11_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m11_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m11_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m11_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_pc_WVALID));
endmodule

module m12_couplers_imp_1ELECCS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m12_couplers_ARADDR;
  wire auto_pc_to_m12_couplers_ARREADY;
  wire auto_pc_to_m12_couplers_ARVALID;
  wire [31:0]auto_pc_to_m12_couplers_AWADDR;
  wire auto_pc_to_m12_couplers_AWREADY;
  wire auto_pc_to_m12_couplers_AWVALID;
  wire auto_pc_to_m12_couplers_BREADY;
  wire [1:0]auto_pc_to_m12_couplers_BRESP;
  wire auto_pc_to_m12_couplers_BVALID;
  wire [31:0]auto_pc_to_m12_couplers_RDATA;
  wire auto_pc_to_m12_couplers_RREADY;
  wire [1:0]auto_pc_to_m12_couplers_RRESP;
  wire auto_pc_to_m12_couplers_RVALID;
  wire [31:0]auto_pc_to_m12_couplers_WDATA;
  wire auto_pc_to_m12_couplers_WREADY;
  wire [3:0]auto_pc_to_m12_couplers_WSTRB;
  wire auto_pc_to_m12_couplers_WVALID;
  wire [31:0]m12_couplers_to_auto_pc_ARADDR;
  wire [1:0]m12_couplers_to_auto_pc_ARBURST;
  wire [3:0]m12_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m12_couplers_to_auto_pc_ARID;
  wire [7:0]m12_couplers_to_auto_pc_ARLEN;
  wire [0:0]m12_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m12_couplers_to_auto_pc_ARPROT;
  wire [3:0]m12_couplers_to_auto_pc_ARQOS;
  wire m12_couplers_to_auto_pc_ARREADY;
  wire [3:0]m12_couplers_to_auto_pc_ARREGION;
  wire [2:0]m12_couplers_to_auto_pc_ARSIZE;
  wire m12_couplers_to_auto_pc_ARVALID;
  wire [31:0]m12_couplers_to_auto_pc_AWADDR;
  wire [1:0]m12_couplers_to_auto_pc_AWBURST;
  wire [3:0]m12_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m12_couplers_to_auto_pc_AWID;
  wire [7:0]m12_couplers_to_auto_pc_AWLEN;
  wire [0:0]m12_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m12_couplers_to_auto_pc_AWPROT;
  wire [3:0]m12_couplers_to_auto_pc_AWQOS;
  wire m12_couplers_to_auto_pc_AWREADY;
  wire [3:0]m12_couplers_to_auto_pc_AWREGION;
  wire [2:0]m12_couplers_to_auto_pc_AWSIZE;
  wire m12_couplers_to_auto_pc_AWVALID;
  wire [5:0]m12_couplers_to_auto_pc_BID;
  wire m12_couplers_to_auto_pc_BREADY;
  wire [1:0]m12_couplers_to_auto_pc_BRESP;
  wire m12_couplers_to_auto_pc_BVALID;
  wire [31:0]m12_couplers_to_auto_pc_RDATA;
  wire [5:0]m12_couplers_to_auto_pc_RID;
  wire m12_couplers_to_auto_pc_RLAST;
  wire m12_couplers_to_auto_pc_RREADY;
  wire [1:0]m12_couplers_to_auto_pc_RRESP;
  wire m12_couplers_to_auto_pc_RVALID;
  wire [31:0]m12_couplers_to_auto_pc_WDATA;
  wire m12_couplers_to_auto_pc_WLAST;
  wire m12_couplers_to_auto_pc_WREADY;
  wire [3:0]m12_couplers_to_auto_pc_WSTRB;
  wire m12_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m12_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m12_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m12_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m12_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m12_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m12_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m12_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m12_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m12_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m12_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m12_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m12_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m12_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m12_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m12_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m12_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m12_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m12_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m12_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m12_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m12_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m12_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m12_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m12_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m12_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m12_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m12_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m12_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m12_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m12_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m12_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_11 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m12_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m12_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m12_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m12_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m12_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m12_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m12_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m12_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m12_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m12_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m12_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m12_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m12_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m12_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m12_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m12_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m12_couplers_WVALID),
        .s_axi_araddr(m12_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m12_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m12_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m12_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m12_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m12_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m12_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m12_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m12_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m12_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m12_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m12_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m12_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m12_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m12_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m12_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m12_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m12_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m12_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m12_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m12_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m12_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m12_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m12_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m12_couplers_to_auto_pc_BID),
        .s_axi_bready(m12_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m12_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m12_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m12_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m12_couplers_to_auto_pc_RID),
        .s_axi_rlast(m12_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m12_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m12_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m12_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m12_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m12_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m12_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m12_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m12_couplers_to_auto_pc_WVALID));
endmodule

module m13_couplers_imp_OPEZU5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m13_couplers_ARADDR;
  wire auto_pc_to_m13_couplers_ARREADY;
  wire auto_pc_to_m13_couplers_ARVALID;
  wire [31:0]auto_pc_to_m13_couplers_AWADDR;
  wire auto_pc_to_m13_couplers_AWREADY;
  wire auto_pc_to_m13_couplers_AWVALID;
  wire auto_pc_to_m13_couplers_BREADY;
  wire [1:0]auto_pc_to_m13_couplers_BRESP;
  wire auto_pc_to_m13_couplers_BVALID;
  wire [31:0]auto_pc_to_m13_couplers_RDATA;
  wire auto_pc_to_m13_couplers_RREADY;
  wire [1:0]auto_pc_to_m13_couplers_RRESP;
  wire auto_pc_to_m13_couplers_RVALID;
  wire [31:0]auto_pc_to_m13_couplers_WDATA;
  wire auto_pc_to_m13_couplers_WREADY;
  wire [3:0]auto_pc_to_m13_couplers_WSTRB;
  wire auto_pc_to_m13_couplers_WVALID;
  wire [31:0]m13_couplers_to_auto_pc_ARADDR;
  wire [1:0]m13_couplers_to_auto_pc_ARBURST;
  wire [3:0]m13_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m13_couplers_to_auto_pc_ARID;
  wire [7:0]m13_couplers_to_auto_pc_ARLEN;
  wire [0:0]m13_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m13_couplers_to_auto_pc_ARPROT;
  wire [3:0]m13_couplers_to_auto_pc_ARQOS;
  wire m13_couplers_to_auto_pc_ARREADY;
  wire [3:0]m13_couplers_to_auto_pc_ARREGION;
  wire [2:0]m13_couplers_to_auto_pc_ARSIZE;
  wire m13_couplers_to_auto_pc_ARVALID;
  wire [31:0]m13_couplers_to_auto_pc_AWADDR;
  wire [1:0]m13_couplers_to_auto_pc_AWBURST;
  wire [3:0]m13_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m13_couplers_to_auto_pc_AWID;
  wire [7:0]m13_couplers_to_auto_pc_AWLEN;
  wire [0:0]m13_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m13_couplers_to_auto_pc_AWPROT;
  wire [3:0]m13_couplers_to_auto_pc_AWQOS;
  wire m13_couplers_to_auto_pc_AWREADY;
  wire [3:0]m13_couplers_to_auto_pc_AWREGION;
  wire [2:0]m13_couplers_to_auto_pc_AWSIZE;
  wire m13_couplers_to_auto_pc_AWVALID;
  wire [5:0]m13_couplers_to_auto_pc_BID;
  wire m13_couplers_to_auto_pc_BREADY;
  wire [1:0]m13_couplers_to_auto_pc_BRESP;
  wire m13_couplers_to_auto_pc_BVALID;
  wire [31:0]m13_couplers_to_auto_pc_RDATA;
  wire [5:0]m13_couplers_to_auto_pc_RID;
  wire m13_couplers_to_auto_pc_RLAST;
  wire m13_couplers_to_auto_pc_RREADY;
  wire [1:0]m13_couplers_to_auto_pc_RRESP;
  wire m13_couplers_to_auto_pc_RVALID;
  wire [31:0]m13_couplers_to_auto_pc_WDATA;
  wire m13_couplers_to_auto_pc_WLAST;
  wire m13_couplers_to_auto_pc_WREADY;
  wire [3:0]m13_couplers_to_auto_pc_WSTRB;
  wire m13_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m13_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m13_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m13_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m13_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m13_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m13_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m13_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m13_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m13_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m13_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m13_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m13_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m13_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m13_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m13_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m13_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m13_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m13_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m13_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m13_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m13_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m13_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m13_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m13_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m13_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m13_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m13_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m13_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m13_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m13_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m13_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m13_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_12 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m13_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m13_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m13_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m13_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m13_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m13_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m13_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m13_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m13_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m13_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m13_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m13_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m13_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m13_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m13_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m13_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m13_couplers_WVALID),
        .s_axi_araddr(m13_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m13_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m13_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m13_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m13_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m13_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m13_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m13_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m13_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m13_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m13_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m13_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m13_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m13_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m13_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m13_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m13_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m13_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m13_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m13_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m13_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m13_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m13_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m13_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m13_couplers_to_auto_pc_BID),
        .s_axi_bready(m13_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m13_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m13_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m13_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m13_couplers_to_auto_pc_RID),
        .s_axi_rlast(m13_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m13_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m13_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m13_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m13_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m13_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m13_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m13_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m13_couplers_to_auto_pc_WVALID));
endmodule

module m14_couplers_imp_1F3CZUX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire [1:0]m14_couplers_to_m14_couplers_ARBURST;
  wire [3:0]m14_couplers_to_m14_couplers_ARCACHE;
  wire [5:0]m14_couplers_to_m14_couplers_ARID;
  wire [7:0]m14_couplers_to_m14_couplers_ARLEN;
  wire m14_couplers_to_m14_couplers_ARLOCK;
  wire [2:0]m14_couplers_to_m14_couplers_ARPROT;
  wire [3:0]m14_couplers_to_m14_couplers_ARQOS;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire [2:0]m14_couplers_to_m14_couplers_ARSIZE;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire [1:0]m14_couplers_to_m14_couplers_AWBURST;
  wire [3:0]m14_couplers_to_m14_couplers_AWCACHE;
  wire [5:0]m14_couplers_to_m14_couplers_AWID;
  wire [7:0]m14_couplers_to_m14_couplers_AWLEN;
  wire m14_couplers_to_m14_couplers_AWLOCK;
  wire [2:0]m14_couplers_to_m14_couplers_AWPROT;
  wire [3:0]m14_couplers_to_m14_couplers_AWQOS;
  wire m14_couplers_to_m14_couplers_AWREADY;
  wire [2:0]m14_couplers_to_m14_couplers_AWSIZE;
  wire m14_couplers_to_m14_couplers_AWVALID;
  wire [5:0]m14_couplers_to_m14_couplers_BID;
  wire m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire [5:0]m14_couplers_to_m14_couplers_RID;
  wire m14_couplers_to_m14_couplers_RLAST;
  wire m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire m14_couplers_to_m14_couplers_WLAST;
  wire m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m14_couplers_to_m14_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m14_couplers_to_m14_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m14_couplers_to_m14_couplers_ARID;
  assign M_AXI_arlen[7:0] = m14_couplers_to_m14_couplers_ARLEN;
  assign M_AXI_arlock = m14_couplers_to_m14_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m14_couplers_to_m14_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m14_couplers_to_m14_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m14_couplers_to_m14_couplers_ARSIZE;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m14_couplers_to_m14_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m14_couplers_to_m14_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m14_couplers_to_m14_couplers_AWID;
  assign M_AXI_awlen[7:0] = m14_couplers_to_m14_couplers_AWLEN;
  assign M_AXI_awlock = m14_couplers_to_m14_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m14_couplers_to_m14_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m14_couplers_to_m14_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m14_couplers_to_m14_couplers_AWSIZE;
  assign M_AXI_awvalid = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wlast = m14_couplers_to_m14_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m14_couplers_to_m14_couplers_BID;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rid[5:0] = m14_couplers_to_m14_couplers_RID;
  assign S_AXI_rlast = m14_couplers_to_m14_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_m14_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m14_couplers_to_m14_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m14_couplers_to_m14_couplers_ARID = S_AXI_arid[5:0];
  assign m14_couplers_to_m14_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m14_couplers_to_m14_couplers_ARLOCK = S_AXI_arlock;
  assign m14_couplers_to_m14_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_m14_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m14_couplers_to_m14_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m14_couplers_to_m14_couplers_AWID = S_AXI_awid[5:0];
  assign m14_couplers_to_m14_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m14_couplers_to_m14_couplers_AWLOCK = S_AXI_awlock;
  assign m14_couplers_to_m14_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_m14_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready;
  assign m14_couplers_to_m14_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_m14_couplers_BID = M_AXI_bid[5:0];
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready;
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RID = M_AXI_rid[5:0];
  assign m14_couplers_to_m14_couplers_RLAST = M_AXI_rlast;
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready;
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WLAST = S_AXI_wlast;
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid;
endmodule

module m15_couplers_imp_O9N3AG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m15_couplers_to_m15_couplers_ARADDR;
  wire [1:0]m15_couplers_to_m15_couplers_ARBURST;
  wire [3:0]m15_couplers_to_m15_couplers_ARCACHE;
  wire [5:0]m15_couplers_to_m15_couplers_ARID;
  wire [7:0]m15_couplers_to_m15_couplers_ARLEN;
  wire m15_couplers_to_m15_couplers_ARLOCK;
  wire [2:0]m15_couplers_to_m15_couplers_ARPROT;
  wire [3:0]m15_couplers_to_m15_couplers_ARQOS;
  wire m15_couplers_to_m15_couplers_ARREADY;
  wire [2:0]m15_couplers_to_m15_couplers_ARSIZE;
  wire m15_couplers_to_m15_couplers_ARVALID;
  wire [31:0]m15_couplers_to_m15_couplers_AWADDR;
  wire [1:0]m15_couplers_to_m15_couplers_AWBURST;
  wire [3:0]m15_couplers_to_m15_couplers_AWCACHE;
  wire [5:0]m15_couplers_to_m15_couplers_AWID;
  wire [7:0]m15_couplers_to_m15_couplers_AWLEN;
  wire m15_couplers_to_m15_couplers_AWLOCK;
  wire [2:0]m15_couplers_to_m15_couplers_AWPROT;
  wire [3:0]m15_couplers_to_m15_couplers_AWQOS;
  wire m15_couplers_to_m15_couplers_AWREADY;
  wire [2:0]m15_couplers_to_m15_couplers_AWSIZE;
  wire m15_couplers_to_m15_couplers_AWVALID;
  wire [5:0]m15_couplers_to_m15_couplers_BID;
  wire m15_couplers_to_m15_couplers_BREADY;
  wire [1:0]m15_couplers_to_m15_couplers_BRESP;
  wire m15_couplers_to_m15_couplers_BVALID;
  wire [31:0]m15_couplers_to_m15_couplers_RDATA;
  wire [5:0]m15_couplers_to_m15_couplers_RID;
  wire m15_couplers_to_m15_couplers_RLAST;
  wire m15_couplers_to_m15_couplers_RREADY;
  wire [1:0]m15_couplers_to_m15_couplers_RRESP;
  wire m15_couplers_to_m15_couplers_RVALID;
  wire [31:0]m15_couplers_to_m15_couplers_WDATA;
  wire m15_couplers_to_m15_couplers_WLAST;
  wire m15_couplers_to_m15_couplers_WREADY;
  wire [3:0]m15_couplers_to_m15_couplers_WSTRB;
  wire m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m15_couplers_to_m15_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m15_couplers_to_m15_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m15_couplers_to_m15_couplers_ARID;
  assign M_AXI_arlen[7:0] = m15_couplers_to_m15_couplers_ARLEN;
  assign M_AXI_arlock = m15_couplers_to_m15_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m15_couplers_to_m15_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m15_couplers_to_m15_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m15_couplers_to_m15_couplers_ARSIZE;
  assign M_AXI_arvalid = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m15_couplers_to_m15_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m15_couplers_to_m15_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m15_couplers_to_m15_couplers_AWID;
  assign M_AXI_awlen[7:0] = m15_couplers_to_m15_couplers_AWLEN;
  assign M_AXI_awlock = m15_couplers_to_m15_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m15_couplers_to_m15_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m15_couplers_to_m15_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m15_couplers_to_m15_couplers_AWSIZE;
  assign M_AXI_awvalid = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wlast = m15_couplers_to_m15_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m15_couplers_to_m15_couplers_BID;
  assign S_AXI_bresp[1:0] = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rid[5:0] = m15_couplers_to_m15_couplers_RID;
  assign S_AXI_rlast = m15_couplers_to_m15_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m15_couplers_to_m15_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m15_couplers_to_m15_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m15_couplers_to_m15_couplers_ARID = S_AXI_arid[5:0];
  assign m15_couplers_to_m15_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m15_couplers_to_m15_couplers_ARLOCK = S_AXI_arlock;
  assign m15_couplers_to_m15_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_m15_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready;
  assign m15_couplers_to_m15_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m15_couplers_to_m15_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m15_couplers_to_m15_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m15_couplers_to_m15_couplers_AWID = S_AXI_awid[5:0];
  assign m15_couplers_to_m15_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m15_couplers_to_m15_couplers_AWLOCK = S_AXI_awlock;
  assign m15_couplers_to_m15_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_m15_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready;
  assign m15_couplers_to_m15_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_m15_couplers_BID = M_AXI_bid[5:0];
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready;
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign m15_couplers_to_m15_couplers_RID = M_AXI_rid[5:0];
  assign m15_couplers_to_m15_couplers_RLAST = M_AXI_rlast;
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready;
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_m15_couplers_WLAST = S_AXI_wlast;
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid;
endmodule

module m16_couplers_imp_1GP9A16
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m16_couplers_ARADDR;
  wire auto_pc_to_m16_couplers_ARREADY;
  wire auto_pc_to_m16_couplers_ARVALID;
  wire [31:0]auto_pc_to_m16_couplers_AWADDR;
  wire auto_pc_to_m16_couplers_AWREADY;
  wire auto_pc_to_m16_couplers_AWVALID;
  wire auto_pc_to_m16_couplers_BREADY;
  wire [1:0]auto_pc_to_m16_couplers_BRESP;
  wire auto_pc_to_m16_couplers_BVALID;
  wire [31:0]auto_pc_to_m16_couplers_RDATA;
  wire auto_pc_to_m16_couplers_RREADY;
  wire [1:0]auto_pc_to_m16_couplers_RRESP;
  wire auto_pc_to_m16_couplers_RVALID;
  wire [31:0]auto_pc_to_m16_couplers_WDATA;
  wire auto_pc_to_m16_couplers_WREADY;
  wire [3:0]auto_pc_to_m16_couplers_WSTRB;
  wire auto_pc_to_m16_couplers_WVALID;
  wire [31:0]m16_couplers_to_auto_pc_ARADDR;
  wire [1:0]m16_couplers_to_auto_pc_ARBURST;
  wire [3:0]m16_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m16_couplers_to_auto_pc_ARID;
  wire [7:0]m16_couplers_to_auto_pc_ARLEN;
  wire [0:0]m16_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m16_couplers_to_auto_pc_ARPROT;
  wire [3:0]m16_couplers_to_auto_pc_ARQOS;
  wire m16_couplers_to_auto_pc_ARREADY;
  wire [3:0]m16_couplers_to_auto_pc_ARREGION;
  wire [2:0]m16_couplers_to_auto_pc_ARSIZE;
  wire m16_couplers_to_auto_pc_ARVALID;
  wire [31:0]m16_couplers_to_auto_pc_AWADDR;
  wire [1:0]m16_couplers_to_auto_pc_AWBURST;
  wire [3:0]m16_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m16_couplers_to_auto_pc_AWID;
  wire [7:0]m16_couplers_to_auto_pc_AWLEN;
  wire [0:0]m16_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m16_couplers_to_auto_pc_AWPROT;
  wire [3:0]m16_couplers_to_auto_pc_AWQOS;
  wire m16_couplers_to_auto_pc_AWREADY;
  wire [3:0]m16_couplers_to_auto_pc_AWREGION;
  wire [2:0]m16_couplers_to_auto_pc_AWSIZE;
  wire m16_couplers_to_auto_pc_AWVALID;
  wire [5:0]m16_couplers_to_auto_pc_BID;
  wire m16_couplers_to_auto_pc_BREADY;
  wire [1:0]m16_couplers_to_auto_pc_BRESP;
  wire m16_couplers_to_auto_pc_BVALID;
  wire [31:0]m16_couplers_to_auto_pc_RDATA;
  wire [5:0]m16_couplers_to_auto_pc_RID;
  wire m16_couplers_to_auto_pc_RLAST;
  wire m16_couplers_to_auto_pc_RREADY;
  wire [1:0]m16_couplers_to_auto_pc_RRESP;
  wire m16_couplers_to_auto_pc_RVALID;
  wire [31:0]m16_couplers_to_auto_pc_WDATA;
  wire m16_couplers_to_auto_pc_WLAST;
  wire m16_couplers_to_auto_pc_WREADY;
  wire [3:0]m16_couplers_to_auto_pc_WSTRB;
  wire m16_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m16_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m16_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m16_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m16_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m16_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m16_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m16_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m16_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m16_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m16_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m16_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m16_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m16_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m16_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m16_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m16_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m16_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m16_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m16_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m16_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m16_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m16_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m16_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m16_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m16_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m16_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m16_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m16_couplers_WREADY = M_AXI_wready;
  assign m16_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m16_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m16_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m16_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m16_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m16_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m16_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m16_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m16_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m16_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m16_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m16_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m16_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m16_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m16_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m16_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m16_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m16_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m16_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m16_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m16_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m16_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m16_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m16_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m16_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m16_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m16_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m16_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_13 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m16_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m16_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m16_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m16_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m16_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m16_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m16_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m16_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m16_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m16_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m16_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m16_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m16_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m16_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m16_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m16_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m16_couplers_WVALID),
        .s_axi_araddr(m16_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m16_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m16_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m16_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m16_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m16_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m16_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m16_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m16_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m16_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m16_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m16_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m16_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m16_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m16_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m16_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m16_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m16_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m16_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m16_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m16_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m16_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m16_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m16_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m16_couplers_to_auto_pc_BID),
        .s_axi_bready(m16_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m16_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m16_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m16_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m16_couplers_to_auto_pc_RID),
        .s_axi_rlast(m16_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m16_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m16_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m16_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m16_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m16_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m16_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m16_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m16_couplers_to_auto_pc_WVALID));
endmodule

module m17_couplers_imp_MXED4B
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m17_couplers_ARADDR;
  wire auto_pc_to_m17_couplers_ARREADY;
  wire auto_pc_to_m17_couplers_ARVALID;
  wire [31:0]auto_pc_to_m17_couplers_AWADDR;
  wire auto_pc_to_m17_couplers_AWREADY;
  wire auto_pc_to_m17_couplers_AWVALID;
  wire auto_pc_to_m17_couplers_BREADY;
  wire [1:0]auto_pc_to_m17_couplers_BRESP;
  wire auto_pc_to_m17_couplers_BVALID;
  wire [31:0]auto_pc_to_m17_couplers_RDATA;
  wire auto_pc_to_m17_couplers_RREADY;
  wire [1:0]auto_pc_to_m17_couplers_RRESP;
  wire auto_pc_to_m17_couplers_RVALID;
  wire [31:0]auto_pc_to_m17_couplers_WDATA;
  wire auto_pc_to_m17_couplers_WREADY;
  wire [3:0]auto_pc_to_m17_couplers_WSTRB;
  wire auto_pc_to_m17_couplers_WVALID;
  wire [31:0]m17_couplers_to_auto_pc_ARADDR;
  wire [1:0]m17_couplers_to_auto_pc_ARBURST;
  wire [3:0]m17_couplers_to_auto_pc_ARCACHE;
  wire [5:0]m17_couplers_to_auto_pc_ARID;
  wire [7:0]m17_couplers_to_auto_pc_ARLEN;
  wire [0:0]m17_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m17_couplers_to_auto_pc_ARPROT;
  wire [3:0]m17_couplers_to_auto_pc_ARQOS;
  wire m17_couplers_to_auto_pc_ARREADY;
  wire [3:0]m17_couplers_to_auto_pc_ARREGION;
  wire [2:0]m17_couplers_to_auto_pc_ARSIZE;
  wire m17_couplers_to_auto_pc_ARVALID;
  wire [31:0]m17_couplers_to_auto_pc_AWADDR;
  wire [1:0]m17_couplers_to_auto_pc_AWBURST;
  wire [3:0]m17_couplers_to_auto_pc_AWCACHE;
  wire [5:0]m17_couplers_to_auto_pc_AWID;
  wire [7:0]m17_couplers_to_auto_pc_AWLEN;
  wire [0:0]m17_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m17_couplers_to_auto_pc_AWPROT;
  wire [3:0]m17_couplers_to_auto_pc_AWQOS;
  wire m17_couplers_to_auto_pc_AWREADY;
  wire [3:0]m17_couplers_to_auto_pc_AWREGION;
  wire [2:0]m17_couplers_to_auto_pc_AWSIZE;
  wire m17_couplers_to_auto_pc_AWVALID;
  wire [5:0]m17_couplers_to_auto_pc_BID;
  wire m17_couplers_to_auto_pc_BREADY;
  wire [1:0]m17_couplers_to_auto_pc_BRESP;
  wire m17_couplers_to_auto_pc_BVALID;
  wire [31:0]m17_couplers_to_auto_pc_RDATA;
  wire [5:0]m17_couplers_to_auto_pc_RID;
  wire m17_couplers_to_auto_pc_RLAST;
  wire m17_couplers_to_auto_pc_RREADY;
  wire [1:0]m17_couplers_to_auto_pc_RRESP;
  wire m17_couplers_to_auto_pc_RVALID;
  wire [31:0]m17_couplers_to_auto_pc_WDATA;
  wire m17_couplers_to_auto_pc_WLAST;
  wire m17_couplers_to_auto_pc_WREADY;
  wire [3:0]m17_couplers_to_auto_pc_WSTRB;
  wire m17_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m17_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m17_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m17_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m17_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m17_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m17_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m17_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m17_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m17_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m17_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m17_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[5:0] = m17_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m17_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m17_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m17_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[5:0] = m17_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m17_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m17_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m17_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m17_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m17_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m17_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m17_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m17_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m17_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m17_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m17_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m17_couplers_WREADY = M_AXI_wready;
  assign m17_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m17_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m17_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m17_couplers_to_auto_pc_ARID = S_AXI_arid[5:0];
  assign m17_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m17_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m17_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m17_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m17_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m17_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m17_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m17_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m17_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m17_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m17_couplers_to_auto_pc_AWID = S_AXI_awid[5:0];
  assign m17_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m17_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m17_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m17_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m17_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m17_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m17_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m17_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m17_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m17_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m17_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m17_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m17_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_14 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m17_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m17_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m17_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m17_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m17_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m17_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m17_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m17_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m17_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m17_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m17_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m17_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m17_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m17_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m17_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m17_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m17_couplers_WVALID),
        .s_axi_araddr(m17_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m17_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m17_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m17_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m17_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m17_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m17_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m17_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m17_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m17_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m17_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m17_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m17_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m17_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m17_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m17_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m17_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m17_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m17_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m17_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m17_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m17_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m17_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m17_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m17_couplers_to_auto_pc_BID),
        .s_axi_bready(m17_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m17_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m17_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m17_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m17_couplers_to_auto_pc_RID),
        .s_axi_rlast(m17_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m17_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m17_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m17_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m17_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m17_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m17_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m17_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m17_couplers_to_auto_pc_WVALID));
endmodule

module m18_couplers_imp_19QSUBN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m18_couplers_to_m18_couplers_ARADDR;
  wire [1:0]m18_couplers_to_m18_couplers_ARBURST;
  wire [3:0]m18_couplers_to_m18_couplers_ARCACHE;
  wire [5:0]m18_couplers_to_m18_couplers_ARID;
  wire [7:0]m18_couplers_to_m18_couplers_ARLEN;
  wire m18_couplers_to_m18_couplers_ARLOCK;
  wire [2:0]m18_couplers_to_m18_couplers_ARPROT;
  wire m18_couplers_to_m18_couplers_ARREADY;
  wire [2:0]m18_couplers_to_m18_couplers_ARSIZE;
  wire m18_couplers_to_m18_couplers_ARVALID;
  wire [31:0]m18_couplers_to_m18_couplers_AWADDR;
  wire [1:0]m18_couplers_to_m18_couplers_AWBURST;
  wire [3:0]m18_couplers_to_m18_couplers_AWCACHE;
  wire [5:0]m18_couplers_to_m18_couplers_AWID;
  wire [7:0]m18_couplers_to_m18_couplers_AWLEN;
  wire m18_couplers_to_m18_couplers_AWLOCK;
  wire [2:0]m18_couplers_to_m18_couplers_AWPROT;
  wire m18_couplers_to_m18_couplers_AWREADY;
  wire [2:0]m18_couplers_to_m18_couplers_AWSIZE;
  wire m18_couplers_to_m18_couplers_AWVALID;
  wire [5:0]m18_couplers_to_m18_couplers_BID;
  wire m18_couplers_to_m18_couplers_BREADY;
  wire [1:0]m18_couplers_to_m18_couplers_BRESP;
  wire m18_couplers_to_m18_couplers_BVALID;
  wire [31:0]m18_couplers_to_m18_couplers_RDATA;
  wire [5:0]m18_couplers_to_m18_couplers_RID;
  wire m18_couplers_to_m18_couplers_RLAST;
  wire m18_couplers_to_m18_couplers_RREADY;
  wire [1:0]m18_couplers_to_m18_couplers_RRESP;
  wire m18_couplers_to_m18_couplers_RVALID;
  wire [31:0]m18_couplers_to_m18_couplers_WDATA;
  wire m18_couplers_to_m18_couplers_WLAST;
  wire m18_couplers_to_m18_couplers_WREADY;
  wire [3:0]m18_couplers_to_m18_couplers_WSTRB;
  wire m18_couplers_to_m18_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m18_couplers_to_m18_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m18_couplers_to_m18_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m18_couplers_to_m18_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m18_couplers_to_m18_couplers_ARID;
  assign M_AXI_arlen[7:0] = m18_couplers_to_m18_couplers_ARLEN;
  assign M_AXI_arlock = m18_couplers_to_m18_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m18_couplers_to_m18_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m18_couplers_to_m18_couplers_ARSIZE;
  assign M_AXI_arvalid = m18_couplers_to_m18_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m18_couplers_to_m18_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m18_couplers_to_m18_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m18_couplers_to_m18_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m18_couplers_to_m18_couplers_AWID;
  assign M_AXI_awlen[7:0] = m18_couplers_to_m18_couplers_AWLEN;
  assign M_AXI_awlock = m18_couplers_to_m18_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m18_couplers_to_m18_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m18_couplers_to_m18_couplers_AWSIZE;
  assign M_AXI_awvalid = m18_couplers_to_m18_couplers_AWVALID;
  assign M_AXI_bready = m18_couplers_to_m18_couplers_BREADY;
  assign M_AXI_rready = m18_couplers_to_m18_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m18_couplers_to_m18_couplers_WDATA;
  assign M_AXI_wlast = m18_couplers_to_m18_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m18_couplers_to_m18_couplers_WSTRB;
  assign M_AXI_wvalid = m18_couplers_to_m18_couplers_WVALID;
  assign S_AXI_arready = m18_couplers_to_m18_couplers_ARREADY;
  assign S_AXI_awready = m18_couplers_to_m18_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m18_couplers_to_m18_couplers_BID;
  assign S_AXI_bresp[1:0] = m18_couplers_to_m18_couplers_BRESP;
  assign S_AXI_bvalid = m18_couplers_to_m18_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m18_couplers_to_m18_couplers_RDATA;
  assign S_AXI_rid[5:0] = m18_couplers_to_m18_couplers_RID;
  assign S_AXI_rlast = m18_couplers_to_m18_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m18_couplers_to_m18_couplers_RRESP;
  assign S_AXI_rvalid = m18_couplers_to_m18_couplers_RVALID;
  assign S_AXI_wready = m18_couplers_to_m18_couplers_WREADY;
  assign m18_couplers_to_m18_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m18_couplers_to_m18_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m18_couplers_to_m18_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m18_couplers_to_m18_couplers_ARID = S_AXI_arid[5:0];
  assign m18_couplers_to_m18_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m18_couplers_to_m18_couplers_ARLOCK = S_AXI_arlock;
  assign m18_couplers_to_m18_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m18_couplers_to_m18_couplers_ARREADY = M_AXI_arready;
  assign m18_couplers_to_m18_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m18_couplers_to_m18_couplers_ARVALID = S_AXI_arvalid;
  assign m18_couplers_to_m18_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m18_couplers_to_m18_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m18_couplers_to_m18_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m18_couplers_to_m18_couplers_AWID = S_AXI_awid[5:0];
  assign m18_couplers_to_m18_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m18_couplers_to_m18_couplers_AWLOCK = S_AXI_awlock;
  assign m18_couplers_to_m18_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m18_couplers_to_m18_couplers_AWREADY = M_AXI_awready;
  assign m18_couplers_to_m18_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m18_couplers_to_m18_couplers_AWVALID = S_AXI_awvalid;
  assign m18_couplers_to_m18_couplers_BID = M_AXI_bid[5:0];
  assign m18_couplers_to_m18_couplers_BREADY = S_AXI_bready;
  assign m18_couplers_to_m18_couplers_BRESP = M_AXI_bresp[1:0];
  assign m18_couplers_to_m18_couplers_BVALID = M_AXI_bvalid;
  assign m18_couplers_to_m18_couplers_RDATA = M_AXI_rdata[31:0];
  assign m18_couplers_to_m18_couplers_RID = M_AXI_rid[5:0];
  assign m18_couplers_to_m18_couplers_RLAST = M_AXI_rlast;
  assign m18_couplers_to_m18_couplers_RREADY = S_AXI_rready;
  assign m18_couplers_to_m18_couplers_RRESP = M_AXI_rresp[1:0];
  assign m18_couplers_to_m18_couplers_RVALID = M_AXI_rvalid;
  assign m18_couplers_to_m18_couplers_WDATA = S_AXI_wdata[31:0];
  assign m18_couplers_to_m18_couplers_WLAST = S_AXI_wlast;
  assign m18_couplers_to_m18_couplers_WREADY = M_AXI_wready;
  assign m18_couplers_to_m18_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m18_couplers_to_m18_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_17NDAC5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [5:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_data_fifo_ARADDR;
  wire [1:0]auto_pc_to_s00_data_fifo_ARBURST;
  wire [3:0]auto_pc_to_s00_data_fifo_ARCACHE;
  wire [5:0]auto_pc_to_s00_data_fifo_ARID;
  wire [7:0]auto_pc_to_s00_data_fifo_ARLEN;
  wire [0:0]auto_pc_to_s00_data_fifo_ARLOCK;
  wire [2:0]auto_pc_to_s00_data_fifo_ARPROT;
  wire [3:0]auto_pc_to_s00_data_fifo_ARQOS;
  wire auto_pc_to_s00_data_fifo_ARREADY;
  wire [3:0]auto_pc_to_s00_data_fifo_ARREGION;
  wire [2:0]auto_pc_to_s00_data_fifo_ARSIZE;
  wire auto_pc_to_s00_data_fifo_ARVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_pc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_pc_to_s00_data_fifo_AWCACHE;
  wire [5:0]auto_pc_to_s00_data_fifo_AWID;
  wire [7:0]auto_pc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_pc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_pc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_pc_to_s00_data_fifo_AWQOS;
  wire auto_pc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_pc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_pc_to_s00_data_fifo_AWSIZE;
  wire auto_pc_to_s00_data_fifo_AWVALID;
  wire [5:0]auto_pc_to_s00_data_fifo_BID;
  wire auto_pc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_BRESP;
  wire auto_pc_to_s00_data_fifo_BVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_RDATA;
  wire [5:0]auto_pc_to_s00_data_fifo_RID;
  wire auto_pc_to_s00_data_fifo_RLAST;
  wire auto_pc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_RRESP;
  wire auto_pc_to_s00_data_fifo_RVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_WDATA;
  wire auto_pc_to_s00_data_fifo_WLAST;
  wire auto_pc_to_s00_data_fifo_WREADY;
  wire [3:0]auto_pc_to_s00_data_fifo_WSTRB;
  wire auto_pc_to_s00_data_fifo_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_ARID;
  wire [3:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_AWID;
  wire [3:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [5:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [5:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire [5:0]s00_couplers_to_s00_regslice_WID;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [5:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [5:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [5:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [5:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [5:0]s00_regslice_to_auto_pc_ARID;
  wire [3:0]s00_regslice_to_auto_pc_ARLEN;
  wire [1:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [5:0]s00_regslice_to_auto_pc_AWID;
  wire [3:0]s00_regslice_to_auto_pc_AWLEN;
  wire [1:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [5:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [5:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire [5:0]s00_regslice_to_auto_pc_WID;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[5:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[5:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[5:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[5:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WID = S_AXI_wid[5:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_15 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_data_fifo_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_data_fifo_ARID),
        .m_axi_arlen(auto_pc_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_data_fifo_ARQOS),
        .m_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(auto_pc_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(auto_pc_to_s00_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_pc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_pc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_pc_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_pc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .m_axi_rid(auto_pc_to_s00_data_fifo_RID),
        .m_axi_rlast(auto_pc_to_s00_data_fifo_RLAST),
        .m_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_pc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wid(s00_regslice_to_auto_pc_WID),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
  design_1_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(auto_pc_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(auto_pc_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(auto_pc_to_s00_data_fifo_ARID),
        .s_axi_arlen(auto_pc_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(auto_pc_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(auto_pc_to_s00_data_fifo_ARQOS),
        .s_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(auto_pc_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(auto_pc_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_pc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_pc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_pc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_pc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_pc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_pc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_pc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_pc_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_pc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .s_axi_rid(auto_pc_to_s00_data_fifo_RID),
        .s_axi_rlast(auto_pc_to_s00_data_fifo_RLAST),
        .s_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_pc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID));
  design_1_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wid(s00_regslice_to_auto_pc_WID),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wid(s00_couplers_to_s00_regslice_WID),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1VD573K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [63:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [63:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [7:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [31:0]auto_us_to_auto_cc_AWADDR;
  wire [1:0]auto_us_to_auto_cc_AWBURST;
  wire [3:0]auto_us_to_auto_cc_AWCACHE;
  wire [7:0]auto_us_to_auto_cc_AWLEN;
  wire [0:0]auto_us_to_auto_cc_AWLOCK;
  wire [2:0]auto_us_to_auto_cc_AWPROT;
  wire [3:0]auto_us_to_auto_cc_AWQOS;
  wire auto_us_to_auto_cc_AWREADY;
  wire [3:0]auto_us_to_auto_cc_AWREGION;
  wire [2:0]auto_us_to_auto_cc_AWSIZE;
  wire auto_us_to_auto_cc_AWVALID;
  wire auto_us_to_auto_cc_BREADY;
  wire [1:0]auto_us_to_auto_cc_BRESP;
  wire auto_us_to_auto_cc_BVALID;
  wire [63:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [63:0]auto_us_to_auto_cc_WDATA;
  wire auto_us_to_auto_cc_WLAST;
  wire auto_us_to_auto_cc_WREADY;
  wire [7:0]auto_us_to_auto_cc_WSTRB;
  wire auto_us_to_auto_cc_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  design_1_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .s_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .s_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .s_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .s_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .s_axi_awready(auto_us_to_auto_cc_AWREADY),
        .s_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .s_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .s_axi_bready(auto_us_to_auto_cc_BREADY),
        .s_axi_bresp(auto_us_to_auto_cc_BRESP),
        .s_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_wdata(auto_us_to_auto_cc_WDATA),
        .s_axi_wlast(auto_us_to_auto_cc_WLAST),
        .s_axi_wready(auto_us_to_auto_cc_WREADY),
        .s_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_cc_WVALID));
  design_1_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .m_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .m_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .m_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .m_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .m_axi_awready(auto_us_to_auto_cc_AWREADY),
        .m_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .m_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .m_axi_bready(auto_us_to_auto_cc_BREADY),
        .m_axi_bresp(auto_us_to_auto_cc_BRESP),
        .m_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .m_axi_wdata(auto_us_to_auto_cc_WDATA),
        .m_axi_wlast(auto_us_to_auto_cc_WLAST),
        .m_axi_wready(auto_us_to_auto_cc_WREADY),
        .m_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_cc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s01_couplers_imp_87QMDT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s01_couplers_ARADDR;
  wire [1:0]auto_cc_to_s01_couplers_ARBURST;
  wire [3:0]auto_cc_to_s01_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s01_couplers_ARLEN;
  wire [0:0]auto_cc_to_s01_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s01_couplers_ARPROT;
  wire [3:0]auto_cc_to_s01_couplers_ARQOS;
  wire auto_cc_to_s01_couplers_ARREADY;
  wire [2:0]auto_cc_to_s01_couplers_ARSIZE;
  wire auto_cc_to_s01_couplers_ARVALID;
  wire [63:0]auto_cc_to_s01_couplers_RDATA;
  wire auto_cc_to_s01_couplers_RLAST;
  wire auto_cc_to_s01_couplers_RREADY;
  wire [1:0]auto_cc_to_s01_couplers_RRESP;
  wire auto_cc_to_s01_couplers_RVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [63:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_cc_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_cc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  design_1_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_cc_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s01_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID));
  design_1_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

module s02_couplers_imp_1WKDD4J
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s02_couplers_AWADDR;
  wire [1:0]auto_cc_to_s02_couplers_AWBURST;
  wire [3:0]auto_cc_to_s02_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s02_couplers_AWLEN;
  wire [0:0]auto_cc_to_s02_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s02_couplers_AWPROT;
  wire [3:0]auto_cc_to_s02_couplers_AWQOS;
  wire auto_cc_to_s02_couplers_AWREADY;
  wire [2:0]auto_cc_to_s02_couplers_AWSIZE;
  wire auto_cc_to_s02_couplers_AWVALID;
  wire auto_cc_to_s02_couplers_BREADY;
  wire [1:0]auto_cc_to_s02_couplers_BRESP;
  wire auto_cc_to_s02_couplers_BVALID;
  wire [63:0]auto_cc_to_s02_couplers_WDATA;
  wire auto_cc_to_s02_couplers_WLAST;
  wire auto_cc_to_s02_couplers_WREADY;
  wire [7:0]auto_cc_to_s02_couplers_WSTRB;
  wire auto_cc_to_s02_couplers_WVALID;
  wire [31:0]auto_us_to_auto_cc_AWADDR;
  wire [1:0]auto_us_to_auto_cc_AWBURST;
  wire [3:0]auto_us_to_auto_cc_AWCACHE;
  wire [7:0]auto_us_to_auto_cc_AWLEN;
  wire [0:0]auto_us_to_auto_cc_AWLOCK;
  wire [2:0]auto_us_to_auto_cc_AWPROT;
  wire [3:0]auto_us_to_auto_cc_AWQOS;
  wire auto_us_to_auto_cc_AWREADY;
  wire [3:0]auto_us_to_auto_cc_AWREGION;
  wire [2:0]auto_us_to_auto_cc_AWSIZE;
  wire auto_us_to_auto_cc_AWVALID;
  wire auto_us_to_auto_cc_BREADY;
  wire [1:0]auto_us_to_auto_cc_BRESP;
  wire auto_us_to_auto_cc_BVALID;
  wire [63:0]auto_us_to_auto_cc_WDATA;
  wire auto_us_to_auto_cc_WLAST;
  wire auto_us_to_auto_cc_WREADY;
  wire [7:0]auto_us_to_auto_cc_WSTRB;
  wire auto_us_to_auto_cc_WVALID;
  wire [31:0]s02_couplers_to_auto_us_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_AWLEN;
  wire [2:0]s02_couplers_to_auto_us_AWPROT;
  wire s02_couplers_to_auto_us_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_AWSIZE;
  wire s02_couplers_to_auto_us_AWVALID;
  wire s02_couplers_to_auto_us_BREADY;
  wire [1:0]s02_couplers_to_auto_us_BRESP;
  wire s02_couplers_to_auto_us_BVALID;
  wire [31:0]s02_couplers_to_auto_us_WDATA;
  wire s02_couplers_to_auto_us_WLAST;
  wire s02_couplers_to_auto_us_WREADY;
  wire [3:0]s02_couplers_to_auto_us_WSTRB;
  wire s02_couplers_to_auto_us_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s02_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s02_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_WREADY;
  assign auto_cc_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  design_1_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_cc_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s02_couplers_BVALID),
        .m_axi_wdata(auto_cc_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s02_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .s_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .s_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .s_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .s_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .s_axi_awready(auto_us_to_auto_cc_AWREADY),
        .s_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .s_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .s_axi_bready(auto_us_to_auto_cc_BREADY),
        .s_axi_bresp(auto_us_to_auto_cc_BRESP),
        .s_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .s_axi_wdata(auto_us_to_auto_cc_WDATA),
        .s_axi_wlast(auto_us_to_auto_cc_WLAST),
        .s_axi_wready(auto_us_to_auto_cc_WREADY),
        .s_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_cc_WVALID));
  design_1_auto_us_2 auto_us
       (.m_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .m_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .m_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .m_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .m_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .m_axi_awready(auto_us_to_auto_cc_AWREADY),
        .m_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .m_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .m_axi_bready(auto_us_to_auto_cc_BREADY),
        .m_axi_bresp(auto_us_to_auto_cc_BRESP),
        .m_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .m_axi_wdata(auto_us_to_auto_cc_WDATA),
        .m_axi_wlast(auto_us_to_auto_cc_WLAST),
        .m_axi_wready(auto_us_to_auto_cc_WREADY),
        .m_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_cc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s02_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s02_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s02_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_WVALID));
endmodule
