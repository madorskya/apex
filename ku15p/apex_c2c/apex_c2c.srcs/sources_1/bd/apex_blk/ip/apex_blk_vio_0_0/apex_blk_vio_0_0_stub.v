// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Sep 25 17:30:29 2020
// Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /mnt/slc6_disk/madorsky/projects/vivado/apex/ku15p/apex_c2c/apex_c2c.srcs/sources_1/bd/apex_blk/ip/apex_blk_vio_0_0/apex_blk_vio_0_0_stub.v
// Design      : apex_blk_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku15p-ffva1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.1" *)
module apex_blk_vio_0_0(clk, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[3:0],probe_out1[0:0]" */;
  input clk;
  output [3:0]probe_out0;
  output [0:0]probe_out1;
endmodule