// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:39:07 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_12b_sim_netlist.v
// Design      : adder_12b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_12b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [11:0]S;

  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "1" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "12" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000000" *) 
(* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  input [11:0]A;
  input [11:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [11:0]S;

  wire \<const0> ;
  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "1" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
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
c2M/Fbor5qm4JIjCcLaYyXevCr4V57GqZuN5X+wnpTUtlshdW7++IuA+ra7MLVx2rIrpC481QlpT
SolGwci/DW7ahkVzpyWJVBLzqcfwiZJeuMsqNoUa8euVaMz0KzOVP47snP68CskmouIxhbkKnAf1
HHw9zS3wEduW+t1B541Na0znTuVlXYlU+VOYuifXSWzTlpwi72bNuJFy5weU5hPfKVs25kRGYdzS
rPt9vPho0cFnjXrrO3a1DR7JSPnfTGOwv+4XTRkREmvVWC2f9gW/v+uA5N+mj53nHonvFTeFTxVj
FX4UkXg0kWcMZGWLRLfonb7ETEZnZDvLwF6S6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MZfYF8CJpOA0/V1Yv1A26nGB+DcatlhKvOLc/SiIm5RnnLQ+eV5fWb4XIdSbMQOYFIbg+37K5Axq
ZngnqRFsf8EwrZ96+MSKYcPPv3ekwrKZ/Fg5hom6BhjfziD9yD9enywJCNSR9WNichtUb3BPzIJK
OXJzNMpS2wtDnVPckxXSMMzGRy9Yim9z650Jq72E4acj3lrBdebM8ZThESBmU+2dvyfp0rcN3xjv
6JCDnVCEPDrYs/JMy/dslticBFkiCx7HYZ7+y1HdWVTwydYJcX2cgzDj8eXyMY8OZypWMkPV3iC4
xD+O5k3mnX65oR8gwsBVHmZR3+qhCMp7kXAj4A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10640)
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
