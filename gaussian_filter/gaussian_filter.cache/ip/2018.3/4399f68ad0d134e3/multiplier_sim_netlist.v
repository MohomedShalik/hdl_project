// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 10:21:27 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multiplier_sim_netlist.v
// Design      : multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "11" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
eoGRRi+JxQ8ntoUNYqtkRNjMl1Q73DGbIM+PTALb+PA7S2cGg114vhqFYZLBsD4PfvIOZNbiNEsI
Ju7tUICk3DAuwphMQTHBffn72MqCcSju2d1ifSIjVllyWTkqTYWgdcH8zgnw/+O8DcrvdlgpqAIO
XpLZlVKBzKzgqFdpLvDy6PBpoid7olv//LKnx3d5cTWy9WuKExr2ccnSMnVcMt1kV67XD7GeOYuZ
zEm7QDxlH3y7UTLd6l84T8ueR4MQh3Ac2TRK22LNWFoDSERF7vpzevW7GsAGuoAAaUNFFjBQZKlX
lRzzZiSrrk927AYoz8JwkJWo1RMR7FIRBStmPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OLc4jD1s+0CZjaO4h09R0Xq0O6lmKZZN9mcCV+Rda4mnWeCLT3eZkZWshWY7s+3T4crJZw+iuDMX
R8xcMWFTEz9It09D9DXzJ+MsWSOKuxzOM3XqpycXhNVG/HqUuQ8bGIcExw9te6MgALU2kMo3I94f
BI7B2jC/+gzFaoOV9t5bWTJlZNm/dlIm8BmY8Q1oz/nO8lkNJE0kWI5yNZkWEtqUTyTkslzYQbph
bmfo8Y+oWQwVAbIYTN3ZmKGx5ICvSfaDrBDA1mPYFl2m0Kumak0iATi+FRXPD9snl7FYoe4Kjvii
jVFDHrkH1XHnd68i6QdyD4yHbG3vouOIp//Z7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33968)
`pragma protect data_block
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
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
