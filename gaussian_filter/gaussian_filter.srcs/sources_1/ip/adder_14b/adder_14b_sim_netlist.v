// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:23:01 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/adder_14b/adder_14b_sim_netlist.v
// Design      : adder_14b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_14b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_14b
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [13:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [14:0]S;

  wire [13:0]A;
  wire [13:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
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
  (* c_a_width = "14" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000" *) 
  (* c_b_width = "14" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_14b_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "14" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000" *) 
(* C_B_WIDTH = "14" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "15" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_14b_c_addsub_v12_0_12
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
  input [13:0]A;
  input [13:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [14:0]S;

  wire \<const0> ;
  wire [13:0]A;
  wire [13:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
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
  (* c_a_width = "14" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000" *) 
  (* c_b_width = "14" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_14b_c_addsub_v12_0_12_viv xst_addsub
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
DGBZE9lMEHnbIOTxt67xSEoj+QmFtiyh+Lj9Ed7gSlbqmhT2kiRpiL3oxVNO89Kq5gQVAUGQj0vG
bJq78KpjPekdP0Dk5ZG+gAt1uSM9KXNO6EuWBuIgU6K8VYZ/E+hWrQV1GYhafc2Oh5nf3xfVrxF+
T9VRPx96lHG2zMl+jMxE+5i5NNGg/aOBC3U1aBrmMkiCLKwOfTcc1K0UyKKNoPlKyhoDt24ESMHu
yNZpWpARfQfTA2g5MdFDiGbmD8zdEPfXFJYOUhTT8roYgUJXmZkVhHuMz0wHM16x8GGJfOYT+GkC
arAK89DUOn4KMnhQw6qDQpqJ8fE2heuhV7wJvA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
agNtB5pD7Rnxt08JtKHdvyAygp7A3lwuG0ejkbBTTbt9QRTns/4P90Bm5MR4ey6/Nzx6P8oziuQ/
ZOtrmhRcJ3a5ZRUltWW1/IhNYoejw/UOO/z8W7m3MPYtog2y5wTOtD447d5puxCVFbF37eAPOJTe
hEeHgCzY+dtQFkOPzOQXQXhA3tic1kYRMXBT3Rf1ixFnpZddNhI9Bv5PPP5M8rc8JDS0elNcVdNi
wuETrGQD9YsibdhDd8OXrKBp4UCZnR5oHFl3w08E1HjNMFD3/W68B3RNft/eUhRspixYH4zX4x3M
eKfogroKzvzQLwga7wBUpfnqxCEfZ42QD22AJw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12944)
`pragma protect data_block
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
EbD0HGE=
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
