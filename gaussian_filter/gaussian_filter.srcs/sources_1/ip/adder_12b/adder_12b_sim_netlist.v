// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:48:56 2021
// Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/adder_12b/adder_12b_sim_netlist.v
// Design      : adder_12b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_12b,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_12b
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
  (* c_out_width = "13" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12b_c_addsub_v12_0_12 U0
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
(* C_OUT_WIDTH = "13" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_12b_c_addsub_v12_0_12
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
  (* c_out_width = "13" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12b_c_addsub_v12_0_12_viv xst_addsub
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
T7CGGPzwCTdrAG2vxAPTPAiLuQxxK0vIvvBi5a4NqwdyFrstciSMFSzFeh/segseKO3TcbdR/1Zv
YFwq5ZtGsWd4jwXg5kMSVEg8d6klXCF8axTGrl15ap5MvNFIvy2L0D8jPGWb3jcRey5PzcTWHqXs
9vvK8GZIeZFjZGawTXHlBTwp0rlBDiZfspJAoseain4Wq3JwUfSa1y6eT3eH/gkAlDuOr7PwN0iY
+5x/vraOS1lfchOv1DEXqaIvOsMLjVJI770jSZuRGts8pu1opNW+I8qXLZu7rIL+sGrovsTibhZc
TsBCmFVWmbWv3PxVGtwfo6NQ3sPNq0SAd9f9gQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L3SG9WHbTe5zPZ3bDunvy2ryZou5tBMa6sXb4hUS4t6XyGYqQfE/0YkEB7jvI/XHtOfVzkEr7aV5
DboGlKM4bELluh/L3aPo4KT2UEME5q+MeBn6786qwEr6HUP3J7yE9H4z37kWNCOLDcTQ/et6ScrW
sOlUvwEpf55hv0piLXmibaTZcLGOb/tV3wPTcmGsXSWVwDuzK+zWxcb3TlOagLhkCBB84H3y7jE9
DbaBrdoGvgqePeDTJh4EQTZvpMFZPqC4se26l9TffUS4cnZnG0bKTW8vbcCaM7ZuDgMpg8aRbe0a
WT9/cRSoTinM5dc7Lu6XC062CdnCb0Se+SCbxg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11520)
`pragma protect data_block
Bd18pDR7aldYTvmDvtmn+/Jz9p0L9DTC/7PJoaJifs1DK1+R/Em9dUnIcu3v+Ow2o2351Iq/s1yn
v1VV5fTuLAXU6RavnFP5lhimLtuM6YT/UVRuG7IPQm3G7A8Cqv06ckQnYBtzYYder2d1MVPo/G0o
YmvAF6izDBVaVSvLST2QmiwSgK03PQwl7bpvShHcdZOuFQL6cbFfjM4tG7b++OVK+lL5ylezjmvT
RAJnWHL1yy9RtM/xv5sIX1/Zh/y6GgvmJ+YZyiJ1iLuF1VHsD87kWWT05VgWmqvwoUb2N+2Nt3mo
4SDXG+oEopx/2kjhpT0NSz71CY2HQeHl0je4JZs44HFAqHWDCogZQXA4iqA0xWCCrin3v5ia9fhx
i3TuTfpcNBkDPXMJh4OsIVWppobXKAyZHs4QxxphBv+9zQt+iZqITRwxU8BgJeXETogGAs+B/Yie
oM+aI8G/WstePk1mHPv9m3VvR0xaUYcp8UeNlrJYQS8+NcbTCryNlo221dz/Feywv3KLdeR4HQA+
CCXgSDJY4VHhkilUT9HjMHf6VhmvHRfg3u0sek2MR2zR13a/lcJ6KrmGDPCi+VjcXtf1yc9KFcAC
qAsI7TLnyoTyOU649frNb1XMpGPdDuKbWSdP8pLMpVLD2ab8+YzX5nho4CjRSZjZ/Crl2X6rhkdQ
4SaI3A+0TIArP0VtbLtRSaWS6FMw85/DYi23efISJzvfOkTodIBcEA26gbSYaU2BC4o6nK4tgeIT
Q/Dr3Hxxt5MNQGP/0Yy65sjekomr+1pdgXBDIVzPfmwqPeCsajRUkpzt9FHJZftmRAqNaKCynfJB
M8v6PxXcZXRB/p1Wi6dXzkIVC6/QzjB7/otQSv4xgHHDwlkcegMMmwLkPhXEVRMBn4BOlFXqty2Y
APPdOYh1TYOu8z3LzqmNOTxhouKPvLuUBXYLTae6/cq3YFzIfrPB558Adkd9TTWB0YZJiHSCCWXS
w7OtrW7mwSPWBvh2rlCCneie3w/zvxIg3cQcPTZe8NY1wVkfdKYI0+goDy2zw30UwTpbnpIwxLMV
mRFZ4fnDMTG6moJXCodjqErZe/qHg+q817yR1kaBxkyOw+B19vS4DKQscIqvE8k1w2T9Uk+zVF3j
CPB38tTDNMZyMj+FxxL3o6octkQTgCgxst4iLhS/gZejjse0Arp+REdlIh4yHgJNmwwHczO8nijf
VZCZTaqi2ARQ5UEvzCmN+S0hvI/Bp/uv3eNSNfiq08nQpvOU+9kgecFSoo3uRekx8UUOB1VdLcHY
Nsei455KN27PihFANOn5O9hTMyBRWm09VHsoWLcSIOqWgAfAc5X5Z/v4i8RtJmxUM3TCGLKeAD89
QZjtkXACSmbLL8kTU2xzg2CvpJBzevyc1Xw9utkQu5S+yXn6WUl+7sO3zo23iZrvDqAhxQ9jE9Um
pGcxVO6HLN+dEXaVJyGXx/Obmicdawxuzx83ewAnQ36pvs7E1DgO0pdgfj5giz9kJZ0QB2Duo1RX
/qVK9M3+DgbQrGgkYnW39p3OIex5SGzbhYWyOVrSOgzVp6kcDQOKLcqyvaaZnesYb9chsy5KguHt
C5CnGBPgDnZHt/8r8L3LSOqSGhFf9wRfuLOSbWmWPTJwlmBlBYIvRg3XdnmDK2x45f1FZ83ZSqVH
eRLtNUmlShhW2EEzhrJldCjNwDXnWDq3tzCQsaBgD6xEnYrd1hKzMTsLdvObrUuDXtbLwMU6oS+Y
jCtUpiRumqqnkttg+sS4Ex+/BrQZ0UmljQGtn2jGGsV9GdvPf3O4FKwXKXtRiiIg5oF7v0iNUxca
BxxSNdX/vN6oyOJsg3Ru46FuBLIbxSf3/fj+frMUQOm955Db40d+FodtgnIWdMhL7jlI6H1QWxlB
mzLkO2Yq+3UTpoYtVuIaM8/0PF4XEDEe1+HvZMHCFr/isvuHWiuhbmo94SbxZlhvGfNJc3uXIiw0
cR4IAX7/AzUoWbBrmrsReKyg8TbTsPvTy5N7+dBejogEKqgyJFjSPsGWuNx96zeX0g+2iaWEBn0X
5u9quZI8GujAtihYTsztFeg00r6Gc8ImFpXVgeEWCc9VYjU+rXQdZur0jV+xweRlRUKnqrl1iAjh
y2KWrXIXBvwejZrZW3QXdfSFO6mmGAEeSax0DM/R/WaU0mBzkcmh8J2UqSrHYGjFbsozOBA4pYQ6
Zl+AtDy8MEUgaMPgWSLmhvsrko86nT7NSEHaJRfNUEH68Q6qoIiQd2StklLKTEh9K1Ch1Vg8aHqU
scQuleq8PPdnJotZSrZ+81JMP12Rnx0U1NuA1SmcxgTi3LrwNHkL220W6ER2iOhdSalrAnjhuHDi
wwa2Xg7Gzcsaqmjvkk5eb3tcO1ZpyvUp+iaBH2pbbbk8p0D/0iyPmQSWza1BxHXgLBqkn6a4vIWe
YtgGRuPW+iHhS11tJzLw+im3YHyd7ht3sMtQl6N/aVEzfcka6Vwq3FmD0mzP4dZZqY64wvCHSg2g
E+15dfdGaCc+xtm3slxsl5hS/VbZESlPPC1a527mINdoL0tjRpxokzFXoF0YmE41RlOsZXF7Bk1A
DyFAoEpH0BBghFd9/d0SLIJBQFoXXSNFI5bo7/LcifKkVkouNFLeWRbkKu4o05YGterbm4v5ThUh
6WTHKPGtxHlJF/0OoyV5z4YhVCRLfpppgLHTWzfljI6qFZL9USjlhLEfp9OsDfTvEErVM1eESeAv
81KAWa7uE9QhfJx24Wil4LKwPy4U42x6SPbwWHQkgB1V6ylJAklALWiabyr0IdrfYmEpDR8NWcht
qs+NW4Cki87t/rgHmEVVt+Xyt0TDb/VK892Ta7OYhYkfrEia42R/LTHYV4/U2W5JP9EssHGg4yuQ
q8+ShmfHC1iR6BJeIw9h1m/7TX/DxpqzK2TfmKfwCdRG8ROjIt9JGtR/gZuWA/AD9d6wyQr5kCTa
478j3jGj6ZiPwq61tRVQxmowaTPOTYobh/UJuB1JPU3DXOksDw6P3grehfs2AJ1qn3XZvPEsOQB3
13tNJk6iuJ/rSGR1vSay6CpJJfYg+uvJKf9S9vCVl5OH/tpK4DzqjrEgqWLgCfFLI7npRXoEgdye
XJ/gjjflc04YXUA6ExiXIJgNNqT+Pw0BqqsaS/pvYhmA22AuPQ8BjFGRzSXgEKNeThKkwCumFJvf
Qyaczy6lIUNItk4Pa93Wb+pZR/pz/jhbzrr5fX/xxxBlHutaOnWeaq5DWhU2m+Kbm+tyX7z7Zohx
Etk5CJ8+DLE4VE3ueNqpmUsOy/zPuoVQcMPJEl9cHao8FuUQdQcksi9AfF2VAWJMFsSmgDURHXNe
vVeokd47gO7G8Q4rcjx29npJf10TDVkMrfRS7tTVGecsiF0GIsYZMSV9mJiQibWJLQesxVl5hQhY
/1CEt+O5sJWBXThE4w3bRsQuX001sxnBTMYx+943kHD0+UA3iceB6BxgF4ro34nEQ9drWo5YFoam
6OYKtSO9AZ92KSoAgXZ3dlbV5yNoIEbfhcq3jc8f7CNCI275rKnh9eTOYufUdsYDluiN/IkcXHmk
h7Z5oCzivi4DuRKifk+M5FE2fUgNTmq2tgFTog/f34XG0vtaFMukptWQNXLvh/J8b8MIax9WO+wY
Ef7qAK6QJNBBLRPQyVV0CpzqEO9ORofeLl+Wx9+R9CDkxrjngc5JEMuBjJ8lqYS4RepgHGaWwRIY
Kdf1SIw6gaWJKrKnCH7VxVo9Mk56RCy/jY4P1FIxPpQjGA1gLKCgREMGvhyc/Clg69yJMSOu9KQb
Cm6UC9kCnzI7uIKVrGp2sQWbTeyoqHG8UmxoB0erbeoHSOuDce5LLr2vufGc7Jka9ZBf3MRk9Sh8
FPKPnag1xrrNHSCZ+WDGFVmYdDHs/wyUCy4348HOI7M8K0NQB+cyUrN53aqD8WbvchtMdcrSyIvC
g1SfOUAy97HH+dvmAQBlhINEPZJQnvymCQMAA1gioa/LYIxTMjKMALScSxf6mNy/PYMEZaiNs09d
LwUAPLPGZcNayha/naHotEHftohmCNwCCETP0wcPhXKiAQvFiVZ0VLnUpcSGZv3fdtyzjv4ENuFu
MOQaPSea2/7taljvVkdURTxporGB99nZwD8Ik8C/KQoljsJtI/cbO6LG9MCe1S1vEH1sIwF49bde
Zyx86GZ+TL5lYjVhk0Z7b3GFX0/7xt6MtUGFOcwp9oEz6luWXC/cRJzb4sarZnA7fsexslnda2IJ
ucNBAjdSldbxZ1LUtFjwhlj52N9CGc/BiogL6vnPnhUkFdHrzm2Ra7ZOHDGDn2qP3S5G/0cthcaB
3tZatyjeA08PLUJx/KWGJrTaNJDmu8fbXWvjYPDWEml1Byw8DqdbAzZPtlr9BDBSwb0GQR/veOgd
BVUyPWUXV3L/0EsxiUobRb0Cq0WcEDj6Yb2a8LulIgYdQNmCzbnGQMs6lJUNB6Ka3QANmwy3lr3A
KmiT8X5zjGwhjWo1HZDfHxBz1J8Li4GA8CHsjUDrFhkzn/2uFql/CEP2qVXaJVONnGtcwSGoTJzh
VYwKHEo4uxOiIOmGVk9rq11rVDy608N7sd61RtLI+xs7c4Ep9aEwLF3rCILocQDqj8ypkTzJU4Wv
phvtFlrV2TOwwlTQW5KEVpgYgF3KhLjdT5Y1CCUQllerKqbM0Y4jg+ZHF8+hhZbQpkIEJow9DOcn
5Ouq9amAoTpLaqwgvLrGDhGxwHn6HgaeOGPABsHpNklt8GIWZhaALXh9KUs2K9bOkCjcKMt6Vxi+
OsiopzPCXmT1AX4TJEg9ugD9JV2gJ0qqDvCwJPlNQGFo9X9wrY8vb1f3szQaVfjSwRn09e2ibWv2
OLaQNgUyfKySQk1tS3NNzPCM7Iuasudj5SPDcjuRPk/7uYZmeahGhtiBGUJAthZuATb1sCHuqNwg
76dCwjBXylha6hxUOvDtW+1d9bMpvLsemkFDvyB5q486s3s8zS32jWYoCAspEO+h6zUjNg9ZjiQA
5C12xqKMtkjG2WnmfdYy0VKzN5lxjXipyUElVzTy+pxNWSrx62fp0xxRFZyvZ1xJ+mPTaHOSDBo/
dCe1+yTCbl50mGrrhTKhq3aIaWLQd4KkDVSAdiOM3RYXcc02GknUa/pcVCTBC+JIA/A9DFeVRfXH
kzZpsI4ekMdWuVGd+PBcjd8U/wwzJZNTPMTb/CSnaJGYEf5ifJlE/D8UcMAIkNOrsfLCZ0Vm3SuK
uKwaz2NgGm6aU5w50BK2kTSpk0uc8kBoJWkegEahG29XdOoJLJ/Obffj+CagqezDwAAtX0UEEw98
HkebhJbk/374x9CNdpyxS85HE6UW0tjqbdqcWhr+/Mxin1pZoRTWt9M7Vn9ezKh7XCdrFx07b8m6
Dxxp6N0Kf/s1EARGzX8065LBPIZepsY+4bfCwMZBqOVwh2uhaGFE4mSYBEQcbZQsBm/KPffMvFWF
TLt29D9bw8LI+iDqWegYRTEg0MunAiKkuwA6vHWsfuctDcLPBCWDedjsIajeda8rx3f+l2wdbeSf
FTyH0D/rq+sGUXq9/9GjP4yfPXEGhdbH63n+cHRg25JZt2LurUNtannENFjLniGvkEnPF5PReX6h
mPokQPv/5MGSSpqRMRTtpkgMZtP7H7KFe3q860uV1lhrCzKOq1RGUFIqiKfAiLCOHWkQQyCE/STy
2lZJhP7ML9OhkR5ZICZVPntSW/ZyjG38BlMyrS2hBCz8qlpCrHvY0aGQhmQqvYVae+web4h6Nj9H
RBnEGe2bPzOckeeAOy0Z7p6/bU04GD+I89WomSejOF6RVgAVZS8Yp26gfw1aPzLRp7NNXJHN1CaK
nxmCnlAhslP7hFZz8gh4eWusyNLepteoZ7oW4aW44TwQq6fHf9VZkbOieaWMSBh8XRi/IjUO4wlx
wnQK+YbeirqX2bitmL1Ta0Izo7vHu7LVSn95tzui8LtN+uLVP5eOnWXIh9b2kkFLRAIeL6sOrAuN
D4NFQYDZJ1uAdTkAUwynT70umvLQrHHZZrS5kYXYI3HpKZrey656Kg5aaBffKoHEmLDHSfquXOb7
58rpSyCvJb8Cl2oTeStVvkGxBKxoWu5yYOhj9nSkrA0ClBQcOOMIWAjOhJsrQcN7oDBKduW+Ny0K
POH4Y7pO3lNAp5OXrEqFuMahK21/2RdawBSMXXx8M631igs+3TbgE3phJBjIebUA5Y/KYsVJt+Ur
G9SffhFHKFSnwmVcH7YdUD61tBjY3sIo0vPyhvUxmUTdhB8J0ryaiWZn3HS40V27Pv9BQITIZXAo
fOubM7D2m/7cpYbvbAR7blm9CE1pzIxwzjA/sTnxRRX20bZuI7bfY2+kc9fkZIw8C301+0W0Ka2i
8QR54xMZ9BoTmx0MIpxpifwGuTRaCkhpW7t3c7mkKGzGAy0qGBwBvveO75l3FepqMnLCz+cVxu2d
XT1hyAtYOdpS548ety27JmD2ZAo9TlkEtaiKNdT2/GfQJuJSUtK0DWQF98TmxrZxtZZwIBA0w5eL
LFyWVKoo6R5L4RBFcJx0/QrePNfsltmeYqOPWNzfW0Cpjvt98TV7FZaoEk5aQH+qtdvMOxdlYFIT
OEcXwp3J0+a9qratkQv5loKDiIc3cNQh9x4Qr99tN4oeSapYkwT4IKjlkzmrTFIHg5/WLzxEE3aE
b9fkLdkKXuqGNA0souzbFk7529Oej7eoGzvxk9N5Kg2cKldkHu8P4fuGAjIcxH2Bpa2ujeZfhX/w
gagtxUuz4j6afnalrn1XfkbfVj8mnKoiFA/zH1FGh5G6jUTYkiKEJZeADQUnCASZfcNhIrPMLhG+
8G9imCV9+lvSbgr8zwR1Ts1sZ4uXdUeQxwjhvfcquI46WGjaQCORN7SeW2aYdgJxCvcSRx4md8u3
VsQ3zhrX+JWM2n/RQHNQ8IHAFgD+31S+G+oE4+u2WIQCdOXdMcvOoDY34ruVHw6YDOxEYGZzX65M
h+01XQ1s5m+kVKP8gJNUl6yPRRppX8/lZGMAR60G5i82AzuHD3DBj/+oIcd0TWSLrSwmdsBDE75E
mUE0nmy1Yx5/8ZclJSESoA2cOjy3qdbQ2lUesIggOjsblWujM/g+wnrD33jX1kqyVH5n+jRROlXR
bLzSfFSBkdWN6MsWDZh70Vyg3Q8juDyBxGanAsjS2mCF3lRO2QNQYHTEqUj46YIOA5RwVVlxRi/R
jJx0fHvUcqGIJuZ6jx3EpGNhjtQIrvGbqmSl7YV0+oEKRAy5jGLlBtDTtHbesl04GrRdGdwWqsrx
o6BV5XcXPeU4NjLjcccAu6xEzugl/Z2ii3a/ZeU452021qF6EW7j2QBRIe4h6fFx4n8O10RXG8Yq
ioYI9P73yOwFdpTZ4J/uAM6pxyu6Z5JE2mhrIqMSFTk+mph2Ag8oZzW/dp3mcy9tSjyJCARHJiiD
zSW1HqaAPoLM+2RnatJPlR2uf94uANyAXEC8bD4DveOqBXUFse1+wkjvKOBIuw//YZ72PuC6CUo9
nyj2YAK3cegVEoZ0Ue9N+qfZmdK+H8cOiw0bPMd/6uPeOaORxfQ1Qo6ckSu1KZs6CqHP2nfCyViK
mMif+1a980fJ6QMI6OSo1OiyfqnWoC5X75rQJ7gmAIsg7vLF82qrNgZhYipR8sHoszJdhrKugAzB
wympt1s+iFQBNmRnf9GdRzmQnt9g8Tp3CsKVUBt1QJh150nEsmhW8rQ3dSnLLmgslgl9A85E+44y
CU7X+WyBLYUmRFHckJACRm74k6ZM1Er0g/ck/klf37BiQDTBPSdZbOoGzJZZ0fowT68u/b8iE7/2
Z08KvuChLEqQqQbaY9NwL0er9KM0X+jgzODqi2SmJCRx3qeYPsVRRFuqDyYJSM4+Qdd/wJVY8d7i
JfEooW8LvmMS9D/JCHfXurtKFC6d0UKle2kacdslXACkZt70ADhfvzFzrG/tf/A/HjazQVnj8b16
fMgm6bgVXbhb4CxwGb8Ns28ev+w4sDF6T6a1y0U0QtdpRD9vPBsfrTg7CN/Yqi/zEHBxxBSZ6KuJ
EYfFoTOLdVoinT+tcVOwTnOR8kmJfVpsITxpbzV6zSN8WJ0MZCemRSjKwXFeonck9GH1Y3a919bS
UmUOdjHk7RtG2j1txYG4JzvA50o+EGpnqJghAlEzDBcySfH6d6u90XkH03WM75PkYfvQ/mtGgUT0
PsD52+7BdQEFSEmAJ8rtK+rvXpG1cSCPEbZbkInLt/M/xZCy9u61RfpEJF8Xl6/hB+l8Y+miITeP
Q965vWYBQx3uUL8snXcifFok6gp2KzApKAfpEsqlFjaN9zEgqH2qgxwhbi9CZPPvAjlGqQNtrat1
5V0nX5Usf8ab4OvJN12bSLmZZmty1Xuu+yvn1W8NHBpqtB5kUdGVfN3QgJ9C+thXjdxtfZY4w9pa
gRYeW0/GAK1sYU9ft86Kdz3UXBrNZ/najwpm5M7QfNoMmlsXHPoDczmOYsEFtxP9T72yYnZqhu3w
wiG+oiZerJi9Z/u6duLWotOnVR5EEHxVhRy/CXLROSVzq/TJCK8OrsZr5tTFJtAr7nuJAawLfjrK
GQnigDq87VcYZcXu7385Ap70fRAzIg9CM6Uz7jnhxfu4yYiChoVsYiiYsybBvU6cDDQVe+QnvgHj
04h8T+gklJD38V5baqUT18RQlw264HgaOl2ZwVKRvODFyeRCRAWVPn7pm1KHKitHhdIMnoPzVBTO
uTpb4pP0MyT3camU56l7Q0Nfkh5+hyWhdkdlzMpwMTos3PqJ6hyQa9DhkyOxD3aAq59EZ9dMblUM
ATfx7BcyHjElWqVaXK4ovsxoyVDiToQYpVNiNvhsz5eYwB66BqZfEMvc/Z6Ugf0lz0A6whBCGDM0
wJhzg2PdjN81AtNR485jeh+PU3JUnoDPVjFenyE3TZlvAjfDYqGXxBpStc72bRufIh6CIxScZ2Ds
e0TassR3DN9IeQWpmgc1EWvY9hK8JO0olRl9xVVm42MbjeDCz+H3qNlc91F7spv7LjH8F/RNOk3s
ZdlUUvs1h7M7vrk39CyqYkEgwRKnVXzVvWdAUnY6PM2jbebaOq4OCidYRKbpJqAnyb9a6SM+ywJF
JU3YXLW/7exZMYnSeLO6bhpQU+MnLX1MCl/YhfuBnVqnlNt2MxWKw4NLuBhM2gBdoFFfvqOIzhhq
92fpxUh2mfk87kp5ghrnzJUsClEzEdA4YodUA3qPq78Em7ZV4hGDGwFG/D031Yx6L+fWDC62jG9v
nPtYV/dGmmtCwSj9Xm0v+e9tPuEGzLMc0RysM5quzu/Kt6Ur3SIvugSrmAPga6KsPxRZLs0qk5VY
eDDtXGmuRuRLW7Abha7VMVQ+MDrrOzKPPn4/24cFeccpGesCgpigF+Cr56EZKfk+Reph2hIu//A2
oNBiJu9riCBfJOVqSyK14j5dXjM8ek6iiyBqZZXThvGMu4SeJfpB9qrFApnabq/F5LFHXFdq+lV2
p7b6vqA7n7io3adHgpEe1Bm71U/QvTm0cWMYMgCS7Y0k6yUYKwdQQRyaIpGa989uXFncnxv/2uai
NTUpKeXksRK128YYQlZRdTH85bMyKqAIjQ9xkN7Nw9xgy7OGpoGB16ccICyCylZ6WTxtz2OiZ9dQ
muOtCOfyp2OaxJfs314XKTI+ke/9U+U1GTaGFcJF2r/3SF3IlW+DisgAfV9aTndYzNJG3EPgUks9
aOaGYl1IDjTN5pCTtABPZ6raBg2RkjrDf+TLQKCsxFhOf5svrCoJl9r/4zlMiVjhzgYiprnG7bie
DALw8p8OLt8xMSVv2MGAX0lSwYZmCN8CWJ2oP9dX+vW3PXer5b+/AWoMKjZ3hMJp3pj63GjITQdW
6ow7pslWlKpqEN01c9ViPkYOS+lb42NZz9JMzbd4y72pk5yjECkoLHho6wkHIwhccD1uAmvDmEW1
l3AclPSMOGQtBnUb05w0xTXxM9uIsRzLRAGbdLjTt3GNsSPdgm92GxYJtytFu+fMRgf2GEdnFmHW
Mz8peDajUy4qUWTp5RzE7tVFSYMf/ompFL+m95Q+hZ1T8UFKytSC2ymtORc8bN2FprzCfjX0SgXp
P25iOYMLmWk+bovVTT2JlO233Hd/S4YRSdb9tsN+fHyRFCUij7SsXt6DZwRjdA9fC1f09YJ81oC7
s3XsHNgZWSaj02pYBfjiqek4rmgh7CD45bPnuSfdISM0O5I27HcYBsNQ9vpScIP41EtYPZ1+q/pm
JTTRT0WgpaXp6IIoODRU3d4qnqYk1ZzJUrF0JCilmhf39pV3iqOSQAh62TPMMNH1dz5ZVtvAKbwJ
IHQQdx5FJcuNoHi1WW8+ik0RwxWcxg+0N5f500BOcP3qDon4tN351Ie77W+7pyaH51ivfL0lgWsm
Lw6Bo6rUhTzeAJWLERnXzhSKfZ4bapQrZzSbcyrziC6krwzVwLZfgzKN/OE/ekMGl5N2JX2/EB3N
Ctoh19CaHVX+kjJTw5aUczLmpH3uG16lJd3fLMdUdstLrppu9hhkBTKJZw1C7oXGDK8KdT0S3lrl
QlVhkEmQhYAE86g8xVR9Tv5v9W9Es0x2DDl3SVLfFIxA5L/q4KAHRwiWEcOP7p618prNAdRta8+N
4nxWBj7OlC1PabyL/y9167gSxYJYyy12gCEbtwv2JpMXXkSN/AnV2C3DrHOYvrY65uXlszo3x7QY
tKR3jNyf9PwTRdZZC2hRluV5bl4KbWmYlTkg8GiAjORXyXZRwHDnppBqHGowq2rvScAFx86XItkP
Jgv1jgNLEB6/KPxhFfbSc0fCLguWeD+dys9NTTF6L7gGph2MOstJkT8OscjhuWdfuzQvRHHNLw23
fbvZlvnnxIgXYDo5acIoGTdL3CqfBkF82gD+819fAkd2uD7Yfmc1nFreWUsKvMagA+k+8gr7iJJe
JY9q3rOPKLJ2qRnyFksaL2jeFQxQSUxLLeyW0miF/sV1LnnFwXFnDRCnZUMDhU0HE53MKcmDYXzH
g99EQTTJoPbXMmW5NsvB4ZgRYE4r0FO07xrw7l/AfHgVx1WHdtSkU50QCJ2bTD68kwJTSj15gNxw
BYi7y63wE4aR0APOK+bey/ZeKtg2Cga6sgTODAlUmn0txTuNVxEEyI+czunLFZ9PBa2Q1sReXsfd
W4Ql2JU4+8IbKmez6zMLKT1mF5J6IHi0hgF0EowF2zCPnlF0kJb7WSG14gcAFK70MIjSMjonTcFm
oDuNTRCr3jFKxVys5zGayn6Aq2K7m5XWtWs2lQZHhVQ78Ipj3424lHpoEZTg7urwijbIi4phUJpi
lkXxJBPXYLykf1ED+n47Y7gHwaJESCwmYxJvEzNbsP5m/aKJ4y1/RER6dTTl0FGY/FKGJTTh49b1
yHhakM/z1zVC2plwFPgYTaU91I7zVIfqcNArS+rriBoj9BjTIJ9lFsi9lzJr1OVmpeZODZwW028e
S4RrqdDETVoPYfgTlspzUia1UfMaxKNMBwlS6e9AoS3qR6R34mE9TFIrUNQu8+NwQDJRqkRWWFkw
Te4yikCnWhkknBdlhxR7z7WUGxCkabaNPEkRO/QDV89aCNgFr08h79rLrSPLSRFysNUNAVwdo2VX
lBiw8SRrHQqll5zW0HV4T37BWz0vevg44Ps2p0soPyeB6l9QGS+6V9HAUrnQPaGIUD7QXuuz0X/c
2jOPGP1bGRJIn51vGq7BDTTw2BIvH+UmGThdO1elNI4O9AiL/Pz0hEb3Hr3ttzQutIhl9b+WlQlk
qAzVqOJLp1ioeoS9I6St/vudZLpsu/+xFcynI5W1G/4r3oxLvKZdLv4al2T0C/lHDtuiY7zkkrkv
0J0+KUvsrpbBwO36KCyBK4DdyOFaHrPBNMkz3Mh4ucerXdsvdEalNrb7DPy5C3Yej1FSPo0woD2q
3Sz+daBVYUf0MzIXlpUKXWyAD28rlKIjzHYkMiVQoSwsx2+bk2hAQnUqmGlU+3sUJwr2eIcVlojq
umxv/2vJffzhVhRbNxFM7p7v5FrZnRRmWREEvzxiclc/tlHeZNFT8JuoDG8y39XlzPa5pizRSD8t
/quxbYeaRqgNrLbvqBEyo5zRaNYUPrP9g68mxdPDcA0GX4lK5Q9OvHzVvG+MXZccLnSUBWS5GL3m
5fdyDFLem+pKSDyWfBSusqN9TlQbpmFvN39MRc7O5Y6ggh7wel5Dfo/yQEz10RTiQaWNppoq8S8N
dNMHOtuOVi/odN0m2zHfE5tKoq6rmD0OpUXaSsLkzewdKHuPpHLa4qvBhubrs+NS/RPZWj/WZtUM
eIXSXvkrtUeuJ4ZTZiCoyvlU58quTb1+/72yoCi5G8bcKxUNtmVQyddznVg4gjALoHC2WPgyo4xI
LF4blxnPg9x7FiF+Y6X7+Fqi+VJmUjWfeZFDYgh4Hqyy1k8l29F35pg6O7hdZcffwo774TFkifW/
Obh0TKWAZR0quRpqkNCb3+baG+TCts8Bw88Lw56w+ktkgBw4Sr/I06zK+5+5poxIxCH1zNmOWj1u
Gf1OhEA5diurfpQkXr8ODG7FFqudu6vauc+aEwmrisSoxxd+FpWD+m8WoMlaZx0qxEiLW89gHVmh
VejnqooCzN9M96oxgLFkhC7n81QT1zGrpSbBDk5ffPKX4np9dCS88yGnqyIfh0HuVVJt8HwgdTR1
0nLytZFD1Sh/6CTWJgMsnaJf7p0a6sDAa7Af/nrRxEJ+frhMZgO37cOE3wMmqnWtTuBkLywMZzoA
fehq4KNcAov0wUfLDYw5d87kQcU03Bkp6aTvCymfggiw2IiiETTB4ux549nZsrS8M3oi4VV9ftWg
WnoAM/onFyE/LnB24nAuZ0QLX/c/+jQrhtjwtgxWS+WApg/ojKk1ISAxq/Q7gP2+syDveYLvJhrY
9lfDMGsugw3oohIlo5rBA2uZkamI7+dSU02vt2NVkZP6WhFb63zSreNfVA9Zm5eb+syO/M+COsgL
a2LU0t29A35/1RJ6bfAdzdWtKABYIK7mtNMb0xbd1SI4QVwTB2SUol7AsoAXgSnDC99WaYq4/T/P
hCOHyI7n9zM72hTvYNu8OfDhmsfwVbGtRH9+TMWZVi3RB/bUpCs0f/RcY57smsG+jOOAxqU2f1Z5
kNoyVElfSKWPvInVOjV8qU2JMqyqGZC4+GydJQzB8dPRerALqmh3HeBPXrvEMgm8AsjIK+mkWhTq
R7yUbrmxsZ+8jmpFulgSKpy62i/YfrbhXwR2WmbbXdCDGFDYROQYzu+R1fcE+3QfPvT+cm65Q13z
h25bWDt3luMjxWUytpqFvidIYRRox6q/1rVWU+wEf4vYS6evmGmsG0uBMA3HlrPwPCv5UmGLDouz
OkdgSD9VPsKAuVIqMbWKl+wqYCxEAOegfu/b9zd4zQrUdPEGBc4oZ/CC4e04VE9bD/s36ec7kXi2
/oBLzt1OVRhenYxrd88ycGD4SlNfFyA11E6JLlWkkKh+XF3LrH6zKCP+LXlLduMLGqUM03g+Nyr8
4G7O4whU/beoSiX0nLPKS0GSpWCRikA5axpM30NUNcEG3+bxo/jWTxiXAjFax7vxaufKoSf2B5X2
fzvaNhqwpgHILJziX2x1pNhsksWbwb50QHm9q+sv/5yDYWYNn/yYaEiIXntevK2bE6JAPGP3zfFo
tR4ZQtzXvnpbPbjpU5y1lHRH0fq0jwAj9+knIF2TQqHjquz2WDlSAXgCHy45jDfGn7QcHlypswGf
ZYRvUUZuu/n5Ov8JfRdlYMofd9dj9BRvA/sR+xKCb8FMylg0OMuYbCk4NH1SiBWG4gViOirYUvER
/PM9hLj+YjEZSU2c6MRDRZ3bF8Hs1+0EC51cIPyxz6weTJiMN+LOvfPddMf7/utOAuy/vTeVDyuL
fwCXgYv2dEpp5sVBV/n2/6G+abcThPOqZfyIIIOyKThjXNyqKoOo+8aABVx+VAZDgifv8fjOVupU
VBl7cxjzhzmK157mOd01xI/+zqXO1oUCAurroBhcRW2Okr2WqKutz9TbFaEwvU/5Wb/MKotfYq+6
aSSK0gqfDvLud/8hRaTEeSRz+Um4yqwr9E6yTdlkOqoZ4cEsOn27N4eN/Jf1sPBSYtYATJFbTJ4A
bx05qW1oO2h/kpeKJCrrBBg6WZiv6UMeDSmhDOXL7JU9P/otwyWLc4PMpthw+DyW2ilmeE4A8ov0
wmM3u0IAajRWEAx0d0m0NUFpAdiNrZ9/ZzidbpWp1mxF6xoD6+1lr+PHx3ju8X/V5FGNpmvKsnqO
jdkCJPts6QoRAcX4whTgjb0wZynpIUem2quSxoVNvYkPJOXKjeIvJsV+aFp7k9gzhaa4MNaENh2t
DEQ1DIwyOxrwEkZCtWEkxmw9fPvOd58AqP16SL4YRXIKNTTeGk5ds26ZEfhSaiD6Fra+B8Ycynyt
mXxxumEIAQVFIIaW0Diy+GnP3gdfw6ci773l2xgpIYdf7TZUdE8rE6lGaQIdaUv4+jGzydLFuOqL
h88YgRPpmsHry/jpQKtMmHf/pmGfPr4nB08Cy6GDZQC40X/qZxXQlzMU2zEuI/ZtEwn8jWd5yxWv
E6xNQ4NNKlmkRCUDCP7hkJq3ZI0I1V2SI+cYYl0w0u8TcQXnb1uAVVoxliwl9DzWg5R93n46++Gn
5S/+/zk10ZFlwoE9LJ/ZJ+iPb10Z7ybmvTm0wtUZLSoO5tJDDNCQ+ZaUhkrsZoNRdDD09dCom5y4
45POXHohkz55sUumEyaOcqL2+iIK495tRNQ4DSPfM7Y9rnyeQ8yzN5MNO+Km/Wlu45Ip0BtMS4vM
O/o2b0S3scprXlcZ1TjGRLcH/+WClBDpJ9WNpJ58RMwRyixIAGZRV4xMHm9UeyB/F1+xpjr4aX/X
digQuradm+RN63xAfZ04cQfNrWLc6D6/IFIQnKC0FDixEG+JHM/F30wy+fkqE4ALTKBZvNRAAihJ
YsbQO7XoaFjYlzELMyTgrbgZyR1lnb6KEcLTiKU69TWqGM8a7ZQndSCj2PSALv5PqH2LBjnczBHp
+IvSasyYrLrznAa4hsSgm+F/txKfCYlq7l1Ii9Bop3BrJaJw+RiV2EX3CdwdKI+Saj+1pFZAv90d
uk5i3D7M6B92fdnYHO7rwk8A4xbhz4L+/42d+k+NKVL8Y7UkS1HSxEy0gilJjpXJWt0E9XTOSiip
oBvC682P4xkLneJ3eB8lCrdNE8iyHgQIe1bTd1A88iPc3QnbJcKwY8dCqZenr2l9akhZkaDy2h0N
x+AXUiiEcQ/oOcBhM0Vg1SFxdhs9lNHuqyVjBCGmT/D99iMKiodet/TkJVrmNZ1barxcLXDdMt5i
MPjVa9/b
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
