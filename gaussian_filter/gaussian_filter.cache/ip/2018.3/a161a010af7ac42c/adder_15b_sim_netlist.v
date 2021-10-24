// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 11:24:22 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_15b_sim_netlist.v
// Design      : adder_15b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_15b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_A_WIDTH = "15" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
EUOkiWrnQDW17RZKiKMxw3lr5YXuTEJ7HSPvO3SWSVceAWjEdbStdMVYOvU/1a3yOk1ix4uNjtyW
HTqD28YKrK872QREh49UdAygeBuFXSSGmNhXRxI6F9d8+qBlZiVKhPohqwbvnFHH3OG5CsnMdlk8
SSMv4MEsd5jFpSvEvvFq5/Zxl/WhApMRzcpM8Zqpk8SAYdyPI6hfxxff50YlSVJDmTY32woeUT7Y
sZ9KkChDRosawQkh11NRZhQPJOLCtjb6OLrkUqXd6JO6KJsQghgrRQj75V+oMM0fstlHDC4LRjrt
IEhzHYMu3ohBX+RDL9q0ddCGGjEHPDddbXCFmg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lgbB8UC1N9dO2n20/XuIylWdRHZ5ykKZkeHV5/uocv+nEIuoNKEyGg0LlJD2NkHlUmF3yQD3TLFU
pkjST0wozomdWzsEU0Osi6/QuCJrhis77HBC4UodQ7KahKNU6dGdCCDA+/lLMi+NpS1aWwXLhGqJ
JLnk+xYZVtgjiZ8pSIt8aCs+4tX+SzK6QYydVsnLz0HadON39fWR02H3hkTnt5vyQIoX/5uUPSyQ
0hzYtri90uuyIeCSkHRE/rEbMs3n25me524gHseOCtuk87bhGotqTLb/nH2fyYh4/oE6loUQnQ8y
hIAROhPKGa/O7v0O4TQNysNbDz3ul6Tu6IeaBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13200)
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
