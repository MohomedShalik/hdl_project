// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:23:01 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_14b_sim_netlist.v
// Design      : adder_14b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_14b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_A_WIDTH = "14" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000" *) 
(* C_B_WIDTH = "14" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "15" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
BMFruQ33GWaoCl2HPKUXHN0EVMsKVYmDSRw4SJ+udtXraJdkNaJ6p+Tu7XpQL+nssMlwBfvmA4uQ
HJoASTdwayNMmbUr4TarkJ+H6MfT/mg1fvg4j7F4jcSkNgSwl9JOoWOSyDC4ffrLwAX04zxaqqQG
avGFblEOuuxM87pbMcEksFJhWtsnHRVgsmXZr383rmz6G0hlSC/hKn3LZBhqo1t/Nx6Yu6hetOAd
oAn/2cGEibx0QFdAWpH2qqyhbPMRdc0yQxaH16QbXihQ4BiH3r7RKp8oznJ09Yk4EohFiUYKXcra
fs22Omb0YCMYI5/x9aEWLTvlUPh59TAWlvvz8A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bSorqsjoECbGkksp206fhgG1EQ+s5R7LweVeJ1u0K/gkMxSZcRnmvV6ex4PsoUSFAp48bDZ1bgoq
QTlg48JCyKMVoWiKA9R2nh/nYnUpZyKuP/5jI9Ndahbtqi4zR8UqwJ6VldmXtNpRb/EgIThexQg/
mqcxSQXKOnlbm6+77DPMK0sFUmliqju0rItRFNGkmSYj0H+MVydMsJy7XNGl4cvUGh/UHGh4cmOo
Ndo4UNminfMLi5z4Ltakkr5f4yMrm0Ui2aZOIOfY3+nBIz+1z4OvE5ptsJG5TmBqDxYCSX5++RTE
by3DTvJSJsgCYjseq3SAR637iJ6glK/+8OkR/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12976)
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
