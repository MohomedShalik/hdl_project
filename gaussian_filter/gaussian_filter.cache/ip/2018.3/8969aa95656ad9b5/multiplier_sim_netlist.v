// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:40:04 2021
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
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
LevOv5/r3eLdVzmL/mf4qcdlseT5+IlIiqGzT93QoAJomAW8kDbl0wqrUnpjlK1PdG4ZQxgUm6vg
iLlJRTc/rxXhFP84n0931Nq2lz90XP/PJoZhLrGhpW2MAnxYPN+An7rOVfX+GcRGo1msIAyDpUcb
PX8X8ElOS5C+0SwFPs6yWKN7RhL3htcc1ICdCWYqCaOp2tiICL7Dmqay8rs8xK6G2kfxl5PUSxyS
lvhs1uTZZMEz8mWfo+AA8UKtWdKRMbBYOP4L5W/nEq/RMSjrDX6ubvc/u2WZB8YkOt5uzOx1/hej
tNm7kpQcZJt1haJJLpupk719mxW0SS+Z+ZRGVg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iMirhB7GEgcuajhvf6PF+vsIQfk7WMO3HNuPVfn4om6fZuIp4dpO5DJL0BL+VlUqvpCteNg4R7iB
0SDZYoQ63bZKH6KICW961SGCh3DE4V6cL9Ju34SagePnbU29sdYn/KsP6LCV2leQ3p7O26Kk/OKu
7j05MYKJprW14OaabAJKcq1BQ5mz0Uwz91oNkkMEO/6w7vZWMI5IbfcRqfsMvynglOJnz5Xn95Mg
oZpX+WV0Q6jofrkGBhk+KwWIA635tzlpPEPOK5ZsIbC/Ds/Iur8IHB0jW04iYRHZH1UYV1h+6nGD
rC6N8qFWsfKVuJ0jVJOVaKJQnicLKpEx+7lh6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31616)
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
