// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 09:15:02 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/fifo_us/fifo_us_sim_netlist.v
// Design      : fifo_us
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_us,fifo_generator_v13_2_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module fifo_us
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    prog_full_thresh,
    dout,
    full,
    empty,
    prog_full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  input [9:0]prog_full_thresh;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "1" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "3" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "3" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  fifo_us_fifo_generator_v13_2_3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_us_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_us_compare
   (comp0,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_full_i_reg);
  output comp0;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_full_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_full_i_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_full_i_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_us_compare_63
   (comp1,
    ram_full_comb,
    v1_reg,
    ram_full_i_reg,
    ram_full_i_reg_0,
    comp0,
    ram_full_i_reg_1,
    out);
  output comp1;
  output ram_full_comb;
  input [4:0]v1_reg;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input comp0;
  input ram_full_i_reg_1;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT6 #(
    .INIT(64'h08080FFF08080808)) 
    ram_full_fb_i_i_1
       (.I0(comp1),
        .I1(ram_full_i_reg),
        .I2(ram_full_i_reg_0),
        .I3(comp0),
        .I4(ram_full_i_reg_1),
        .I5(out),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_us_compare_64
   (p_2_out,
    v1_reg_0,
    \gaf.gaf1.ram_afull_fb_reg ,
    comp1,
    \gaf.gaf1.ram_afull_fb_reg_0 ,
    \gaf.gaf1.ram_afull_fb_reg_1 ,
    out);
  output p_2_out;
  input [4:0]v1_reg_0;
  input \gaf.gaf1.ram_afull_fb_reg ;
  input comp1;
  input \gaf.gaf1.ram_afull_fb_reg_0 ;
  input \gaf.gaf1.ram_afull_fb_reg_1 ;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire \gaf.gaf1.ram_afull_fb_reg ;
  wire \gaf.gaf1.ram_afull_fb_reg_0 ;
  wire \gaf.gaf1.ram_afull_fb_reg_1 ;
  wire out;
  wire p_0_in;
  wire p_2_out;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0088CFFF00880088)) 
    \gaf.gaf1.ram_afull_fb_i_1 
       (.I0(p_0_in),
        .I1(\gaf.gaf1.ram_afull_fb_reg ),
        .I2(comp1),
        .I3(\gaf.gaf1.ram_afull_fb_reg_0 ),
        .I4(\gaf.gaf1.ram_afull_fb_reg_1 ),
        .I5(out),
        .O(p_2_out));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_us_compare_65
   (comp0,
    v1_reg,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg);
  output comp0;
  input [0:0]v1_reg;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_empty_i_reg;
  wire [0:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,v1_reg}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_us_compare_66
   (ram_empty_comb,
    \gmux.gm[1].gms.ms_0 ,
    v1_reg,
    rd_en,
    comp0,
    ram_empty_i_reg,
    out);
  output ram_empty_comb;
  input \gmux.gm[1].gms.ms_0 ;
  input [3:0]v1_reg;
  input rd_en;
  input comp0;
  input ram_empty_i_reg;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire \gmux.gm[1].gms.ms_0 ;
  wire out;
  wire ram_empty_comb;
  wire ram_empty_i_reg;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({v1_reg[2:0],\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[3]}));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    ram_empty_fb_i_i_1
       (.I0(rd_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_empty_i_reg),
        .I4(out),
        .O(ram_empty_comb));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_us_fifo_generator_ramfifo
   (full,
    empty,
    wr_rst_busy,
    dout,
    prog_full,
    rd_en,
    prog_full_thresh,
    rst,
    clk,
    din,
    wr_en);
  output full;
  output empty;
  output wr_rst_busy;
  output [7:0]dout;
  output prog_full;
  input rd_en;
  input [9:0]prog_full_thresh;
  input rst;
  input clk;
  input [7:0]din;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_16 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_17 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_18 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_19 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_20 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_21 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_22 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_23 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_24 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_25 ;
  wire \gntv_or_sync_fifo.gl1.lsshft_n_4 ;
  wire p_10_out;
  wire p_11_out;
  wire [3:0]p_12_out;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire rd_en;
  wire rst;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_3;
  wire [5:0]sel0;
  wire wr_en;
  wire wr_rst_busy;

  fifo_us_logic_sshft \gntv_or_sync_fifo.gl1.lsshft 
       (.Q({sel0,p_12_out}),
        .clk(clk),
        .\count_reg[0]_rep (\gntv_or_sync_fifo.gl1.lsshft_n_4 ),
        .\count_reg[0]_rep__0 (\gntv_or_sync_fifo.gl1.lsshft_n_23 ),
        .\count_reg[0]_rep__1 (\gntv_or_sync_fifo.gl1.lsshft_n_24 ),
        .\count_reg[0]_rep__2 (\gntv_or_sync_fifo.gl1.lsshft_n_25 ),
        .\count_reg[3]_rep (\gntv_or_sync_fifo.gl1.lsshft_n_16 ),
        .\count_reg[3]_rep__0 (\gntv_or_sync_fifo.gl1.lsshft_n_17 ),
        .\count_reg[3]_rep__1 (\gntv_or_sync_fifo.gl1.lsshft_n_18 ),
        .\count_reg[3]_rep__2 (\gntv_or_sync_fifo.gl1.lsshft_n_19 ),
        .\count_reg[3]_rep__3 (\gntv_or_sync_fifo.gl1.lsshft_n_20 ),
        .\count_reg[3]_rep__4 (\gntv_or_sync_fifo.gl1.lsshft_n_21 ),
        .\count_reg[3]_rep__5 (\gntv_or_sync_fifo.gl1.lsshft_n_22 ),
        .empty(empty),
        .full(full),
        .\gaf.gaf1.ram_afull_fb_reg (rst_full_gen_i),
        .out(rst_full_ff_i),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .ram_empty_fb_i_reg(rstblk_n_3),
        .rd_en(rd_en),
        .wr_en(wr_en));
  fifo_us_memory \gntv_or_sync_fifo.mem 
       (.AR(rstblk_n_3),
        .E(p_11_out),
        .Q({sel0,p_12_out}),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gram.gsms[0].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_4 ),
        .\gram.gsms[0].gv4.srl16_0 (\gntv_or_sync_fifo.gl1.lsshft_n_22 ),
        .\gram.gsms[1].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_21 ),
        .\gram.gsms[2].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_23 ),
        .\gram.gsms[2].gv4.srl16_0 (\gntv_or_sync_fifo.gl1.lsshft_n_20 ),
        .\gram.gsms[3].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_19 ),
        .\gram.gsms[4].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_24 ),
        .\gram.gsms[4].gv4.srl16_0 (\gntv_or_sync_fifo.gl1.lsshft_n_18 ),
        .\gram.gsms[5].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_17 ),
        .\gram.gsms[6].gv4.srl16 (\gntv_or_sync_fifo.gl1.lsshft_n_25 ),
        .\gram.gsms[6].gv4.srl16_0 (\gntv_or_sync_fifo.gl1.lsshft_n_16 ),
        .p_10_out(p_10_out));
  fifo_us_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_3),
        .clk(clk),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .out(rst_full_ff_i),
        .rst(rst),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_us_fifo_generator_top
   (full,
    empty,
    wr_rst_busy,
    dout,
    prog_full,
    rd_en,
    prog_full_thresh,
    rst,
    clk,
    din,
    wr_en);
  output full;
  output empty;
  output wr_rst_busy;
  output [7:0]dout;
  output prog_full;
  input rd_en;
  input [9:0]prog_full_thresh;
  input rst;
  input clk;
  input [7:0]din;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire wr_rst_busy;

  fifo_us_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "3" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "3" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_3" *) 
module fifo_us_fifo_generator_v13_2_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = wr_rst_busy;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  fifo_us_fifo_generator_v13_2_3_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_synth" *) 
module fifo_us_fifo_generator_v13_2_3_synth
   (full,
    empty,
    wr_rst_busy,
    dout,
    prog_full,
    rd_en,
    prog_full_thresh,
    rst,
    clk,
    din,
    wr_en);
  output full;
  output empty;
  output wr_rst_busy;
  output [7:0]dout;
  output prog_full;
  input rd_en;
  input [9:0]prog_full_thresh;
  input rst;
  input clk;
  input [7:0]din;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire wr_rst_busy;

  fifo_us_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "logic_sshft" *) 
module fifo_us_logic_sshft
   (full,
    empty,
    p_10_out,
    p_11_out,
    \count_reg[0]_rep ,
    Q,
    prog_full,
    \count_reg[3]_rep ,
    \count_reg[3]_rep__0 ,
    \count_reg[3]_rep__1 ,
    \count_reg[3]_rep__2 ,
    \count_reg[3]_rep__3 ,
    \count_reg[3]_rep__4 ,
    \count_reg[3]_rep__5 ,
    \count_reg[0]_rep__0 ,
    \count_reg[0]_rep__1 ,
    \count_reg[0]_rep__2 ,
    clk,
    out,
    ram_empty_fb_i_reg,
    rd_en,
    prog_full_thresh,
    \gaf.gaf1.ram_afull_fb_reg ,
    wr_en);
  output full;
  output empty;
  output p_10_out;
  output p_11_out;
  output \count_reg[0]_rep ;
  output [9:0]Q;
  output prog_full;
  output \count_reg[3]_rep ;
  output \count_reg[3]_rep__0 ;
  output \count_reg[3]_rep__1 ;
  output \count_reg[3]_rep__2 ;
  output \count_reg[3]_rep__3 ;
  output \count_reg[3]_rep__4 ;
  output \count_reg[3]_rep__5 ;
  output \count_reg[0]_rep__0 ;
  output \count_reg[0]_rep__1 ;
  output \count_reg[0]_rep__2 ;
  input clk;
  input out;
  input ram_empty_fb_i_reg;
  input rd_en;
  input [9:0]prog_full_thresh;
  input \gaf.gaf1.ram_afull_fb_reg ;
  input wr_en;

  wire [9:0]Q;
  wire c0_n_0;
  wire c0_n_1;
  wire c0_n_12;
  wire c0_n_13;
  wire c0_n_14;
  wire c0_n_15;
  wire c0_n_16;
  wire c0_n_17;
  wire c0_n_2;
  wire c0_n_28;
  wire c0_n_3;
  wire c0_n_34;
  wire c0_n_35;
  wire c0_n_36;
  wire c0_n_37;
  wire c0_n_38;
  wire c0_n_39;
  wire c0_n_40;
  wire c0_n_41;
  wire c0_n_42;
  wire c1_n_0;
  wire c1_n_1;
  wire c1_n_12;
  wire c1_n_13;
  wire c1_n_14;
  wire c1_n_15;
  wire c1_n_16;
  wire c1_n_17;
  wire c1_n_2;
  wire c1_n_3;
  wire c2_n_0;
  wire c2_n_1;
  wire c2_n_12;
  wire c2_n_13;
  wire c2_n_14;
  wire c2_n_15;
  wire c2_n_16;
  wire c2_n_17;
  wire c2_n_2;
  wire c2_n_3;
  wire clk;
  wire count0__24_carry__0_n_0;
  wire count0__24_carry__0_n_1;
  wire count0__24_carry__0_n_2;
  wire count0__24_carry__0_n_3;
  wire count0__24_carry__0_n_4;
  wire count0__24_carry__0_n_5;
  wire count0__24_carry__0_n_6;
  wire count0__24_carry__0_n_7;
  wire count0__24_carry__1_n_7;
  wire count0__24_carry_n_0;
  wire count0__24_carry_n_1;
  wire count0__24_carry_n_2;
  wire count0__24_carry_n_3;
  wire count0__24_carry_n_4;
  wire count0__24_carry_n_5;
  wire count0__24_carry_n_6;
  wire count0__24_carry_n_7;
  wire count0__49_carry__0_n_0;
  wire count0__49_carry__0_n_1;
  wire count0__49_carry__0_n_2;
  wire count0__49_carry__0_n_3;
  wire count0__49_carry__0_n_4;
  wire count0__49_carry__0_n_5;
  wire count0__49_carry__0_n_6;
  wire count0__49_carry__0_n_7;
  wire count0__49_carry__1_n_7;
  wire count0__49_carry_n_0;
  wire count0__49_carry_n_1;
  wire count0__49_carry_n_2;
  wire count0__49_carry_n_3;
  wire count0__49_carry_n_4;
  wire count0__49_carry_n_5;
  wire count0__49_carry_n_6;
  wire count0__49_carry_n_7;
  wire count0__74_carry__0_n_0;
  wire count0__74_carry__0_n_1;
  wire count0__74_carry__0_n_2;
  wire count0__74_carry__0_n_3;
  wire count0__74_carry__0_n_4;
  wire count0__74_carry__0_n_5;
  wire count0__74_carry__0_n_6;
  wire count0__74_carry__0_n_7;
  wire count0__74_carry__1_n_7;
  wire count0__74_carry_n_0;
  wire count0__74_carry_n_1;
  wire count0__74_carry_n_2;
  wire count0__74_carry_n_3;
  wire count0__74_carry_n_4;
  wire count0__74_carry_n_5;
  wire count0__74_carry_n_6;
  wire count0__74_carry_n_7;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count_reg[0]_rep ;
  wire \count_reg[0]_rep__0 ;
  wire \count_reg[0]_rep__1 ;
  wire \count_reg[0]_rep__2 ;
  wire \count_reg[3]_rep ;
  wire \count_reg[3]_rep__0 ;
  wire \count_reg[3]_rep__1 ;
  wire \count_reg[3]_rep__2 ;
  wire \count_reg[3]_rep__3 ;
  wire \count_reg[3]_rep__4 ;
  wire \count_reg[3]_rep__5 ;
  wire crd_n_0;
  wire crd_n_1;
  wire crd_n_14;
  wire crd_n_15;
  wire crd_n_16;
  wire crd_n_17;
  wire crd_n_18;
  wire crd_n_19;
  wire crd_n_2;
  wire crd_n_3;
  wire empty;
  wire full;
  wire [4:0]\gaf.c2/v1_reg ;
  wire \gaf.gaf1.ram_afull_fb_reg ;
  wire out;
  wire p_10_out;
  wire p_11_out;
  wire p_7_out__0;
  wire [7:0]pntr;
  wire [9:0]pntr_d1;
  wire [7:0]pntr_plus1;
  wire [7:0]pntr_plus2;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire ram_afull_fb;
  wire ram_empty_fb;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire sel;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire [3:0]NLW_count0__24_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_count0__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0__49_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_count0__49_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0__74_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_count0__74_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_count0_carry__1_O_UNCONNECTED;

  fifo_us_updn_cntr__parameterized0 c0
       (.D(pntr_d1),
        .DI(c0_n_28),
        .Q(pntr),
        .S({c0_n_0,c0_n_1,c0_n_2,c0_n_3}),
        .clk(clk),
        .\count_reg[0]_0 (c0_n_17),
        .\count_reg[0]_1 (c0_n_34),
        .\count_reg[2]_0 (c0_n_35),
        .\count_reg[2]_1 (c0_n_39),
        .\count_reg[4]_0 (c0_n_36),
        .\count_reg[4]_1 (c0_n_40),
        .\count_reg[6]_0 (c0_n_37),
        .\count_reg[6]_1 (c0_n_41),
        .\count_reg[7]_0 ({c0_n_12,c0_n_13,c0_n_14,c0_n_15}),
        .\count_reg[8]_0 (c0_n_16),
        .\count_reg[8]_1 (c0_n_38),
        .\count_reg[8]_2 (c0_n_42),
        .\count_reg[9]_0 ({count0__24_carry__1_n_7,count0__24_carry__0_n_4,count0__24_carry__0_n_5,count0__24_carry__0_n_6,count0__24_carry__0_n_7,count0__24_carry_n_4,count0__24_carry_n_5,count0__24_carry_n_6,count0__24_carry_n_7}),
        .\count_reg[9]_1 (ram_empty_fb_i_reg),
        .\greg.pntr_d1_reg[1] (p_10_out),
        .\greg.pntr_d1_reg[3] (p_11_out),
        .out(ram_empty_fb),
        .p_7_out__0(p_7_out__0),
        .rd_en(rd_en),
        .sel(sel),
        .v1_reg(v1_reg));
  fifo_us_updn_cntr__parameterized1 c1
       (.D({count0__49_carry__1_n_7,count0__49_carry__0_n_4,count0__49_carry__0_n_5,count0__49_carry__0_n_6,count0__49_carry__0_n_7,count0__49_carry_n_4,count0__49_carry_n_5,count0__49_carry_n_6,count0__49_carry_n_7}),
        .DI(c1_n_17),
        .Q(pntr_plus1),
        .S({c1_n_0,c1_n_1,c1_n_2,c1_n_3}),
        .clk(clk),
        .\count_reg[1]_0 (ram_empty_fb_i_reg),
        .\count_reg[7]_0 ({c1_n_12,c1_n_13,c1_n_14,c1_n_15}),
        .\count_reg[8]_0 (c1_n_16),
        .out(ram_empty_fb),
        .rd_en(rd_en),
        .sel(sel),
        .v1_reg(v1_reg_0));
  fifo_us_updn_cntr__parameterized2 c2
       (.D({count0__74_carry__1_n_7,count0__74_carry__0_n_4,count0__74_carry__0_n_5,count0__74_carry__0_n_6,count0__74_carry__0_n_7,count0__74_carry_n_4,count0__74_carry_n_5,count0__74_carry_n_6,count0__74_carry_n_7}),
        .DI(c2_n_17),
        .Q(pntr_plus2),
        .S({c2_n_0,c2_n_1,c2_n_2,c2_n_3}),
        .clk(clk),
        .\count_reg[1]_0 (ram_empty_fb_i_reg),
        .\count_reg[7]_0 ({c2_n_12,c2_n_13,c2_n_14,c2_n_15}),
        .\count_reg[8]_0 (c2_n_16),
        .out(ram_empty_fb),
        .rd_en(rd_en),
        .sel(sel),
        .v1_reg(\gaf.c2/v1_reg ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__24_carry
       (.CI(1'b0),
        .CO({count0__24_carry_n_0,count0__24_carry_n_1,count0__24_carry_n_2,count0__24_carry_n_3}),
        .CYINIT(pntr[0]),
        .DI({pntr[3:1],c0_n_28}),
        .O({count0__24_carry_n_4,count0__24_carry_n_5,count0__24_carry_n_6,count0__24_carry_n_7}),
        .S({c0_n_0,c0_n_1,c0_n_2,c0_n_3}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__24_carry__0
       (.CI(count0__24_carry_n_0),
        .CO({count0__24_carry__0_n_0,count0__24_carry__0_n_1,count0__24_carry__0_n_2,count0__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pntr[7:4]),
        .O({count0__24_carry__0_n_4,count0__24_carry__0_n_5,count0__24_carry__0_n_6,count0__24_carry__0_n_7}),
        .S({c0_n_12,c0_n_13,c0_n_14,c0_n_15}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__24_carry__1
       (.CI(count0__24_carry__0_n_0),
        .CO(NLW_count0__24_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0__24_carry__1_O_UNCONNECTED[3:1],count0__24_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,c0_n_16}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__49_carry
       (.CI(1'b0),
        .CO({count0__49_carry_n_0,count0__49_carry_n_1,count0__49_carry_n_2,count0__49_carry_n_3}),
        .CYINIT(pntr_plus1[0]),
        .DI({pntr_plus1[3:1],c1_n_17}),
        .O({count0__49_carry_n_4,count0__49_carry_n_5,count0__49_carry_n_6,count0__49_carry_n_7}),
        .S({c1_n_0,c1_n_1,c1_n_2,c1_n_3}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__49_carry__0
       (.CI(count0__49_carry_n_0),
        .CO({count0__49_carry__0_n_0,count0__49_carry__0_n_1,count0__49_carry__0_n_2,count0__49_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pntr_plus1[7:4]),
        .O({count0__49_carry__0_n_4,count0__49_carry__0_n_5,count0__49_carry__0_n_6,count0__49_carry__0_n_7}),
        .S({c1_n_12,c1_n_13,c1_n_14,c1_n_15}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__49_carry__1
       (.CI(count0__49_carry__0_n_0),
        .CO(NLW_count0__49_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0__49_carry__1_O_UNCONNECTED[3:1],count0__49_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,c1_n_16}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__74_carry
       (.CI(1'b0),
        .CO({count0__74_carry_n_0,count0__74_carry_n_1,count0__74_carry_n_2,count0__74_carry_n_3}),
        .CYINIT(pntr_plus2[0]),
        .DI({pntr_plus2[3:1],c2_n_17}),
        .O({count0__74_carry_n_4,count0__74_carry_n_5,count0__74_carry_n_6,count0__74_carry_n_7}),
        .S({c2_n_0,c2_n_1,c2_n_2,c2_n_3}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__74_carry__0
       (.CI(count0__74_carry_n_0),
        .CO({count0__74_carry__0_n_0,count0__74_carry__0_n_1,count0__74_carry__0_n_2,count0__74_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pntr_plus2[7:4]),
        .O({count0__74_carry__0_n_4,count0__74_carry__0_n_5,count0__74_carry__0_n_6,count0__74_carry__0_n_7}),
        .S({c2_n_12,c2_n_13,c2_n_14,c2_n_15}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0__74_carry__1
       (.CI(count0__74_carry__0_n_0),
        .CO(NLW_count0__74_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0__74_carry__1_O_UNCONNECTED[3:1],count0__74_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,c2_n_16}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg[0]_rep ),
        .DI({Q[3:1],crd_n_19}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({crd_n_0,crd_n_1,crd_n_2,crd_n_3}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({crd_n_14,crd_n_15,crd_n_16,crd_n_17}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO(NLW_count0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__1_O_UNCONNECTED[3:1],count0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,crd_n_18}));
  fifo_us_updn_cntr crd
       (.D({count0_carry__1_n_7,count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7,count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .DI(crd_n_19),
        .Q(Q),
        .S({crd_n_0,crd_n_1,crd_n_2,crd_n_3}),
        .clk(clk),
        .\count_reg[0]_rep_0 (\count_reg[0]_rep ),
        .\count_reg[0]_rep__0_0 (\count_reg[0]_rep__0 ),
        .\count_reg[0]_rep__1_0 (\count_reg[0]_rep__1 ),
        .\count_reg[0]_rep__2_0 (\count_reg[0]_rep__2 ),
        .\count_reg[0]_rep__2_1 (ram_empty_fb_i_reg),
        .\count_reg[3]_rep_0 (\count_reg[3]_rep ),
        .\count_reg[3]_rep__0_0 (\count_reg[3]_rep__0 ),
        .\count_reg[3]_rep__1_0 (\count_reg[3]_rep__1 ),
        .\count_reg[3]_rep__2_0 (\count_reg[3]_rep__2 ),
        .\count_reg[3]_rep__3_0 (\count_reg[3]_rep__3 ),
        .\count_reg[3]_rep__4_0 (\count_reg[3]_rep__4 ),
        .\count_reg[3]_rep__5_0 (\count_reg[3]_rep__5 ),
        .\count_reg[7]_0 ({crd_n_14,crd_n_15,crd_n_16,crd_n_17}),
        .\count_reg[8]_0 (crd_n_18),
        .out(ram_empty_fb),
        .rd_en(rd_en),
        .sel(sel));
  fifo_us_wr_pf_sshft \gpf.wrpf 
       (.D(pntr_d1),
        .clk(clk),
        .\gpf3.prog_full_i_reg_0 (\gaf.gaf1.ram_afull_fb_reg ),
        .\gpf3.prog_full_i_reg_1 (ram_afull_fb),
        .\greg.ram_rd_en_i_reg_0 (ram_empty_fb_i_reg),
        .\greg.ram_rd_en_i_reg_1 (p_11_out),
        .\greg.ram_wr_en_i_reg_0 (p_10_out),
        .out(out),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh));
  fifo_us_rd_status_flags_sshft rsts
       (.clk(clk),
        .empty(empty),
        .\gmux.gm[1].gms.ms (c0_n_17),
        .\gmux.gm[2].gms.ms (c0_n_39),
        .\gmux.gm[3].gms.ms (c0_n_40),
        .\gmux.gm[4].gms.ms (c0_n_41),
        .out(ram_empty_fb),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .ram_empty_i_reg_0(c0_n_42),
        .ram_empty_i_reg_1(p_10_out),
        .rd_en(rd_en),
        .rd_en_0(p_11_out),
        .v1_reg(v1_reg));
  fifo_us_wr_status_flags_sshft wsts
       (.clk(clk),
        .\count_reg[9] (ram_empty_fb),
        .full(full),
        .\gaf.gaf1.ram_afull_fb_reg_0 (out),
        .\gaf.gaf1.ram_afull_fb_reg_1 (p_11_out),
        .\gaf.gaf1.ram_afull_fb_reg_2 (\gaf.gaf1.ram_afull_fb_reg ),
        .\gmux.gm[1].gms.ms (c0_n_34),
        .\gmux.gm[2].gms.ms (c0_n_35),
        .\gmux.gm[3].gms.ms (c0_n_36),
        .\gmux.gm[4].gms.ms (c0_n_37),
        .out(ram_afull_fb),
        .p_7_out__0(p_7_out__0),
        .ram_full_i_reg_0(c0_n_38),
        .rd_en(rd_en),
        .sel(sel),
        .v1_reg(v1_reg_0),
        .v1_reg_0(\gaf.c2/v1_reg ),
        .wr_en(wr_en),
        .wr_en_0(p_10_out));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_us_memory
   (dout,
    Q,
    p_10_out,
    din,
    \gram.gsms[0].gv4.srl16 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[2].gv4.srl16 ,
    \gram.gsms[1].gv4.srl16 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16 ,
    \gram.gsms[3].gv4.srl16 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16 ,
    \gram.gsms[5].gv4.srl16 ,
    \gram.gsms[6].gv4.srl16_0 ,
    E,
    AR);
  output [7:0]dout;
  input [9:0]Q;
  input p_10_out;
  input [7:0]din;
  input \gram.gsms[0].gv4.srl16 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[2].gv4.srl16 ;
  input \gram.gsms[1].gv4.srl16 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16 ;
  input \gram.gsms[3].gv4.srl16 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16 ;
  input \gram.gsms[5].gv4.srl16 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire \gram.gsms[0].gv4.srl16 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16 ;
  wire \gram.gsms[2].gv4.srl16 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16 ;
  wire \gram.gsms[4].gv4.srl16 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16 ;
  wire \gram.gsms[6].gv4.srl16 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire p_10_out;

  fifo_us_shft_ram \gsm.sm 
       (.AR(AR),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gram.gsms[0].gv4.srl16 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_sshft" *) 
module fifo_us_rd_status_flags_sshft
   (out,
    empty,
    rd_en_0,
    v1_reg,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    \gmux.gm[1].gms.ms ,
    clk,
    ram_empty_fb_i_reg_0,
    rd_en,
    ram_empty_i_reg_1);
  output out;
  output empty;
  output rd_en_0;
  input [4:0]v1_reg;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input \gmux.gm[1].gms.ms ;
  input clk;
  input ram_empty_fb_i_reg_0;
  input rd_en;
  input ram_empty_i_reg_1;

  wire clk;
  wire comp0;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  wire ram_empty_comb;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire rd_en;
  wire rd_en_0;
  wire [4:0]v1_reg;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  fifo_us_compare_65 c0
       (.comp0(comp0),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0),
        .v1_reg(v1_reg[0]));
  fifo_us_compare_66 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .out(ram_empty_fb_i),
        .ram_empty_comb(ram_empty_comb),
        .ram_empty_i_reg(ram_empty_i_reg_1),
        .rd_en(rd_en),
        .v1_reg(v1_reg[4:1]));
  LUT2 #(
    .INIT(4'h2)) 
    \dout_i[7]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(rd_en_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_comb),
        .PRE(ram_empty_fb_i_reg_0),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_comb),
        .PRE(ram_empty_fb_i_reg_0),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module fifo_us_reset_blk_ramfifo
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    wr_rst_busy,
    AR,
    rst,
    clk);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output wr_rst_busy;
  output [0:0]AR;
  input rst;
  input clk;

  wire [0:0]AR;
  wire clk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  wire [3:1]p_0_in;
  wire p_2_out;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_rst_busy;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  LUT3 #(
    .INIT(8'hFE)) 
    \dout_i[7]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(rst_wr_reg2),
        .O(AR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_busy),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(p_2_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_out),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_us_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(clk),
        .src_arst(rst));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rd_rst_busy_INST_0
       (.I0(p_0_in[3]),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(rst_wr_reg2),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "shft_ram" *) 
module fifo_us_shft_ram
   (dout,
    Q,
    p_10_out,
    din,
    \gram.gsms[0].gv4.srl16 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[2].gv4.srl16 ,
    \gram.gsms[1].gv4.srl16 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16 ,
    \gram.gsms[3].gv4.srl16 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16 ,
    \gram.gsms[5].gv4.srl16 ,
    \gram.gsms[6].gv4.srl16_0 ,
    E,
    AR);
  output [7:0]dout;
  input [9:0]Q;
  input p_10_out;
  input [7:0]din;
  input \gram.gsms[0].gv4.srl16 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[2].gv4.srl16 ;
  input \gram.gsms[1].gv4.srl16 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16 ;
  input \gram.gsms[3].gv4.srl16 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16 ;
  input \gram.gsms[5].gv4.srl16 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]\dout_2d[0]_0 ;
  wire [7:0]\dout_2d[10]_10 ;
  wire [7:0]\dout_2d[12]_12 ;
  wire [7:0]\dout_2d[13]_13 ;
  wire [7:0]\dout_2d[14]_14 ;
  wire [7:0]\dout_2d[16]_16 ;
  wire [7:0]\dout_2d[17]_17 ;
  wire [7:0]\dout_2d[18]_18 ;
  wire [7:0]\dout_2d[1]_1 ;
  wire [7:0]\dout_2d[20]_20 ;
  wire [7:0]\dout_2d[21]_21 ;
  wire [7:0]\dout_2d[22]_22 ;
  wire [7:0]\dout_2d[24]_24 ;
  wire [7:0]\dout_2d[25]_25 ;
  wire [7:0]\dout_2d[26]_26 ;
  wire [7:0]\dout_2d[28]_28 ;
  wire [7:0]\dout_2d[29]_29 ;
  wire [7:0]\dout_2d[2]_2 ;
  wire [7:0]\dout_2d[30]_30 ;
  wire [7:0]\dout_2d[32]_32 ;
  wire [7:0]\dout_2d[33]_33 ;
  wire [7:0]\dout_2d[34]_34 ;
  wire [7:0]\dout_2d[36]_36 ;
  wire [7:0]\dout_2d[37]_37 ;
  wire [7:0]\dout_2d[38]_38 ;
  wire [7:0]\dout_2d[40]_40 ;
  wire [7:0]\dout_2d[41]_41 ;
  wire [7:0]\dout_2d[42]_42 ;
  wire [7:0]\dout_2d[44]_44 ;
  wire [7:0]\dout_2d[45]_45 ;
  wire [7:0]\dout_2d[46]_46 ;
  wire [7:0]\dout_2d[48]_48 ;
  wire [7:0]\dout_2d[49]_49 ;
  wire [7:0]\dout_2d[4]_4 ;
  wire [7:0]\dout_2d[50]_50 ;
  wire [7:0]\dout_2d[52]_52 ;
  wire [7:0]\dout_2d[53]_53 ;
  wire [7:0]\dout_2d[54]_54 ;
  wire [7:0]\dout_2d[56]_56 ;
  wire [7:0]\dout_2d[57]_57 ;
  wire [7:0]\dout_2d[58]_58 ;
  wire [7:0]\dout_2d[5]_5 ;
  wire [7:0]\dout_2d[60]_60 ;
  wire [7:0]\dout_2d[61]_61 ;
  wire [7:0]\dout_2d[62]_62 ;
  wire [7:0]\dout_2d[63]__0 ;
  wire [7:0]\dout_2d[6]_6 ;
  wire [7:0]\dout_2d[8]_8 ;
  wire [7:0]\dout_2d[9]_9 ;
  wire \gram.gsms[0].gv4.srl16 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16 ;
  wire \gram.gsms[2].gv4.srl16 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16 ;
  wire \gram.gsms[4].gv4.srl16 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16 ;
  wire \gram.gsms[6].gv4.srl16 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gsms.gsms[11].sms_n_0 ;
  wire \gsms.gsms[11].sms_n_1 ;
  wire \gsms.gsms[11].sms_n_2 ;
  wire \gsms.gsms[11].sms_n_3 ;
  wire \gsms.gsms[11].sms_n_4 ;
  wire \gsms.gsms[11].sms_n_5 ;
  wire \gsms.gsms[11].sms_n_6 ;
  wire \gsms.gsms[11].sms_n_7 ;
  wire \gsms.gsms[15].sms_n_0 ;
  wire \gsms.gsms[15].sms_n_1 ;
  wire \gsms.gsms[15].sms_n_2 ;
  wire \gsms.gsms[15].sms_n_3 ;
  wire \gsms.gsms[15].sms_n_4 ;
  wire \gsms.gsms[15].sms_n_5 ;
  wire \gsms.gsms[15].sms_n_6 ;
  wire \gsms.gsms[15].sms_n_7 ;
  wire \gsms.gsms[19].sms_n_0 ;
  wire \gsms.gsms[19].sms_n_1 ;
  wire \gsms.gsms[19].sms_n_2 ;
  wire \gsms.gsms[19].sms_n_3 ;
  wire \gsms.gsms[19].sms_n_4 ;
  wire \gsms.gsms[19].sms_n_5 ;
  wire \gsms.gsms[19].sms_n_6 ;
  wire \gsms.gsms[19].sms_n_7 ;
  wire \gsms.gsms[23].sms_n_0 ;
  wire \gsms.gsms[23].sms_n_1 ;
  wire \gsms.gsms[23].sms_n_2 ;
  wire \gsms.gsms[23].sms_n_3 ;
  wire \gsms.gsms[23].sms_n_4 ;
  wire \gsms.gsms[23].sms_n_5 ;
  wire \gsms.gsms[23].sms_n_6 ;
  wire \gsms.gsms[23].sms_n_7 ;
  wire \gsms.gsms[27].sms_n_0 ;
  wire \gsms.gsms[27].sms_n_1 ;
  wire \gsms.gsms[27].sms_n_2 ;
  wire \gsms.gsms[27].sms_n_3 ;
  wire \gsms.gsms[27].sms_n_4 ;
  wire \gsms.gsms[27].sms_n_5 ;
  wire \gsms.gsms[27].sms_n_6 ;
  wire \gsms.gsms[27].sms_n_7 ;
  wire \gsms.gsms[31].sms_n_0 ;
  wire \gsms.gsms[31].sms_n_1 ;
  wire \gsms.gsms[31].sms_n_2 ;
  wire \gsms.gsms[31].sms_n_3 ;
  wire \gsms.gsms[31].sms_n_4 ;
  wire \gsms.gsms[31].sms_n_5 ;
  wire \gsms.gsms[31].sms_n_6 ;
  wire \gsms.gsms[31].sms_n_7 ;
  wire \gsms.gsms[35].sms_n_0 ;
  wire \gsms.gsms[35].sms_n_1 ;
  wire \gsms.gsms[35].sms_n_2 ;
  wire \gsms.gsms[35].sms_n_3 ;
  wire \gsms.gsms[35].sms_n_4 ;
  wire \gsms.gsms[35].sms_n_5 ;
  wire \gsms.gsms[35].sms_n_6 ;
  wire \gsms.gsms[35].sms_n_7 ;
  wire \gsms.gsms[39].sms_n_0 ;
  wire \gsms.gsms[39].sms_n_1 ;
  wire \gsms.gsms[39].sms_n_2 ;
  wire \gsms.gsms[39].sms_n_3 ;
  wire \gsms.gsms[39].sms_n_4 ;
  wire \gsms.gsms[39].sms_n_5 ;
  wire \gsms.gsms[39].sms_n_6 ;
  wire \gsms.gsms[39].sms_n_7 ;
  wire \gsms.gsms[3].sms_n_0 ;
  wire \gsms.gsms[3].sms_n_1 ;
  wire \gsms.gsms[3].sms_n_2 ;
  wire \gsms.gsms[3].sms_n_3 ;
  wire \gsms.gsms[3].sms_n_4 ;
  wire \gsms.gsms[3].sms_n_5 ;
  wire \gsms.gsms[3].sms_n_6 ;
  wire \gsms.gsms[3].sms_n_7 ;
  wire \gsms.gsms[43].sms_n_0 ;
  wire \gsms.gsms[43].sms_n_1 ;
  wire \gsms.gsms[43].sms_n_2 ;
  wire \gsms.gsms[43].sms_n_3 ;
  wire \gsms.gsms[43].sms_n_4 ;
  wire \gsms.gsms[43].sms_n_5 ;
  wire \gsms.gsms[43].sms_n_6 ;
  wire \gsms.gsms[43].sms_n_7 ;
  wire \gsms.gsms[47].sms_n_0 ;
  wire \gsms.gsms[47].sms_n_1 ;
  wire \gsms.gsms[47].sms_n_2 ;
  wire \gsms.gsms[47].sms_n_3 ;
  wire \gsms.gsms[47].sms_n_4 ;
  wire \gsms.gsms[47].sms_n_5 ;
  wire \gsms.gsms[47].sms_n_6 ;
  wire \gsms.gsms[47].sms_n_7 ;
  wire \gsms.gsms[55].sms_n_0 ;
  wire \gsms.gsms[55].sms_n_1 ;
  wire \gsms.gsms[55].sms_n_2 ;
  wire \gsms.gsms[55].sms_n_3 ;
  wire \gsms.gsms[55].sms_n_4 ;
  wire \gsms.gsms[55].sms_n_5 ;
  wire \gsms.gsms[55].sms_n_6 ;
  wire \gsms.gsms[55].sms_n_7 ;
  wire \gsms.gsms[59].sms_n_0 ;
  wire \gsms.gsms[59].sms_n_1 ;
  wire \gsms.gsms[59].sms_n_2 ;
  wire \gsms.gsms[59].sms_n_3 ;
  wire \gsms.gsms[59].sms_n_4 ;
  wire \gsms.gsms[59].sms_n_5 ;
  wire \gsms.gsms[59].sms_n_6 ;
  wire \gsms.gsms[59].sms_n_7 ;
  wire \gsms.gsms[63].sms_n_0 ;
  wire \gsms.gsms[63].sms_n_1 ;
  wire \gsms.gsms[63].sms_n_2 ;
  wire \gsms.gsms[63].sms_n_3 ;
  wire \gsms.gsms[63].sms_n_4 ;
  wire \gsms.gsms[63].sms_n_5 ;
  wire \gsms.gsms[63].sms_n_6 ;
  wire \gsms.gsms[63].sms_n_7 ;
  wire \gsms.gsms[7].sms_n_0 ;
  wire \gsms.gsms[7].sms_n_1 ;
  wire \gsms.gsms[7].sms_n_2 ;
  wire \gsms.gsms[7].sms_n_3 ;
  wire \gsms.gsms[7].sms_n_4 ;
  wire \gsms.gsms[7].sms_n_5 ;
  wire \gsms.gsms[7].sms_n_6 ;
  wire \gsms.gsms[7].sms_n_7 ;
  wire [7:0]p_0_in;
  wire p_10_out;
  wire [7:0]shft_connect_104;
  wire [7:0]shft_connect_112;
  wire [7:0]shft_connect_120;
  wire [7:0]shft_connect_128;
  wire [7:0]shft_connect_136;
  wire [7:0]shft_connect_144;
  wire [7:0]shft_connect_152;
  wire [7:0]shft_connect_16;
  wire [7:0]shft_connect_160;
  wire [7:0]shft_connect_168;
  wire [7:0]shft_connect_176;
  wire [7:0]shft_connect_184;
  wire [7:0]shft_connect_192;
  wire [7:0]shft_connect_200;
  wire [7:0]shft_connect_208;
  wire [7:0]shft_connect_216;
  wire [7:0]shft_connect_224;
  wire [7:0]shft_connect_232;
  wire [7:0]shft_connect_24;
  wire [7:0]shft_connect_240;
  wire [7:0]shft_connect_248;
  wire [7:0]shft_connect_256;
  wire [7:0]shft_connect_264;
  wire [7:0]shft_connect_272;
  wire [7:0]shft_connect_280;
  wire [7:0]shft_connect_288;
  wire [7:0]shft_connect_296;
  wire [7:0]shft_connect_304;
  wire [7:0]shft_connect_312;
  wire [7:0]shft_connect_32;
  wire [7:0]shft_connect_320;
  wire [7:0]shft_connect_328;
  wire [7:0]shft_connect_336;
  wire [7:0]shft_connect_344;
  wire [7:0]shft_connect_352;
  wire [7:0]shft_connect_360;
  wire [7:0]shft_connect_368;
  wire [7:0]shft_connect_376;
  wire [7:0]shft_connect_384;
  wire [7:0]shft_connect_392;
  wire [7:0]shft_connect_40;
  wire [7:0]shft_connect_400;
  wire [7:0]shft_connect_408;
  wire [7:0]shft_connect_416;
  wire [7:0]shft_connect_424;
  wire [7:0]shft_connect_432;
  wire [7:0]shft_connect_440;
  wire [7:0]shft_connect_448;
  wire [7:0]shft_connect_456;
  wire [7:0]shft_connect_464;
  wire [7:0]shft_connect_472;
  wire [7:0]shft_connect_48;
  wire [7:0]shft_connect_480;
  wire [7:0]shft_connect_488;
  wire [7:0]shft_connect_496;
  wire [7:0]shft_connect_56;
  wire [7:0]shft_connect_64;
  wire [7:0]shft_connect_72;
  wire [7:0]shft_connect_8;
  wire [7:0]shft_connect_80;
  wire [7:0]shft_connect_88;
  wire [7:0]shft_connect_96;

  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [0]),
        .Q(dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [1]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [2]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [3]),
        .Q(dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [4]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [5]),
        .Q(dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [6]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\dout_2d[63]__0 [7]),
        .Q(dout[7]));
  fifo_us_shft_wrapper \gsms.gsms[10].sms 
       (.DOUT(\dout_2d[10]_10 ),
        .DOUT_END(shft_connect_80),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .\gram.gsms[7].gv4.srl16_0 (shft_connect_72),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_0 \gsms.gsms[11].sms 
       (.DIN(shft_connect_80),
        .DOUT(\dout_2d[10]_10 ),
        .DOUT_END(shft_connect_88),
        .Q(Q[6:0]),
        .clk(clk),
        .\count_reg[6] (\gsms.gsms[11].sms_n_0 ),
        .\count_reg[6]_0 (\gsms.gsms[11].sms_n_1 ),
        .\count_reg[6]_1 (\gsms.gsms[11].sms_n_2 ),
        .\count_reg[6]_2 (\gsms.gsms[11].sms_n_3 ),
        .\count_reg[6]_3 (\gsms.gsms[11].sms_n_4 ),
        .\count_reg[6]_4 (\gsms.gsms[11].sms_n_5 ),
        .\count_reg[6]_5 (\gsms.gsms[11].sms_n_6 ),
        .\count_reg[6]_6 (\gsms.gsms[11].sms_n_7 ),
        .\dout_i_reg[0]_i_5 (\gsms.gsms[15].sms_n_0 ),
        .\dout_i_reg[1]_i_5 (\gsms.gsms[15].sms_n_1 ),
        .\dout_i_reg[2]_i_5 (\gsms.gsms[15].sms_n_2 ),
        .\dout_i_reg[3]_i_5 (\gsms.gsms[15].sms_n_3 ),
        .\dout_i_reg[4]_i_5 (\gsms.gsms[15].sms_n_4 ),
        .\dout_i_reg[5]_i_5 (\gsms.gsms[15].sms_n_5 ),
        .\dout_i_reg[6]_i_5 (\gsms.gsms[15].sms_n_6 ),
        .\dout_i_reg[7]_i_15_0 (\dout_2d[9]_9 ),
        .\dout_i_reg[7]_i_15_1 (\dout_2d[8]_8 ),
        .\dout_i_reg[7]_i_7 (\gsms.gsms[15].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_1 \gsms.gsms[12].sms 
       (.DIN(shft_connect_88),
        .DOUT(\dout_2d[12]_12 ),
        .DOUT_END(shft_connect_96),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_2 \gsms.gsms[13].sms 
       (.DIN(shft_connect_96),
        .DOUT(\dout_2d[13]_13 ),
        .DOUT_END(shft_connect_104),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_3 \gsms.gsms[14].sms 
       (.DIN(shft_connect_104),
        .DOUT(\dout_2d[14]_14 ),
        .DOUT_END(shft_connect_112),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_4 \gsms.gsms[15].sms 
       (.DIN(shft_connect_112),
        .DOUT(\dout_2d[14]_14 ),
        .DOUT_END(shft_connect_120),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[15].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[15].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[15].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[15].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[15].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[15].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[15].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[15].sms_n_7 ),
        .\dout_i_reg[7]_i_15 (\dout_2d[13]_13 ),
        .\dout_i_reg[7]_i_15_0 (\dout_2d[12]_12 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_5 \gsms.gsms[16].sms 
       (.DIN(shft_connect_120),
        .DOUT(\dout_2d[16]_16 ),
        .DOUT_END(shft_connect_128),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_6 \gsms.gsms[17].sms 
       (.DIN(shft_connect_128),
        .DOUT(\dout_2d[17]_17 ),
        .DOUT_END(shft_connect_136),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_7 \gsms.gsms[18].sms 
       (.DIN(shft_connect_136),
        .DOUT(\dout_2d[18]_18 ),
        .DOUT_END(shft_connect_144),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_8 \gsms.gsms[19].sms 
       (.DIN(shft_connect_144),
        .DOUT(\dout_2d[18]_18 ),
        .DOUT_END(shft_connect_152),
        .Q(Q[7:0]),
        .clk(clk),
        .\count_reg[7] (\gsms.gsms[19].sms_n_0 ),
        .\count_reg[7]_0 (\gsms.gsms[19].sms_n_1 ),
        .\count_reg[7]_1 (\gsms.gsms[19].sms_n_2 ),
        .\count_reg[7]_2 (\gsms.gsms[19].sms_n_3 ),
        .\count_reg[7]_3 (\gsms.gsms[19].sms_n_4 ),
        .\count_reg[7]_4 (\gsms.gsms[19].sms_n_5 ),
        .\count_reg[7]_5 (\gsms.gsms[19].sms_n_6 ),
        .\count_reg[7]_6 (\gsms.gsms[19].sms_n_7 ),
        .\dout_i_reg[0] (\gsms.gsms[27].sms_n_0 ),
        .\dout_i_reg[0]_i_4_0 (\gsms.gsms[23].sms_n_0 ),
        .\dout_i_reg[1] (\gsms.gsms[27].sms_n_1 ),
        .\dout_i_reg[1]_i_4_0 (\gsms.gsms[23].sms_n_1 ),
        .\dout_i_reg[2] (\gsms.gsms[27].sms_n_2 ),
        .\dout_i_reg[2]_i_4_0 (\gsms.gsms[23].sms_n_2 ),
        .\dout_i_reg[3] (\gsms.gsms[27].sms_n_3 ),
        .\dout_i_reg[3]_i_4_0 (\gsms.gsms[23].sms_n_3 ),
        .\dout_i_reg[4] (\gsms.gsms[27].sms_n_4 ),
        .\dout_i_reg[4]_i_4_0 (\gsms.gsms[23].sms_n_4 ),
        .\dout_i_reg[5] (\gsms.gsms[27].sms_n_5 ),
        .\dout_i_reg[5]_i_4_0 (\gsms.gsms[23].sms_n_5 ),
        .\dout_i_reg[6] (\gsms.gsms[27].sms_n_6 ),
        .\dout_i_reg[6]_i_4_0 (\gsms.gsms[23].sms_n_6 ),
        .\dout_i_reg[7] (\gsms.gsms[27].sms_n_7 ),
        .\dout_i_reg[7]_i_12_0 (\dout_2d[17]_17 ),
        .\dout_i_reg[7]_i_12_1 (\dout_2d[16]_16 ),
        .\dout_i_reg[7]_i_6_0 (\gsms.gsms[23].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_9 \gsms.gsms[1].sms 
       (.DOUT(\dout_2d[1]_1 ),
        .DOUT_END(shft_connect_8),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .\gram.gsms[7].gv4.srl16_0 (p_0_in),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_10 \gsms.gsms[20].sms 
       (.DIN(shft_connect_152),
        .DOUT(\dout_2d[20]_20 ),
        .DOUT_END(shft_connect_160),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_11 \gsms.gsms[21].sms 
       (.DIN(shft_connect_160),
        .DOUT(\dout_2d[21]_21 ),
        .DOUT_END(shft_connect_168),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_12 \gsms.gsms[22].sms 
       (.DIN(shft_connect_168),
        .DOUT(\dout_2d[22]_22 ),
        .DOUT_END(shft_connect_176),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_13 \gsms.gsms[23].sms 
       (.DIN(shft_connect_176),
        .DOUT(\dout_2d[22]_22 ),
        .DOUT_END(shft_connect_184),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[23].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[23].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[23].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[23].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[23].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[23].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[23].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[23].sms_n_7 ),
        .\dout_i_reg[7]_i_12 (\dout_2d[21]_21 ),
        .\dout_i_reg[7]_i_12_0 (\dout_2d[20]_20 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_14 \gsms.gsms[24].sms 
       (.DIN(shft_connect_184),
        .DOUT(\dout_2d[24]_24 ),
        .DOUT_END(shft_connect_192),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_15 \gsms.gsms[25].sms 
       (.DIN(shft_connect_192),
        .DOUT(\dout_2d[25]_25 ),
        .DOUT_END(shft_connect_200),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_16 \gsms.gsms[26].sms 
       (.DIN(shft_connect_200),
        .DOUT(\dout_2d[26]_26 ),
        .DOUT_END(shft_connect_208),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_17 \gsms.gsms[27].sms 
       (.DIN(shft_connect_208),
        .DOUT(\dout_2d[26]_26 ),
        .DOUT_END(shft_connect_216),
        .Q(Q[6:0]),
        .clk(clk),
        .\count_reg[6] (\gsms.gsms[27].sms_n_0 ),
        .\count_reg[6]_0 (\gsms.gsms[27].sms_n_1 ),
        .\count_reg[6]_1 (\gsms.gsms[27].sms_n_2 ),
        .\count_reg[6]_2 (\gsms.gsms[27].sms_n_3 ),
        .\count_reg[6]_3 (\gsms.gsms[27].sms_n_4 ),
        .\count_reg[6]_4 (\gsms.gsms[27].sms_n_5 ),
        .\count_reg[6]_5 (\gsms.gsms[27].sms_n_6 ),
        .\count_reg[6]_6 (\gsms.gsms[27].sms_n_7 ),
        .\dout_i_reg[0]_i_4 (\gsms.gsms[31].sms_n_0 ),
        .\dout_i_reg[1]_i_4 (\gsms.gsms[31].sms_n_1 ),
        .\dout_i_reg[2]_i_4 (\gsms.gsms[31].sms_n_2 ),
        .\dout_i_reg[3]_i_4 (\gsms.gsms[31].sms_n_3 ),
        .\dout_i_reg[4]_i_4 (\gsms.gsms[31].sms_n_4 ),
        .\dout_i_reg[5]_i_4 (\gsms.gsms[31].sms_n_5 ),
        .\dout_i_reg[6]_i_4 (\gsms.gsms[31].sms_n_6 ),
        .\dout_i_reg[7]_i_13_0 (\dout_2d[25]_25 ),
        .\dout_i_reg[7]_i_13_1 (\dout_2d[24]_24 ),
        .\dout_i_reg[7]_i_6 (\gsms.gsms[31].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_18 \gsms.gsms[28].sms 
       (.DIN(shft_connect_216),
        .DOUT(\dout_2d[28]_28 ),
        .DOUT_END(shft_connect_224),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_19 \gsms.gsms[29].sms 
       (.DIN(shft_connect_224),
        .DOUT(\dout_2d[29]_29 ),
        .DOUT_END(shft_connect_232),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_20 \gsms.gsms[2].sms 
       (.DIN(shft_connect_8),
        .DOUT(\dout_2d[2]_2 ),
        .DOUT_END(shft_connect_16),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_21 \gsms.gsms[30].sms 
       (.DIN(shft_connect_232),
        .DOUT(\dout_2d[30]_30 ),
        .DOUT_END(shft_connect_240),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_22 \gsms.gsms[31].sms 
       (.DIN(shft_connect_240),
        .DOUT(\dout_2d[30]_30 ),
        .DOUT_END(shft_connect_248),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[31].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[31].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[31].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[31].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[31].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[31].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[31].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[31].sms_n_7 ),
        .\dout_i_reg[7]_i_13 (\dout_2d[29]_29 ),
        .\dout_i_reg[7]_i_13_0 (\dout_2d[28]_28 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_23 \gsms.gsms[32].sms 
       (.DIN(shft_connect_248),
        .DOUT(\dout_2d[32]_32 ),
        .DOUT_END(shft_connect_256),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_24 \gsms.gsms[33].sms 
       (.DIN(shft_connect_256),
        .DOUT(\dout_2d[33]_33 ),
        .DOUT_END(shft_connect_264),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_25 \gsms.gsms[34].sms 
       (.DIN(shft_connect_264),
        .DOUT(\dout_2d[34]_34 ),
        .DOUT_END(shft_connect_272),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_26 \gsms.gsms[35].sms 
       (.DIN(shft_connect_272),
        .DOUT(\dout_2d[34]_34 ),
        .DOUT_END(shft_connect_280),
        .Q(Q[7:0]),
        .clk(clk),
        .\count_reg[7] (\gsms.gsms[35].sms_n_0 ),
        .\count_reg[7]_0 (\gsms.gsms[35].sms_n_1 ),
        .\count_reg[7]_1 (\gsms.gsms[35].sms_n_2 ),
        .\count_reg[7]_2 (\gsms.gsms[35].sms_n_3 ),
        .\count_reg[7]_3 (\gsms.gsms[35].sms_n_4 ),
        .\count_reg[7]_4 (\gsms.gsms[35].sms_n_5 ),
        .\count_reg[7]_5 (\gsms.gsms[35].sms_n_6 ),
        .\count_reg[7]_6 (\gsms.gsms[35].sms_n_7 ),
        .\dout_i_reg[0] (\gsms.gsms[43].sms_n_0 ),
        .\dout_i_reg[0]_i_3_0 (\gsms.gsms[39].sms_n_0 ),
        .\dout_i_reg[1] (\gsms.gsms[43].sms_n_1 ),
        .\dout_i_reg[1]_i_3_0 (\gsms.gsms[39].sms_n_1 ),
        .\dout_i_reg[2] (\gsms.gsms[43].sms_n_2 ),
        .\dout_i_reg[2]_i_3_0 (\gsms.gsms[39].sms_n_2 ),
        .\dout_i_reg[3] (\gsms.gsms[43].sms_n_3 ),
        .\dout_i_reg[3]_i_3_0 (\gsms.gsms[39].sms_n_3 ),
        .\dout_i_reg[4] (\gsms.gsms[43].sms_n_4 ),
        .\dout_i_reg[4]_i_3_0 (\gsms.gsms[39].sms_n_4 ),
        .\dout_i_reg[5] (\gsms.gsms[43].sms_n_5 ),
        .\dout_i_reg[5]_i_3_0 (\gsms.gsms[39].sms_n_5 ),
        .\dout_i_reg[6] (\gsms.gsms[43].sms_n_6 ),
        .\dout_i_reg[6]_i_3_0 (\gsms.gsms[39].sms_n_6 ),
        .\dout_i_reg[7] (\gsms.gsms[43].sms_n_7 ),
        .\dout_i_reg[7]_i_10_0 (\dout_2d[33]_33 ),
        .\dout_i_reg[7]_i_10_1 (\dout_2d[32]_32 ),
        .\dout_i_reg[7]_i_5_0 (\gsms.gsms[39].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_27 \gsms.gsms[36].sms 
       (.DIN(shft_connect_280),
        .DOUT(\dout_2d[36]_36 ),
        .DOUT_END(shft_connect_288),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_28 \gsms.gsms[37].sms 
       (.DIN(shft_connect_288),
        .DOUT(\dout_2d[37]_37 ),
        .DOUT_END(shft_connect_296),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_29 \gsms.gsms[38].sms 
       (.DIN(shft_connect_296),
        .DOUT(\dout_2d[38]_38 ),
        .DOUT_END(shft_connect_304),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_30 \gsms.gsms[39].sms 
       (.DIN(shft_connect_304),
        .DOUT(\dout_2d[38]_38 ),
        .DOUT_END(shft_connect_312),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[39].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[39].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[39].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[39].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[39].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[39].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[39].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[39].sms_n_7 ),
        .\dout_i_reg[7]_i_10 (\dout_2d[37]_37 ),
        .\dout_i_reg[7]_i_10_0 (\dout_2d[36]_36 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_31 \gsms.gsms[3].sms 
       (.DIN(shft_connect_16),
        .DOUT(\dout_2d[2]_2 ),
        .DOUT_END(shft_connect_24),
        .Q(Q[7:0]),
        .clk(clk),
        .\count_reg[7] (\gsms.gsms[3].sms_n_0 ),
        .\count_reg[7]_0 (\gsms.gsms[3].sms_n_1 ),
        .\count_reg[7]_1 (\gsms.gsms[3].sms_n_2 ),
        .\count_reg[7]_2 (\gsms.gsms[3].sms_n_3 ),
        .\count_reg[7]_3 (\gsms.gsms[3].sms_n_4 ),
        .\count_reg[7]_4 (\gsms.gsms[3].sms_n_5 ),
        .\count_reg[7]_5 (\gsms.gsms[3].sms_n_6 ),
        .\count_reg[7]_6 (\gsms.gsms[3].sms_n_7 ),
        .\dout_i_reg[0] (\gsms.gsms[11].sms_n_0 ),
        .\dout_i_reg[0]_i_5_0 (\gsms.gsms[7].sms_n_0 ),
        .\dout_i_reg[1] (\gsms.gsms[11].sms_n_1 ),
        .\dout_i_reg[1]_i_5_0 (\gsms.gsms[7].sms_n_1 ),
        .\dout_i_reg[2] (\gsms.gsms[11].sms_n_2 ),
        .\dout_i_reg[2]_i_5_0 (\gsms.gsms[7].sms_n_2 ),
        .\dout_i_reg[3] (\gsms.gsms[11].sms_n_3 ),
        .\dout_i_reg[3]_i_5_0 (\gsms.gsms[7].sms_n_3 ),
        .\dout_i_reg[4] (\gsms.gsms[11].sms_n_4 ),
        .\dout_i_reg[4]_i_5_0 (\gsms.gsms[7].sms_n_4 ),
        .\dout_i_reg[5] (\gsms.gsms[11].sms_n_5 ),
        .\dout_i_reg[5]_i_5_0 (\gsms.gsms[7].sms_n_5 ),
        .\dout_i_reg[6] (\gsms.gsms[11].sms_n_6 ),
        .\dout_i_reg[6]_i_5_0 (\gsms.gsms[7].sms_n_6 ),
        .\dout_i_reg[7] (\gsms.gsms[11].sms_n_7 ),
        .\dout_i_reg[7]_i_14_0 (\dout_2d[1]_1 ),
        .\dout_i_reg[7]_i_14_1 (\dout_2d[0]_0 ),
        .\dout_i_reg[7]_i_7_0 (\gsms.gsms[7].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_32 \gsms.gsms[40].sms 
       (.DIN(shft_connect_312),
        .DOUT(\dout_2d[40]_40 ),
        .DOUT_END(shft_connect_320),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_33 \gsms.gsms[41].sms 
       (.DIN(shft_connect_320),
        .DOUT(\dout_2d[41]_41 ),
        .DOUT_END(shft_connect_328),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_34 \gsms.gsms[42].sms 
       (.DIN(shft_connect_328),
        .DOUT(\dout_2d[42]_42 ),
        .DOUT_END(shft_connect_336),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_35 \gsms.gsms[43].sms 
       (.DIN(shft_connect_336),
        .DOUT(\dout_2d[42]_42 ),
        .DOUT_END(shft_connect_344),
        .Q(Q[6:0]),
        .clk(clk),
        .\count_reg[6] (\gsms.gsms[43].sms_n_0 ),
        .\count_reg[6]_0 (\gsms.gsms[43].sms_n_1 ),
        .\count_reg[6]_1 (\gsms.gsms[43].sms_n_2 ),
        .\count_reg[6]_2 (\gsms.gsms[43].sms_n_3 ),
        .\count_reg[6]_3 (\gsms.gsms[43].sms_n_4 ),
        .\count_reg[6]_4 (\gsms.gsms[43].sms_n_5 ),
        .\count_reg[6]_5 (\gsms.gsms[43].sms_n_6 ),
        .\count_reg[6]_6 (\gsms.gsms[43].sms_n_7 ),
        .\dout_i_reg[0]_i_3 (\gsms.gsms[47].sms_n_0 ),
        .\dout_i_reg[1]_i_3 (\gsms.gsms[47].sms_n_1 ),
        .\dout_i_reg[2]_i_3 (\gsms.gsms[47].sms_n_2 ),
        .\dout_i_reg[3]_i_3 (\gsms.gsms[47].sms_n_3 ),
        .\dout_i_reg[4]_i_3 (\gsms.gsms[47].sms_n_4 ),
        .\dout_i_reg[5]_i_3 (\gsms.gsms[47].sms_n_5 ),
        .\dout_i_reg[6]_i_3 (\gsms.gsms[47].sms_n_6 ),
        .\dout_i_reg[7]_i_11_0 (\dout_2d[41]_41 ),
        .\dout_i_reg[7]_i_11_1 (\dout_2d[40]_40 ),
        .\dout_i_reg[7]_i_5 (\gsms.gsms[47].sms_n_7 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_36 \gsms.gsms[44].sms 
       (.DIN(shft_connect_344),
        .DOUT(\dout_2d[44]_44 ),
        .DOUT_END(shft_connect_352),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_37 \gsms.gsms[45].sms 
       (.DIN(shft_connect_352),
        .DOUT(\dout_2d[45]_45 ),
        .DOUT_END(shft_connect_360),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_38 \gsms.gsms[46].sms 
       (.DIN(shft_connect_360),
        .DOUT(\dout_2d[46]_46 ),
        .DOUT_END(shft_connect_368),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_39 \gsms.gsms[47].sms 
       (.DIN(shft_connect_368),
        .DOUT(\dout_2d[46]_46 ),
        .DOUT_END(shft_connect_376),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[47].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[47].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[47].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[47].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[47].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[47].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[47].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[47].sms_n_7 ),
        .\dout_i_reg[7]_i_11 (\dout_2d[45]_45 ),
        .\dout_i_reg[7]_i_11_0 (\dout_2d[44]_44 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_40 \gsms.gsms[48].sms 
       (.DIN(shft_connect_376),
        .DOUT(\dout_2d[48]_48 ),
        .DOUT_END(shft_connect_384),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_41 \gsms.gsms[49].sms 
       (.DIN(shft_connect_384),
        .DOUT(\dout_2d[49]_49 ),
        .DOUT_END(shft_connect_392),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_42 \gsms.gsms[4].sms 
       (.DIN(shft_connect_24),
        .DOUT(\dout_2d[4]_4 ),
        .DOUT_END(shft_connect_32),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_43 \gsms.gsms[50].sms 
       (.DIN(shft_connect_392),
        .DOUT(\dout_2d[50]_50 ),
        .DOUT_END(shft_connect_400),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_44 \gsms.gsms[51].sms 
       (.D(\dout_2d[63]__0 ),
        .DIN(shft_connect_400),
        .DOUT(\dout_2d[50]_50 ),
        .DOUT_END(shft_connect_408),
        .Q(Q),
        .clk(clk),
        .\dout_i_reg[0] (\gsms.gsms[35].sms_n_0 ),
        .\dout_i_reg[0]_0 (\gsms.gsms[19].sms_n_0 ),
        .\dout_i_reg[0]_1 (\gsms.gsms[3].sms_n_0 ),
        .\dout_i_reg[0]_2 (\gsms.gsms[59].sms_n_0 ),
        .\dout_i_reg[0]_i_2_0 (\gsms.gsms[55].sms_n_0 ),
        .\dout_i_reg[1] (\gsms.gsms[35].sms_n_1 ),
        .\dout_i_reg[1]_0 (\gsms.gsms[19].sms_n_1 ),
        .\dout_i_reg[1]_1 (\gsms.gsms[3].sms_n_1 ),
        .\dout_i_reg[1]_2 (\gsms.gsms[59].sms_n_1 ),
        .\dout_i_reg[1]_i_2_0 (\gsms.gsms[55].sms_n_1 ),
        .\dout_i_reg[2] (\gsms.gsms[35].sms_n_2 ),
        .\dout_i_reg[2]_0 (\gsms.gsms[19].sms_n_2 ),
        .\dout_i_reg[2]_1 (\gsms.gsms[3].sms_n_2 ),
        .\dout_i_reg[2]_2 (\gsms.gsms[59].sms_n_2 ),
        .\dout_i_reg[2]_i_2_0 (\gsms.gsms[55].sms_n_2 ),
        .\dout_i_reg[3] (\gsms.gsms[35].sms_n_3 ),
        .\dout_i_reg[3]_0 (\gsms.gsms[19].sms_n_3 ),
        .\dout_i_reg[3]_1 (\gsms.gsms[3].sms_n_3 ),
        .\dout_i_reg[3]_2 (\gsms.gsms[59].sms_n_3 ),
        .\dout_i_reg[3]_i_2_0 (\gsms.gsms[55].sms_n_3 ),
        .\dout_i_reg[4] (\gsms.gsms[35].sms_n_4 ),
        .\dout_i_reg[4]_0 (\gsms.gsms[19].sms_n_4 ),
        .\dout_i_reg[4]_1 (\gsms.gsms[3].sms_n_4 ),
        .\dout_i_reg[4]_2 (\gsms.gsms[59].sms_n_4 ),
        .\dout_i_reg[4]_i_2_0 (\gsms.gsms[55].sms_n_4 ),
        .\dout_i_reg[5] (\gsms.gsms[35].sms_n_5 ),
        .\dout_i_reg[5]_0 (\gsms.gsms[19].sms_n_5 ),
        .\dout_i_reg[5]_1 (\gsms.gsms[3].sms_n_5 ),
        .\dout_i_reg[5]_2 (\gsms.gsms[59].sms_n_5 ),
        .\dout_i_reg[5]_i_2_0 (\gsms.gsms[55].sms_n_5 ),
        .\dout_i_reg[6] (\gsms.gsms[35].sms_n_6 ),
        .\dout_i_reg[6]_0 (\gsms.gsms[19].sms_n_6 ),
        .\dout_i_reg[6]_1 (\gsms.gsms[3].sms_n_6 ),
        .\dout_i_reg[6]_2 (\gsms.gsms[59].sms_n_6 ),
        .\dout_i_reg[6]_i_2_0 (\gsms.gsms[55].sms_n_6 ),
        .\dout_i_reg[7] (\gsms.gsms[35].sms_n_7 ),
        .\dout_i_reg[7]_0 (\gsms.gsms[19].sms_n_7 ),
        .\dout_i_reg[7]_1 (\gsms.gsms[3].sms_n_7 ),
        .\dout_i_reg[7]_2 (\gsms.gsms[59].sms_n_7 ),
        .\dout_i_reg[7]_i_4_0 (\gsms.gsms[55].sms_n_7 ),
        .\dout_i_reg[7]_i_8_0 (\dout_2d[49]_49 ),
        .\dout_i_reg[7]_i_8_1 (\dout_2d[48]_48 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_45 \gsms.gsms[52].sms 
       (.DIN(shft_connect_408),
        .DOUT(\dout_2d[52]_52 ),
        .DOUT_END(shft_connect_416),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_46 \gsms.gsms[53].sms 
       (.DIN(shft_connect_416),
        .DOUT(\dout_2d[53]_53 ),
        .DOUT_END(shft_connect_424),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_47 \gsms.gsms[54].sms 
       (.DIN(shft_connect_424),
        .DOUT(\dout_2d[54]_54 ),
        .DOUT_END(shft_connect_432),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_48 \gsms.gsms[55].sms 
       (.DIN(shft_connect_432),
        .DOUT(\dout_2d[54]_54 ),
        .DOUT_END(shft_connect_440),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[55].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[55].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[55].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[55].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[55].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[55].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[55].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[55].sms_n_7 ),
        .\dout_i_reg[7]_i_8 (\dout_2d[53]_53 ),
        .\dout_i_reg[7]_i_8_0 (\dout_2d[52]_52 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_49 \gsms.gsms[56].sms 
       (.DIN(shft_connect_440),
        .DOUT(\dout_2d[56]_56 ),
        .DOUT_END(shft_connect_448),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_50 \gsms.gsms[57].sms 
       (.DIN(shft_connect_448),
        .DOUT(\dout_2d[57]_57 ),
        .DOUT_END(shft_connect_456),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_51 \gsms.gsms[58].sms 
       (.DIN(shft_connect_456),
        .DOUT(\dout_2d[58]_58 ),
        .DOUT_END(shft_connect_464),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_52 \gsms.gsms[59].sms 
       (.DIN(shft_connect_464),
        .DOUT(\dout_2d[58]_58 ),
        .DOUT_END(shft_connect_472),
        .Q(Q[6:0]),
        .clk(clk),
        .\count_reg[6] (\gsms.gsms[59].sms_n_0 ),
        .\count_reg[6]_0 (\gsms.gsms[59].sms_n_1 ),
        .\count_reg[6]_1 (\gsms.gsms[59].sms_n_2 ),
        .\count_reg[6]_2 (\gsms.gsms[59].sms_n_3 ),
        .\count_reg[6]_3 (\gsms.gsms[59].sms_n_4 ),
        .\count_reg[6]_4 (\gsms.gsms[59].sms_n_5 ),
        .\count_reg[6]_5 (\gsms.gsms[59].sms_n_6 ),
        .\count_reg[6]_6 (\gsms.gsms[59].sms_n_7 ),
        .\dout_i_reg[0]_i_2 (\gsms.gsms[63].sms_n_0 ),
        .\dout_i_reg[1]_i_2 (\gsms.gsms[63].sms_n_1 ),
        .\dout_i_reg[2]_i_2 (\gsms.gsms[63].sms_n_2 ),
        .\dout_i_reg[3]_i_2 (\gsms.gsms[63].sms_n_3 ),
        .\dout_i_reg[4]_i_2 (\gsms.gsms[63].sms_n_4 ),
        .\dout_i_reg[5]_i_2 (\gsms.gsms[63].sms_n_5 ),
        .\dout_i_reg[6]_i_2 (\gsms.gsms[63].sms_n_6 ),
        .\dout_i_reg[7]_i_4 (\gsms.gsms[63].sms_n_7 ),
        .\dout_i_reg[7]_i_9_0 (\dout_2d[57]_57 ),
        .\dout_i_reg[7]_i_9_1 (\dout_2d[56]_56 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_53 \gsms.gsms[5].sms 
       (.DIN(shft_connect_32),
        .DOUT(\dout_2d[5]_5 ),
        .DOUT_END(shft_connect_40),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_54 \gsms.gsms[60].sms 
       (.DIN(shft_connect_472),
        .DOUT(\dout_2d[60]_60 ),
        .DOUT_END(shft_connect_480),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_55 \gsms.gsms[61].sms 
       (.DIN(shft_connect_480),
        .DOUT(\dout_2d[61]_61 ),
        .DOUT_END(shft_connect_488),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_56 \gsms.gsms[62].sms 
       (.DIN(shft_connect_488),
        .DOUT(\dout_2d[62]_62 ),
        .DOUT_END(shft_connect_496),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[1].gv4.srl16_1 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[3].gv4.srl16_1 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[5].gv4.srl16_1 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_57 \gsms.gsms[63].sms 
       (.DIN(shft_connect_496),
        .DOUT(\dout_2d[62]_62 ),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[63].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[63].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[63].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[63].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[63].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[63].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[63].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[63].sms_n_7 ),
        .\dout_i[0]_i_17_0 (\gram.gsms[0].gv4.srl16_0 ),
        .\dout_i[1]_i_17_0 (\gram.gsms[0].gv4.srl16 ),
        .\dout_i[1]_i_17_1 (\gram.gsms[1].gv4.srl16 ),
        .\dout_i[2]_i_17_0 (\gram.gsms[2].gv4.srl16_0 ),
        .\dout_i[3]_i_17_0 (\gram.gsms[2].gv4.srl16 ),
        .\dout_i[3]_i_17_1 (\gram.gsms[3].gv4.srl16 ),
        .\dout_i[4]_i_17_0 (\gram.gsms[4].gv4.srl16_0 ),
        .\dout_i[5]_i_17_0 (\gram.gsms[4].gv4.srl16 ),
        .\dout_i[5]_i_17_1 (\gram.gsms[5].gv4.srl16 ),
        .\dout_i[6]_i_17_0 (\gram.gsms[6].gv4.srl16 ),
        .\dout_i[6]_i_17_1 (\gram.gsms[6].gv4.srl16_0 ),
        .\dout_i_reg[7]_i_9 (\dout_2d[61]_61 ),
        .\dout_i_reg[7]_i_9_0 (\dout_2d[60]_60 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_58 \gsms.gsms[6].sms 
       (.DIN(shft_connect_40),
        .DOUT(\dout_2d[6]_6 ),
        .DOUT_END(shft_connect_48),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_59 \gsms.gsms[7].sms 
       (.DIN(shft_connect_48),
        .DOUT(\dout_2d[6]_6 ),
        .DOUT_END(shft_connect_56),
        .Q(Q[5:0]),
        .clk(clk),
        .\count_reg[5] (\gsms.gsms[7].sms_n_0 ),
        .\count_reg[5]_0 (\gsms.gsms[7].sms_n_1 ),
        .\count_reg[5]_1 (\gsms.gsms[7].sms_n_2 ),
        .\count_reg[5]_2 (\gsms.gsms[7].sms_n_3 ),
        .\count_reg[5]_3 (\gsms.gsms[7].sms_n_4 ),
        .\count_reg[5]_4 (\gsms.gsms[7].sms_n_5 ),
        .\count_reg[5]_5 (\gsms.gsms[7].sms_n_6 ),
        .\count_reg[5]_6 (\gsms.gsms[7].sms_n_7 ),
        .\dout_i_reg[7]_i_14 (\dout_2d[5]_5 ),
        .\dout_i_reg[7]_i_14_0 (\dout_2d[4]_4 ),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_60 \gsms.gsms[8].sms 
       (.DIN(shft_connect_56),
        .DOUT(\dout_2d[8]_8 ),
        .DOUT_END(shft_connect_64),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_61 \gsms.gsms[9].sms 
       (.DIN(shft_connect_64),
        .DOUT(\dout_2d[9]_9 ),
        .DOUT_END(shft_connect_72),
        .Q(Q[3:0]),
        .clk(clk),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
  fifo_us_shft_wrapper_62 \gsms.sm1 
       (.DOUT(\dout_2d[0]_0 ),
        .DOUT_END(p_0_in),
        .Q(Q[3:0]),
        .clk(clk),
        .din(din),
        .\gram.gsms[0].gv4.srl16_0 (\gram.gsms[0].gv4.srl16 ),
        .\gram.gsms[0].gv4.srl16_1 (\gram.gsms[0].gv4.srl16_0 ),
        .\gram.gsms[1].gv4.srl16_0 (\gram.gsms[1].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_0 (\gram.gsms[2].gv4.srl16 ),
        .\gram.gsms[2].gv4.srl16_1 (\gram.gsms[2].gv4.srl16_0 ),
        .\gram.gsms[3].gv4.srl16_0 (\gram.gsms[3].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_0 (\gram.gsms[4].gv4.srl16 ),
        .\gram.gsms[4].gv4.srl16_1 (\gram.gsms[4].gv4.srl16_0 ),
        .\gram.gsms[5].gv4.srl16_0 (\gram.gsms[5].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_0 (\gram.gsms[6].gv4.srl16 ),
        .\gram.gsms[6].gv4.srl16_1 (\gram.gsms[6].gv4.srl16_0 ),
        .p_10_out(p_10_out));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper
   (DOUT,
    DOUT_END,
    p_10_out,
    \gram.gsms[7].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]\gram.gsms[7].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire [7:0]\gram.gsms[7].gv4.srl16_0 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_0
   (\count_reg[6] ,
    \count_reg[6]_0 ,
    \count_reg[6]_1 ,
    \count_reg[6]_2 ,
    \count_reg[6]_3 ,
    \count_reg[6]_4 ,
    \count_reg[6]_5 ,
    \count_reg[6]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0]_i_5 ,
    DOUT,
    \dout_i_reg[7]_i_15_0 ,
    \dout_i_reg[7]_i_15_1 ,
    \dout_i_reg[1]_i_5 ,
    \dout_i_reg[2]_i_5 ,
    \dout_i_reg[3]_i_5 ,
    \dout_i_reg[4]_i_5 ,
    \dout_i_reg[5]_i_5 ,
    \dout_i_reg[6]_i_5 ,
    \dout_i_reg[7]_i_7 ,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[6] ;
  output \count_reg[6]_0 ;
  output \count_reg[6]_1 ;
  output \count_reg[6]_2 ;
  output \count_reg[6]_3 ;
  output \count_reg[6]_4 ;
  output \count_reg[6]_5 ;
  output \count_reg[6]_6 ;
  output [7:0]DOUT_END;
  input [6:0]Q;
  input \dout_i_reg[0]_i_5 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_15_0 ;
  input [7:0]\dout_i_reg[7]_i_15_1 ;
  input \dout_i_reg[1]_i_5 ;
  input \dout_i_reg[2]_i_5 ;
  input \dout_i_reg[3]_i_5 ;
  input \dout_i_reg[4]_i_5 ;
  input \dout_i_reg[5]_i_5 ;
  input \dout_i_reg[6]_i_5 ;
  input \dout_i_reg[7]_i_7 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [6:0]Q;
  wire clk;
  wire \count_reg[6] ;
  wire \count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire \count_reg[6]_2 ;
  wire \count_reg[6]_3 ;
  wire \count_reg[6]_4 ;
  wire \count_reg[6]_5 ;
  wire \count_reg[6]_6 ;
  wire [7:0]\dout_2d[11]_11 ;
  wire \dout_i[0]_i_28_n_0 ;
  wire \dout_i[1]_i_28_n_0 ;
  wire \dout_i[2]_i_28_n_0 ;
  wire \dout_i[3]_i_28_n_0 ;
  wire \dout_i[4]_i_28_n_0 ;
  wire \dout_i[5]_i_28_n_0 ;
  wire \dout_i[6]_i_28_n_0 ;
  wire \dout_i[7]_i_30_n_0 ;
  wire \dout_i_reg[0]_i_5 ;
  wire \dout_i_reg[1]_i_5 ;
  wire \dout_i_reg[2]_i_5 ;
  wire \dout_i_reg[3]_i_5 ;
  wire \dout_i_reg[4]_i_5 ;
  wire \dout_i_reg[5]_i_5 ;
  wire \dout_i_reg[6]_i_5 ;
  wire [7:0]\dout_i_reg[7]_i_15_0 ;
  wire [7:0]\dout_i_reg[7]_i_15_1 ;
  wire \dout_i_reg[7]_i_7 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_28 
       (.I0(\dout_2d[11]_11 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [0]),
        .O(\dout_i[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_28 
       (.I0(\dout_2d[11]_11 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [1]),
        .O(\dout_i[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_28 
       (.I0(\dout_2d[11]_11 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [2]),
        .O(\dout_i[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_28 
       (.I0(\dout_2d[11]_11 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [3]),
        .O(\dout_i[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_28 
       (.I0(\dout_2d[11]_11 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [4]),
        .O(\dout_i[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_28 
       (.I0(\dout_2d[11]_11 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [5]),
        .O(\dout_i[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_28 
       (.I0(\dout_2d[11]_11 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [6]),
        .O(\dout_i[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_30 
       (.I0(\dout_2d[11]_11 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_1 [7]),
        .O(\dout_i[7]_i_30_n_0 ));
  MUXF7 \dout_i_reg[0]_i_13 
       (.I0(\dout_i[0]_i_28_n_0 ),
        .I1(\dout_i_reg[0]_i_5 ),
        .O(\count_reg[6] ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[1]_i_13 
       (.I0(\dout_i[1]_i_28_n_0 ),
        .I1(\dout_i_reg[1]_i_5 ),
        .O(\count_reg[6]_0 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[2]_i_13 
       (.I0(\dout_i[2]_i_28_n_0 ),
        .I1(\dout_i_reg[2]_i_5 ),
        .O(\count_reg[6]_1 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[3]_i_13 
       (.I0(\dout_i[3]_i_28_n_0 ),
        .I1(\dout_i_reg[3]_i_5 ),
        .O(\count_reg[6]_2 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[4]_i_13 
       (.I0(\dout_i[4]_i_28_n_0 ),
        .I1(\dout_i_reg[4]_i_5 ),
        .O(\count_reg[6]_3 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[5]_i_13 
       (.I0(\dout_i[5]_i_28_n_0 ),
        .I1(\dout_i_reg[5]_i_5 ),
        .O(\count_reg[6]_4 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[6]_i_13 
       (.I0(\dout_i[6]_i_28_n_0 ),
        .I1(\dout_i_reg[6]_i_5 ),
        .O(\count_reg[6]_5 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[7]_i_15 
       (.I0(\dout_i[7]_i_30_n_0 ),
        .I1(\dout_i_reg[7]_i_7 ),
        .O(\count_reg[6]_6 ),
        .S(Q[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[11]_11 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[11]_11 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[11]_11 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[11]_11 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[11]_11 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[11]_11 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[11]_11 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[11]_11 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_1
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_10
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_11
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_12
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_13
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_12 ,
    \dout_i_reg[7]_i_12_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_12 ;
  input [7:0]\dout_i_reg[7]_i_12_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[23]_23 ;
  wire [7:0]\dout_i_reg[7]_i_12 ;
  wire [7:0]\dout_i_reg[7]_i_12_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_23 
       (.I0(\dout_2d[23]_23 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_23 
       (.I0(\dout_2d[23]_23 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_23 
       (.I0(\dout_2d[23]_23 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_23 
       (.I0(\dout_2d[23]_23 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_23 
       (.I0(\dout_2d[23]_23 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_23 
       (.I0(\dout_2d[23]_23 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_23 
       (.I0(\dout_2d[23]_23 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_25 
       (.I0(\dout_2d[23]_23 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[23]_23 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[23]_23 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[23]_23 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[23]_23 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[23]_23 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[23]_23 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[23]_23 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[23]_23 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_14
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_15
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_16
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_17
   (\count_reg[6] ,
    \count_reg[6]_0 ,
    \count_reg[6]_1 ,
    \count_reg[6]_2 ,
    \count_reg[6]_3 ,
    \count_reg[6]_4 ,
    \count_reg[6]_5 ,
    \count_reg[6]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0]_i_4 ,
    DOUT,
    \dout_i_reg[7]_i_13_0 ,
    \dout_i_reg[7]_i_13_1 ,
    \dout_i_reg[1]_i_4 ,
    \dout_i_reg[2]_i_4 ,
    \dout_i_reg[3]_i_4 ,
    \dout_i_reg[4]_i_4 ,
    \dout_i_reg[5]_i_4 ,
    \dout_i_reg[6]_i_4 ,
    \dout_i_reg[7]_i_6 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[6] ;
  output \count_reg[6]_0 ;
  output \count_reg[6]_1 ;
  output \count_reg[6]_2 ;
  output \count_reg[6]_3 ;
  output \count_reg[6]_4 ;
  output \count_reg[6]_5 ;
  output \count_reg[6]_6 ;
  output [7:0]DOUT_END;
  input [6:0]Q;
  input \dout_i_reg[0]_i_4 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_13_0 ;
  input [7:0]\dout_i_reg[7]_i_13_1 ;
  input \dout_i_reg[1]_i_4 ;
  input \dout_i_reg[2]_i_4 ;
  input \dout_i_reg[3]_i_4 ;
  input \dout_i_reg[4]_i_4 ;
  input \dout_i_reg[5]_i_4 ;
  input \dout_i_reg[6]_i_4 ;
  input \dout_i_reg[7]_i_6 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [6:0]Q;
  wire clk;
  wire \count_reg[6] ;
  wire \count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire \count_reg[6]_2 ;
  wire \count_reg[6]_3 ;
  wire \count_reg[6]_4 ;
  wire \count_reg[6]_5 ;
  wire \count_reg[6]_6 ;
  wire [7:0]\dout_2d[27]_27 ;
  wire \dout_i[0]_i_24_n_0 ;
  wire \dout_i[1]_i_24_n_0 ;
  wire \dout_i[2]_i_24_n_0 ;
  wire \dout_i[3]_i_24_n_0 ;
  wire \dout_i[4]_i_24_n_0 ;
  wire \dout_i[5]_i_24_n_0 ;
  wire \dout_i[6]_i_24_n_0 ;
  wire \dout_i[7]_i_26_n_0 ;
  wire \dout_i_reg[0]_i_4 ;
  wire \dout_i_reg[1]_i_4 ;
  wire \dout_i_reg[2]_i_4 ;
  wire \dout_i_reg[3]_i_4 ;
  wire \dout_i_reg[4]_i_4 ;
  wire \dout_i_reg[5]_i_4 ;
  wire \dout_i_reg[6]_i_4 ;
  wire [7:0]\dout_i_reg[7]_i_13_0 ;
  wire [7:0]\dout_i_reg[7]_i_13_1 ;
  wire \dout_i_reg[7]_i_6 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_24 
       (.I0(\dout_2d[27]_27 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [0]),
        .O(\dout_i[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_24 
       (.I0(\dout_2d[27]_27 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [1]),
        .O(\dout_i[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_24 
       (.I0(\dout_2d[27]_27 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [2]),
        .O(\dout_i[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_24 
       (.I0(\dout_2d[27]_27 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [3]),
        .O(\dout_i[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_24 
       (.I0(\dout_2d[27]_27 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [4]),
        .O(\dout_i[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_24 
       (.I0(\dout_2d[27]_27 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [5]),
        .O(\dout_i[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_24 
       (.I0(\dout_2d[27]_27 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [6]),
        .O(\dout_i[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_26 
       (.I0(\dout_2d[27]_27 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_1 [7]),
        .O(\dout_i[7]_i_26_n_0 ));
  MUXF7 \dout_i_reg[0]_i_11 
       (.I0(\dout_i[0]_i_24_n_0 ),
        .I1(\dout_i_reg[0]_i_4 ),
        .O(\count_reg[6] ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[1]_i_11 
       (.I0(\dout_i[1]_i_24_n_0 ),
        .I1(\dout_i_reg[1]_i_4 ),
        .O(\count_reg[6]_0 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[2]_i_11 
       (.I0(\dout_i[2]_i_24_n_0 ),
        .I1(\dout_i_reg[2]_i_4 ),
        .O(\count_reg[6]_1 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[3]_i_11 
       (.I0(\dout_i[3]_i_24_n_0 ),
        .I1(\dout_i_reg[3]_i_4 ),
        .O(\count_reg[6]_2 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[4]_i_11 
       (.I0(\dout_i[4]_i_24_n_0 ),
        .I1(\dout_i_reg[4]_i_4 ),
        .O(\count_reg[6]_3 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[5]_i_11 
       (.I0(\dout_i[5]_i_24_n_0 ),
        .I1(\dout_i_reg[5]_i_4 ),
        .O(\count_reg[6]_4 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[6]_i_11 
       (.I0(\dout_i[6]_i_24_n_0 ),
        .I1(\dout_i_reg[6]_i_4 ),
        .O(\count_reg[6]_5 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[7]_i_13 
       (.I0(\dout_i[7]_i_26_n_0 ),
        .I1(\dout_i_reg[7]_i_6 ),
        .O(\count_reg[6]_6 ),
        .S(Q[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[27]_27 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[27]_27 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[27]_27 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[27]_27 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[27]_27 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[27]_27 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[27]_27 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[27]_27 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_18
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_19
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_2
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_20
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_21
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_22
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_13 ,
    \dout_i_reg[7]_i_13_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_13 ;
  input [7:0]\dout_i_reg[7]_i_13_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[31]_31 ;
  wire [7:0]\dout_i_reg[7]_i_13 ;
  wire [7:0]\dout_i_reg[7]_i_13_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_25 
       (.I0(\dout_2d[31]_31 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_25 
       (.I0(\dout_2d[31]_31 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_25 
       (.I0(\dout_2d[31]_31 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_25 
       (.I0(\dout_2d[31]_31 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_25 
       (.I0(\dout_2d[31]_31 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_25 
       (.I0(\dout_2d[31]_31 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_25 
       (.I0(\dout_2d[31]_31 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_27 
       (.I0(\dout_2d[31]_31 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_13 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_13_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[31]_31 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[31]_31 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[31]_31 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[31]_31 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[31]_31 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[31]_31 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[31]_31 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[31]_31 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_23
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_24
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_25
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_26
   (\count_reg[7] ,
    \count_reg[7]_0 ,
    \count_reg[7]_1 ,
    \count_reg[7]_2 ,
    \count_reg[7]_3 ,
    \count_reg[7]_4 ,
    \count_reg[7]_5 ,
    \count_reg[7]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0] ,
    \dout_i_reg[0]_i_3_0 ,
    DOUT,
    \dout_i_reg[7]_i_10_0 ,
    \dout_i_reg[7]_i_10_1 ,
    \dout_i_reg[1] ,
    \dout_i_reg[1]_i_3_0 ,
    \dout_i_reg[2] ,
    \dout_i_reg[2]_i_3_0 ,
    \dout_i_reg[3] ,
    \dout_i_reg[3]_i_3_0 ,
    \dout_i_reg[4] ,
    \dout_i_reg[4]_i_3_0 ,
    \dout_i_reg[5] ,
    \dout_i_reg[5]_i_3_0 ,
    \dout_i_reg[6] ,
    \dout_i_reg[6]_i_3_0 ,
    \dout_i_reg[7] ,
    \dout_i_reg[7]_i_5_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[7] ;
  output \count_reg[7]_0 ;
  output \count_reg[7]_1 ;
  output \count_reg[7]_2 ;
  output \count_reg[7]_3 ;
  output \count_reg[7]_4 ;
  output \count_reg[7]_5 ;
  output \count_reg[7]_6 ;
  output [7:0]DOUT_END;
  input [7:0]Q;
  input \dout_i_reg[0] ;
  input \dout_i_reg[0]_i_3_0 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_10_0 ;
  input [7:0]\dout_i_reg[7]_i_10_1 ;
  input \dout_i_reg[1] ;
  input \dout_i_reg[1]_i_3_0 ;
  input \dout_i_reg[2] ;
  input \dout_i_reg[2]_i_3_0 ;
  input \dout_i_reg[3] ;
  input \dout_i_reg[3]_i_3_0 ;
  input \dout_i_reg[4] ;
  input \dout_i_reg[4]_i_3_0 ;
  input \dout_i_reg[5] ;
  input \dout_i_reg[5]_i_3_0 ;
  input \dout_i_reg[6] ;
  input \dout_i_reg[6]_i_3_0 ;
  input \dout_i_reg[7] ;
  input \dout_i_reg[7]_i_5_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [7:0]Q;
  wire clk;
  wire \count_reg[7] ;
  wire \count_reg[7]_0 ;
  wire \count_reg[7]_1 ;
  wire \count_reg[7]_2 ;
  wire \count_reg[7]_3 ;
  wire \count_reg[7]_4 ;
  wire \count_reg[7]_5 ;
  wire \count_reg[7]_6 ;
  wire [7:0]\dout_2d[35]_35 ;
  wire \dout_i[0]_i_18_n_0 ;
  wire \dout_i[1]_i_18_n_0 ;
  wire \dout_i[2]_i_18_n_0 ;
  wire \dout_i[3]_i_18_n_0 ;
  wire \dout_i[4]_i_18_n_0 ;
  wire \dout_i[5]_i_18_n_0 ;
  wire \dout_i[6]_i_18_n_0 ;
  wire \dout_i[7]_i_20_n_0 ;
  wire \dout_i_reg[0] ;
  wire \dout_i_reg[0]_i_3_0 ;
  wire \dout_i_reg[0]_i_8_n_0 ;
  wire \dout_i_reg[1] ;
  wire \dout_i_reg[1]_i_3_0 ;
  wire \dout_i_reg[1]_i_8_n_0 ;
  wire \dout_i_reg[2] ;
  wire \dout_i_reg[2]_i_3_0 ;
  wire \dout_i_reg[2]_i_8_n_0 ;
  wire \dout_i_reg[3] ;
  wire \dout_i_reg[3]_i_3_0 ;
  wire \dout_i_reg[3]_i_8_n_0 ;
  wire \dout_i_reg[4] ;
  wire \dout_i_reg[4]_i_3_0 ;
  wire \dout_i_reg[4]_i_8_n_0 ;
  wire \dout_i_reg[5] ;
  wire \dout_i_reg[5]_i_3_0 ;
  wire \dout_i_reg[5]_i_8_n_0 ;
  wire \dout_i_reg[6] ;
  wire \dout_i_reg[6]_i_3_0 ;
  wire \dout_i_reg[6]_i_8_n_0 ;
  wire \dout_i_reg[7] ;
  wire [7:0]\dout_i_reg[7]_i_10_0 ;
  wire [7:0]\dout_i_reg[7]_i_10_1 ;
  wire \dout_i_reg[7]_i_10_n_0 ;
  wire \dout_i_reg[7]_i_5_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_18 
       (.I0(\dout_2d[35]_35 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [0]),
        .O(\dout_i[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_18 
       (.I0(\dout_2d[35]_35 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [1]),
        .O(\dout_i[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_18 
       (.I0(\dout_2d[35]_35 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [2]),
        .O(\dout_i[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_18 
       (.I0(\dout_2d[35]_35 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [3]),
        .O(\dout_i[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_18 
       (.I0(\dout_2d[35]_35 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [4]),
        .O(\dout_i[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_18 
       (.I0(\dout_2d[35]_35 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [5]),
        .O(\dout_i[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_18 
       (.I0(\dout_2d[35]_35 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [6]),
        .O(\dout_i[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_20 
       (.I0(\dout_2d[35]_35 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_1 [7]),
        .O(\dout_i[7]_i_20_n_0 ));
  MUXF8 \dout_i_reg[0]_i_3 
       (.I0(\dout_i_reg[0]_i_8_n_0 ),
        .I1(\dout_i_reg[0] ),
        .O(\count_reg[7] ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[0]_i_8 
       (.I0(\dout_i[0]_i_18_n_0 ),
        .I1(\dout_i_reg[0]_i_3_0 ),
        .O(\dout_i_reg[0]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[1]_i_3 
       (.I0(\dout_i_reg[1]_i_8_n_0 ),
        .I1(\dout_i_reg[1] ),
        .O(\count_reg[7]_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[1]_i_8 
       (.I0(\dout_i[1]_i_18_n_0 ),
        .I1(\dout_i_reg[1]_i_3_0 ),
        .O(\dout_i_reg[1]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[2]_i_3 
       (.I0(\dout_i_reg[2]_i_8_n_0 ),
        .I1(\dout_i_reg[2] ),
        .O(\count_reg[7]_1 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[2]_i_8 
       (.I0(\dout_i[2]_i_18_n_0 ),
        .I1(\dout_i_reg[2]_i_3_0 ),
        .O(\dout_i_reg[2]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[3]_i_3 
       (.I0(\dout_i_reg[3]_i_8_n_0 ),
        .I1(\dout_i_reg[3] ),
        .O(\count_reg[7]_2 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[3]_i_8 
       (.I0(\dout_i[3]_i_18_n_0 ),
        .I1(\dout_i_reg[3]_i_3_0 ),
        .O(\dout_i_reg[3]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[4]_i_3 
       (.I0(\dout_i_reg[4]_i_8_n_0 ),
        .I1(\dout_i_reg[4] ),
        .O(\count_reg[7]_3 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[4]_i_8 
       (.I0(\dout_i[4]_i_18_n_0 ),
        .I1(\dout_i_reg[4]_i_3_0 ),
        .O(\dout_i_reg[4]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[5]_i_3 
       (.I0(\dout_i_reg[5]_i_8_n_0 ),
        .I1(\dout_i_reg[5] ),
        .O(\count_reg[7]_4 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[5]_i_8 
       (.I0(\dout_i[5]_i_18_n_0 ),
        .I1(\dout_i_reg[5]_i_3_0 ),
        .O(\dout_i_reg[5]_i_8_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[6]_i_3 
       (.I0(\dout_i_reg[6]_i_8_n_0 ),
        .I1(\dout_i_reg[6] ),
        .O(\count_reg[7]_5 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[6]_i_8 
       (.I0(\dout_i[6]_i_18_n_0 ),
        .I1(\dout_i_reg[6]_i_3_0 ),
        .O(\dout_i_reg[6]_i_8_n_0 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[7]_i_10 
       (.I0(\dout_i[7]_i_20_n_0 ),
        .I1(\dout_i_reg[7]_i_5_0 ),
        .O(\dout_i_reg[7]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[7]_i_5 
       (.I0(\dout_i_reg[7]_i_10_n_0 ),
        .I1(\dout_i_reg[7] ),
        .O(\count_reg[7]_6 ),
        .S(Q[7]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[35]_35 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[35]_35 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[35]_35 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[35]_35 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[35]_35 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[35]_35 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[35]_35 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[35]_35 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_27
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_28
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_29
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_3
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_30
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_10 ,
    \dout_i_reg[7]_i_10_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_10 ;
  input [7:0]\dout_i_reg[7]_i_10_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[39]_39 ;
  wire [7:0]\dout_i_reg[7]_i_10 ;
  wire [7:0]\dout_i_reg[7]_i_10_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_19 
       (.I0(\dout_2d[39]_39 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_19 
       (.I0(\dout_2d[39]_39 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_19 
       (.I0(\dout_2d[39]_39 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_19 
       (.I0(\dout_2d[39]_39 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_19 
       (.I0(\dout_2d[39]_39 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_19 
       (.I0(\dout_2d[39]_39 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_19 
       (.I0(\dout_2d[39]_39 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_21 
       (.I0(\dout_2d[39]_39 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_10 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_10_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[39]_39 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[39]_39 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[39]_39 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[39]_39 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[39]_39 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[39]_39 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[39]_39 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[39]_39 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_31
   (\count_reg[7] ,
    \count_reg[7]_0 ,
    \count_reg[7]_1 ,
    \count_reg[7]_2 ,
    \count_reg[7]_3 ,
    \count_reg[7]_4 ,
    \count_reg[7]_5 ,
    \count_reg[7]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0] ,
    \dout_i_reg[0]_i_5_0 ,
    DOUT,
    \dout_i_reg[7]_i_14_0 ,
    \dout_i_reg[7]_i_14_1 ,
    \dout_i_reg[1] ,
    \dout_i_reg[1]_i_5_0 ,
    \dout_i_reg[2] ,
    \dout_i_reg[2]_i_5_0 ,
    \dout_i_reg[3] ,
    \dout_i_reg[3]_i_5_0 ,
    \dout_i_reg[4] ,
    \dout_i_reg[4]_i_5_0 ,
    \dout_i_reg[5] ,
    \dout_i_reg[5]_i_5_0 ,
    \dout_i_reg[6] ,
    \dout_i_reg[6]_i_5_0 ,
    \dout_i_reg[7] ,
    \dout_i_reg[7]_i_7_0 ,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[7] ;
  output \count_reg[7]_0 ;
  output \count_reg[7]_1 ;
  output \count_reg[7]_2 ;
  output \count_reg[7]_3 ;
  output \count_reg[7]_4 ;
  output \count_reg[7]_5 ;
  output \count_reg[7]_6 ;
  output [7:0]DOUT_END;
  input [7:0]Q;
  input \dout_i_reg[0] ;
  input \dout_i_reg[0]_i_5_0 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_14_0 ;
  input [7:0]\dout_i_reg[7]_i_14_1 ;
  input \dout_i_reg[1] ;
  input \dout_i_reg[1]_i_5_0 ;
  input \dout_i_reg[2] ;
  input \dout_i_reg[2]_i_5_0 ;
  input \dout_i_reg[3] ;
  input \dout_i_reg[3]_i_5_0 ;
  input \dout_i_reg[4] ;
  input \dout_i_reg[4]_i_5_0 ;
  input \dout_i_reg[5] ;
  input \dout_i_reg[5]_i_5_0 ;
  input \dout_i_reg[6] ;
  input \dout_i_reg[6]_i_5_0 ;
  input \dout_i_reg[7] ;
  input \dout_i_reg[7]_i_7_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [7:0]Q;
  wire clk;
  wire \count_reg[7] ;
  wire \count_reg[7]_0 ;
  wire \count_reg[7]_1 ;
  wire \count_reg[7]_2 ;
  wire \count_reg[7]_3 ;
  wire \count_reg[7]_4 ;
  wire \count_reg[7]_5 ;
  wire \count_reg[7]_6 ;
  wire [7:0]\dout_2d[3]_3 ;
  wire \dout_i[0]_i_26_n_0 ;
  wire \dout_i[1]_i_26_n_0 ;
  wire \dout_i[2]_i_26_n_0 ;
  wire \dout_i[3]_i_26_n_0 ;
  wire \dout_i[4]_i_26_n_0 ;
  wire \dout_i[5]_i_26_n_0 ;
  wire \dout_i[6]_i_26_n_0 ;
  wire \dout_i[7]_i_28_n_0 ;
  wire \dout_i_reg[0] ;
  wire \dout_i_reg[0]_i_12_n_0 ;
  wire \dout_i_reg[0]_i_5_0 ;
  wire \dout_i_reg[1] ;
  wire \dout_i_reg[1]_i_12_n_0 ;
  wire \dout_i_reg[1]_i_5_0 ;
  wire \dout_i_reg[2] ;
  wire \dout_i_reg[2]_i_12_n_0 ;
  wire \dout_i_reg[2]_i_5_0 ;
  wire \dout_i_reg[3] ;
  wire \dout_i_reg[3]_i_12_n_0 ;
  wire \dout_i_reg[3]_i_5_0 ;
  wire \dout_i_reg[4] ;
  wire \dout_i_reg[4]_i_12_n_0 ;
  wire \dout_i_reg[4]_i_5_0 ;
  wire \dout_i_reg[5] ;
  wire \dout_i_reg[5]_i_12_n_0 ;
  wire \dout_i_reg[5]_i_5_0 ;
  wire \dout_i_reg[6] ;
  wire \dout_i_reg[6]_i_12_n_0 ;
  wire \dout_i_reg[6]_i_5_0 ;
  wire \dout_i_reg[7] ;
  wire [7:0]\dout_i_reg[7]_i_14_0 ;
  wire [7:0]\dout_i_reg[7]_i_14_1 ;
  wire \dout_i_reg[7]_i_14_n_0 ;
  wire \dout_i_reg[7]_i_7_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_26 
       (.I0(\dout_2d[3]_3 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [0]),
        .O(\dout_i[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_26 
       (.I0(\dout_2d[3]_3 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [1]),
        .O(\dout_i[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_26 
       (.I0(\dout_2d[3]_3 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [2]),
        .O(\dout_i[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_26 
       (.I0(\dout_2d[3]_3 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [3]),
        .O(\dout_i[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_26 
       (.I0(\dout_2d[3]_3 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [4]),
        .O(\dout_i[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_26 
       (.I0(\dout_2d[3]_3 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [5]),
        .O(\dout_i[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_26 
       (.I0(\dout_2d[3]_3 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [6]),
        .O(\dout_i[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_28 
       (.I0(\dout_2d[3]_3 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_1 [7]),
        .O(\dout_i[7]_i_28_n_0 ));
  MUXF7 \dout_i_reg[0]_i_12 
       (.I0(\dout_i[0]_i_26_n_0 ),
        .I1(\dout_i_reg[0]_i_5_0 ),
        .O(\dout_i_reg[0]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[0]_i_5 
       (.I0(\dout_i_reg[0]_i_12_n_0 ),
        .I1(\dout_i_reg[0] ),
        .O(\count_reg[7] ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[1]_i_12 
       (.I0(\dout_i[1]_i_26_n_0 ),
        .I1(\dout_i_reg[1]_i_5_0 ),
        .O(\dout_i_reg[1]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[1]_i_5 
       (.I0(\dout_i_reg[1]_i_12_n_0 ),
        .I1(\dout_i_reg[1] ),
        .O(\count_reg[7]_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[2]_i_12 
       (.I0(\dout_i[2]_i_26_n_0 ),
        .I1(\dout_i_reg[2]_i_5_0 ),
        .O(\dout_i_reg[2]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[2]_i_5 
       (.I0(\dout_i_reg[2]_i_12_n_0 ),
        .I1(\dout_i_reg[2] ),
        .O(\count_reg[7]_1 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[3]_i_12 
       (.I0(\dout_i[3]_i_26_n_0 ),
        .I1(\dout_i_reg[3]_i_5_0 ),
        .O(\dout_i_reg[3]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[3]_i_5 
       (.I0(\dout_i_reg[3]_i_12_n_0 ),
        .I1(\dout_i_reg[3] ),
        .O(\count_reg[7]_2 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[4]_i_12 
       (.I0(\dout_i[4]_i_26_n_0 ),
        .I1(\dout_i_reg[4]_i_5_0 ),
        .O(\dout_i_reg[4]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[4]_i_5 
       (.I0(\dout_i_reg[4]_i_12_n_0 ),
        .I1(\dout_i_reg[4] ),
        .O(\count_reg[7]_3 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[5]_i_12 
       (.I0(\dout_i[5]_i_26_n_0 ),
        .I1(\dout_i_reg[5]_i_5_0 ),
        .O(\dout_i_reg[5]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[5]_i_5 
       (.I0(\dout_i_reg[5]_i_12_n_0 ),
        .I1(\dout_i_reg[5] ),
        .O(\count_reg[7]_4 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[6]_i_12 
       (.I0(\dout_i[6]_i_26_n_0 ),
        .I1(\dout_i_reg[6]_i_5_0 ),
        .O(\dout_i_reg[6]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[6]_i_5 
       (.I0(\dout_i_reg[6]_i_12_n_0 ),
        .I1(\dout_i_reg[6] ),
        .O(\count_reg[7]_5 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[7]_i_14 
       (.I0(\dout_i[7]_i_28_n_0 ),
        .I1(\dout_i_reg[7]_i_7_0 ),
        .O(\dout_i_reg[7]_i_14_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[7]_i_7 
       (.I0(\dout_i_reg[7]_i_14_n_0 ),
        .I1(\dout_i_reg[7] ),
        .O(\count_reg[7]_6 ),
        .S(Q[7]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[3]_3 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[3]_3 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[3]_3 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[3]_3 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[3]_3 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[3]_3 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[3]_3 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[3]_3 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_32
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_33
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_34
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_35
   (\count_reg[6] ,
    \count_reg[6]_0 ,
    \count_reg[6]_1 ,
    \count_reg[6]_2 ,
    \count_reg[6]_3 ,
    \count_reg[6]_4 ,
    \count_reg[6]_5 ,
    \count_reg[6]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0]_i_3 ,
    DOUT,
    \dout_i_reg[7]_i_11_0 ,
    \dout_i_reg[7]_i_11_1 ,
    \dout_i_reg[1]_i_3 ,
    \dout_i_reg[2]_i_3 ,
    \dout_i_reg[3]_i_3 ,
    \dout_i_reg[4]_i_3 ,
    \dout_i_reg[5]_i_3 ,
    \dout_i_reg[6]_i_3 ,
    \dout_i_reg[7]_i_5 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[6] ;
  output \count_reg[6]_0 ;
  output \count_reg[6]_1 ;
  output \count_reg[6]_2 ;
  output \count_reg[6]_3 ;
  output \count_reg[6]_4 ;
  output \count_reg[6]_5 ;
  output \count_reg[6]_6 ;
  output [7:0]DOUT_END;
  input [6:0]Q;
  input \dout_i_reg[0]_i_3 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_11_0 ;
  input [7:0]\dout_i_reg[7]_i_11_1 ;
  input \dout_i_reg[1]_i_3 ;
  input \dout_i_reg[2]_i_3 ;
  input \dout_i_reg[3]_i_3 ;
  input \dout_i_reg[4]_i_3 ;
  input \dout_i_reg[5]_i_3 ;
  input \dout_i_reg[6]_i_3 ;
  input \dout_i_reg[7]_i_5 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [6:0]Q;
  wire clk;
  wire \count_reg[6] ;
  wire \count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire \count_reg[6]_2 ;
  wire \count_reg[6]_3 ;
  wire \count_reg[6]_4 ;
  wire \count_reg[6]_5 ;
  wire \count_reg[6]_6 ;
  wire [7:0]\dout_2d[43]_43 ;
  wire \dout_i[0]_i_20_n_0 ;
  wire \dout_i[1]_i_20_n_0 ;
  wire \dout_i[2]_i_20_n_0 ;
  wire \dout_i[3]_i_20_n_0 ;
  wire \dout_i[4]_i_20_n_0 ;
  wire \dout_i[5]_i_20_n_0 ;
  wire \dout_i[6]_i_20_n_0 ;
  wire \dout_i[7]_i_22_n_0 ;
  wire \dout_i_reg[0]_i_3 ;
  wire \dout_i_reg[1]_i_3 ;
  wire \dout_i_reg[2]_i_3 ;
  wire \dout_i_reg[3]_i_3 ;
  wire \dout_i_reg[4]_i_3 ;
  wire \dout_i_reg[5]_i_3 ;
  wire \dout_i_reg[6]_i_3 ;
  wire [7:0]\dout_i_reg[7]_i_11_0 ;
  wire [7:0]\dout_i_reg[7]_i_11_1 ;
  wire \dout_i_reg[7]_i_5 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_20 
       (.I0(\dout_2d[43]_43 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [0]),
        .O(\dout_i[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_20 
       (.I0(\dout_2d[43]_43 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [1]),
        .O(\dout_i[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_20 
       (.I0(\dout_2d[43]_43 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [2]),
        .O(\dout_i[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_20 
       (.I0(\dout_2d[43]_43 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [3]),
        .O(\dout_i[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_20 
       (.I0(\dout_2d[43]_43 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [4]),
        .O(\dout_i[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_20 
       (.I0(\dout_2d[43]_43 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [5]),
        .O(\dout_i[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_20 
       (.I0(\dout_2d[43]_43 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [6]),
        .O(\dout_i[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_22 
       (.I0(\dout_2d[43]_43 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_1 [7]),
        .O(\dout_i[7]_i_22_n_0 ));
  MUXF7 \dout_i_reg[0]_i_9 
       (.I0(\dout_i[0]_i_20_n_0 ),
        .I1(\dout_i_reg[0]_i_3 ),
        .O(\count_reg[6] ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[1]_i_9 
       (.I0(\dout_i[1]_i_20_n_0 ),
        .I1(\dout_i_reg[1]_i_3 ),
        .O(\count_reg[6]_0 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[2]_i_9 
       (.I0(\dout_i[2]_i_20_n_0 ),
        .I1(\dout_i_reg[2]_i_3 ),
        .O(\count_reg[6]_1 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[3]_i_9 
       (.I0(\dout_i[3]_i_20_n_0 ),
        .I1(\dout_i_reg[3]_i_3 ),
        .O(\count_reg[6]_2 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[4]_i_9 
       (.I0(\dout_i[4]_i_20_n_0 ),
        .I1(\dout_i_reg[4]_i_3 ),
        .O(\count_reg[6]_3 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[5]_i_9 
       (.I0(\dout_i[5]_i_20_n_0 ),
        .I1(\dout_i_reg[5]_i_3 ),
        .O(\count_reg[6]_4 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[6]_i_9 
       (.I0(\dout_i[6]_i_20_n_0 ),
        .I1(\dout_i_reg[6]_i_3 ),
        .O(\count_reg[6]_5 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[7]_i_11 
       (.I0(\dout_i[7]_i_22_n_0 ),
        .I1(\dout_i_reg[7]_i_5 ),
        .O(\count_reg[6]_6 ),
        .S(Q[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[43]_43 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[43]_43 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[43]_43 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[43]_43 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[43]_43 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[43]_43 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[43]_43 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[43]_43 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_36
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_37
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_38
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_39
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_11 ,
    \dout_i_reg[7]_i_11_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_11 ;
  input [7:0]\dout_i_reg[7]_i_11_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[47]_47 ;
  wire [7:0]\dout_i_reg[7]_i_11 ;
  wire [7:0]\dout_i_reg[7]_i_11_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_21 
       (.I0(\dout_2d[47]_47 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_21 
       (.I0(\dout_2d[47]_47 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_21 
       (.I0(\dout_2d[47]_47 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_21 
       (.I0(\dout_2d[47]_47 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_21 
       (.I0(\dout_2d[47]_47 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_21 
       (.I0(\dout_2d[47]_47 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_21 
       (.I0(\dout_2d[47]_47 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_23 
       (.I0(\dout_2d[47]_47 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_11 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_11_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[47]_47 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[47]_47 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[47]_47 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[47]_47 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[47]_47 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[47]_47 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[47]_47 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[47]_47 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_4
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_15 ,
    \dout_i_reg[7]_i_15_0 ,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_15 ;
  input [7:0]\dout_i_reg[7]_i_15_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[15]_15 ;
  wire [7:0]\dout_i_reg[7]_i_15 ;
  wire [7:0]\dout_i_reg[7]_i_15_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_29 
       (.I0(\dout_2d[15]_15 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_29 
       (.I0(\dout_2d[15]_15 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_29 
       (.I0(\dout_2d[15]_15 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_29 
       (.I0(\dout_2d[15]_15 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_29 
       (.I0(\dout_2d[15]_15 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_29 
       (.I0(\dout_2d[15]_15 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_29 
       (.I0(\dout_2d[15]_15 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_31 
       (.I0(\dout_2d[15]_15 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_15 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_15_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[15]_15 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[15]_15 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[15]_15 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[15]_15 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[15]_15 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[15]_15 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[15]_15 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[15]_15 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_40
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_41
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_42
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_43
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_44
   (D,
    DOUT_END,
    \dout_i_reg[0] ,
    Q,
    \dout_i_reg[0]_0 ,
    \dout_i_reg[0]_1 ,
    \dout_i_reg[0]_2 ,
    \dout_i_reg[0]_i_2_0 ,
    DOUT,
    \dout_i_reg[7]_i_8_0 ,
    \dout_i_reg[7]_i_8_1 ,
    \dout_i_reg[1] ,
    \dout_i_reg[1]_0 ,
    \dout_i_reg[1]_1 ,
    \dout_i_reg[1]_2 ,
    \dout_i_reg[1]_i_2_0 ,
    \dout_i_reg[2] ,
    \dout_i_reg[2]_0 ,
    \dout_i_reg[2]_1 ,
    \dout_i_reg[2]_2 ,
    \dout_i_reg[2]_i_2_0 ,
    \dout_i_reg[3] ,
    \dout_i_reg[3]_0 ,
    \dout_i_reg[3]_1 ,
    \dout_i_reg[3]_2 ,
    \dout_i_reg[3]_i_2_0 ,
    \dout_i_reg[4] ,
    \dout_i_reg[4]_0 ,
    \dout_i_reg[4]_1 ,
    \dout_i_reg[4]_2 ,
    \dout_i_reg[4]_i_2_0 ,
    \dout_i_reg[5] ,
    \dout_i_reg[5]_0 ,
    \dout_i_reg[5]_1 ,
    \dout_i_reg[5]_2 ,
    \dout_i_reg[5]_i_2_0 ,
    \dout_i_reg[6] ,
    \dout_i_reg[6]_0 ,
    \dout_i_reg[6]_1 ,
    \dout_i_reg[6]_2 ,
    \dout_i_reg[6]_i_2_0 ,
    \dout_i_reg[7] ,
    \dout_i_reg[7]_0 ,
    \dout_i_reg[7]_1 ,
    \dout_i_reg[7]_2 ,
    \dout_i_reg[7]_i_4_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]D;
  output [7:0]DOUT_END;
  input \dout_i_reg[0] ;
  input [9:0]Q;
  input \dout_i_reg[0]_0 ;
  input \dout_i_reg[0]_1 ;
  input \dout_i_reg[0]_2 ;
  input \dout_i_reg[0]_i_2_0 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_8_0 ;
  input [7:0]\dout_i_reg[7]_i_8_1 ;
  input \dout_i_reg[1] ;
  input \dout_i_reg[1]_0 ;
  input \dout_i_reg[1]_1 ;
  input \dout_i_reg[1]_2 ;
  input \dout_i_reg[1]_i_2_0 ;
  input \dout_i_reg[2] ;
  input \dout_i_reg[2]_0 ;
  input \dout_i_reg[2]_1 ;
  input \dout_i_reg[2]_2 ;
  input \dout_i_reg[2]_i_2_0 ;
  input \dout_i_reg[3] ;
  input \dout_i_reg[3]_0 ;
  input \dout_i_reg[3]_1 ;
  input \dout_i_reg[3]_2 ;
  input \dout_i_reg[3]_i_2_0 ;
  input \dout_i_reg[4] ;
  input \dout_i_reg[4]_0 ;
  input \dout_i_reg[4]_1 ;
  input \dout_i_reg[4]_2 ;
  input \dout_i_reg[4]_i_2_0 ;
  input \dout_i_reg[5] ;
  input \dout_i_reg[5]_0 ;
  input \dout_i_reg[5]_1 ;
  input \dout_i_reg[5]_2 ;
  input \dout_i_reg[5]_i_2_0 ;
  input \dout_i_reg[6] ;
  input \dout_i_reg[6]_0 ;
  input \dout_i_reg[6]_1 ;
  input \dout_i_reg[6]_2 ;
  input \dout_i_reg[6]_i_2_0 ;
  input \dout_i_reg[7] ;
  input \dout_i_reg[7]_0 ;
  input \dout_i_reg[7]_1 ;
  input \dout_i_reg[7]_2 ;
  input \dout_i_reg[7]_i_4_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]D;
  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [9:0]Q;
  wire clk;
  wire [7:0]\dout_2d[51]_51 ;
  wire \dout_i[0]_i_14_n_0 ;
  wire \dout_i[1]_i_14_n_0 ;
  wire \dout_i[2]_i_14_n_0 ;
  wire \dout_i[3]_i_14_n_0 ;
  wire \dout_i[4]_i_14_n_0 ;
  wire \dout_i[5]_i_14_n_0 ;
  wire \dout_i[6]_i_14_n_0 ;
  wire \dout_i[7]_i_16_n_0 ;
  wire \dout_i_reg[0] ;
  wire \dout_i_reg[0]_0 ;
  wire \dout_i_reg[0]_1 ;
  wire \dout_i_reg[0]_2 ;
  wire \dout_i_reg[0]_i_2_0 ;
  wire \dout_i_reg[0]_i_2_n_0 ;
  wire \dout_i_reg[0]_i_6_n_0 ;
  wire \dout_i_reg[1] ;
  wire \dout_i_reg[1]_0 ;
  wire \dout_i_reg[1]_1 ;
  wire \dout_i_reg[1]_2 ;
  wire \dout_i_reg[1]_i_2_0 ;
  wire \dout_i_reg[1]_i_2_n_0 ;
  wire \dout_i_reg[1]_i_6_n_0 ;
  wire \dout_i_reg[2] ;
  wire \dout_i_reg[2]_0 ;
  wire \dout_i_reg[2]_1 ;
  wire \dout_i_reg[2]_2 ;
  wire \dout_i_reg[2]_i_2_0 ;
  wire \dout_i_reg[2]_i_2_n_0 ;
  wire \dout_i_reg[2]_i_6_n_0 ;
  wire \dout_i_reg[3] ;
  wire \dout_i_reg[3]_0 ;
  wire \dout_i_reg[3]_1 ;
  wire \dout_i_reg[3]_2 ;
  wire \dout_i_reg[3]_i_2_0 ;
  wire \dout_i_reg[3]_i_2_n_0 ;
  wire \dout_i_reg[3]_i_6_n_0 ;
  wire \dout_i_reg[4] ;
  wire \dout_i_reg[4]_0 ;
  wire \dout_i_reg[4]_1 ;
  wire \dout_i_reg[4]_2 ;
  wire \dout_i_reg[4]_i_2_0 ;
  wire \dout_i_reg[4]_i_2_n_0 ;
  wire \dout_i_reg[4]_i_6_n_0 ;
  wire \dout_i_reg[5] ;
  wire \dout_i_reg[5]_0 ;
  wire \dout_i_reg[5]_1 ;
  wire \dout_i_reg[5]_2 ;
  wire \dout_i_reg[5]_i_2_0 ;
  wire \dout_i_reg[5]_i_2_n_0 ;
  wire \dout_i_reg[5]_i_6_n_0 ;
  wire \dout_i_reg[6] ;
  wire \dout_i_reg[6]_0 ;
  wire \dout_i_reg[6]_1 ;
  wire \dout_i_reg[6]_2 ;
  wire \dout_i_reg[6]_i_2_0 ;
  wire \dout_i_reg[6]_i_2_n_0 ;
  wire \dout_i_reg[6]_i_6_n_0 ;
  wire \dout_i_reg[7] ;
  wire \dout_i_reg[7]_0 ;
  wire \dout_i_reg[7]_1 ;
  wire \dout_i_reg[7]_2 ;
  wire \dout_i_reg[7]_i_4_0 ;
  wire \dout_i_reg[7]_i_4_n_0 ;
  wire [7:0]\dout_i_reg[7]_i_8_0 ;
  wire [7:0]\dout_i_reg[7]_i_8_1 ;
  wire \dout_i_reg[7]_i_8_n_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_1 
       (.I0(\dout_i_reg[0]_i_2_n_0 ),
        .I1(\dout_i_reg[0] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[0]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_14 
       (.I0(\dout_2d[51]_51 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [0]),
        .O(\dout_i[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_1 
       (.I0(\dout_i_reg[1]_i_2_n_0 ),
        .I1(\dout_i_reg[1] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[1]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[1]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_14 
       (.I0(\dout_2d[51]_51 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [1]),
        .O(\dout_i[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_1 
       (.I0(\dout_i_reg[2]_i_2_n_0 ),
        .I1(\dout_i_reg[2] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[2]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[2]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_14 
       (.I0(\dout_2d[51]_51 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [2]),
        .O(\dout_i[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_1 
       (.I0(\dout_i_reg[3]_i_2_n_0 ),
        .I1(\dout_i_reg[3] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[3]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[3]_1 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_14 
       (.I0(\dout_2d[51]_51 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [3]),
        .O(\dout_i[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_1 
       (.I0(\dout_i_reg[4]_i_2_n_0 ),
        .I1(\dout_i_reg[4] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[4]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[4]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_14 
       (.I0(\dout_2d[51]_51 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [4]),
        .O(\dout_i[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_1 
       (.I0(\dout_i_reg[5]_i_2_n_0 ),
        .I1(\dout_i_reg[5] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[5]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[5]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_14 
       (.I0(\dout_2d[51]_51 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [5]),
        .O(\dout_i[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_1 
       (.I0(\dout_i_reg[6]_i_2_n_0 ),
        .I1(\dout_i_reg[6] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[6]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[6]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_14 
       (.I0(\dout_2d[51]_51 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [6]),
        .O(\dout_i[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_16 
       (.I0(\dout_2d[51]_51 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_1 [7]),
        .O(\dout_i[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_2 
       (.I0(\dout_i_reg[7]_i_4_n_0 ),
        .I1(\dout_i_reg[7] ),
        .I2(Q[9]),
        .I3(\dout_i_reg[7]_0 ),
        .I4(Q[8]),
        .I5(\dout_i_reg[7]_1 ),
        .O(D[7]));
  MUXF8 \dout_i_reg[0]_i_2 
       (.I0(\dout_i_reg[0]_i_6_n_0 ),
        .I1(\dout_i_reg[0]_2 ),
        .O(\dout_i_reg[0]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[0]_i_6 
       (.I0(\dout_i[0]_i_14_n_0 ),
        .I1(\dout_i_reg[0]_i_2_0 ),
        .O(\dout_i_reg[0]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[1]_i_2 
       (.I0(\dout_i_reg[1]_i_6_n_0 ),
        .I1(\dout_i_reg[1]_2 ),
        .O(\dout_i_reg[1]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[1]_i_6 
       (.I0(\dout_i[1]_i_14_n_0 ),
        .I1(\dout_i_reg[1]_i_2_0 ),
        .O(\dout_i_reg[1]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[2]_i_2 
       (.I0(\dout_i_reg[2]_i_6_n_0 ),
        .I1(\dout_i_reg[2]_2 ),
        .O(\dout_i_reg[2]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[2]_i_6 
       (.I0(\dout_i[2]_i_14_n_0 ),
        .I1(\dout_i_reg[2]_i_2_0 ),
        .O(\dout_i_reg[2]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[3]_i_2 
       (.I0(\dout_i_reg[3]_i_6_n_0 ),
        .I1(\dout_i_reg[3]_2 ),
        .O(\dout_i_reg[3]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[3]_i_6 
       (.I0(\dout_i[3]_i_14_n_0 ),
        .I1(\dout_i_reg[3]_i_2_0 ),
        .O(\dout_i_reg[3]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[4]_i_2 
       (.I0(\dout_i_reg[4]_i_6_n_0 ),
        .I1(\dout_i_reg[4]_2 ),
        .O(\dout_i_reg[4]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[4]_i_6 
       (.I0(\dout_i[4]_i_14_n_0 ),
        .I1(\dout_i_reg[4]_i_2_0 ),
        .O(\dout_i_reg[4]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[5]_i_2 
       (.I0(\dout_i_reg[5]_i_6_n_0 ),
        .I1(\dout_i_reg[5]_2 ),
        .O(\dout_i_reg[5]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[5]_i_6 
       (.I0(\dout_i[5]_i_14_n_0 ),
        .I1(\dout_i_reg[5]_i_2_0 ),
        .O(\dout_i_reg[5]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[6]_i_2 
       (.I0(\dout_i_reg[6]_i_6_n_0 ),
        .I1(\dout_i_reg[6]_2 ),
        .O(\dout_i_reg[6]_i_2_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[6]_i_6 
       (.I0(\dout_i[6]_i_14_n_0 ),
        .I1(\dout_i_reg[6]_i_2_0 ),
        .O(\dout_i_reg[6]_i_6_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[7]_i_4 
       (.I0(\dout_i_reg[7]_i_8_n_0 ),
        .I1(\dout_i_reg[7]_2 ),
        .O(\dout_i_reg[7]_i_4_n_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[7]_i_8 
       (.I0(\dout_i[7]_i_16_n_0 ),
        .I1(\dout_i_reg[7]_i_4_0 ),
        .O(\dout_i_reg[7]_i_8_n_0 ),
        .S(Q[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[51]_51 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[51]_51 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[51]_51 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[51]_51 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[51]_51 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[51]_51 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[51]_51 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[51]_51 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_45
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_46
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_47
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_48
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_8 ,
    \dout_i_reg[7]_i_8_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_8 ;
  input [7:0]\dout_i_reg[7]_i_8_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[55]_55 ;
  wire [7:0]\dout_i_reg[7]_i_8 ;
  wire [7:0]\dout_i_reg[7]_i_8_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_15 
       (.I0(\dout_2d[55]_55 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_15 
       (.I0(\dout_2d[55]_55 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_15 
       (.I0(\dout_2d[55]_55 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_15 
       (.I0(\dout_2d[55]_55 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_15 
       (.I0(\dout_2d[55]_55 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_15 
       (.I0(\dout_2d[55]_55 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_15 
       (.I0(\dout_2d[55]_55 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_17 
       (.I0(\dout_2d[55]_55 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_8 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_8_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[55]_55 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[55]_55 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[55]_55 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[55]_55 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[55]_55 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[55]_55 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[55]_55 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[55]_55 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_49
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_5
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_50
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_51
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_52
   (\count_reg[6] ,
    \count_reg[6]_0 ,
    \count_reg[6]_1 ,
    \count_reg[6]_2 ,
    \count_reg[6]_3 ,
    \count_reg[6]_4 ,
    \count_reg[6]_5 ,
    \count_reg[6]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0]_i_2 ,
    DOUT,
    \dout_i_reg[7]_i_9_0 ,
    \dout_i_reg[7]_i_9_1 ,
    \dout_i_reg[1]_i_2 ,
    \dout_i_reg[2]_i_2 ,
    \dout_i_reg[3]_i_2 ,
    \dout_i_reg[4]_i_2 ,
    \dout_i_reg[5]_i_2 ,
    \dout_i_reg[6]_i_2 ,
    \dout_i_reg[7]_i_4 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[6] ;
  output \count_reg[6]_0 ;
  output \count_reg[6]_1 ;
  output \count_reg[6]_2 ;
  output \count_reg[6]_3 ;
  output \count_reg[6]_4 ;
  output \count_reg[6]_5 ;
  output \count_reg[6]_6 ;
  output [7:0]DOUT_END;
  input [6:0]Q;
  input \dout_i_reg[0]_i_2 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_9_0 ;
  input [7:0]\dout_i_reg[7]_i_9_1 ;
  input \dout_i_reg[1]_i_2 ;
  input \dout_i_reg[2]_i_2 ;
  input \dout_i_reg[3]_i_2 ;
  input \dout_i_reg[4]_i_2 ;
  input \dout_i_reg[5]_i_2 ;
  input \dout_i_reg[6]_i_2 ;
  input \dout_i_reg[7]_i_4 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [6:0]Q;
  wire clk;
  wire \count_reg[6] ;
  wire \count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire \count_reg[6]_2 ;
  wire \count_reg[6]_3 ;
  wire \count_reg[6]_4 ;
  wire \count_reg[6]_5 ;
  wire \count_reg[6]_6 ;
  wire [7:0]\dout_2d[59]_59 ;
  wire \dout_i[0]_i_16_n_0 ;
  wire \dout_i[1]_i_16_n_0 ;
  wire \dout_i[2]_i_16_n_0 ;
  wire \dout_i[3]_i_16_n_0 ;
  wire \dout_i[4]_i_16_n_0 ;
  wire \dout_i[5]_i_16_n_0 ;
  wire \dout_i[6]_i_16_n_0 ;
  wire \dout_i[7]_i_18_n_0 ;
  wire \dout_i_reg[0]_i_2 ;
  wire \dout_i_reg[1]_i_2 ;
  wire \dout_i_reg[2]_i_2 ;
  wire \dout_i_reg[3]_i_2 ;
  wire \dout_i_reg[4]_i_2 ;
  wire \dout_i_reg[5]_i_2 ;
  wire \dout_i_reg[6]_i_2 ;
  wire \dout_i_reg[7]_i_4 ;
  wire [7:0]\dout_i_reg[7]_i_9_0 ;
  wire [7:0]\dout_i_reg[7]_i_9_1 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_16 
       (.I0(\dout_2d[59]_59 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [0]),
        .O(\dout_i[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_16 
       (.I0(\dout_2d[59]_59 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [1]),
        .O(\dout_i[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_16 
       (.I0(\dout_2d[59]_59 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [2]),
        .O(\dout_i[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_16 
       (.I0(\dout_2d[59]_59 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [3]),
        .O(\dout_i[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_16 
       (.I0(\dout_2d[59]_59 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [4]),
        .O(\dout_i[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_16 
       (.I0(\dout_2d[59]_59 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [5]),
        .O(\dout_i[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_16 
       (.I0(\dout_2d[59]_59 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [6]),
        .O(\dout_i[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_18 
       (.I0(\dout_2d[59]_59 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_1 [7]),
        .O(\dout_i[7]_i_18_n_0 ));
  MUXF7 \dout_i_reg[0]_i_7 
       (.I0(\dout_i[0]_i_16_n_0 ),
        .I1(\dout_i_reg[0]_i_2 ),
        .O(\count_reg[6] ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[1]_i_7 
       (.I0(\dout_i[1]_i_16_n_0 ),
        .I1(\dout_i_reg[1]_i_2 ),
        .O(\count_reg[6]_0 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[2]_i_7 
       (.I0(\dout_i[2]_i_16_n_0 ),
        .I1(\dout_i_reg[2]_i_2 ),
        .O(\count_reg[6]_1 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[3]_i_7 
       (.I0(\dout_i[3]_i_16_n_0 ),
        .I1(\dout_i_reg[3]_i_2 ),
        .O(\count_reg[6]_2 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[4]_i_7 
       (.I0(\dout_i[4]_i_16_n_0 ),
        .I1(\dout_i_reg[4]_i_2 ),
        .O(\count_reg[6]_3 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[5]_i_7 
       (.I0(\dout_i[5]_i_16_n_0 ),
        .I1(\dout_i_reg[5]_i_2 ),
        .O(\count_reg[6]_4 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[6]_i_7 
       (.I0(\dout_i[6]_i_16_n_0 ),
        .I1(\dout_i_reg[6]_i_2 ),
        .O(\count_reg[6]_5 ),
        .S(Q[6]));
  MUXF7 \dout_i_reg[7]_i_9 
       (.I0(\dout_i[7]_i_18_n_0 ),
        .I1(\dout_i_reg[7]_i_4 ),
        .O(\count_reg[6]_6 ),
        .S(Q[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[59]_59 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[59]_59 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[59]_59 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[59]_59 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[59]_59 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[59]_59 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[59]_59 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[59]_59 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_53
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_54
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_55
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_56
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_1 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_1 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[3].gv4.srl16_1 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[5].gv4.srl16_1 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[3].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[5].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_57
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT,
    Q,
    \dout_i_reg[7]_i_9 ,
    \dout_i_reg[7]_i_9_0 ,
    p_10_out,
    DIN,
    \dout_i[1]_i_17_0 ,
    \dout_i[0]_i_17_0 ,
    clk,
    \dout_i[1]_i_17_1 ,
    \dout_i[3]_i_17_0 ,
    \dout_i[2]_i_17_0 ,
    \dout_i[3]_i_17_1 ,
    \dout_i[5]_i_17_0 ,
    \dout_i[4]_i_17_0 ,
    \dout_i[5]_i_17_1 ,
    \dout_i[6]_i_17_0 ,
    \dout_i[6]_i_17_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_9 ;
  input [7:0]\dout_i_reg[7]_i_9_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \dout_i[1]_i_17_0 ;
  input \dout_i[0]_i_17_0 ;
  input clk;
  input \dout_i[1]_i_17_1 ;
  input \dout_i[3]_i_17_0 ;
  input \dout_i[2]_i_17_0 ;
  input \dout_i[3]_i_17_1 ;
  input \dout_i[5]_i_17_0 ;
  input \dout_i[4]_i_17_0 ;
  input \dout_i[5]_i_17_1 ;
  input \dout_i[6]_i_17_0 ;
  input \dout_i[6]_i_17_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[63]_63 ;
  wire \dout_i[0]_i_17_0 ;
  wire \dout_i[1]_i_17_0 ;
  wire \dout_i[1]_i_17_1 ;
  wire \dout_i[2]_i_17_0 ;
  wire \dout_i[3]_i_17_0 ;
  wire \dout_i[3]_i_17_1 ;
  wire \dout_i[4]_i_17_0 ;
  wire \dout_i[5]_i_17_0 ;
  wire \dout_i[5]_i_17_1 ;
  wire \dout_i[6]_i_17_0 ;
  wire \dout_i[6]_i_17_1 ;
  wire [7:0]\dout_i_reg[7]_i_9 ;
  wire [7:0]\dout_i_reg[7]_i_9_0 ;
  wire \gram.gsms[0].gv4.srl16_n_1 ;
  wire \gram.gsms[1].gv4.srl16_n_1 ;
  wire \gram.gsms[2].gv4.srl16_n_1 ;
  wire \gram.gsms[3].gv4.srl16_n_1 ;
  wire \gram.gsms[4].gv4.srl16_n_1 ;
  wire \gram.gsms[5].gv4.srl16_n_1 ;
  wire \gram.gsms[6].gv4.srl16_n_1 ;
  wire \gram.gsms[7].gv4.srl16_n_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_17 
       (.I0(\dout_2d[63]_63 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_17 
       (.I0(\dout_2d[63]_63 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_17 
       (.I0(\dout_2d[63]_63 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_17 
       (.I0(\dout_2d[63]_63 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_17 
       (.I0(\dout_2d[63]_63 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_17 
       (.I0(\dout_2d[63]_63 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_17 
       (.I0(\dout_2d[63]_63 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_19 
       (.I0(\dout_2d[63]_63 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_9 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_9_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\dout_i[1]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[0]_i_17_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[63]_63 [0]),
        .Q15(\gram.gsms[0].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\dout_i[1]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[1]_i_17_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[63]_63 [1]),
        .Q15(\gram.gsms[1].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\dout_i[3]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[2]_i_17_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[63]_63 [2]),
        .Q15(\gram.gsms[2].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\dout_i[3]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[3]_i_17_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[63]_63 [3]),
        .Q15(\gram.gsms[3].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\dout_i[5]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[4]_i_17_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[63]_63 [4]),
        .Q15(\gram.gsms[4].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\dout_i[5]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[5]_i_17_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[63]_63 [5]),
        .Q15(\gram.gsms[5].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\dout_i[6]_i_17_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\dout_i[6]_i_17_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[63]_63 [6]),
        .Q15(\gram.gsms[6].gv4.srl16_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[63]_63 [7]),
        .Q15(\gram.gsms[7].gv4.srl16_n_1 ));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_58
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_59
   (\count_reg[5] ,
    \count_reg[5]_0 ,
    \count_reg[5]_1 ,
    \count_reg[5]_2 ,
    \count_reg[5]_3 ,
    \count_reg[5]_4 ,
    \count_reg[5]_5 ,
    \count_reg[5]_6 ,
    DOUT_END,
    DOUT,
    Q,
    \dout_i_reg[7]_i_14 ,
    \dout_i_reg[7]_i_14_0 ,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[5] ;
  output \count_reg[5]_0 ;
  output \count_reg[5]_1 ;
  output \count_reg[5]_2 ;
  output \count_reg[5]_3 ;
  output \count_reg[5]_4 ;
  output \count_reg[5]_5 ;
  output \count_reg[5]_6 ;
  output [7:0]DOUT_END;
  input [7:0]DOUT;
  input [5:0]Q;
  input [7:0]\dout_i_reg[7]_i_14 ;
  input [7:0]\dout_i_reg[7]_i_14_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [5:0]Q;
  wire clk;
  wire \count_reg[5] ;
  wire \count_reg[5]_0 ;
  wire \count_reg[5]_1 ;
  wire \count_reg[5]_2 ;
  wire \count_reg[5]_3 ;
  wire \count_reg[5]_4 ;
  wire \count_reg[5]_5 ;
  wire \count_reg[5]_6 ;
  wire [7:0]\dout_2d[7]_7 ;
  wire [7:0]\dout_i_reg[7]_i_14 ;
  wire [7:0]\dout_i_reg[7]_i_14_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_27 
       (.I0(\dout_2d[7]_7 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [0]),
        .O(\count_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_27 
       (.I0(\dout_2d[7]_7 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [1]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_27 
       (.I0(\dout_2d[7]_7 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [2]),
        .O(\count_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_27 
       (.I0(\dout_2d[7]_7 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [3]),
        .O(\count_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_27 
       (.I0(\dout_2d[7]_7 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [4]),
        .O(\count_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_27 
       (.I0(\dout_2d[7]_7 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [5]),
        .O(\count_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_27 
       (.I0(\dout_2d[7]_7 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [6]),
        .O(\count_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_29 
       (.I0(\dout_2d[7]_7 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_14 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_14_0 [7]),
        .O(\count_reg[5]_6 ));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[7]_7 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[7]_7 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[7]_7 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[7]_7 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[7]_7 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[7]_7 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[7]_7 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[7]_7 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_6
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_60
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_61
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_62
   (DOUT,
    DOUT_END,
    p_10_out,
    din,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]din;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire [7:0]din;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(din[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_7
   (DOUT,
    DOUT_END,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_8
   (\count_reg[7] ,
    \count_reg[7]_0 ,
    \count_reg[7]_1 ,
    \count_reg[7]_2 ,
    \count_reg[7]_3 ,
    \count_reg[7]_4 ,
    \count_reg[7]_5 ,
    \count_reg[7]_6 ,
    DOUT_END,
    Q,
    \dout_i_reg[0] ,
    \dout_i_reg[0]_i_4_0 ,
    DOUT,
    \dout_i_reg[7]_i_12_0 ,
    \dout_i_reg[7]_i_12_1 ,
    \dout_i_reg[1] ,
    \dout_i_reg[1]_i_4_0 ,
    \dout_i_reg[2] ,
    \dout_i_reg[2]_i_4_0 ,
    \dout_i_reg[3] ,
    \dout_i_reg[3]_i_4_0 ,
    \dout_i_reg[4] ,
    \dout_i_reg[4]_i_4_0 ,
    \dout_i_reg[5] ,
    \dout_i_reg[5]_i_4_0 ,
    \dout_i_reg[6] ,
    \dout_i_reg[6]_i_4_0 ,
    \dout_i_reg[7] ,
    \dout_i_reg[7]_i_6_0 ,
    p_10_out,
    DIN,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    clk,
    \gram.gsms[1].gv4.srl16_1 ,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output \count_reg[7] ;
  output \count_reg[7]_0 ;
  output \count_reg[7]_1 ;
  output \count_reg[7]_2 ;
  output \count_reg[7]_3 ;
  output \count_reg[7]_4 ;
  output \count_reg[7]_5 ;
  output \count_reg[7]_6 ;
  output [7:0]DOUT_END;
  input [7:0]Q;
  input \dout_i_reg[0] ;
  input \dout_i_reg[0]_i_4_0 ;
  input [7:0]DOUT;
  input [7:0]\dout_i_reg[7]_i_12_0 ;
  input [7:0]\dout_i_reg[7]_i_12_1 ;
  input \dout_i_reg[1] ;
  input \dout_i_reg[1]_i_4_0 ;
  input \dout_i_reg[2] ;
  input \dout_i_reg[2]_i_4_0 ;
  input \dout_i_reg[3] ;
  input \dout_i_reg[3]_i_4_0 ;
  input \dout_i_reg[4] ;
  input \dout_i_reg[4]_i_4_0 ;
  input \dout_i_reg[5] ;
  input \dout_i_reg[5]_i_4_0 ;
  input \dout_i_reg[6] ;
  input \dout_i_reg[6]_i_4_0 ;
  input \dout_i_reg[7] ;
  input \dout_i_reg[7]_i_6_0 ;
  input p_10_out;
  input [7:0]DIN;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input clk;
  input \gram.gsms[1].gv4.srl16_1 ;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [7:0]Q;
  wire clk;
  wire \count_reg[7] ;
  wire \count_reg[7]_0 ;
  wire \count_reg[7]_1 ;
  wire \count_reg[7]_2 ;
  wire \count_reg[7]_3 ;
  wire \count_reg[7]_4 ;
  wire \count_reg[7]_5 ;
  wire \count_reg[7]_6 ;
  wire [7:0]\dout_2d[19]_19 ;
  wire \dout_i[0]_i_22_n_0 ;
  wire \dout_i[1]_i_22_n_0 ;
  wire \dout_i[2]_i_22_n_0 ;
  wire \dout_i[3]_i_22_n_0 ;
  wire \dout_i[4]_i_22_n_0 ;
  wire \dout_i[5]_i_22_n_0 ;
  wire \dout_i[6]_i_22_n_0 ;
  wire \dout_i[7]_i_24_n_0 ;
  wire \dout_i_reg[0] ;
  wire \dout_i_reg[0]_i_10_n_0 ;
  wire \dout_i_reg[0]_i_4_0 ;
  wire \dout_i_reg[1] ;
  wire \dout_i_reg[1]_i_10_n_0 ;
  wire \dout_i_reg[1]_i_4_0 ;
  wire \dout_i_reg[2] ;
  wire \dout_i_reg[2]_i_10_n_0 ;
  wire \dout_i_reg[2]_i_4_0 ;
  wire \dout_i_reg[3] ;
  wire \dout_i_reg[3]_i_10_n_0 ;
  wire \dout_i_reg[3]_i_4_0 ;
  wire \dout_i_reg[4] ;
  wire \dout_i_reg[4]_i_10_n_0 ;
  wire \dout_i_reg[4]_i_4_0 ;
  wire \dout_i_reg[5] ;
  wire \dout_i_reg[5]_i_10_n_0 ;
  wire \dout_i_reg[5]_i_4_0 ;
  wire \dout_i_reg[6] ;
  wire \dout_i_reg[6]_i_10_n_0 ;
  wire \dout_i_reg[6]_i_4_0 ;
  wire \dout_i_reg[7] ;
  wire [7:0]\dout_i_reg[7]_i_12_0 ;
  wire [7:0]\dout_i_reg[7]_i_12_1 ;
  wire \dout_i_reg[7]_i_12_n_0 ;
  wire \dout_i_reg[7]_i_6_0 ;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[1].gv4.srl16_1 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire p_10_out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[0]_i_22 
       (.I0(\dout_2d[19]_19 [0]),
        .I1(DOUT[0]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [0]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [0]),
        .O(\dout_i[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[1]_i_22 
       (.I0(\dout_2d[19]_19 [1]),
        .I1(DOUT[1]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [1]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [1]),
        .O(\dout_i[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[2]_i_22 
       (.I0(\dout_2d[19]_19 [2]),
        .I1(DOUT[2]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [2]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [2]),
        .O(\dout_i[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[3]_i_22 
       (.I0(\dout_2d[19]_19 [3]),
        .I1(DOUT[3]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [3]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [3]),
        .O(\dout_i[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[4]_i_22 
       (.I0(\dout_2d[19]_19 [4]),
        .I1(DOUT[4]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [4]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [4]),
        .O(\dout_i[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[5]_i_22 
       (.I0(\dout_2d[19]_19 [5]),
        .I1(DOUT[5]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [5]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [5]),
        .O(\dout_i[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[6]_i_22 
       (.I0(\dout_2d[19]_19 [6]),
        .I1(DOUT[6]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [6]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [6]),
        .O(\dout_i[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout_i[7]_i_24 
       (.I0(\dout_2d[19]_19 [7]),
        .I1(DOUT[7]),
        .I2(Q[5]),
        .I3(\dout_i_reg[7]_i_12_0 [7]),
        .I4(Q[4]),
        .I5(\dout_i_reg[7]_i_12_1 [7]),
        .O(\dout_i[7]_i_24_n_0 ));
  MUXF7 \dout_i_reg[0]_i_10 
       (.I0(\dout_i[0]_i_22_n_0 ),
        .I1(\dout_i_reg[0]_i_4_0 ),
        .O(\dout_i_reg[0]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[0]_i_4 
       (.I0(\dout_i_reg[0]_i_10_n_0 ),
        .I1(\dout_i_reg[0] ),
        .O(\count_reg[7] ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[1]_i_10 
       (.I0(\dout_i[1]_i_22_n_0 ),
        .I1(\dout_i_reg[1]_i_4_0 ),
        .O(\dout_i_reg[1]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[1]_i_4 
       (.I0(\dout_i_reg[1]_i_10_n_0 ),
        .I1(\dout_i_reg[1] ),
        .O(\count_reg[7]_0 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[2]_i_10 
       (.I0(\dout_i[2]_i_22_n_0 ),
        .I1(\dout_i_reg[2]_i_4_0 ),
        .O(\dout_i_reg[2]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[2]_i_4 
       (.I0(\dout_i_reg[2]_i_10_n_0 ),
        .I1(\dout_i_reg[2] ),
        .O(\count_reg[7]_1 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[3]_i_10 
       (.I0(\dout_i[3]_i_22_n_0 ),
        .I1(\dout_i_reg[3]_i_4_0 ),
        .O(\dout_i_reg[3]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[3]_i_4 
       (.I0(\dout_i_reg[3]_i_10_n_0 ),
        .I1(\dout_i_reg[3] ),
        .O(\count_reg[7]_2 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[4]_i_10 
       (.I0(\dout_i[4]_i_22_n_0 ),
        .I1(\dout_i_reg[4]_i_4_0 ),
        .O(\dout_i_reg[4]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[4]_i_4 
       (.I0(\dout_i_reg[4]_i_10_n_0 ),
        .I1(\dout_i_reg[4] ),
        .O(\count_reg[7]_3 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[5]_i_10 
       (.I0(\dout_i[5]_i_22_n_0 ),
        .I1(\dout_i_reg[5]_i_4_0 ),
        .O(\dout_i_reg[5]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[5]_i_4 
       (.I0(\dout_i_reg[5]_i_10_n_0 ),
        .I1(\dout_i_reg[5] ),
        .O(\count_reg[7]_4 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[6]_i_10 
       (.I0(\dout_i[6]_i_22_n_0 ),
        .I1(\dout_i_reg[6]_i_4_0 ),
        .O(\dout_i_reg[6]_i_10_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[6]_i_4 
       (.I0(\dout_i_reg[6]_i_10_n_0 ),
        .I1(\dout_i_reg[6] ),
        .O(\count_reg[7]_5 ),
        .S(Q[7]));
  MUXF7 \dout_i_reg[7]_i_12 
       (.I0(\dout_i[7]_i_24_n_0 ),
        .I1(\dout_i_reg[7]_i_6_0 ),
        .O(\dout_i_reg[7]_i_12_n_0 ),
        .S(Q[6]));
  MUXF8 \dout_i_reg[7]_i_6 
       (.I0(\dout_i_reg[7]_i_12_n_0 ),
        .I1(\dout_i_reg[7] ),
        .O(\count_reg[7]_6 ),
        .S(Q[7]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[0]),
        .Q(\dout_2d[19]_19 [0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[1].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[1]),
        .Q(\dout_2d[19]_19 [1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[2]),
        .Q(\dout_2d[19]_19 [2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[3]),
        .Q(\dout_2d[19]_19 [3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[4]),
        .Q(\dout_2d[19]_19 [4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[5]),
        .Q(\dout_2d[19]_19 [5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[6]),
        .Q(\dout_2d[19]_19 [6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(DIN[7]),
        .Q(\dout_2d[19]_19 [7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "shft_wrapper" *) 
module fifo_us_shft_wrapper_9
   (DOUT,
    DOUT_END,
    p_10_out,
    \gram.gsms[7].gv4.srl16_0 ,
    \gram.gsms[0].gv4.srl16_0 ,
    Q,
    \gram.gsms[0].gv4.srl16_1 ,
    clk,
    \gram.gsms[2].gv4.srl16_0 ,
    \gram.gsms[1].gv4.srl16_0 ,
    \gram.gsms[2].gv4.srl16_1 ,
    \gram.gsms[4].gv4.srl16_0 ,
    \gram.gsms[3].gv4.srl16_0 ,
    \gram.gsms[4].gv4.srl16_1 ,
    \gram.gsms[6].gv4.srl16_0 ,
    \gram.gsms[5].gv4.srl16_0 ,
    \gram.gsms[6].gv4.srl16_1 );
  output [7:0]DOUT;
  output [7:0]DOUT_END;
  input p_10_out;
  input [7:0]\gram.gsms[7].gv4.srl16_0 ;
  input \gram.gsms[0].gv4.srl16_0 ;
  input [3:0]Q;
  input \gram.gsms[0].gv4.srl16_1 ;
  input clk;
  input \gram.gsms[2].gv4.srl16_0 ;
  input \gram.gsms[1].gv4.srl16_0 ;
  input \gram.gsms[2].gv4.srl16_1 ;
  input \gram.gsms[4].gv4.srl16_0 ;
  input \gram.gsms[3].gv4.srl16_0 ;
  input \gram.gsms[4].gv4.srl16_1 ;
  input \gram.gsms[6].gv4.srl16_0 ;
  input \gram.gsms[5].gv4.srl16_0 ;
  input \gram.gsms[6].gv4.srl16_1 ;

  wire [7:0]DOUT;
  wire [7:0]DOUT_END;
  wire [3:0]Q;
  wire clk;
  wire \gram.gsms[0].gv4.srl16_0 ;
  wire \gram.gsms[0].gv4.srl16_1 ;
  wire \gram.gsms[1].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_0 ;
  wire \gram.gsms[2].gv4.srl16_1 ;
  wire \gram.gsms[3].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_0 ;
  wire \gram.gsms[4].gv4.srl16_1 ;
  wire \gram.gsms[5].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_0 ;
  wire \gram.gsms[6].gv4.srl16_1 ;
  wire [7:0]\gram.gsms[7].gv4.srl16_0 ;
  wire p_10_out;

  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[0].gv4.srl16 
       (.A0(\gram.gsms[0].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[0].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [0]),
        .Q(DOUT[0]),
        .Q15(DOUT_END[0]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[1].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[1].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [1]),
        .Q(DOUT[1]),
        .Q15(DOUT_END[1]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[2].gv4.srl16 
       (.A0(\gram.gsms[2].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[2].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [2]),
        .Q(DOUT[2]),
        .Q15(DOUT_END[2]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[3].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[3].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [3]),
        .Q(DOUT[3]),
        .Q15(DOUT_END[3]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[4].gv4.srl16 
       (.A0(\gram.gsms[4].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[4].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [4]),
        .Q(DOUT[4]),
        .Q15(DOUT_END[4]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[5].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[5].gv4.srl16_0 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [5]),
        .Q(DOUT[5]),
        .Q15(DOUT_END[5]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[6].gv4.srl16 
       (.A0(\gram.gsms[6].gv4.srl16_0 ),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(\gram.gsms[6].gv4.srl16_1 ),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [6]),
        .Q(DOUT[6]),
        .Q15(DOUT_END[6]));
  (* box_type = "PRIMITIVE" *) 
  SRLC16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gram.gsms[7].gv4.srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(p_10_out),
        .CLK(clk),
        .D(\gram.gsms[7].gv4.srl16_0 [7]),
        .Q(DOUT[7]),
        .Q15(DOUT_END[7]));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module fifo_us_updn_cntr
   (S,
    Q,
    \count_reg[7]_0 ,
    \count_reg[8]_0 ,
    DI,
    \count_reg[3]_rep_0 ,
    \count_reg[3]_rep__0_0 ,
    \count_reg[3]_rep__1_0 ,
    \count_reg[3]_rep__2_0 ,
    \count_reg[3]_rep__3_0 ,
    \count_reg[3]_rep__4_0 ,
    \count_reg[3]_rep__5_0 ,
    \count_reg[0]_rep_0 ,
    \count_reg[0]_rep__0_0 ,
    \count_reg[0]_rep__1_0 ,
    \count_reg[0]_rep__2_0 ,
    out,
    rd_en,
    sel,
    D,
    clk,
    \count_reg[0]_rep__2_1 );
  output [3:0]S;
  output [9:0]Q;
  output [3:0]\count_reg[7]_0 ;
  output [0:0]\count_reg[8]_0 ;
  output [0:0]DI;
  output \count_reg[3]_rep_0 ;
  output \count_reg[3]_rep__0_0 ;
  output \count_reg[3]_rep__1_0 ;
  output \count_reg[3]_rep__2_0 ;
  output \count_reg[3]_rep__3_0 ;
  output \count_reg[3]_rep__4_0 ;
  output \count_reg[3]_rep__5_0 ;
  output \count_reg[0]_rep_0 ;
  output \count_reg[0]_rep__0_0 ;
  output \count_reg[0]_rep__1_0 ;
  output \count_reg[0]_rep__2_0 ;
  input out;
  input rd_en;
  input sel;
  input [8:0]D;
  input clk;
  input \count_reg[0]_rep__2_1 ;

  wire [8:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_rep__0_i_1_n_0 ;
  wire \count[0]_rep__1_i_1_n_0 ;
  wire \count[0]_rep__2_i_1_n_0 ;
  wire \count[0]_rep_i_1_n_0 ;
  wire \count_reg[0]_rep_0 ;
  wire \count_reg[0]_rep__0_0 ;
  wire \count_reg[0]_rep__1_0 ;
  wire \count_reg[0]_rep__2_0 ;
  wire \count_reg[0]_rep__2_1 ;
  wire \count_reg[3]_rep_0 ;
  wire \count_reg[3]_rep__0_0 ;
  wire \count_reg[3]_rep__1_0 ;
  wire \count_reg[3]_rep__2_0 ;
  wire \count_reg[3]_rep__3_0 ;
  wire \count_reg[3]_rep__4_0 ;
  wire \count_reg[3]_rep__5_0 ;
  wire [3:0]\count_reg[7]_0 ;
  wire [0:0]\count_reg[8]_0 ;
  wire out;
  wire rd_en;
  wire sel;

  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\count_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\count_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    count0_carry_i_1
       (.I0(Q[1]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    count0_carry_i_5
       (.I0(Q[1]),
        .I1(out),
        .I2(rd_en),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_rep__0_i_1 
       (.I0(Q[0]),
        .O(\count[0]_rep__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_rep__1_i_1 
       (.I0(Q[0]),
        .O(\count[0]_rep__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_rep__2_i_1 
       (.I0(Q[0]),
        .O(\count[0]_rep__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_rep_i_1 
       (.I0(Q[0]),
        .O(\count[0]_rep_i_1_n_0 ));
  (* ORIG_CELL_NAME = "count_reg[0]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_i_1_n_0 ),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[0]));
  (* ORIG_CELL_NAME = "count_reg[0]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0]_rep 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_rep_i_1_n_0 ),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[0]_rep_0 ));
  (* ORIG_CELL_NAME = "count_reg[0]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0]_rep__0 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_rep__0_i_1_n_0 ),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[0]_rep__0_0 ));
  (* ORIG_CELL_NAME = "count_reg[0]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0]_rep__1 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_rep__1_i_1_n_0 ),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[0]_rep__1_0 ));
  (* ORIG_CELL_NAME = "count_reg[0]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0]_rep__2 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_rep__2_i_1_n_0 ),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[0]_rep__2_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(D[0]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(D[1]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[2]));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[3]));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__0 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__0_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__1 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__1_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__2 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__2_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__3 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__3_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__4 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__4_0 ));
  (* ORIG_CELL_NAME = "count_reg[3]" *) 
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]_rep__5 
       (.C(clk),
        .CE(sel),
        .D(D[2]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(\count_reg[3]_rep__5_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(D[3]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(D[4]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(D[5]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(D[6]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[7]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(D[7]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(D[8]),
        .PRE(\count_reg[0]_rep__2_1 ),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module fifo_us_updn_cntr__parameterized0
   (S,
    Q,
    \count_reg[7]_0 ,
    \count_reg[8]_0 ,
    \count_reg[0]_0 ,
    D,
    DI,
    v1_reg,
    \count_reg[0]_1 ,
    \count_reg[2]_0 ,
    \count_reg[4]_0 ,
    \count_reg[6]_0 ,
    \count_reg[8]_1 ,
    \count_reg[2]_1 ,
    \count_reg[4]_1 ,
    \count_reg[6]_1 ,
    \count_reg[8]_2 ,
    out,
    rd_en,
    \greg.pntr_d1_reg[1] ,
    p_7_out__0,
    \greg.pntr_d1_reg[3] ,
    sel,
    \count_reg[9]_0 ,
    clk,
    \count_reg[9]_1 );
  output [3:0]S;
  output [7:0]Q;
  output [3:0]\count_reg[7]_0 ;
  output [0:0]\count_reg[8]_0 ;
  output \count_reg[0]_0 ;
  output [9:0]D;
  output [0:0]DI;
  output [4:0]v1_reg;
  output \count_reg[0]_1 ;
  output \count_reg[2]_0 ;
  output \count_reg[4]_0 ;
  output \count_reg[6]_0 ;
  output \count_reg[8]_1 ;
  output \count_reg[2]_1 ;
  output \count_reg[4]_1 ;
  output \count_reg[6]_1 ;
  output \count_reg[8]_2 ;
  input out;
  input rd_en;
  input \greg.pntr_d1_reg[1] ;
  input p_7_out__0;
  input \greg.pntr_d1_reg[3] ;
  input sel;
  input [8:0]\count_reg[9]_0 ;
  input clk;
  input \count_reg[9]_1 ;

  wire [9:0]D;
  wire [0:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire clk;
  wire \count[0]_i_1__2_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[2]_1 ;
  wire \count_reg[4]_0 ;
  wire \count_reg[4]_1 ;
  wire \count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire [3:0]\count_reg[7]_0 ;
  wire [0:0]\count_reg[8]_0 ;
  wire \count_reg[8]_1 ;
  wire \count_reg[8]_2 ;
  wire [8:0]\count_reg[9]_0 ;
  wire \count_reg[9]_1 ;
  wire \greg.pntr_d1[7]_i_2_n_0 ;
  wire \greg.pntr_d1[8]_i_2_n_0 ;
  wire \greg.pntr_d1[9]_i_2_n_0 ;
  wire \greg.pntr_d1_reg[1] ;
  wire \greg.pntr_d1_reg[3] ;
  wire out;
  wire p_7_out__0;
  wire [9:8]pntr;
  wire rd_en;
  wire sel;
  wire [4:0]v1_reg;

  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry__0_i_1
       (.I0(Q[7]),
        .I1(pntr[8]),
        .O(\count_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry__1_i_1
       (.I0(pntr[8]),
        .I1(pntr[9]),
        .O(\count_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    count0__24_carry_i_1
       (.I0(Q[1]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__24_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    count0__24_carry_i_5
       (.I0(Q[1]),
        .I1(out),
        .I2(rd_en),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count[0]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [6]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [7]),
        .Q(pntr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[9]_1 ),
        .D(\count_reg[9]_0 [8]),
        .Q(pntr[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(v1_reg[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(v1_reg[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\count_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\count_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(v1_reg[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[4]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(v1_reg[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[6]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(pntr[8]),
        .I1(pntr[9]),
        .O(v1_reg[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(pntr[8]),
        .I1(pntr[9]),
        .O(\count_reg[8]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(pntr[8]),
        .I1(pntr[9]),
        .O(\count_reg[8]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h59AA)) 
    \greg.pntr_d1[0]_i_1 
       (.I0(Q[0]),
        .I1(rd_en),
        .I2(out),
        .I3(\greg.pntr_d1_reg[1] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F778088)) 
    \greg.pntr_d1[1]_i_1 
       (.I0(Q[0]),
        .I1(\greg.pntr_d1_reg[1] ),
        .I2(out),
        .I3(rd_en),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2FFFFFFFD0000000)) 
    \greg.pntr_d1[2]_i_1 
       (.I0(rd_en),
        .I1(out),
        .I2(\greg.pntr_d1_reg[1] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \greg.pntr_d1[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\greg.pntr_d1_reg[1] ),
        .I3(\greg.pntr_d1_reg[3] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \greg.pntr_d1[4]_i_1 
       (.I0(Q[2]),
        .I1(p_7_out__0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \greg.pntr_d1[5]_i_1 
       (.I0(Q[3]),
        .I1(\greg.pntr_d1[7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \greg.pntr_d1[6]_i_1 
       (.I0(Q[4]),
        .I1(\greg.pntr_d1[7]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \greg.pntr_d1[7]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\greg.pntr_d1[7]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hA200000000000000)) 
    \greg.pntr_d1[7]_i_2 
       (.I0(Q[2]),
        .I1(rd_en),
        .I2(out),
        .I3(\greg.pntr_d1_reg[1] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\greg.pntr_d1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \greg.pntr_d1[8]_i_1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\greg.pntr_d1[8]_i_2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(pntr[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \greg.pntr_d1[8]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\greg.pntr_d1_reg[1] ),
        .I4(\greg.pntr_d1_reg[3] ),
        .I5(Q[2]),
        .O(\greg.pntr_d1[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \greg.pntr_d1[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\greg.pntr_d1[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(pntr[8]),
        .I5(pntr[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \greg.pntr_d1[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(p_7_out__0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\greg.pntr_d1[9]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module fifo_us_updn_cntr__parameterized1
   (S,
    Q,
    \count_reg[7]_0 ,
    \count_reg[8]_0 ,
    DI,
    v1_reg,
    out,
    rd_en,
    sel,
    D,
    clk,
    \count_reg[1]_0 );
  output [3:0]S;
  output [7:0]Q;
  output [3:0]\count_reg[7]_0 ;
  output [0:0]\count_reg[8]_0 ;
  output [0:0]DI;
  output [4:0]v1_reg;
  input out;
  input rd_en;
  input sel;
  input [8:0]D;
  input clk;
  input \count_reg[1]_0 ;

  wire [8:0]D;
  wire [0:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire clk;
  wire \count[0]_i_1__0_n_0 ;
  wire \count_reg[1]_0 ;
  wire [3:0]\count_reg[7]_0 ;
  wire [0:0]\count_reg[8]_0 ;
  wire out;
  wire [9:8]pntr_plus1;
  wire rd_en;
  wire sel;
  wire [4:0]v1_reg;

  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry__0_i_1
       (.I0(Q[7]),
        .I1(pntr_plus1[8]),
        .O(\count_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry__1_i_1
       (.I0(pntr_plus1[8]),
        .I1(pntr_plus1[9]),
        .O(\count_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    count0__49_carry_i_1
       (.I0(Q[1]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__49_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    count0__49_carry_i_5
       (.I0(Q[1]),
        .I1(out),
        .I2(rd_en),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count[0]_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\count[0]_i_1__0_n_0 ),
        .PRE(\count_reg[1]_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[6]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[7]),
        .Q(pntr_plus1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[8]),
        .Q(pntr_plus1[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(v1_reg[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(v1_reg[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(v1_reg[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(v1_reg[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(pntr_plus1[8]),
        .I1(pntr_plus1[9]),
        .O(v1_reg[4]));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module fifo_us_updn_cntr__parameterized2
   (S,
    Q,
    \count_reg[7]_0 ,
    \count_reg[8]_0 ,
    DI,
    v1_reg,
    out,
    rd_en,
    sel,
    D,
    clk,
    \count_reg[1]_0 );
  output [3:0]S;
  output [7:0]Q;
  output [3:0]\count_reg[7]_0 ;
  output [0:0]\count_reg[8]_0 ;
  output [0:0]DI;
  output [4:0]v1_reg;
  input out;
  input rd_en;
  input sel;
  input [8:0]D;
  input clk;
  input \count_reg[1]_0 ;

  wire [8:0]D;
  wire [0:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire clk;
  wire \count[0]_i_1__1_n_0 ;
  wire \count_reg[1]_0 ;
  wire [3:0]\count_reg[7]_0 ;
  wire [0:0]\count_reg[8]_0 ;
  wire out;
  wire [9:8]pntr_plus2;
  wire rd_en;
  wire sel;
  wire [4:0]v1_reg;

  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry__0_i_1
       (.I0(Q[7]),
        .I1(pntr_plus2[8]),
        .O(\count_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry__1_i_1
       (.I0(pntr_plus2[8]),
        .I1(pntr_plus2[9]),
        .O(\count_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    count0__74_carry_i_1
       (.I0(Q[1]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    count0__74_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    count0__74_carry_i_5
       (.I0(Q[1]),
        .I1(out),
        .I2(rd_en),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count[0]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(D[0]),
        .PRE(\count_reg[1]_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[6]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[7]),
        .Q(pntr_plus2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(\count_reg[1]_0 ),
        .D(D[8]),
        .Q(pntr_plus2[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(v1_reg[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(v1_reg[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(v1_reg[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(v1_reg[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(pntr_plus2[8]),
        .I1(pntr_plus2[9]),
        .O(v1_reg[4]));
endmodule

(* ORIG_REF_NAME = "wr_pf_sshft" *) 
module fifo_us_wr_pf_sshft
   (prog_full,
    \greg.ram_wr_en_i_reg_0 ,
    clk,
    \greg.ram_rd_en_i_reg_0 ,
    \greg.ram_rd_en_i_reg_1 ,
    out,
    prog_full_thresh,
    \gpf3.prog_full_i_reg_0 ,
    \gpf3.prog_full_i_reg_1 ,
    D);
  output prog_full;
  input \greg.ram_wr_en_i_reg_0 ;
  input clk;
  input \greg.ram_rd_en_i_reg_0 ;
  input \greg.ram_rd_en_i_reg_1 ;
  input out;
  input [9:0]prog_full_thresh;
  input \gpf3.prog_full_i_reg_0 ;
  input \gpf3.prog_full_i_reg_1 ;
  input [9:0]D;

  wire [9:0]D;
  wire clk;
  wire eqOp;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire \gpf3.prog_full_i_i_1_n_0 ;
  wire \gpf3.prog_full_i_i_2_n_0 ;
  wire \gpf3.prog_full_i_reg_0 ;
  wire \gpf3.prog_full_i_reg_1 ;
  wire \greg.pntr_d1_reg_n_0_[0] ;
  wire \greg.pntr_d1_reg_n_0_[1] ;
  wire \greg.pntr_d1_reg_n_0_[2] ;
  wire \greg.pntr_d1_reg_n_0_[3] ;
  wire \greg.pntr_d1_reg_n_0_[4] ;
  wire \greg.pntr_d1_reg_n_0_[5] ;
  wire \greg.pntr_d1_reg_n_0_[6] ;
  wire \greg.pntr_d1_reg_n_0_[7] ;
  wire \greg.pntr_d1_reg_n_0_[8] ;
  wire \greg.pntr_d1_reg_n_0_[9] ;
  wire \greg.ram_rd_en_i_reg_0 ;
  wire \greg.ram_rd_en_i_reg_1 ;
  wire \greg.ram_wr_en_i_reg_0 ;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire out;
  wire prog_full;
  wire [9:0]prog_full_thresh;
  wire ram_rd_en_i;
  wire ram_wr_en_i;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:1]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    eqOp_carry_i_1
       (.I0(prog_full_thresh[9]),
        .I1(\greg.pntr_d1_reg_n_0_[9] ),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(\greg.pntr_d1_reg_n_0_[6] ),
        .I1(prog_full_thresh[6]),
        .I2(prog_full_thresh[8]),
        .I3(\greg.pntr_d1_reg_n_0_[8] ),
        .I4(prog_full_thresh[7]),
        .I5(\greg.pntr_d1_reg_n_0_[7] ),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(\greg.pntr_d1_reg_n_0_[3] ),
        .I1(prog_full_thresh[3]),
        .I2(prog_full_thresh[5]),
        .I3(\greg.pntr_d1_reg_n_0_[5] ),
        .I4(prog_full_thresh[4]),
        .I5(\greg.pntr_d1_reg_n_0_[4] ),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(\greg.pntr_d1_reg_n_0_[0] ),
        .I1(prog_full_thresh[0]),
        .I2(prog_full_thresh[2]),
        .I3(\greg.pntr_d1_reg_n_0_[2] ),
        .I4(prog_full_thresh[1]),
        .I5(\greg.pntr_d1_reg_n_0_[1] ),
        .O(eqOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00FF00F2000000F2)) 
    \gpf3.prog_full_i_i_1 
       (.I0(eqOp),
        .I1(\gpf3.prog_full_i_i_2_n_0 ),
        .I2(gtOp),
        .I3(\gpf3.prog_full_i_reg_0 ),
        .I4(\gpf3.prog_full_i_reg_1 ),
        .I5(prog_full),
        .O(\gpf3.prog_full_i_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpf3.prog_full_i_i_2 
       (.I0(ram_rd_en_i),
        .I1(ram_wr_en_i),
        .O(\gpf3.prog_full_i_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpf3.prog_full_i_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\gpf3.prog_full_i_i_1_n_0 ),
        .PRE(out),
        .Q(prog_full));
  FDCE \greg.pntr_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[0]),
        .Q(\greg.pntr_d1_reg_n_0_[0] ));
  FDCE \greg.pntr_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[1]),
        .Q(\greg.pntr_d1_reg_n_0_[1] ));
  FDCE \greg.pntr_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[2]),
        .Q(\greg.pntr_d1_reg_n_0_[2] ));
  FDCE \greg.pntr_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[3]),
        .Q(\greg.pntr_d1_reg_n_0_[3] ));
  FDCE \greg.pntr_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[4]),
        .Q(\greg.pntr_d1_reg_n_0_[4] ));
  FDCE \greg.pntr_d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[5]),
        .Q(\greg.pntr_d1_reg_n_0_[5] ));
  FDCE \greg.pntr_d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[6]),
        .Q(\greg.pntr_d1_reg_n_0_[6] ));
  FDCE \greg.pntr_d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[7]),
        .Q(\greg.pntr_d1_reg_n_0_[7] ));
  FDCE \greg.pntr_d1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[8]),
        .Q(\greg.pntr_d1_reg_n_0_[8] ));
  FDCE \greg.pntr_d1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(D[9]),
        .Q(\greg.pntr_d1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_rd_en_i_reg 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(\greg.ram_rd_en_i_reg_1 ),
        .Q(ram_rd_en_i));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_wr_en_i_reg 
       (.C(clk),
        .CE(1'b1),
        .CLR(\greg.ram_rd_en_i_reg_0 ),
        .D(\greg.ram_wr_en_i_reg_0 ),
        .Q(ram_wr_en_i));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({NLW_gtOp_carry__0_CO_UNCONNECTED[3:1],gtOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gtOp_carry__0_i_1_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,gtOp_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(\greg.pntr_d1_reg_n_0_[8] ),
        .I1(prog_full_thresh[8]),
        .I2(prog_full_thresh[9]),
        .I3(\greg.pntr_d1_reg_n_0_[9] ),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_2
       (.I0(\greg.pntr_d1_reg_n_0_[8] ),
        .I1(prog_full_thresh[8]),
        .I2(\greg.pntr_d1_reg_n_0_[9] ),
        .I3(prog_full_thresh[9]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(\greg.pntr_d1_reg_n_0_[6] ),
        .I1(prog_full_thresh[6]),
        .I2(prog_full_thresh[7]),
        .I3(\greg.pntr_d1_reg_n_0_[7] ),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(\greg.pntr_d1_reg_n_0_[4] ),
        .I1(prog_full_thresh[4]),
        .I2(prog_full_thresh[5]),
        .I3(\greg.pntr_d1_reg_n_0_[5] ),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(\greg.pntr_d1_reg_n_0_[2] ),
        .I1(prog_full_thresh[2]),
        .I2(prog_full_thresh[3]),
        .I3(\greg.pntr_d1_reg_n_0_[3] ),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(\greg.pntr_d1_reg_n_0_[0] ),
        .I1(prog_full_thresh[0]),
        .I2(prog_full_thresh[1]),
        .I3(\greg.pntr_d1_reg_n_0_[1] ),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(\greg.pntr_d1_reg_n_0_[6] ),
        .I1(prog_full_thresh[6]),
        .I2(\greg.pntr_d1_reg_n_0_[7] ),
        .I3(prog_full_thresh[7]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(\greg.pntr_d1_reg_n_0_[4] ),
        .I1(prog_full_thresh[4]),
        .I2(\greg.pntr_d1_reg_n_0_[5] ),
        .I3(prog_full_thresh[5]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(\greg.pntr_d1_reg_n_0_[2] ),
        .I1(prog_full_thresh[2]),
        .I2(\greg.pntr_d1_reg_n_0_[3] ),
        .I3(prog_full_thresh[3]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(\greg.pntr_d1_reg_n_0_[0] ),
        .I1(prog_full_thresh[0]),
        .I2(\greg.pntr_d1_reg_n_0_[1] ),
        .I3(prog_full_thresh[1]),
        .O(gtOp_carry_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_sshft" *) 
module fifo_us_wr_status_flags_sshft
   (full,
    out,
    wr_en_0,
    p_7_out__0,
    sel,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_full_i_reg_0,
    v1_reg,
    v1_reg_0,
    clk,
    \gaf.gaf1.ram_afull_fb_reg_0 ,
    \gaf.gaf1.ram_afull_fb_reg_1 ,
    \gaf.gaf1.ram_afull_fb_reg_2 ,
    \count_reg[9] ,
    rd_en,
    wr_en);
  output full;
  output out;
  output wr_en_0;
  output p_7_out__0;
  output sel;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_full_i_reg_0;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input clk;
  input \gaf.gaf1.ram_afull_fb_reg_0 ;
  input \gaf.gaf1.ram_afull_fb_reg_1 ;
  input \gaf.gaf1.ram_afull_fb_reg_2 ;
  input \count_reg[9] ;
  input rd_en;
  input wr_en;

  wire clk;
  wire comp0;
  wire comp1;
  wire \count_reg[9] ;
  wire \gaf.gaf1.ram_afull_fb_reg_0 ;
  wire \gaf.gaf1.ram_afull_fb_reg_1 ;
  wire \gaf.gaf1.ram_afull_fb_reg_2 ;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  wire p_2_out;
  wire p_7_out__0;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire rd_en;
  wire sel;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire wr_en_0;

  assign full = ram_full_i;
  assign out = ram_afull_fb;
  fifo_us_compare c0
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_full_i_reg(ram_full_i_reg_0));
  fifo_us_compare_63 c1
       (.comp0(comp0),
        .comp1(comp1),
        .out(ram_full_fb_i),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg(wr_en_0),
        .ram_full_i_reg_0(\gaf.gaf1.ram_afull_fb_reg_1 ),
        .ram_full_i_reg_1(\gaf.gaf1.ram_afull_fb_reg_2 ),
        .v1_reg(v1_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count[9]_i_1 
       (.I0(wr_en_0),
        .I1(\count_reg[9] ),
        .I2(rd_en),
        .O(sel));
  fifo_us_compare_64 \gaf.c2 
       (.comp1(comp1),
        .\gaf.gaf1.ram_afull_fb_reg (wr_en_0),
        .\gaf.gaf1.ram_afull_fb_reg_0 (\gaf.gaf1.ram_afull_fb_reg_1 ),
        .\gaf.gaf1.ram_afull_fb_reg_1 (\gaf.gaf1.ram_afull_fb_reg_2 ),
        .out(ram_afull_fb),
        .p_2_out(p_2_out),
        .v1_reg_0(v1_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \gaf.gaf1.ram_afull_fb_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_out),
        .PRE(\gaf.gaf1.ram_afull_fb_reg_0 ),
        .Q(ram_afull_fb));
  LUT2 #(
    .INIT(4'h2)) 
    \gram.gsms[0].gv4.srl16_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(wr_en_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \greg.pntr_d1[4]_i_2 
       (.I0(wr_en_0),
        .I1(\count_reg[9] ),
        .I2(rd_en),
        .O(p_7_out__0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(\gaf.gaf1.ram_afull_fb_reg_0 ),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(\gaf.gaf1.ram_afull_fb_reg_0 ),
        .Q(ram_full_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
