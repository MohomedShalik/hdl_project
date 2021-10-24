// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:07:08 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_13b_sim_netlist.v
// Design      : adder_13b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_13b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
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
kiPEU6W087EybX5fUu51Y2bbAjFW7S09m6Q171AtrVu/RsSNaY23KcliKb+7Prt1YDEcUuXMoKid
xxcBWmhADG+g18mMOCD0e2kp93BWv34k0NZt8v7V5u8mWy4fQ1GzwbWwbKrLsYyuKdOSvTWstsJR
Bou7zjTbl3KHQTXL/Pop372UaNC7Wdsc1H6NI6YqQP2sfAhuybsedftvk/deFmrWJqTnE2g8E4s0
HyrSNJi2x5Wwy2EfgQaj4XRm3oSlUkAjZ3LffsO8W0s2uV4zCe63Rdhh6nUosss/0SVS3fN3/XVD
nLL0IKYJmOEIqHaa2wnGejNuXKd6wdX47viyaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
17hJSIQMwhimxqs+nwe+kxH7/pOt4i8sDvZ8nUiwJADeaaP10/m7MAghtrdEqGvfnUViVQbBYOr5
/anaz4O/tr76z/Mdfg9ktraHqzWXNvloC2c8EXNJjarMK1i3Ytuim07+lV1QaOKOLB7Dp4IjWwYV
RCCrpnBv6/edgmd+Roiwm6B31Zs+ofIocD82h+mrCZH2A3uqMN7tXbiIR+MrnP5gHDk9Jsnyr+hX
1OwQ6z9Gt5WcT5qYaCi9ybu+H6f4Srz9E0ffLi6WxXY0sNdyPtBUtS2/p2ISD/qjk1lZibaHoV5t
sg0bic0joo/1+2kquKOGn95NsF6X4Ni/y7SRog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
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
