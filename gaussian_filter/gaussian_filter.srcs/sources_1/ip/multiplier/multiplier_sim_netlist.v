// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:40:04 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/multiplier/multiplier_sim_netlist.v
// Design      : multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [3:0]A;
  wire [7:0]B;
  wire CLK;
  wire [11:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "11" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [11:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [7:0]B;
  wire CLK;
  wire [11:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F3CDnvr55+qWZf3HjjTUvkIQE/W+XLKqK7uhd+f1jUxUW/oj2NndHnWfp+NR99CIHuotdtr8aa8p
jyvBdGMeFZQCLNvwTMzMALIRqGIYiB9VFafD/qZrI9fi8GrK/B7YqmcUne0HyJHIE5XLNRG6vHWZ
5pmDBeLDnmzVhPaZagFckWTVQyeYE4QNVZWfpYXytAvXVMIeVVac+9vav0snfhySD2c0fDnXIW0N
G/FRJuezgeqYKnELYdk7nlXi2//j++QP5+UApvG8DpfldNprEDQqXJFOFUGY92XDR7AhSCD9TXOM
bgAOLvpO3TjoOcS1U+kNPub2PnuWvb8JFNdORw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PDP/W1m1HUIS+OZWl40AAJWFsHXKoEnAxDkSUiRzN4ihZA9FRO+cWmVDagOB5/kA/8e1DVar15H9
1+HITpDwoENiZFPh9SafNqbzzHGIKCL1PvGI8w+MvfqfzSoQnRqcdLC5bYXFlzdymy+ouWBM33n3
TBprzT8kXdmnY81eqzdY5LHTO5krhAPvT6J7oraLyNORZRP9SMiTJZvD/wxofTs1HBHWYMp2i4z5
b186hwgPc7WXrNmBpmIfHTsVRFqjXzHbPKNzSR3lEiVBIb1/c60ohxBaFiN8pNOUS2eMLHTjyACR
HFc2obO6+MAjvpmHDlu8GxVPJRad/X9sX3iIcw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31600)
`pragma protect data_block
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
hKajw+YObQAK5MIhJLvFl6U1HsYwNw==
`pragma protect end_protected
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
