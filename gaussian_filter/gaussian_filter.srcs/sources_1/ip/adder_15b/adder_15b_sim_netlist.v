// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:24:23 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/adder_15b/adder_15b_sim_netlist.v
// Design      : adder_15b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_15b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_15b
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [14:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [14:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_15b_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "15" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_15b_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [14:0]A;
  input [14:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_15b_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jDVip1hlK9SO5ixK8rbLSPWhl6j660Kyi736pAu6aOqrH5/HzwVEeGOmZ8xpOgQeFZJQxiMPO7Jr
9YFEW4EoEhE922mrjfHmEIHgbiU7kOhQ39S/gQtuUcBr4S4UpCjaRJl0dm3M0LG7L7QxA6q6xfzZ
fg3qefk6p37cg72o701yBvT9e/yIczqtzp7dN9SGDBEJ5f531Yj3WEm3pid8MsoKFK1SDcC9ys0w
pAoKiAfWORWjiahsR8if3vJu012C4smlcAdZLnpH2vHasL4yGAw72MDpBDE+qJRGLu/bo5CC/Y58
fsLuP8PBntDOuXPPwXiAXE35Jena33T1INNswQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lu7LhSwXHIBTE3OGAsStu5NTrCxvFwEAnHtL0dtI++sdlKz2eHAswpkDxjzA6Kj8U6XqldnugmGu
lwXENKO1UUTclYPQYCIIQEJAwZboLH9tE85YqGh8VBpvvkhPjS4z6Sf/9YVUBXU5xfiEQlEkwPXF
u/ZwajIdKBqFD/EPKJjbqgiY/oV9LH6+kP/0p3LNMthKx2CHUgG5zNr4PJ0c8j5MVj4vDG6VZCVa
wv6lqdi5b4Ia8/AugcDMu793oeG0oLK/Ank2s7Pj8b5TWheQZ5Y90vFv0yFOwe/pHkTvU8v2V5Ez
QtGuHBIjEwJxh1xmlgAlbXWEvTWN5pOSkW1l4A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13152)
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
