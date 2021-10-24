// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 10:26:11 2021
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [12:0]S;

  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [12:0]S;
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
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "13" *) 
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
(* C_A_WIDTH = "12" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000" *) 
(* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "13" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  output [12:0]S;

  wire \<const0> ;
  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [12:0]S;
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
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "13" *) 
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
n/uur+SIsiWGrrRmlDWpLL4pBz03Ra8gO5bPEnS5W1rsA7NP4EfAotyH2QNfmOWFkjmymk58iCJM
EH8mkwfnaIQSFsve1MGqOzLOX3gW8/475nadls5J9aUT/ObrBYQ1Kzh8g0hJek7kW0BZnHd1iwkg
7ueWOpweUmdXrh1XKpUD6NLc6dWutM93/zU61kjJ0bWwpXs+UOtMuWKMR+L12qv4+Ug6kV8TKGrg
UWlbYOEOCy2LdvlPQtsfAGELbWPqOm2xZK8cnODaAMtHpxPfWaVZ4J8FRQ6PniGactVwhofeW0Pk
EgwFMm5EXygk3TV2a72BT+LndgT9v1kw4vGobw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ma7VpEDnLuUZOw25Pl5OjMf7IWYyf7FzFQVAyfhPobOhZh+tgzB7E398fYU2ImJqmi3LQQcObglX
77TCcs2dhlduCBueybbL1VTcpcmpF+gQ6sKyGtZxMKoa4Ytd90vzgMQKmZKA+450og9TQDqmNaws
Z/eCHsm0daWlDUAeG2vwZsaJ4q6m2kpPiuLUxskmu/duI2s+1MNM9BUcEr5mPxkPNjng6cyeOLbg
RAGGZth13ILHpnYpn3v+/poR+aO2MTWXWZvnr5v3LvxMINVArrwjvF8NTVGHQOhoP2zbmeC24rwB
8GYj207LjD4HfX4TN5yLD98xWsIllIk0lOVnig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11696)
`pragma protect data_block
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
BNN+7ByvswKX6SU=
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
