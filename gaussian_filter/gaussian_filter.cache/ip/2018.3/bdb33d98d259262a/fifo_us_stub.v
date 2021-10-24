// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 09:15:01 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_us_stub.v
// Design      : fifo_us
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, din, wr_en, rd_en, prog_full_thresh, dout, 
  full, empty, prog_full)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[7:0],wr_en,rd_en,prog_full_thresh[9:0],dout[7:0],full,empty,prog_full" */;
  input clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_full_thresh;
  output [7:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
