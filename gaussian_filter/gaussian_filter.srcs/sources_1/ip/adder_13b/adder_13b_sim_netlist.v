// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:07:09 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/adder_13b/adder_13b_sim_netlist.v
// Design      : adder_13b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_13b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_13b
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [12:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [12:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [13:0]S;

  wire [12:0]A;
  wire [12:0]B;
  wire CE;
  wire CLK;
  wire [13:0]S;
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
  (* c_a_width = "13" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000" *) 
  (* c_b_width = "13" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_13b_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "13" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000" *) 
(* C_B_WIDTH = "13" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "14" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_13b_c_addsub_v12_0_12
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
  input [12:0]A;
  input [12:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [13:0]S;

  wire \<const0> ;
  wire [12:0]A;
  wire [12:0]B;
  wire CE;
  wire CLK;
  wire [13:0]S;
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
  (* c_a_width = "13" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000" *) 
  (* c_b_width = "13" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_13b_c_addsub_v12_0_12_viv xst_addsub
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
oGjF1jvdtGigfqWSZNtG2KNvpNyY6xwjg+AnUgoFjJ+UU4x2qVwDnO1BdjjQFUpFYviZy5sUIKcY
7Q9/QBjq2HYnDVJ/P4dwOVutvBQEbsIAGfiBao4K9KhMOi38Ct9XhNGeilONnrIhHWa6k0TzTuuY
zCMLzGDCPjtP6pRCzktkMWU5J+/Rz2OYEW5tk78zEZK2TO5PTSZrc3p1AAUSWtufWrbierPnKq/o
VFwi4meLQ+u1YWfCVYIcH5oBLHwPD6n9V/HvL8BjbLFE8oXRfXbK6jwGcp4gBX1hW8KRBRMptMkn
xuflNuaL1fIrt/NqI9//6os07kCjiRqvdZF0Nw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
33+l11ZnzHb0y++1DIfat88YoweeKWPg7KBkXn4L5KOVcZ4ESQyDZE5TdVEON4bBXpz4vNseB+6y
bn9qiGLh7EAdNH9z/AnI2Wc57UiMR3wL5vR/4B6fHnpzNvXI60+E8v0FW8fGVpKSt8df4HCAkl4k
Z/weDnOO+rjybynG2pqYtDQ/KEofm/iYiAKL+MjTut/A5vLPjje36tjOqUYRU93kj34xjLbG4P6m
S+8UYax46iaO2Hjbe3JA6llZu472C7Iu8qs6RB5zWDWELSc/mgijMWuPL/w4C2t7Nte1kL7LdH+O
Eqjfz4FGSyTW1ehQIOCCKbDZvPk+sf1qZIHzNg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12368)
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
