// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Oct 24 17:48:56 2021
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
odPq5P+Nf7bSF6P+PybbmKSf2FeCl5SJOqdFl7LsBLrh2zM/38fipY0+2I1QStz+vhQfACjC4dZp
HCpor2PqSG7GA419RLjfrHY0NTz1BVtN10EPlMSCaI1q5H+yCYhe2JO/V1lwrf+DskAP3xXzlROp
ZuxN49x1mziVKg3Zjw2TDolShAOkyi9O85sjk0F69XSfzn2Km9YrlFFpMQRn/1Y3iU8lkvKCTpBd
i+qdkP6TQiwSCvUIGK/sYNu8hZbvibSt7L1G43Ju58EcUve0DZJI+M0FuONF6ZTtZaJXBqGK8B6B
t536Y7dE/3HAxf493gBGUNNYCaJVCFWXL0Jqjg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMvc2QUwsj96MLN/ADNfHKefOrKyAgqGTnnKtgoxn8jV6QZmyrmRXilc8cCClkDC6qKnHjYTG2By
3NZjV3IrXOq4wN+M55PKBe51SB23p++UpKSQfEUGysv4hjn3yBMVOMhomj08u4fT9XdqW/6+fcTi
Uayl8EjR2ZcL8oBBegtNKPndpZgW7X7efLPS5GcHz3l9wl15e8/eeKysPVX9rFPqkiyCYgEEgtC8
N5NThhtesuchMuu/vYRzf9pzLMhIfkE+tpA6WPzg2Sbmjdw4/B4PSreWCv9tEBgLmqCncnNVFOyC
4WeqipPmsdh3jIirPnR9LXxPaon5SyMyOwYegg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11552)
`pragma protect data_block
WlM9kAlZ+prTsIM/uQ4q+EeAjT6OvzT07LmLFhdHsuf71svtmcDwrh3mZsuqo7MTZEQb+RogzzYE
zeppa+DnmYRU7/nHTDHoZM51gAkVbExHcYnIt5Kexo42GslTnRH/xSuLF5yYMJ7k5c27zA8D3VSS
N39/CCGFqjyhUpdGdxzylG5D0SbMyvcsPUfWU6xfOyyHY1QfMCG1N/LO3AAaShNcXIuWMq5dqVMC
SVeF4AAPf//G+MIzcDhUanLNK1P1Ywnv7yohmJIFbhd6lZDuFa2UJm1PXSXfXZ1UhMprkspYCFDd
SETBQ/w02QoJ1Fet2MD3fL7FVZwIaW1QmJ0XG4AqL5wjd6KOalE68M9Zngmvvh5YnLlcpmfM6sM3
J4hfMtw6FOro6qCwxaBNQuKoGsx+G0lY21You/FreX955I872xHI76bUU5RT2vGCyx8FQrh6Evst
NcCCpCz79X93wlqCSg9lLYJTiTEJPxjGfo2Eev7yGNW78bSemMBMKKxeLQf+vfYKg+nnAOKzhAZ5
dZziMtmPittrp0qML6yI7CZk23TKJanoPv44k3cGjZ66esi1OTuFyLxT2K+uGFPIOGHKQzgTF6ta
xuB/tPqXRbjC2SG7O4GwjpT5zs6hS/TII+nAeGqwu0BHF5YlQBh+n2LXYyUCK0OWQ9lwXoon39Kl
hZYCidzFZr0oX0xhzDdlEdb5D7jjLHafZ4jJu4OjCcs7LDEkbB+svrTiY5TIZ4hUGJNaKA9LiZ1U
nk/G14Ao/LuRWVvjquembchzKACnKCEmAC4fPF4PqAtvLTqCXfL5LynKgKPSaC/ghiIHZCn1G3k5
XBRquvH9Tk3yR99GGi+6GbJN91clNac9oS0eZC855Kp1uftEPWEOd86DwfSst4k2yDrwm6DtckDX
xldgDttXoqznWCpISCx3JoYl4k5J/vdePkRLYKRZICa9lZu3rcl33B6YGAYkQnOaH3k0RRUGZ9bM
1kBF1T6NqRj/7WU0DAZiz6dLjE36t8OXqGq+QTkJQXdbVrPe1cOBaa6bSz0CkhgFxlqZVthDvySE
4vzWdN9uVzetkhpdB+okIn+PSrss8WqlA5UK4FyhFPbYfJO5tbttfc56CuIpLij5jpjMDyP6gRsg
l4gzgjrbSahLUbHQux00dNMJasy7HLz4bZppqrxRVMbWh1UNaJE4Bqi4dhoDYcd/7oN8Iodo9Dt6
soB3kqtHppHbT8R/qVQJnZn3KKgq/yr2I+faM7BumrsxaxkIPBryQdUbmRJGSypLYdol/duDW5O0
XVa37OVajRUpFoXt7TKbblNQ1xLDnpXsdyFx53E6I+SZeN9LMUUhoC3AfTnN8C6Bzrzm/BUHUEP9
YvsOlb1k7hyPaQ1Haqnbtzcb/NHi0zIIGugDj3z9Opm24rsaGx5DDSf++5/OjOn+FDpDpfgClFfQ
OxKI5DwadBNgAwbkjJJ92G4Bx3U6JYcb9wNCpAIPpqp0dGNMElNWVSfCjL8MFxuGAXMSUa8Gd73H
VfG3lcF4lsHnlpUVi1rqgbNmjX9mWg9xzErejVqAi3A0ZA5Vs0+PbbjkjJn1am6aphHN3q7AxMX9
4emNFrXPGa6ZzAVEF/HB6LXWGfs71aP0L66CZbO2zeehpQLIsIMy2cG1rrLivyJbm6O4vZDNcN3k
Uq93AdOW3CZwRyYbN2xSDIr4QeEovrbhUyHpP7OfmCJ+y+bOF6IUTumAhjIi3JtnUZFNwcoCLGDq
mnRbhfkjYIh/cO2MJQ79DsZN24zk9nJS6gVYp1JIVQM5ADfzQ6Gzz2H6q5THkUoo2Swd6YrqAaIq
ED1jG0Qpne1ws/Cas3XsanNZ0SFIv588489SdfSbowOppEv+Bm3Fw49UgMmXWI1b0WI1PkQs4gDC
8yUsSEFZ93SU6xc0qt/NLHhvsL+BDgE3usv9GjrAbJY+Cq0pak44ZjsFjkdQkVR/2fIbG5uj0Uie
QIc+zdStNKVu7gWysz7/97eYKSyPQkpjWx+nKRc0tZQOaFt7TurgPOkg5HjW37LHS45QTvwJO63e
oqRCRDBT2ew1KJvnZupMzDlurHh401EaGAUwTFvFEJA637+AwTyprxtbjnHP+/K3mdNf5/HqWpMW
Ugt9R4Gaz2Iwey68VTBsBAREoAQAImZyTTSkkwbjxgpxFQClarpJly5qEnC3iXwVVgtG0mwJJGvm
i1R5NfKj2q/V/aWJSnHR9zXgsBOSpsBExmpooay1kAUIa92oeGOJqnjSwg40z5n//hMRXrpP2+Gb
qNBO0fg7j8zxpTJj7k0WfR/7mxnAd3Vq1ZTmhxtNxj91RL8Iz5GNPIdDsqJIlhZALasoNNa72xZf
yZ9tAM2CSUJSKMiDf1lfqTHbUwJZf5oHwDHOoWtVMxdwcV/wShOz75fw4/ouYdlZQCFBd4HKqkHs
wgDyTxvZmMBVt10TB+36kEODFBmvkLnSdI8E2jYOpf3bxaUfY/i3ThlDNfncdZgRNgHYbKXRjHPC
zXX+OwRTYWKKWiy/XQqLf1R33uDfRcnAKo7z/7Iqs08PrCPDeILl0FDDOzUpkyUYs3f7xyQL92S7
k2Uwr/jyEnArBLtHTbovdwKvsZga9DhKktHkzv8ZLl7QYeXBpXkIkfI8ohKQKu1o/ex/1iZ1bgtc
8GVjNZ0ExqlF6HS6ISFxxviwArqjKe8IWIc2A6iLzM/8y8MaCg6dmmaSxuX0sSjJhTgg/kOvGRjm
Z26oXfLqF/cp8VUEZGR2XZO5y4oMd7KfY25smeCRg2omaOpUbZZ4j2zwQPdOWJjE4ISTt7DUXODV
Ohh6yIJXDUXEDYcrHRve3wG2Kb6X8VgnVAkx8LlCP5UsBN96OJkonKkoSvB95tF9ZfH9+p18OfwU
atA4fFMZa0EX1M81s5nFYKJiSl5YMLkBbA4xDjKLHtPptKdCWOf+/i3/fEQiMTauXWc3HF+H+6la
KbhQ3D2eIxALOyFWbPcmFw1ZkYJ00zxFo09mA5wfMyjci9Va40Tt4A5AFdoBYttfCelON/k/XXGE
4eI+PHF6J8zS2RKo2USNLXqc7EznkvTRdeT5glrX7ImDxrulx9joNjkLKNF3AWstGGDfHvaC8wGS
4L1C7xzHXt5E69W0AW6s51cQCkfXxSyFYBz27bdRqtmgt7rMLJAXrWyRmDwV3r9qtbP+X6j4sloZ
jnqqE7680vOCaMwCdPzuq86RjZjeDPZhMHKJRQRn+TRelJLybDn0okuYqrAM/8iju0wIx8jjBN0s
cFuHgMrgKmnTSbLcPq52imVrHyK7up1aHOgbyijAP2RR/wJJoXVdC+DA5VZ0Xq93XwwjEb26ZvMY
K1SFkG6uFtopjHjsfhz7MHplp1TiakqvqtEzi6lp/WE7Zuirn3/zL0so8HQhYRSK30q7mJ4/X5c0
Y7X9dn/hIdRQFUvQIazdIm5nrL/ukv6Dwf7x9hQvffrG889axdt0p0SGu84gZXRjY/GBOoUL9CVb
xuGb2z0l5QeI4ZF0Hg7DN6VbBWm3IgwkSo5Np2cC+h4aVFVYmfBBglavoq0oOvPdnx5S3rAIi1MH
pMamEQRbfhTxvfYgqkRr45kczjzVcFnYX4sp3+tqW7QgSd/6wfOYok/a+B3aUcUkeINVWuWilkwX
qdw0TN1muoO+vwj9FFCzx3FJH0t0Od2lCzzj9+/GBUtx3E5DkSZBeMg+zOntC0DBMGVqY+u87MDo
5RHC9t1v6UJ4tNiuMcS8vn7c3mA1GSVpPFxHrnp54tvG6OFWdwjKXP61QEOnB26Ks76sVzu6OIA8
I/oD8q4FNZEkbcIGYSixK82jOA059n39wAgNpHXvozMWnPxxxyGZ9JThNQaDWuWT7lQYJdbJDPYw
PE6njZK0GFJxCikrD0nFoA52ipiDX9dUit//QGIisdLo+eWtb4Z/IF+ofWDk23AypyxVYGHocEbb
s/wUukNEIaSrR2OJ5+S1BxtBXxA2QxVPVyYEQNhFi2KbLwC7qZJ/XUrZajLgeMC714aOvvMpOivv
5t4f0qOHT9IA4oRwDs15ivaylnoO+RYR79APSx6B0Sp1Wa8ylKQND5EYl76kMkReXFaysvfewgfA
BBpqtK5Kc5N0NLzX21Zj+EztxfxJCAjQ/6bBTiP/CY5qze3RDcgKyPDfRrUL3NhmPWTMccA/9U+z
gq+C86Jsn3u8V5mGClkgcTRDSbxyuPdO9pfG3dwKFQcOjN/h1kP6RwHHCOCkDcLzCULrqdKQvj61
TH9Bp8Pz2zSj8Mu7x5O4GTR65ReJXy+dGjHeWq+WtGyDMsevsYIh/aiPXH7AGzRouNdO65168USd
yRrD49yDyi2WnVQdC6R7avFq6guMXXVbhNPTNXThlayOn0XvzdmhSkCVPuB8WFzJfPH2wnlPUaoi
Cbc6vLTZ8GUm6PsW3wGMNANWjxnzfFi99lb2VToaPcloVE2dxdnjHHg2wnWxrf86ogqM1Q55IZlJ
58fNPNGv8UZyTTe7yZEA03whlxPn3lsxsz450Lk/M44QVXRXr6L8OMq86L+wVJGIAmedysRGTwxP
XbouHjcUXCEzcz+k7qJXdHcw5Rw3DbfmNTMhTgjP5xqC6MnWi6/P00cyAopgXlnZMXeeSiMJFH+c
ZJUZsQUN+etocnz/Mxd1rvNCCqk8kyzBH3AEVN9SYI0sJ88U31odiVmCaTEEW5tLOg+fH+LXmPhv
L2awrlGn0i0nhOoiCANtDJkoN1U1j4ARPAm7mCSOV9Z43mUDYLk9wQG4Qopa+KMRKX2hWndkwTXu
xPkm/DDZ886om89YmVGCjjNATSR0VTVqfLKIVPBGOZvJeuJoV++wSEr4BTJPim6Al0GItDjNoRsF
io3+bcIF7FflJCRn+P2XNiWnzVU6zjCXglmnniFqBDnkLNNxruIpaumGf9NuFLcGCvWbUcx7M/XC
X95dOHxwNAPuVH2U7QCbm0I8MdzC78WDSA92jpd8ptruE/8mi3c7nsAcGs8pD0p/BTuO/CuobsAn
p85o51p2OJcxXs7Gx1ho1OuFixoyikaQiIl5nkUJd6jYc7ke7qUAxHU8zR9MnztMMZOke37kFG3Z
/Ci/QyWgWboGrBKN162PHZZ6GHTlyXYj3X0m//X48Ka77FD+1DItLATzoQdQyzdGeC35ohE6Ectv
JJth5E4nefzUiOJjOmsil6h8zPsFlMZQFdG53bhdtX6EoNLB/VrtRPl0ACopcwp4tHsNJAeHWhRj
w2QSr2K+6zBq/rk48gn7YapNLOcEobYLSsXNTMxU+W54dDEGY1JHZnlel1P0IEOSjnoNclHcG1//
3cen/389aV+tnPj9PWLQVU7vIPAgCrFW8wBoo36pTFx2D2jvpeMYGEBx8lkFduie4qjjMh0dez3/
VWG3rGI7F5/ByPRMvXKY8EzZmWCqbORQ31Y/5RuEsbbYXmPoyEhi/5DSznEfqUm2l44HL+cWjTHG
y43MVBSENGedewHfD345IkTNwjUpaoz7/YYHZOviBMyKMd5LeNyDBHq/1GC8e9++6QfrX0kxl0xH
buUMdR73mnRbxbLQ66kAMYRPH1wf/zZn5ezjOt4UgzKFnkA7XvOclp5KMgF8LvGZWR25SBWIE9Kv
kO7OsrKz3vBlutr1KAk3gRfKXY5BDv86NEt+Fd1DB1n9VbeoiPOoxEY9lmnuTajCQ2pZHBpTDwFs
q3+Dz59qXMKQQuzoNpAa8tyX8qmrVh78HuY1foUJA2awQQpu8clZ+ecdIRFD1NR9E2o+3gUOEYLr
ZpwLCZZKAfJt1hvLNlChqQc2AfPyjFAA9N2t16DhcWC32Evp9bq58wuLNoGVEDRtkgsTZLAxzwi7
IwomXxRAvwbM9Lf36Kcv1vFG1hyPLhVIuy3BzR0UEVfMyLg3BeIqMIUbl0N73otGo/Rzpuhl22fc
9M7vXIaZe2BWSZy8ZI/OKt6p9n5Geea3Lqqk0E4ETqEcL/ibhR4iuXljccFLg4x5C7L1KYnqD9h0
XkQByD+CEwNBG9zM/Guo9CsNmAwryUQSM5IqamRDu0Flod1V0hZvdxfrReG4sdR7M1JwXW1uH7+S
Zf1Mp47emle02vx5dItrJivhm1oCfLDlBXjZi10TCDTa7Z9PFAlylpDXYQfrublsghGzqthFkI2q
Uslx+DFUll5AJJUnMCy8CJ1PDyQrXBqUQemZS9QgZO+vJajoo0F5ukvBPWYdJFRBPXOinmKK478/
DLhJoMFttrgu4NrAEYXwNVit02B0VA3eBe1F7dDUt9Gl7b4QKhUmbV5H+PEKQyFyQqD2CVaJg8lK
MeMTmlnytxynsPyftbjFZHbqqR/oL7InxT7mPe3uslNW5kJCcBmM7VwArwoEgCTGSPrxvP2bVW8v
9z5NI4bsPhftjwdFmmp0JN2Ybv6eLlWGigo1ZPNpQf3R/KR9regEIK+E90j7NpHih+FXevWLMPN2
Vm89lfIdLpnMiSACzkB0pFWoF7GvkOvaiz6Mdo7u0211/NUJj2nqdxsAIMVbReiOmHASnSKpZITT
aKMpsl1jFYv4gQVQBCxFvqWtebMhG0sUMAhryO2aHmaMkfkxn7WoBZJCIpFvCO4wAIO59xFordkF
Di+TfevHm5mSO6ToMtH9O98bDN0qqT7ODn01FY8PEUF9DfApO1effBYfm3nTqd4bUr777jlT/LFG
+BhcGWztoN8+o1qI4e1EEGbXyqx7XI0jFbm5U54oEG6Xi9A6/P4RZ98CYFPQa+xwf67pkeL+jMRn
YFfYTXpGdd8GahTZ/FwQW5DyNgZNmH69qgo9Dr0P+dHnHdMlV9T6vqdXPK1E3fGurRQU3Tt+fq+A
hX2JyLS0iJbLoh1chou+MQ2O1Q57IJyUZPu9XzVZfzuzWUU5eOoXZXmT600JlxXthSFG080WN/P0
VqCbG05jIy+HlnsXF3Dfd0+I1sZN+7cRC+uVF1eao3anDZanwRHWApa4E3ST0cyll0N4R75yOiP4
2hO98G9jFEe2rDTPa+XlEdhZCweXryWdvnS70XcZK3LoiDnZc+wJ9zWttTqUrVV0YQrd4LqMUDFi
SmvAT9RVzfLqrvu7zdOvvuvdx3TluZyJDT+EQb8tL89AxILSfSJ32isgkGGe76evUUNUATHrkfMm
DRf03eK2eo7Ta3vXoawWHgLoB6WR4It7J0kgEqQ559DZF9RJs7WIfA2FpMHiGnAhbSwmNY7aZDBt
fRK+mnOpxIzqeIQ2pDL8yMoHxz/d150cZG6nC+WFNyz9WuexAOaMeU+76FXiMZd8QwQR0ctos0ZR
wa1Iy7eViZrbg02AdmaLI09pfDlV9WiBRjdIy8CEUZctBN6ILBvDi1nerSMFN+Ua02zDIYH6QXFl
CCc1Tl0AOIE2o9LFNCxhdahgY68zpxn6decaagQrwLiaeeo+ohOAa1/wlBAgFc8fhqEoaRwGUUcX
LJWDghL0pxEURnGxGf2x/dS6M5GnhI1T7uxNtD+YVSojq4HD+f2PmLCpLPczcJlkGF6SdI4a3Bw8
lv0Mo2qtLRLlZDlD13BJGlrvyPLWII/ROWQQN5MvmTpSy64m3YYuh7zrzSGDu1XD2Qm3cvhIX/Xe
3mNFn/QSz9g0Oimpi/Q51YlZzWM1NeuxKYAkyYGpjfvEeY1RMhJhgauo4+vbTiq8a1mnBoGsePRI
4BSaU013/vFfdWmEHXSLat9evT8n9Mu6XxuxuAt6VbN6+75PwLt0Mk8lbKfRTriXWIu8sBeAvJfF
1+6NLVvFBuF+a8nEyegC/CJXp37D7OFrnSEDaIdSxQ9B2TaP9/HrtImwNdcbV7cOg/vsgnC5Mssr
0puLElmGc7usAJvh9ohHHzz8VSoXRRhnp/+YPd7WaHXKbHkgnADCFXNTIHsYw0iJ8HVe5EgAAPhn
OTido5DCSrRTDva/8DF+dMpNapvvGhwln8iu3/kIrF3h+HyNY5wusaS2KatEZL8DDwROc62v8qit
4V6UP1giw6pYEs6lezCORak1rZtdyR+ePtDCvlIO+8LTrwDTivVNCq/dXyMIz7Xz5tJDi1Y7mrN0
cIFJ7XvybnPfhwIaBaN5CxlnSeEt1K7IchIxFTJ+ZDuwkHVKIIwsY7ogGkND4IbuGpcfccuRKDqK
Ja7riZZ3CK9jysq9owS/TdU2OOqUwivPeww12ivx8MGKRaSyYkcLUVdQtxug9l3VmzlLgqxlLY++
h8qpIcL0BvLJprJh1X94lFBQjALlHtjvMTcchf0/8exQQuAg27MApChnXfNhMz/GEmMJXAyx9bsb
apFr94qp4gfNuotwOBxK06VbTZy5f2DNx3P+NbIrAGaqjVDEgnuPaPeT3IvhPk036a374QjyjAVA
K7RahG+ROzs8BsX9/kYhC4g324c3tONKiuX7iJzcAxDKd9DvZ7pgvlY1PWlM6hRR9EUo8Bf09iQz
tBlZVJqictPoODrJMNrMuuN4J6BKmhqueDmUNuLg1vn6Viuku7RRwHTyumpWLCO5RJZ0QBsuY26g
3fEcpTlat4CyCY0qscml5EMI+lFU8JcuAXMe0pezou6JP1kLBR0YmKOl+tNIAcYBUuIrFagzmUp5
lRnan/c0s6mki5DKgGiXxVm9sH8xBDMzt8AOshDhcMec0M9ODqQd96polH4gJQjpAwoiVG8uWEdX
l9Y919Sx3ze36YIokFW8MT998ngGw4+JeJ1t5WQZDC+yOl5AfkROljBnWy5yXRyOGthTBtUxd6qL
KrYJIbR2MfCjnvehcRN/ohOFENnp5ffzvKXSO0faBEVB/68F1SzvonK7Xd+dlPytxuJtPGyGihmV
Ksr+x1meAMzr8+Et9TDmWcgd+Ye57US3yYMGhqEVsumuJWx/2tcf/zGdjwoJ7rLfVyk7MV4PzRZT
9CqXzvraNFrEtD26Jn5tX32U+VQwkHWTtnlQ4JkCNnI4u9qgy8d9F3aCT/sZO2Hv2wELEEI6JnXD
wyvJVFB7xcNlWMese74R7Ctw7lh22eK9dzx4DzL40VGM8ZgjZMftRaoB48zRTCcrdC04yZ3qWR1k
d1C58qa6ZMQpT7wsn2FCkZaHG0lvuplFEndjzApPRNfE1ayhsF8ME340Z3R0jqIl/m/e2kbIKtFa
vbmObfKM8fytj0xPnUohBO4Ccr0TUlzPuGfB5fbwHb79of0MU9iBiJ6UihU0A3ce7x/AaqyEqdRC
zzQOVgDMz8z6KJwKrVY84aNd1ZZObfQzGZZVl/4hUuAR74ODFSCpK6mX4XVNkswe6CYrJ1KiEUAK
hxS6a3rk74LERw+ZurJDJdjxw/ybDSrLMewZsVfZKRLQoXydx41ZvAVCQULQpLgMSXCwq/gwSxJ0
Xww7QDrQH0vP3M8bhhto7JVzw7t8WjMYe9Sm0UngIcGKW/c8vdDfZXaiz0KLsmDSylUPTXwxS/KQ
LC83Fzz0TP7lGoIfEIBjLAZA+V05nO6ZceQ0OdkoJ0EMyP/pmCDSKfz7cwQZPhmYduoEUfSd/b43
mVUa+7+JvIF/x3ZTmQhfn9vU1/BXcZDs7QIOnkmM29fsdFd53NH7CmhxwkIAkqGvhzjDqE4ICkYk
JU2wYR2QvZsP2Jg27Fli6KfiWO6pGLTsB/Dlb9OQkSjxKeFmbWTX+2cGw8xk/k59ciAZe2qymJSo
p2EaCMisWle/sHq5xz6zydpNbHgJ/+i85VhjNQfO7ihe4kWjFWmlnYNH3LTf5/Iidzd1qZazO3yv
LKvnYx9TXlGU6GQtAG2vb2yj+DtxJESWaec2s5qEcT/tVFJVBYFbaPha4cJ5Ip7Dojs2UQkVgGIE
wkQgDzdhdSTHVvnMkP2dnSJEyhS+9fxgU48fGPdV8V9corHcuRyHp/PFjmXEJiZqbuznA1J/kfFz
hgk7cK72hVslDUosL8x6pRXRoZza+kD8UzERMc2SvxkEFKvWDv4A2bx1FY9aV0VZkWQ2TS2fLU1y
wCXJJCo+sXzO2O51AkulLE1aA1CKcy3ZOWDS2Aqy4QFTAlWwo7bTT4R4PcMN2xdNZ/KTQNpNGr4A
kuiphA3IAvdcTwkQIUGQ7Q5w279S/Urz7zlQYAzo6+i9VKfJec/XHWVVvX7S/76Bxp2ZYlD6hYJa
Us7GVTlG8qDRi/ENqFOHw1azQlTJrvuF4fqyWCKa7Uqxdp0BrovgcONuuA/Sj7h0DCiMLvNkKX3R
I2BwQNLetulkr5lUcu7uggjG5qx142dbV15xdB8vpd5Z1hGynLi8Ux0C3/bNCIWF5qhXVvR2xpRe
deqNlzVlO7Df4qowKauh+h8cxbGBGXrGPzNUjFOvtRKOC03YbWQnyrKOQnTiN3DwMKxMprvhI0cz
+c1FQqvHrjDiIRnfxeLmz4mOfTEe8aX3RiSWybJbRByKxcmClsB/VOV7hBPNOPwHbfwKBOJSEaJ/
LfPzzyxtm3ZT1zDDoAZNCzanPS09X+Fgvm73Up9WdfkhRba3g4OsWA1lbz0LGO+YZPbd67RanZE7
dGlEXBQ6cJ8ophlz5YGfJNC6m4aTtF7bWHg+TI9PyMOec42PL5qDcF9XlhOo520NQQ636//4zIot
aM0Aq79N2OAna71kXH3n/8Jg7k/KgAe/jpMiqavU70LmPze/OIuCcBB565qu9qKt6aMAthuoj6U1
1IEVeTWy2qSgocOknshvh31gOJyzP95dKP6h9SM2qWuzfI3v/P8n2jwKA1LLyDMsOqOlDdKUmNTP
pQzneQixRQMdn43NW4ERLA+VsmKH95q7Af6Qz6rXBBwyibSy0z41PJzUBI4nxjgxVNK3LzH4pbB0
g3QtqbmE0pXrQqS7/VnCSbLQp0/uJUw+9Ih+VGlzf6FH6SKcKAYDSyc32T3XrKAbVlwkSx0fcPK5
FFU23LO1OTzvDwyPsQ0ix9j406n7/BVmosQUIoIMIT1R+zKTh06YwEgNzqTMpytXmMrZLL0My+l5
813RdjE+ntiAM3qtS1fLcBLSB0cEn//OzvEE6DZSRkNtnF5xf2TU0bxdQdKImiPoF4FIy4Ca586A
g177vcknTrina311VJ/Zu3/RkdVaCfvRJxt9M9ihOmvxneuufLsZyHllApavSKmaZ5GKRUqqh1lQ
b06Shf5/yWFMjs+YOLqdPQpnuTr3bbmrDGFeIqklXNg28FXrRGa9F5cNL5QjUSso+oGi0z64mSsY
NbpuJ4LlvixdCKo/JFALFgcPCUTQhQPd25CWGr4SvagZM3AHQedX1udu0EP31gr5ym+85uGQ7i3g
vEVIsfhSdWdd25M6s1J48S/x7FFItKc+lTH9gQEcVNi+XW/qYJQThqJPmXg8BVKoeVMjniFvENHu
ky2A6wlEeOv1VBrpbwDJ31ZjFYcM3bEc8MsX/DMjFRJKiUanxL7B/jieJhOG9MbNfwsxs3EUb3Uh
gcrISoK7YN+PhdzeTGsvpG23ARfdBDY5Dd5awzsVOndDykJuPEcWrJuLbU0nMMhZh6yvukuWsIGy
BVoIiPyDvsOitNFQ2n6Nsfr6wIsgiIFFeo9QA5n9jGVLudi+f6G2cnuzl41v7N/6K+hptkOBf6wc
Cdsp/Qow+Am5qNdGLc9n3qIeqe9rAtSsFZ5hv11R1AyYVZ79W05UqLurmm5+8LEDg1cw5dVDtdy5
UC4EDZWmapHbYUv2sRXW++ilxJ1xTx6E1AX00AN6ecDGHv79I2JeFZI/l9IHCn99dhS/5XEk3bBz
mCa7tqCWIBVfWPls7AMsfu5ao5mLN7rLZFj33WTblrHt/Sd8sL1dA2ZXAR6NUhyKtfD7YTdR/c1m
oRN4B3Zayv0B/15h1RX+AtZqu/pYLO31IG80s2Oh4yGFTucBxW7AuT7Lr0un/SHSDxfX+f7R7P/x
3GQtzC9N1/emUMZSIwWE3DYI2NzNWV56D13Rxp9vopk0dHL5zVeNwSR8hlww5nbh1BUo53xyIc/w
buy/Q2t3R/l67YLi3xFaulK1ZjM4zBqMQgTyEg+NESZEH5W1/spcVYxXDVaFsHErGqD/w+CASODC
z7s6u4JJO6BENvecHRPpYeUzpA6yiMR76WbkaamD2zL+B3CbFZ1NZj1G4eD+HWpM7DgpbgQNq7oy
0qTcPbOGAPd1IxdSJgQqvKR2ltBykLsdrcs/WMsfoXik2fyV2KnQG+9Vq9sSvKYVtAdzYbnNBfin
aeRMuQMEJ5u58UpY+FJ5tkJj3dPKEit0S/aVKLrcDP10eKwXbPRw2zdPP4mAbw/bmUiq92pckEn1
sfiOevv7TL6smHH/FCPBdr1bf7bqFROUEgrp64Fydk5XpcI2N3hSlnHsLZXSmSbC2rGE1T98m7Mu
hDRMVydfn4ehKWdSAFhKunLMloSQ/y8/9+V+fDIaYWJMSG17R0iRspq9y2rbFnacTFfh1vcmv6Bt
fTaY7zpxjPEUpZOtQzo42SHeOgmBOttxUVd5in9hrf0re9KzOAKJ3E8925tcI7MXKUzcn05cY+DR
U4NLuI7IJ5Zf+T9/Uqlrj5liOBDU5bzsUkbkf9i7I0ZMQjMlBf4oiU/ZHwzwL9ZE/jR9qs9ItKmg
Fh/kAKzKaGCkEKpi30+HkmLtQ9uMWqyZ6nRrZV3b1Juv9fAZZUqM3TOfOEYs8BIZJoyIBazDhuYC
8LmbNhxlhV7vdeztQ/YFGb9cLIMYI1NQbe+OHq1lNIfIk7ouaEx4knJmj//FTbkWB8kI6nYkIcVv
PEuNI5knH3+UEuRTimRsWHT6LwZr5qrUPzFxNqLShnRxHiN7eXbJFXQOXBwY+pkXvI/SgFbLPM8U
C5muR1aMLBx6vogs3eATGp2XVUC7U+TEbnCoyVDVs7dVa2qAdWwPBGA0XfmmNbiKJspq6KwOFFA0
AdhcTHLFdMrq31+lAdUto05oSb0CrMHm7w3rZTgXGKvpZIr2HTnr1kiSLeO8gKpThwmZmIYCw19m
F4HeJZb+LJ8AfXto3++0rwKp1t8K9vWemQ6Euqu2BqJeLtXJYohGpQ29TIDtOdVqKo+OxGiRaCa+
xUmw8x76u0sLf5L6W+cRgoV5QOC3FymYak1cFDU9O754/OtBWM135+rC91oYD+R2NOvu+muohdry
TKB/oac9qHBhvCE/kQW4JQRD9Y0ELdWD7JedkJAY2oOiF3JumnLnTjmuJ3bMRdi8AQBuuOJbA0Hp
3tCWkTn1B1/tbNLOFjYoDq8MEsqFhrbSMNfeYuIxpDjjnYJNZkVAEUGZT05+0JvSNAKiBP0vbv8q
olAl9F0640QMhn+xSHIz5qWcn2MGf+IQ/THk5I4/zoXWClYvsu+j7gjkSYf4ZSsY3Zq2ZeKfkg8B
4dQFgb88yIuhBAkNq9apSLizHiWpQzq8MGYcoKrcVNWMTsy5EFRJ6S8bgSvIbSf0D2UI0KfiIng4
hXIIGHEVqHemVt6K7A1Z5x4TTXnpnPYeSavQbH9AjtmmZbNRVr7puaoo05MA1HtznkKLPMbj3vTH
AS2t3Wigo9UPJFxT7r4XzNMPhpK0xt+o1C1C7w5Xx9Pr/yz2vaXW2vMG8LPqsGO+m0lUiYfbDIn9
yCHetMye28WzfKW5pUtjpbCamdCOLRNR6huMA9zegqFBU/ssBWXVye88qUQg65r0E+m5YZJpWR2S
95gSqAXpjuggBd6hN/GU1HbhWV/KihihATZCgozXsZs/sqTzqZlySbixIKrhmuyTE2kk+qOenqth
i3h1hNLVbCXCj+65dgtovlYpDR2YivI+vR9sd1ArDNjWqRycanls3thsEbUoUY8SkwuPEl+EDHeS
74XHACaDC3MMsIUGTEh0kZcXo7QBx4F3qdd+SJiP0pcaiqOwnOyeWwwf49Td76yeUqTVGbZ4OdE2
vaQ+cX0beuyHUvzMngDcbLjFI2oTcK8eO80eQOj4akSwH8ZwDz5xoOCJTLg6AxVBmbkeisaDw3Zz
nvZOrHx5dQVYlpqlePR7EChZUdRKwN0hG46zni/HYX4YCjY8h1PH0jHY/BqRz0XWq5vmDW/AyVAD
+nT+H/IbNSpWLaxJL9zzJytNx2mgtHA4pZSUMsk60LoQ51ztam0d4K39wWfUgt/x4LEaTFs2LON5
PfgrtiQbx/DYV+54Hqe9V7QGFnvmomwetg6JGriDTpoiCQME2xFhUSKt1x7OXW/FlnkoLLBcykd5
YhcC3Vk2vjUeVXXgd+YzQ/pAZHRhZ2AU3j54EnUPhgnBaNnN1ivhuNUwqPO6jUGeKLfWETBYs5um
gDZ8sgQGPiV1nGsrnyOTAe/IhcJSP17CMyIKfrRybsX/c5kZmLjslpYI3vkr5BvO95Wnx8BZEN+c
8EVCo70xka7C3+VJ0+0rptDgh1vlDrw/f4ePF+6VEiXEbYHWYl/3zgKM1kUdGogTpjTzbNFW/dtg
8eCr1ulIQ/qaIP/Q424kTxEZ7cCJnZt/Nl0fO98V2SQxooaXHftnlBBYnp23+k/ELLV2ER43uce7
Ed0Lx5ibaxtCNPDqKZLgqdh9WspdmpVsSrQwlhRt5VlWJns/dO+pVPhA9KnRMvbMO6xYor07BnLM
+2+g4MN76saizzEGNKCTgLk7Qty1TxQSpcZsolJtxyEc83t74zGsFdflO3xCNqY4T6nbMqA6Za0X
jFvoRWgI9dW3GwsbE04YOdXHk1lCyrjl8eVYC82lfEKN0K1ibEdsn+tNBGXn9J6nJnIfv34lL/5z
McY3rwIeFcyeFdsMsc9k0IdSeKBOL5HeXlAlfSq8tCLpgPWmsWpHerEe1gqvAWVSdEGP9F0EFAoh
c3fTBG7dtl7JhLBgdOuKfM9E/29B6QahUuDtd35YJuWm2FCm2Tfo8D9MYDJF4umaA56G/MLjpwiP
PcakaA1om0YTnr/eA467MPuxb2gfJppM/rsuZl7Fu+EOeI6BxWt3QsiPOXotajaxvtwYkre5psnU
j0UCZQkMyLj887kguUsLbHoxuUNylNFDn2Zggavm7b+LSNGstneSHtzBobWXZi1wbSwwUF6KWNzF
CN+/CN/ou+a57jNU3Eq/Ys1fQveBs/SrH881cKDM046QoJgkjeOhwNE8BAt7JOXQu0AmtJ7LppOt
qfIBsygmHmt5xhhk9r/favHJIOInlOb+GF8BhGwpGflI0n/pOt3kQQ96wWRmgWJer7yHdecx8yeZ
1yPerSanb3vBCw8KxMnpGMOITE0xqOhfsAMOHjlUWR27RdSp5LBftArzyjw1xzI4Ivpoi5QjqftM
bPlP/LiH+ue8pMfhRMq6/hWoAhmQ2f4cCXQ9+/ytVZoZyuLR4cx3IGXjf48S4ryWoNX/eIom/Yip
E3aSAxf6mTYeWwB88F/0Khbtq0uDkw3TI9NTTSI3lFskWRZfBQWlxqRgQ+tBVYoGnp4a1k3putXE
N3QiCQTu2oSw/XitvP0aJ1jo/S9LJ/aoIBa/tvISt6PtFAhmQbE=
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
