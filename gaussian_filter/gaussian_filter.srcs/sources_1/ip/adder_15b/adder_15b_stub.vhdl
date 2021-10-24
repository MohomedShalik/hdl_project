-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Oct 24 11:24:23 2021
-- Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/adder_15b/adder_15b_stub.vhdl
-- Design      : adder_15b
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_15b is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 14 downto 0 );
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end adder_15b;

architecture stub of adder_15b is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[14:0],B[14:0],CLK,CE,S[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.3";
begin
end;
