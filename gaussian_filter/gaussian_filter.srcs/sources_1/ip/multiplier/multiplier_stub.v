// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:40:04 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/multiplier/multiplier_stub.v
// Design      : multiplier
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module multiplier(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[3:0],B[7:0],P[11:0]" */;
  input CLK;
  input [3:0]A;
  input [7:0]B;
  output [11:0]P;
endmodule
