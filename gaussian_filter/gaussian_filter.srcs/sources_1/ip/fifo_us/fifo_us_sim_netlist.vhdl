-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Oct 24 09:15:02 2021
-- Host        : halaldeenms-Nitro-AN515-55 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.srcs/sources_1/ip/fifo_us/fifo_us_sim_netlist.vhdl
-- Design      : fifo_us
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of fifo_us_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of fifo_us_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of fifo_us_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of fifo_us_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of fifo_us_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of fifo_us_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of fifo_us_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of fifo_us_xpm_cdc_async_rst : entity is "ASYNC_RST";
end fifo_us_xpm_cdc_async_rst;

architecture STRUCTURE of fifo_us_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_compare is
  port (
    comp0 : out STD_LOGIC;
    \gmux.gm[1].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_compare : entity is "compare";
end fifo_us_compare;

architecture STRUCTURE of fifo_us_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gmux.gm[4].gms.ms_0\,
      S(2) => \gmux.gm[3].gms.ms_0\,
      S(1) => \gmux.gm[2].gms.ms_0\,
      S(0) => \gmux.gm[1].gms.ms_0\
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => ram_full_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_compare_63 is
  port (
    comp1 : out STD_LOGIC;
    ram_full_comb : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_full_i_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_compare_63 : entity is "compare";
end fifo_us_compare_63;

architecture STRUCTURE of fifo_us_compare_63 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \^comp1\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp1 <= \^comp1\;
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^comp1\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080FFF08080808"
    )
        port map (
      I0 => \^comp1\,
      I1 => ram_full_i_reg,
      I2 => ram_full_i_reg_0,
      I3 => comp0,
      I4 => ram_full_i_reg_1,
      I5 => \out\,
      O => ram_full_comb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_compare_64 is
  port (
    p_2_out : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gaf.gaf1.ram_afull_fb_reg\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \gaf.gaf1.ram_afull_fb_reg_0\ : in STD_LOGIC;
    \gaf.gaf1.ram_afull_fb_reg_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_compare_64 : entity is "compare";
end fifo_us_compare_64;

architecture STRUCTURE of fifo_us_compare_64 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gaf.gaf1.ram_afull_fb_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088CFFF00880088"
    )
        port map (
      I0 => p_0_in,
      I1 => \gaf.gaf1.ram_afull_fb_reg\,
      I2 => comp1,
      I3 => \gaf.gaf1.ram_afull_fb_reg_0\,
      I4 => \gaf.gaf1.ram_afull_fb_reg_1\,
      I5 => \out\,
      O => p_2_out
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_0_in,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_compare_65 is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[2].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_compare_65 : entity is "compare";
end fifo_us_compare_65;

architecture STRUCTURE of fifo_us_compare_65 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gmux.gm[4].gms.ms_0\,
      S(2) => \gmux.gm[3].gms.ms_0\,
      S(1) => \gmux.gm[2].gms.ms_0\,
      S(0) => v1_reg(0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_compare_66 is
  port (
    ram_empty_comb : out STD_LOGIC;
    \gmux.gm[1].gms.ms_0\ : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_en : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_compare_66 : entity is "compare";
end fifo_us_compare_66;

architecture STRUCTURE of fifo_us_compare_66 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => v1_reg(2 downto 0),
      S(0) => \gmux.gm[1].gms.ms_0\
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(3)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => rd_en,
      I1 => comp1,
      I2 => comp0,
      I3 => ram_empty_i_reg,
      I4 => \out\,
      O => ram_empty_comb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    \gram.gsms[7].gv4.srl16_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper : entity is "shft_wrapper";
end fifo_us_shft_wrapper;

architecture STRUCTURE of fifo_us_shft_wrapper is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_0 is
  port (
    \count_reg[6]\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[6]_2\ : out STD_LOGIC;
    \count_reg[6]_3\ : out STD_LOGIC;
    \count_reg[6]_4\ : out STD_LOGIC;
    \count_reg[6]_5\ : out STD_LOGIC;
    \count_reg[6]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_i_reg[0]_i_5\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_15_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_15_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]_i_5\ : in STD_LOGIC;
    \dout_i_reg[2]_i_5\ : in STD_LOGIC;
    \dout_i_reg[3]_i_5\ : in STD_LOGIC;
    \dout_i_reg[4]_i_5\ : in STD_LOGIC;
    \dout_i_reg[5]_i_5\ : in STD_LOGIC;
    \dout_i_reg[6]_i_5\ : in STD_LOGIC;
    \dout_i_reg[7]_i_7\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_0 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_0;

architecture STRUCTURE of fifo_us_shft_wrapper_0 is
  signal \dout_2d[11]_11\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_30_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(0),
      O => \dout_i[0]_i_28_n_0\
    );
\dout_i[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(1),
      O => \dout_i[1]_i_28_n_0\
    );
\dout_i[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(2),
      O => \dout_i[2]_i_28_n_0\
    );
\dout_i[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(3),
      O => \dout_i[3]_i_28_n_0\
    );
\dout_i[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(4),
      O => \dout_i[4]_i_28_n_0\
    );
\dout_i[5]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(5),
      O => \dout_i[5]_i_28_n_0\
    );
\dout_i[6]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(6),
      O => \dout_i[6]_i_28_n_0\
    );
\dout_i[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[11]_11\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_1\(7),
      O => \dout_i[7]_i_30_n_0\
    );
\dout_i_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_28_n_0\,
      I1 => \dout_i_reg[0]_i_5\,
      O => \count_reg[6]\,
      S => Q(6)
    );
\dout_i_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_28_n_0\,
      I1 => \dout_i_reg[1]_i_5\,
      O => \count_reg[6]_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_28_n_0\,
      I1 => \dout_i_reg[2]_i_5\,
      O => \count_reg[6]_1\,
      S => Q(6)
    );
\dout_i_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_28_n_0\,
      I1 => \dout_i_reg[3]_i_5\,
      O => \count_reg[6]_2\,
      S => Q(6)
    );
\dout_i_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_28_n_0\,
      I1 => \dout_i_reg[4]_i_5\,
      O => \count_reg[6]_3\,
      S => Q(6)
    );
\dout_i_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_28_n_0\,
      I1 => \dout_i_reg[5]_i_5\,
      O => \count_reg[6]_4\,
      S => Q(6)
    );
\dout_i_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_28_n_0\,
      I1 => \dout_i_reg[6]_i_5\,
      O => \count_reg[6]_5\,
      S => Q(6)
    );
\dout_i_reg[7]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_30_n_0\,
      I1 => \dout_i_reg[7]_i_7\,
      O => \count_reg[6]_6\,
      S => Q(6)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[11]_11\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[11]_11\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[11]_11\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[11]_11\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[11]_11\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[11]_11\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[11]_11\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[11]_11\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_1 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_1 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_1;

architecture STRUCTURE of fifo_us_shft_wrapper_1 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_10 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_10 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_10;

architecture STRUCTURE of fifo_us_shft_wrapper_10 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_11 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_11 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_11;

architecture STRUCTURE of fifo_us_shft_wrapper_11 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_12 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_12 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_12;

architecture STRUCTURE of fifo_us_shft_wrapper_12 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_13 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_12\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_12_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_13 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_13;

architecture STRUCTURE of fifo_us_shft_wrapper_13 is
  signal \dout_2d[23]_23\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[23]_23\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[23]_23\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[23]_23\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[23]_23\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[23]_23\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[23]_23\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[23]_23\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[23]_23\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[23]_23\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_14 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_14 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_14;

architecture STRUCTURE of fifo_us_shft_wrapper_14 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_15 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_15 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_15;

architecture STRUCTURE of fifo_us_shft_wrapper_15 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_16 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_16 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_16;

architecture STRUCTURE of fifo_us_shft_wrapper_16 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_17 is
  port (
    \count_reg[6]\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[6]_2\ : out STD_LOGIC;
    \count_reg[6]_3\ : out STD_LOGIC;
    \count_reg[6]_4\ : out STD_LOGIC;
    \count_reg[6]_5\ : out STD_LOGIC;
    \count_reg[6]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_i_reg[0]_i_4\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_13_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_13_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]_i_4\ : in STD_LOGIC;
    \dout_i_reg[2]_i_4\ : in STD_LOGIC;
    \dout_i_reg[3]_i_4\ : in STD_LOGIC;
    \dout_i_reg[4]_i_4\ : in STD_LOGIC;
    \dout_i_reg[5]_i_4\ : in STD_LOGIC;
    \dout_i_reg[6]_i_4\ : in STD_LOGIC;
    \dout_i_reg[7]_i_6\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_17 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_17;

architecture STRUCTURE of fifo_us_shft_wrapper_17 is
  signal \dout_2d[27]_27\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_26_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(0),
      O => \dout_i[0]_i_24_n_0\
    );
\dout_i[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(1),
      O => \dout_i[1]_i_24_n_0\
    );
\dout_i[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(2),
      O => \dout_i[2]_i_24_n_0\
    );
\dout_i[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(3),
      O => \dout_i[3]_i_24_n_0\
    );
\dout_i[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(4),
      O => \dout_i[4]_i_24_n_0\
    );
\dout_i[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(5),
      O => \dout_i[5]_i_24_n_0\
    );
\dout_i[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(6),
      O => \dout_i[6]_i_24_n_0\
    );
\dout_i[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[27]_27\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_1\(7),
      O => \dout_i[7]_i_26_n_0\
    );
\dout_i_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_24_n_0\,
      I1 => \dout_i_reg[0]_i_4\,
      O => \count_reg[6]\,
      S => Q(6)
    );
\dout_i_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_24_n_0\,
      I1 => \dout_i_reg[1]_i_4\,
      O => \count_reg[6]_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_24_n_0\,
      I1 => \dout_i_reg[2]_i_4\,
      O => \count_reg[6]_1\,
      S => Q(6)
    );
\dout_i_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_24_n_0\,
      I1 => \dout_i_reg[3]_i_4\,
      O => \count_reg[6]_2\,
      S => Q(6)
    );
\dout_i_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_24_n_0\,
      I1 => \dout_i_reg[4]_i_4\,
      O => \count_reg[6]_3\,
      S => Q(6)
    );
\dout_i_reg[5]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_24_n_0\,
      I1 => \dout_i_reg[5]_i_4\,
      O => \count_reg[6]_4\,
      S => Q(6)
    );
\dout_i_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_24_n_0\,
      I1 => \dout_i_reg[6]_i_4\,
      O => \count_reg[6]_5\,
      S => Q(6)
    );
\dout_i_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_26_n_0\,
      I1 => \dout_i_reg[7]_i_6\,
      O => \count_reg[6]_6\,
      S => Q(6)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[27]_27\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[27]_27\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[27]_27\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[27]_27\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[27]_27\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[27]_27\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[27]_27\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[27]_27\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_18 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_18 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_18;

architecture STRUCTURE of fifo_us_shft_wrapper_18 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_19 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_19 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_19;

architecture STRUCTURE of fifo_us_shft_wrapper_19 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_2 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_2 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_2;

architecture STRUCTURE of fifo_us_shft_wrapper_2 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_20 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_20 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_20;

architecture STRUCTURE of fifo_us_shft_wrapper_20 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_21 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_21 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_21;

architecture STRUCTURE of fifo_us_shft_wrapper_21 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_22 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_13\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_13_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_22 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_22;

architecture STRUCTURE of fifo_us_shft_wrapper_22 is
  signal \dout_2d[31]_31\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[31]_31\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_13\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_13_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[31]_31\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[31]_31\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[31]_31\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[31]_31\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[31]_31\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[31]_31\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[31]_31\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[31]_31\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_23 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_23 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_23;

architecture STRUCTURE of fifo_us_shft_wrapper_23 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_24 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_24 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_24;

architecture STRUCTURE of fifo_us_shft_wrapper_24 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_25 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_25 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_25;

architecture STRUCTURE of fifo_us_shft_wrapper_25 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_26 is
  port (
    \count_reg[7]\ : out STD_LOGIC;
    \count_reg[7]_0\ : out STD_LOGIC;
    \count_reg[7]_1\ : out STD_LOGIC;
    \count_reg[7]_2\ : out STD_LOGIC;
    \count_reg[7]_3\ : out STD_LOGIC;
    \count_reg[7]_4\ : out STD_LOGIC;
    \count_reg[7]_5\ : out STD_LOGIC;
    \count_reg[7]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[0]\ : in STD_LOGIC;
    \dout_i_reg[0]_i_3_0\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_10_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_10_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]\ : in STD_LOGIC;
    \dout_i_reg[1]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[2]\ : in STD_LOGIC;
    \dout_i_reg[2]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[3]\ : in STD_LOGIC;
    \dout_i_reg[3]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[4]\ : in STD_LOGIC;
    \dout_i_reg[4]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[5]\ : in STD_LOGIC;
    \dout_i_reg[5]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[6]\ : in STD_LOGIC;
    \dout_i_reg[6]_i_3_0\ : in STD_LOGIC;
    \dout_i_reg[7]\ : in STD_LOGIC;
    \dout_i_reg[7]_i_5_0\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_26 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_26;

architecture STRUCTURE of fifo_us_shft_wrapper_26 is
  signal \dout_2d[35]_35\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_18_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \dout_i_reg[7]_i_10_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(0),
      O => \dout_i[0]_i_18_n_0\
    );
\dout_i[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(1),
      O => \dout_i[1]_i_18_n_0\
    );
\dout_i[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(2),
      O => \dout_i[2]_i_18_n_0\
    );
\dout_i[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(3),
      O => \dout_i[3]_i_18_n_0\
    );
\dout_i[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(4),
      O => \dout_i[4]_i_18_n_0\
    );
\dout_i[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(5),
      O => \dout_i[5]_i_18_n_0\
    );
\dout_i[6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(6),
      O => \dout_i[6]_i_18_n_0\
    );
\dout_i[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[35]_35\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_1\(7),
      O => \dout_i[7]_i_20_n_0\
    );
\dout_i_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[0]_i_8_n_0\,
      I1 => \dout_i_reg[0]\,
      O => \count_reg[7]\,
      S => Q(7)
    );
\dout_i_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_18_n_0\,
      I1 => \dout_i_reg[0]_i_3_0\,
      O => \dout_i_reg[0]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[1]_i_8_n_0\,
      I1 => \dout_i_reg[1]\,
      O => \count_reg[7]_0\,
      S => Q(7)
    );
\dout_i_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_18_n_0\,
      I1 => \dout_i_reg[1]_i_3_0\,
      O => \dout_i_reg[1]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[2]_i_8_n_0\,
      I1 => \dout_i_reg[2]\,
      O => \count_reg[7]_1\,
      S => Q(7)
    );
\dout_i_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_18_n_0\,
      I1 => \dout_i_reg[2]_i_3_0\,
      O => \dout_i_reg[2]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[3]_i_8_n_0\,
      I1 => \dout_i_reg[3]\,
      O => \count_reg[7]_2\,
      S => Q(7)
    );
\dout_i_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_18_n_0\,
      I1 => \dout_i_reg[3]_i_3_0\,
      O => \dout_i_reg[3]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[4]_i_8_n_0\,
      I1 => \dout_i_reg[4]\,
      O => \count_reg[7]_3\,
      S => Q(7)
    );
\dout_i_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_18_n_0\,
      I1 => \dout_i_reg[4]_i_3_0\,
      O => \dout_i_reg[4]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[5]_i_8_n_0\,
      I1 => \dout_i_reg[5]\,
      O => \count_reg[7]_4\,
      S => Q(7)
    );
\dout_i_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_18_n_0\,
      I1 => \dout_i_reg[5]_i_3_0\,
      O => \dout_i_reg[5]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[6]_i_8_n_0\,
      I1 => \dout_i_reg[6]\,
      O => \count_reg[7]_5\,
      S => Q(7)
    );
\dout_i_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_18_n_0\,
      I1 => \dout_i_reg[6]_i_3_0\,
      O => \dout_i_reg[6]_i_8_n_0\,
      S => Q(6)
    );
\dout_i_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_20_n_0\,
      I1 => \dout_i_reg[7]_i_5_0\,
      O => \dout_i_reg[7]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[7]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[7]_i_10_n_0\,
      I1 => \dout_i_reg[7]\,
      O => \count_reg[7]_6\,
      S => Q(7)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[35]_35\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[35]_35\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[35]_35\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[35]_35\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[35]_35\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[35]_35\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[35]_35\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[35]_35\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_27 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_27 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_27;

architecture STRUCTURE of fifo_us_shft_wrapper_27 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_28 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_28 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_28;

architecture STRUCTURE of fifo_us_shft_wrapper_28 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_29 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_29 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_29;

architecture STRUCTURE of fifo_us_shft_wrapper_29 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_3 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_3 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_3;

architecture STRUCTURE of fifo_us_shft_wrapper_3 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_30 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_10_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_30 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_30;

architecture STRUCTURE of fifo_us_shft_wrapper_30 is
  signal \dout_2d[39]_39\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[39]_39\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_10\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_10_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[39]_39\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[39]_39\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[39]_39\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[39]_39\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[39]_39\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[39]_39\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[39]_39\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[39]_39\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_31 is
  port (
    \count_reg[7]\ : out STD_LOGIC;
    \count_reg[7]_0\ : out STD_LOGIC;
    \count_reg[7]_1\ : out STD_LOGIC;
    \count_reg[7]_2\ : out STD_LOGIC;
    \count_reg[7]_3\ : out STD_LOGIC;
    \count_reg[7]_4\ : out STD_LOGIC;
    \count_reg[7]_5\ : out STD_LOGIC;
    \count_reg[7]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[0]\ : in STD_LOGIC;
    \dout_i_reg[0]_i_5_0\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_14_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_14_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]\ : in STD_LOGIC;
    \dout_i_reg[1]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[2]\ : in STD_LOGIC;
    \dout_i_reg[2]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[3]\ : in STD_LOGIC;
    \dout_i_reg[3]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[4]\ : in STD_LOGIC;
    \dout_i_reg[4]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[5]\ : in STD_LOGIC;
    \dout_i_reg[5]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[6]\ : in STD_LOGIC;
    \dout_i_reg[6]_i_5_0\ : in STD_LOGIC;
    \dout_i_reg[7]\ : in STD_LOGIC;
    \dout_i_reg[7]_i_7_0\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_31 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_31;

architecture STRUCTURE of fifo_us_shft_wrapper_31 is
  signal \dout_2d[3]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_26_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_28_n_0\ : STD_LOGIC;
  signal \dout_i_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \dout_i_reg[7]_i_14_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(0),
      O => \dout_i[0]_i_26_n_0\
    );
\dout_i[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(1),
      O => \dout_i[1]_i_26_n_0\
    );
\dout_i[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(2),
      O => \dout_i[2]_i_26_n_0\
    );
\dout_i[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(3),
      O => \dout_i[3]_i_26_n_0\
    );
\dout_i[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(4),
      O => \dout_i[4]_i_26_n_0\
    );
\dout_i[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(5),
      O => \dout_i[5]_i_26_n_0\
    );
\dout_i[6]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(6),
      O => \dout_i[6]_i_26_n_0\
    );
\dout_i[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[3]_3\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_1\(7),
      O => \dout_i[7]_i_28_n_0\
    );
\dout_i_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_26_n_0\,
      I1 => \dout_i_reg[0]_i_5_0\,
      O => \dout_i_reg[0]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[0]_i_12_n_0\,
      I1 => \dout_i_reg[0]\,
      O => \count_reg[7]\,
      S => Q(7)
    );
\dout_i_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_26_n_0\,
      I1 => \dout_i_reg[1]_i_5_0\,
      O => \dout_i_reg[1]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[1]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[1]_i_12_n_0\,
      I1 => \dout_i_reg[1]\,
      O => \count_reg[7]_0\,
      S => Q(7)
    );
\dout_i_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_26_n_0\,
      I1 => \dout_i_reg[2]_i_5_0\,
      O => \dout_i_reg[2]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[2]_i_12_n_0\,
      I1 => \dout_i_reg[2]\,
      O => \count_reg[7]_1\,
      S => Q(7)
    );
\dout_i_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_26_n_0\,
      I1 => \dout_i_reg[3]_i_5_0\,
      O => \dout_i_reg[3]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[3]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[3]_i_12_n_0\,
      I1 => \dout_i_reg[3]\,
      O => \count_reg[7]_2\,
      S => Q(7)
    );
\dout_i_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_26_n_0\,
      I1 => \dout_i_reg[4]_i_5_0\,
      O => \dout_i_reg[4]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[4]_i_12_n_0\,
      I1 => \dout_i_reg[4]\,
      O => \count_reg[7]_3\,
      S => Q(7)
    );
\dout_i_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_26_n_0\,
      I1 => \dout_i_reg[5]_i_5_0\,
      O => \dout_i_reg[5]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[5]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[5]_i_12_n_0\,
      I1 => \dout_i_reg[5]\,
      O => \count_reg[7]_4\,
      S => Q(7)
    );
\dout_i_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_26_n_0\,
      I1 => \dout_i_reg[6]_i_5_0\,
      O => \dout_i_reg[6]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[6]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[6]_i_12_n_0\,
      I1 => \dout_i_reg[6]\,
      O => \count_reg[7]_5\,
      S => Q(7)
    );
\dout_i_reg[7]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_28_n_0\,
      I1 => \dout_i_reg[7]_i_7_0\,
      O => \dout_i_reg[7]_i_14_n_0\,
      S => Q(6)
    );
\dout_i_reg[7]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[7]_i_14_n_0\,
      I1 => \dout_i_reg[7]\,
      O => \count_reg[7]_6\,
      S => Q(7)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[3]_3\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[3]_3\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[3]_3\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[3]_3\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[3]_3\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[3]_3\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[3]_3\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[3]_3\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_32 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_32 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_32;

architecture STRUCTURE of fifo_us_shft_wrapper_32 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_33 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_33 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_33;

architecture STRUCTURE of fifo_us_shft_wrapper_33 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_34 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_34 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_34;

architecture STRUCTURE of fifo_us_shft_wrapper_34 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_35 is
  port (
    \count_reg[6]\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[6]_2\ : out STD_LOGIC;
    \count_reg[6]_3\ : out STD_LOGIC;
    \count_reg[6]_4\ : out STD_LOGIC;
    \count_reg[6]_5\ : out STD_LOGIC;
    \count_reg[6]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_i_reg[0]_i_3\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_11_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_11_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]_i_3\ : in STD_LOGIC;
    \dout_i_reg[2]_i_3\ : in STD_LOGIC;
    \dout_i_reg[3]_i_3\ : in STD_LOGIC;
    \dout_i_reg[4]_i_3\ : in STD_LOGIC;
    \dout_i_reg[5]_i_3\ : in STD_LOGIC;
    \dout_i_reg[6]_i_3\ : in STD_LOGIC;
    \dout_i_reg[7]_i_5\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_35 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_35;

architecture STRUCTURE of fifo_us_shft_wrapper_35 is
  signal \dout_2d[43]_43\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_20_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_22_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(0),
      O => \dout_i[0]_i_20_n_0\
    );
\dout_i[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(1),
      O => \dout_i[1]_i_20_n_0\
    );
\dout_i[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(2),
      O => \dout_i[2]_i_20_n_0\
    );
\dout_i[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(3),
      O => \dout_i[3]_i_20_n_0\
    );
\dout_i[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(4),
      O => \dout_i[4]_i_20_n_0\
    );
\dout_i[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(5),
      O => \dout_i[5]_i_20_n_0\
    );
\dout_i[6]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(6),
      O => \dout_i[6]_i_20_n_0\
    );
\dout_i[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[43]_43\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_1\(7),
      O => \dout_i[7]_i_22_n_0\
    );
\dout_i_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_20_n_0\,
      I1 => \dout_i_reg[0]_i_3\,
      O => \count_reg[6]\,
      S => Q(6)
    );
\dout_i_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_20_n_0\,
      I1 => \dout_i_reg[1]_i_3\,
      O => \count_reg[6]_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_20_n_0\,
      I1 => \dout_i_reg[2]_i_3\,
      O => \count_reg[6]_1\,
      S => Q(6)
    );
\dout_i_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_20_n_0\,
      I1 => \dout_i_reg[3]_i_3\,
      O => \count_reg[6]_2\,
      S => Q(6)
    );
\dout_i_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_20_n_0\,
      I1 => \dout_i_reg[4]_i_3\,
      O => \count_reg[6]_3\,
      S => Q(6)
    );
\dout_i_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_20_n_0\,
      I1 => \dout_i_reg[5]_i_3\,
      O => \count_reg[6]_4\,
      S => Q(6)
    );
\dout_i_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_20_n_0\,
      I1 => \dout_i_reg[6]_i_3\,
      O => \count_reg[6]_5\,
      S => Q(6)
    );
\dout_i_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_22_n_0\,
      I1 => \dout_i_reg[7]_i_5\,
      O => \count_reg[6]_6\,
      S => Q(6)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[43]_43\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[43]_43\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[43]_43\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[43]_43\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[43]_43\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[43]_43\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[43]_43\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[43]_43\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_36 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_36 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_36;

architecture STRUCTURE of fifo_us_shft_wrapper_36 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_37 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_37 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_37;

architecture STRUCTURE of fifo_us_shft_wrapper_37 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_38 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_38 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_38;

architecture STRUCTURE of fifo_us_shft_wrapper_38 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_39 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_11_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_39 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_39;

architecture STRUCTURE of fifo_us_shft_wrapper_39 is
  signal \dout_2d[47]_47\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[47]_47\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_11\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_11_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[47]_47\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[47]_47\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[47]_47\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[47]_47\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[47]_47\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[47]_47\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[47]_47\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[47]_47\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_4 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_15\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_15_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_4 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_4;

architecture STRUCTURE of fifo_us_shft_wrapper_4 is
  signal \dout_2d[15]_15\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[15]_15\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_15\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_15_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[15]_15\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[15]_15\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[15]_15\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[15]_15\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[15]_15\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[15]_15\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[15]_15\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[15]_15\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_40 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_40 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_40;

architecture STRUCTURE of fifo_us_shft_wrapper_40 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_41 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_41 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_41;

architecture STRUCTURE of fifo_us_shft_wrapper_41 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_42 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_42 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_42;

architecture STRUCTURE of fifo_us_shft_wrapper_42 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_43 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_43 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_43;

architecture STRUCTURE of fifo_us_shft_wrapper_43 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_44 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \dout_i_reg[0]_0\ : in STD_LOGIC;
    \dout_i_reg[0]_1\ : in STD_LOGIC;
    \dout_i_reg[0]_2\ : in STD_LOGIC;
    \dout_i_reg[0]_i_2_0\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_8_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]\ : in STD_LOGIC;
    \dout_i_reg[1]_0\ : in STD_LOGIC;
    \dout_i_reg[1]_1\ : in STD_LOGIC;
    \dout_i_reg[1]_2\ : in STD_LOGIC;
    \dout_i_reg[1]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[2]\ : in STD_LOGIC;
    \dout_i_reg[2]_0\ : in STD_LOGIC;
    \dout_i_reg[2]_1\ : in STD_LOGIC;
    \dout_i_reg[2]_2\ : in STD_LOGIC;
    \dout_i_reg[2]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[3]\ : in STD_LOGIC;
    \dout_i_reg[3]_0\ : in STD_LOGIC;
    \dout_i_reg[3]_1\ : in STD_LOGIC;
    \dout_i_reg[3]_2\ : in STD_LOGIC;
    \dout_i_reg[3]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[4]\ : in STD_LOGIC;
    \dout_i_reg[4]_0\ : in STD_LOGIC;
    \dout_i_reg[4]_1\ : in STD_LOGIC;
    \dout_i_reg[4]_2\ : in STD_LOGIC;
    \dout_i_reg[4]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[5]\ : in STD_LOGIC;
    \dout_i_reg[5]_0\ : in STD_LOGIC;
    \dout_i_reg[5]_1\ : in STD_LOGIC;
    \dout_i_reg[5]_2\ : in STD_LOGIC;
    \dout_i_reg[5]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[6]\ : in STD_LOGIC;
    \dout_i_reg[6]_0\ : in STD_LOGIC;
    \dout_i_reg[6]_1\ : in STD_LOGIC;
    \dout_i_reg[6]_2\ : in STD_LOGIC;
    \dout_i_reg[6]_i_2_0\ : in STD_LOGIC;
    \dout_i_reg[7]\ : in STD_LOGIC;
    \dout_i_reg[7]_0\ : in STD_LOGIC;
    \dout_i_reg[7]_1\ : in STD_LOGIC;
    \dout_i_reg[7]_2\ : in STD_LOGIC;
    \dout_i_reg[7]_i_4_0\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_44 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_44;

architecture STRUCTURE of fifo_us_shft_wrapper_44 is
  signal \dout_2d[51]_51\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_14_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \dout_i_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \dout_i_reg[7]_i_8_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[0]_i_2_n_0\,
      I1 => \dout_i_reg[0]\,
      I2 => Q(9),
      I3 => \dout_i_reg[0]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[0]_1\,
      O => D(0)
    );
\dout_i[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(0),
      O => \dout_i[0]_i_14_n_0\
    );
\dout_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[1]_i_2_n_0\,
      I1 => \dout_i_reg[1]\,
      I2 => Q(9),
      I3 => \dout_i_reg[1]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[1]_1\,
      O => D(1)
    );
\dout_i[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(1),
      O => \dout_i[1]_i_14_n_0\
    );
\dout_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[2]_i_2_n_0\,
      I1 => \dout_i_reg[2]\,
      I2 => Q(9),
      I3 => \dout_i_reg[2]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[2]_1\,
      O => D(2)
    );
\dout_i[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(2),
      O => \dout_i[2]_i_14_n_0\
    );
\dout_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[3]_i_2_n_0\,
      I1 => \dout_i_reg[3]\,
      I2 => Q(9),
      I3 => \dout_i_reg[3]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[3]_1\,
      O => D(3)
    );
\dout_i[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(3),
      O => \dout_i[3]_i_14_n_0\
    );
\dout_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[4]_i_2_n_0\,
      I1 => \dout_i_reg[4]\,
      I2 => Q(9),
      I3 => \dout_i_reg[4]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[4]_1\,
      O => D(4)
    );
\dout_i[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(4),
      O => \dout_i[4]_i_14_n_0\
    );
\dout_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[5]_i_2_n_0\,
      I1 => \dout_i_reg[5]\,
      I2 => Q(9),
      I3 => \dout_i_reg[5]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[5]_1\,
      O => D(5)
    );
\dout_i[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(5),
      O => \dout_i[5]_i_14_n_0\
    );
\dout_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[6]_i_2_n_0\,
      I1 => \dout_i_reg[6]\,
      I2 => Q(9),
      I3 => \dout_i_reg[6]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[6]_1\,
      O => D(6)
    );
\dout_i[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(6),
      O => \dout_i[6]_i_14_n_0\
    );
\dout_i[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[51]_51\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_1\(7),
      O => \dout_i[7]_i_16_n_0\
    );
\dout_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_i_reg[7]_i_4_n_0\,
      I1 => \dout_i_reg[7]\,
      I2 => Q(9),
      I3 => \dout_i_reg[7]_0\,
      I4 => Q(8),
      I5 => \dout_i_reg[7]_1\,
      O => D(7)
    );
\dout_i_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[0]_i_6_n_0\,
      I1 => \dout_i_reg[0]_2\,
      O => \dout_i_reg[0]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_14_n_0\,
      I1 => \dout_i_reg[0]_i_2_0\,
      O => \dout_i_reg[0]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[1]_i_6_n_0\,
      I1 => \dout_i_reg[1]_2\,
      O => \dout_i_reg[1]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_14_n_0\,
      I1 => \dout_i_reg[1]_i_2_0\,
      O => \dout_i_reg[1]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[2]_i_6_n_0\,
      I1 => \dout_i_reg[2]_2\,
      O => \dout_i_reg[2]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_14_n_0\,
      I1 => \dout_i_reg[2]_i_2_0\,
      O => \dout_i_reg[2]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[3]_i_6_n_0\,
      I1 => \dout_i_reg[3]_2\,
      O => \dout_i_reg[3]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_14_n_0\,
      I1 => \dout_i_reg[3]_i_2_0\,
      O => \dout_i_reg[3]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[4]_i_6_n_0\,
      I1 => \dout_i_reg[4]_2\,
      O => \dout_i_reg[4]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_14_n_0\,
      I1 => \dout_i_reg[4]_i_2_0\,
      O => \dout_i_reg[4]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[5]_i_6_n_0\,
      I1 => \dout_i_reg[5]_2\,
      O => \dout_i_reg[5]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_14_n_0\,
      I1 => \dout_i_reg[5]_i_2_0\,
      O => \dout_i_reg[5]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[6]_i_6_n_0\,
      I1 => \dout_i_reg[6]_2\,
      O => \dout_i_reg[6]_i_2_n_0\,
      S => Q(7)
    );
\dout_i_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_14_n_0\,
      I1 => \dout_i_reg[6]_i_2_0\,
      O => \dout_i_reg[6]_i_6_n_0\,
      S => Q(6)
    );
\dout_i_reg[7]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[7]_i_8_n_0\,
      I1 => \dout_i_reg[7]_2\,
      O => \dout_i_reg[7]_i_4_n_0\,
      S => Q(7)
    );
\dout_i_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_16_n_0\,
      I1 => \dout_i_reg[7]_i_4_0\,
      O => \dout_i_reg[7]_i_8_n_0\,
      S => Q(6)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[51]_51\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[51]_51\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[51]_51\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[51]_51\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[51]_51\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[51]_51\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[51]_51\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[51]_51\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_45 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_45 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_45;

architecture STRUCTURE of fifo_us_shft_wrapper_45 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_46 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_46 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_46;

architecture STRUCTURE of fifo_us_shft_wrapper_46 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_47 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_47 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_47;

architecture STRUCTURE of fifo_us_shft_wrapper_47 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_48 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_8\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_48 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_48;

architecture STRUCTURE of fifo_us_shft_wrapper_48 is
  signal \dout_2d[55]_55\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[55]_55\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_8\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_8_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[55]_55\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[55]_55\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[55]_55\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[55]_55\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[55]_55\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[55]_55\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[55]_55\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[55]_55\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_49 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_49 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_49;

architecture STRUCTURE of fifo_us_shft_wrapper_49 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_5 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_5 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_5;

architecture STRUCTURE of fifo_us_shft_wrapper_5 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_50 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_50 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_50;

architecture STRUCTURE of fifo_us_shft_wrapper_50 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_51 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_51 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_51;

architecture STRUCTURE of fifo_us_shft_wrapper_51 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_52 is
  port (
    \count_reg[6]\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[6]_2\ : out STD_LOGIC;
    \count_reg[6]_3\ : out STD_LOGIC;
    \count_reg[6]_4\ : out STD_LOGIC;
    \count_reg[6]_5\ : out STD_LOGIC;
    \count_reg[6]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_i_reg[0]_i_2\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_9_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_9_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]_i_2\ : in STD_LOGIC;
    \dout_i_reg[2]_i_2\ : in STD_LOGIC;
    \dout_i_reg[3]_i_2\ : in STD_LOGIC;
    \dout_i_reg[4]_i_2\ : in STD_LOGIC;
    \dout_i_reg[5]_i_2\ : in STD_LOGIC;
    \dout_i_reg[6]_i_2\ : in STD_LOGIC;
    \dout_i_reg[7]_i_4\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_52 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_52;

architecture STRUCTURE of fifo_us_shft_wrapper_52 is
  signal \dout_2d[59]_59\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_16_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_18_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(0),
      O => \dout_i[0]_i_16_n_0\
    );
\dout_i[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(1),
      O => \dout_i[1]_i_16_n_0\
    );
\dout_i[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(2),
      O => \dout_i[2]_i_16_n_0\
    );
\dout_i[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(3),
      O => \dout_i[3]_i_16_n_0\
    );
\dout_i[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(4),
      O => \dout_i[4]_i_16_n_0\
    );
\dout_i[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(5),
      O => \dout_i[5]_i_16_n_0\
    );
\dout_i[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(6),
      O => \dout_i[6]_i_16_n_0\
    );
\dout_i[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[59]_59\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_1\(7),
      O => \dout_i[7]_i_18_n_0\
    );
\dout_i_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_16_n_0\,
      I1 => \dout_i_reg[0]_i_2\,
      O => \count_reg[6]\,
      S => Q(6)
    );
\dout_i_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_16_n_0\,
      I1 => \dout_i_reg[1]_i_2\,
      O => \count_reg[6]_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_16_n_0\,
      I1 => \dout_i_reg[2]_i_2\,
      O => \count_reg[6]_1\,
      S => Q(6)
    );
\dout_i_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_16_n_0\,
      I1 => \dout_i_reg[3]_i_2\,
      O => \count_reg[6]_2\,
      S => Q(6)
    );
\dout_i_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_16_n_0\,
      I1 => \dout_i_reg[4]_i_2\,
      O => \count_reg[6]_3\,
      S => Q(6)
    );
\dout_i_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_16_n_0\,
      I1 => \dout_i_reg[5]_i_2\,
      O => \count_reg[6]_4\,
      S => Q(6)
    );
\dout_i_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_16_n_0\,
      I1 => \dout_i_reg[6]_i_2\,
      O => \count_reg[6]_5\,
      S => Q(6)
    );
\dout_i_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_18_n_0\,
      I1 => \dout_i_reg[7]_i_4\,
      O => \count_reg[6]_6\,
      S => Q(6)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[59]_59\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[59]_59\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[59]_59\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[59]_59\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[59]_59\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[59]_59\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[59]_59\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[59]_59\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_53 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_53 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_53;

architecture STRUCTURE of fifo_us_shft_wrapper_53 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_54 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_54 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_54;

architecture STRUCTURE of fifo_us_shft_wrapper_54 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_55 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_55 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_55;

architecture STRUCTURE of fifo_us_shft_wrapper_55 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_56 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_56 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_56;

architecture STRUCTURE of fifo_us_shft_wrapper_56 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[3].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[5].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_57 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_9_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i[1]_i_17_0\ : in STD_LOGIC;
    \dout_i[0]_i_17_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \dout_i[1]_i_17_1\ : in STD_LOGIC;
    \dout_i[3]_i_17_0\ : in STD_LOGIC;
    \dout_i[2]_i_17_0\ : in STD_LOGIC;
    \dout_i[3]_i_17_1\ : in STD_LOGIC;
    \dout_i[5]_i_17_0\ : in STD_LOGIC;
    \dout_i[4]_i_17_0\ : in STD_LOGIC;
    \dout_i[5]_i_17_1\ : in STD_LOGIC;
    \dout_i[6]_i_17_0\ : in STD_LOGIC;
    \dout_i[6]_i_17_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_57 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_57;

architecture STRUCTURE of fifo_us_shft_wrapper_57 is
  signal \dout_2d[63]_63\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gram.gsms[0].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[1].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[2].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[3].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[4].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[5].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[6].gv4.srl16_n_1\ : STD_LOGIC;
  signal \gram.gsms[7].gv4.srl16_n_1\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[63]_63\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_9\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_9_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[1]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[0]_i_17_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[63]_63\(0),
      Q15 => \gram.gsms[0].gv4.srl16_n_1\
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[1]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[1]_i_17_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[63]_63\(1),
      Q15 => \gram.gsms[1].gv4.srl16_n_1\
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[3]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[2]_i_17_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[63]_63\(2),
      Q15 => \gram.gsms[2].gv4.srl16_n_1\
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[3]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[3]_i_17_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[63]_63\(3),
      Q15 => \gram.gsms[3].gv4.srl16_n_1\
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[5]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[4]_i_17_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[63]_63\(4),
      Q15 => \gram.gsms[4].gv4.srl16_n_1\
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[5]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[5]_i_17_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[63]_63\(5),
      Q15 => \gram.gsms[5].gv4.srl16_n_1\
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \dout_i[6]_i_17_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \dout_i[6]_i_17_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[63]_63\(6),
      Q15 => \gram.gsms[6].gv4.srl16_n_1\
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[63]_63\(7),
      Q15 => \gram.gsms[7].gv4.srl16_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_58 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_58 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_58;

architecture STRUCTURE of fifo_us_shft_wrapper_58 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_59 is
  port (
    \count_reg[5]\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[5]_1\ : out STD_LOGIC;
    \count_reg[5]_2\ : out STD_LOGIC;
    \count_reg[5]_3\ : out STD_LOGIC;
    \count_reg[5]_4\ : out STD_LOGIC;
    \count_reg[5]_5\ : out STD_LOGIC;
    \count_reg[5]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \dout_i_reg[7]_i_14\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_14_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_59 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_59;

architecture STRUCTURE of fifo_us_shft_wrapper_59 is
  signal \dout_2d[7]_7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(0),
      O => \count_reg[5]\
    );
\dout_i[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(1),
      O => \count_reg[5]_0\
    );
\dout_i[2]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(2),
      O => \count_reg[5]_1\
    );
\dout_i[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(3),
      O => \count_reg[5]_2\
    );
\dout_i[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(4),
      O => \count_reg[5]_3\
    );
\dout_i[5]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(5),
      O => \count_reg[5]_4\
    );
\dout_i[6]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(6),
      O => \count_reg[5]_5\
    );
\dout_i[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[7]_7\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_14\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_14_0\(7),
      O => \count_reg[5]_6\
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[7]_7\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[7]_7\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[7]_7\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[7]_7\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[7]_7\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[7]_7\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[7]_7\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[7]_7\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_6 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_6 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_6;

architecture STRUCTURE of fifo_us_shft_wrapper_6 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_60 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_60 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_60;

architecture STRUCTURE of fifo_us_shft_wrapper_60 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_61 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_61 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_61;

architecture STRUCTURE of fifo_us_shft_wrapper_61 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_62 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_62 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_62;

architecture STRUCTURE of fifo_us_shft_wrapper_62 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => din(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => din(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => din(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => din(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => din(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => din(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => din(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => din(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_7 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_7 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_7;

architecture STRUCTURE of fifo_us_shft_wrapper_7 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_8 is
  port (
    \count_reg[7]\ : out STD_LOGIC;
    \count_reg[7]_0\ : out STD_LOGIC;
    \count_reg[7]_1\ : out STD_LOGIC;
    \count_reg[7]_2\ : out STD_LOGIC;
    \count_reg[7]_3\ : out STD_LOGIC;
    \count_reg[7]_4\ : out STD_LOGIC;
    \count_reg[7]_5\ : out STD_LOGIC;
    \count_reg[7]_6\ : out STD_LOGIC;
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[0]\ : in STD_LOGIC;
    \dout_i_reg[0]_i_4_0\ : in STD_LOGIC;
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_12_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[7]_i_12_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_i_reg[1]\ : in STD_LOGIC;
    \dout_i_reg[1]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[2]\ : in STD_LOGIC;
    \dout_i_reg[2]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[3]\ : in STD_LOGIC;
    \dout_i_reg[3]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[4]\ : in STD_LOGIC;
    \dout_i_reg[4]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[5]\ : in STD_LOGIC;
    \dout_i_reg[5]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[6]\ : in STD_LOGIC;
    \dout_i_reg[6]_i_4_0\ : in STD_LOGIC;
    \dout_i_reg[7]\ : in STD_LOGIC;
    \dout_i_reg[7]_i_6_0\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_8 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_8;

architecture STRUCTURE of fifo_us_shft_wrapper_8 is
  signal \dout_2d[19]_19\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_i[0]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[1]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[2]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[3]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[4]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[5]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[6]_i_22_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_24_n_0\ : STD_LOGIC;
  signal \dout_i_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \dout_i_reg[7]_i_12_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\dout_i[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(0),
      I1 => DOUT(0),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(0),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(0),
      O => \dout_i[0]_i_22_n_0\
    );
\dout_i[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(1),
      I1 => DOUT(1),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(1),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(1),
      O => \dout_i[1]_i_22_n_0\
    );
\dout_i[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(2),
      I1 => DOUT(2),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(2),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(2),
      O => \dout_i[2]_i_22_n_0\
    );
\dout_i[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(3),
      I1 => DOUT(3),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(3),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(3),
      O => \dout_i[3]_i_22_n_0\
    );
\dout_i[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(4),
      I1 => DOUT(4),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(4),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(4),
      O => \dout_i[4]_i_22_n_0\
    );
\dout_i[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(5),
      I1 => DOUT(5),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(5),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(5),
      O => \dout_i[5]_i_22_n_0\
    );
\dout_i[6]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(6),
      I1 => DOUT(6),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(6),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(6),
      O => \dout_i[6]_i_22_n_0\
    );
\dout_i[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_2d[19]_19\(7),
      I1 => DOUT(7),
      I2 => Q(5),
      I3 => \dout_i_reg[7]_i_12_0\(7),
      I4 => Q(4),
      I5 => \dout_i_reg[7]_i_12_1\(7),
      O => \dout_i[7]_i_24_n_0\
    );
\dout_i_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[0]_i_22_n_0\,
      I1 => \dout_i_reg[0]_i_4_0\,
      O => \dout_i_reg[0]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[0]_i_10_n_0\,
      I1 => \dout_i_reg[0]\,
      O => \count_reg[7]\,
      S => Q(7)
    );
\dout_i_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[1]_i_22_n_0\,
      I1 => \dout_i_reg[1]_i_4_0\,
      O => \dout_i_reg[1]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[1]_i_10_n_0\,
      I1 => \dout_i_reg[1]\,
      O => \count_reg[7]_0\,
      S => Q(7)
    );
\dout_i_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[2]_i_22_n_0\,
      I1 => \dout_i_reg[2]_i_4_0\,
      O => \dout_i_reg[2]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[2]_i_10_n_0\,
      I1 => \dout_i_reg[2]\,
      O => \count_reg[7]_1\,
      S => Q(7)
    );
\dout_i_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[3]_i_22_n_0\,
      I1 => \dout_i_reg[3]_i_4_0\,
      O => \dout_i_reg[3]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[3]_i_10_n_0\,
      I1 => \dout_i_reg[3]\,
      O => \count_reg[7]_2\,
      S => Q(7)
    );
\dout_i_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[4]_i_22_n_0\,
      I1 => \dout_i_reg[4]_i_4_0\,
      O => \dout_i_reg[4]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[4]_i_10_n_0\,
      I1 => \dout_i_reg[4]\,
      O => \count_reg[7]_3\,
      S => Q(7)
    );
\dout_i_reg[5]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[5]_i_22_n_0\,
      I1 => \dout_i_reg[5]_i_4_0\,
      O => \dout_i_reg[5]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[5]_i_10_n_0\,
      I1 => \dout_i_reg[5]\,
      O => \count_reg[7]_4\,
      S => Q(7)
    );
\dout_i_reg[6]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[6]_i_22_n_0\,
      I1 => \dout_i_reg[6]_i_4_0\,
      O => \dout_i_reg[6]_i_10_n_0\,
      S => Q(6)
    );
\dout_i_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[6]_i_10_n_0\,
      I1 => \dout_i_reg[6]\,
      O => \count_reg[7]_5\,
      S => Q(7)
    );
\dout_i_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout_i[7]_i_24_n_0\,
      I1 => \dout_i_reg[7]_i_6_0\,
      O => \dout_i_reg[7]_i_12_n_0\,
      S => Q(6)
    );
\dout_i_reg[7]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dout_i_reg[7]_i_12_n_0\,
      I1 => \dout_i_reg[7]\,
      O => \count_reg[7]_6\,
      S => Q(7)
    );
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(0),
      Q => \dout_2d[19]_19\(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[1].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(1),
      Q => \dout_2d[19]_19\(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(2),
      Q => \dout_2d[19]_19\(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(3),
      Q => \dout_2d[19]_19\(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(4),
      Q => \dout_2d[19]_19\(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(5),
      Q => \dout_2d[19]_19\(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => DIN(6),
      Q => \dout_2d[19]_19\(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => DIN(7),
      Q => \dout_2d[19]_19\(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_wrapper_9 is
  port (
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT_END : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10_out : in STD_LOGIC;
    \gram.gsms[7].gv4.srl16_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gram.gsms[0].gv4.srl16_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_1\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_wrapper_9 : entity is "shft_wrapper";
end fifo_us_shft_wrapper_9;

architecture STRUCTURE of fifo_us_shft_wrapper_9 is
  attribute box_type : string;
  attribute box_type of \gram.gsms[0].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[1].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[2].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[3].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[4].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[5].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[6].gv4.srl16\ : label is "PRIMITIVE";
  attribute box_type of \gram.gsms[7].gv4.srl16\ : label is "PRIMITIVE";
begin
\gram.gsms[0].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[0].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[0].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(0),
      Q => DOUT(0),
      Q15 => DOUT_END(0)
    );
\gram.gsms[1].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[1].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(1),
      Q => DOUT(1),
      Q15 => DOUT_END(1)
    );
\gram.gsms[2].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[2].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[2].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(2),
      Q => DOUT(2),
      Q15 => DOUT_END(2)
    );
\gram.gsms[3].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[3].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(3),
      Q => DOUT(3),
      Q15 => DOUT_END(3)
    );
\gram.gsms[4].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[4].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[4].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(4),
      Q => DOUT(4),
      Q15 => DOUT_END(4)
    );
\gram.gsms[5].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[5].gv4.srl16_0\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(5),
      Q => DOUT(5),
      Q15 => DOUT_END(5)
    );
\gram.gsms[6].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \gram.gsms[6].gv4.srl16_0\,
      A1 => Q(1),
      A2 => Q(2),
      A3 => \gram.gsms[6].gv4.srl16_1\,
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(6),
      Q => DOUT(6),
      Q15 => DOUT_END(6)
    );
\gram.gsms[7].gv4.srl16\: unisim.vcomponents.SRLC16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => p_10_out,
      CLK => clk,
      D => \gram.gsms[7].gv4.srl16_0\(7),
      Q => DOUT(7),
      Q15 => DOUT_END(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_updn_cntr is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[3]_rep_0\ : out STD_LOGIC;
    \count_reg[3]_rep__0_0\ : out STD_LOGIC;
    \count_reg[3]_rep__1_0\ : out STD_LOGIC;
    \count_reg[3]_rep__2_0\ : out STD_LOGIC;
    \count_reg[3]_rep__3_0\ : out STD_LOGIC;
    \count_reg[3]_rep__4_0\ : out STD_LOGIC;
    \count_reg[3]_rep__5_0\ : out STD_LOGIC;
    \count_reg[0]_rep_0\ : out STD_LOGIC;
    \count_reg[0]_rep__0_0\ : out STD_LOGIC;
    \count_reg[0]_rep__1_0\ : out STD_LOGIC;
    \count_reg[0]_rep__2_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    sel : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    \count_reg[0]_rep__2_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_updn_cntr : entity is "updn_cntr";
end fifo_us_updn_cntr;

architecture STRUCTURE of fifo_us_updn_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_rep_i_1_n_0\ : STD_LOGIC;
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \count_reg[0]\ : label is "count_reg[0]";
  attribute ORIG_CELL_NAME of \count_reg[0]_rep\ : label is "count_reg[0]";
  attribute ORIG_CELL_NAME of \count_reg[0]_rep__0\ : label is "count_reg[0]";
  attribute ORIG_CELL_NAME of \count_reg[0]_rep__1\ : label is "count_reg[0]";
  attribute ORIG_CELL_NAME of \count_reg[0]_rep__2\ : label is "count_reg[0]";
  attribute ORIG_CELL_NAME of \count_reg[3]\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__0\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__1\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__2\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__3\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__4\ : label is "count_reg[3]";
  attribute ORIG_CELL_NAME of \count_reg[3]_rep__5\ : label is "count_reg[3]";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \count_reg[7]_0\(3)
    );
\count0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[7]_0\(2)
    );
\count0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count_reg[7]_0\(1)
    );
\count0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[7]_0\(0)
    );
\count0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \count_reg[8]_0\(0)
    );
count0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => DI(0)
    );
count0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => S(3)
    );
count0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(2)
    );
count0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => S(1)
    );
count0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \out\,
      I2 => rd_en,
      O => S(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1_n_0\
    );
\count[0]_rep__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_rep__0_i_1_n_0\
    );
\count[0]_rep__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_rep__1_i_1_n_0\
    );
\count[0]_rep__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_rep__2_i_1_n_0\
    );
\count[0]_rep_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_rep_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_i_1_n_0\,
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(0)
    );
\count_reg[0]_rep\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_rep_i_1_n_0\,
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[0]_rep_0\
    );
\count_reg[0]_rep__0\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_rep__0_i_1_n_0\,
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[0]_rep__0_0\
    );
\count_reg[0]_rep__1\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_rep__1_i_1_n_0\,
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[0]_rep__1_0\
    );
\count_reg[0]_rep__2\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_rep__2_i_1_n_0\,
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[0]_rep__2_0\
    );
\count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(0),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(1),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(3)
    );
\count_reg[3]_rep\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep_0\
    );
\count_reg[3]_rep__0\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__0_0\
    );
\count_reg[3]_rep__1\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__1_0\
    );
\count_reg[3]_rep__2\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__2_0\
    );
\count_reg[3]_rep__3\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__3_0\
    );
\count_reg[3]_rep__4\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__4_0\
    );
\count_reg[3]_rep__5\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(2),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \count_reg[3]_rep__5_0\
    );
\count_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(3),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(4),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(5),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(6),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(7)
    );
\count_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(7),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(8)
    );
\count_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(8),
      PRE => \count_reg[0]_rep__2_1\,
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fifo_us_updn_cntr__parameterized0\ is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg[0]_1\ : out STD_LOGIC;
    \count_reg[2]_0\ : out STD_LOGIC;
    \count_reg[4]_0\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[8]_1\ : out STD_LOGIC;
    \count_reg[2]_1\ : out STD_LOGIC;
    \count_reg[4]_1\ : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[8]_2\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \greg.pntr_d1_reg[1]\ : in STD_LOGIC;
    \p_7_out__0\ : in STD_LOGIC;
    \greg.pntr_d1_reg[3]\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \count_reg[9]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    \count_reg[9]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fifo_us_updn_cntr__parameterized0\ : entity is "updn_cntr";
end \fifo_us_updn_cntr__parameterized0\;

architecture STRUCTURE of \fifo_us_updn_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \greg.pntr_d1[7]_i_2_n_0\ : STD_LOGIC;
  signal \greg.pntr_d1[8]_i_2_n_0\ : STD_LOGIC;
  signal \greg.pntr_d1[9]_i_2_n_0\ : STD_LOGIC;
  signal pntr : STD_LOGIC_VECTOR ( 9 downto 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \greg.pntr_d1[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \greg.pntr_d1[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \greg.pntr_d1[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \greg.pntr_d1[6]_i_1\ : label is "soft_lutpair0";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count0__24_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => pntr(8),
      O => \count_reg[7]_0\(3)
    );
\count0__24_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[7]_0\(2)
    );
\count0__24_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count_reg[7]_0\(1)
    );
\count0__24_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[7]_0\(0)
    );
\count0__24_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pntr(8),
      I1 => pntr(9),
      O => \count_reg[8]_0\(0)
    );
\count0__24_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => DI(0)
    );
\count0__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => S(3)
    );
\count0__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(2)
    );
\count0__24_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => S(1)
    );
\count0__24_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \out\,
      I2 => rd_en,
      O => S(0)
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1__2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count[0]_i_1__2_n_0\,
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(0),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(1),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(2),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(3),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(4),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(5),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(6),
      Q => \^q\(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(7),
      Q => pntr(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[9]_1\,
      D => \count_reg[9]_0\(8),
      Q => pntr(9)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_reg[0]_1\
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_reg[0]_0\
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \count_reg[2]_0\
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \count_reg[2]_1\
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[4]_0\
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[4]_1\
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[6]_0\
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[6]_1\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pntr(8),
      I1 => pntr(9),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pntr(8),
      I1 => pntr(9),
      O => \count_reg[8]_1\
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pntr(8),
      I1 => pntr(9),
      O => \count_reg[8]_2\
    );
\greg.pntr_d1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd_en,
      I2 => \out\,
      I3 => \greg.pntr_d1_reg[1]\,
      O => D(0)
    );
\greg.pntr_d1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F778088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \greg.pntr_d1_reg[1]\,
      I2 => \out\,
      I3 => rd_en,
      I4 => \^q\(1),
      O => D(1)
    );
\greg.pntr_d1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFFD0000000"
    )
        port map (
      I0 => rd_en,
      I1 => \out\,
      I2 => \greg.pntr_d1_reg[1]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => D(2)
    );
\greg.pntr_d1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \greg.pntr_d1_reg[1]\,
      I3 => \greg.pntr_d1_reg[3]\,
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => D(3)
    );
\greg.pntr_d1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \p_7_out__0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => D(4)
    );
\greg.pntr_d1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \greg.pntr_d1[7]_i_2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => D(5)
    );
\greg.pntr_d1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \greg.pntr_d1[7]_i_2_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => D(6)
    );
\greg.pntr_d1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \greg.pntr_d1[7]_i_2_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => D(7)
    );
\greg.pntr_d1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A200000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => rd_en,
      I2 => \out\,
      I3 => \greg.pntr_d1_reg[1]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \greg.pntr_d1[7]_i_2_n_0\
    );
\greg.pntr_d1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \greg.pntr_d1[8]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => pntr(8),
      O => D(8)
    );
\greg.pntr_d1[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \greg.pntr_d1_reg[1]\,
      I4 => \greg.pntr_d1_reg[3]\,
      I5 => \^q\(2),
      O => \greg.pntr_d1[8]_i_2_n_0\
    );
\greg.pntr_d1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \greg.pntr_d1[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => pntr(8),
      I5 => pntr(9),
      O => D(9)
    );
\greg.pntr_d1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \p_7_out__0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \greg.pntr_d1[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fifo_us_updn_cntr__parameterized1\ is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    sel : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    \count_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fifo_us_updn_cntr__parameterized1\ : entity is "updn_cntr";
end \fifo_us_updn_cntr__parameterized1\;

architecture STRUCTURE of \fifo_us_updn_cntr__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 8 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count0__49_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => pntr_plus1(8),
      O => \count_reg[7]_0\(3)
    );
\count0__49_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[7]_0\(2)
    );
\count0__49_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count_reg[7]_0\(1)
    );
\count0__49_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[7]_0\(0)
    );
\count0__49_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pntr_plus1(8),
      I1 => pntr_plus1(9),
      O => \count_reg[8]_0\(0)
    );
\count0__49_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => DI(0)
    );
\count0__49_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => S(3)
    );
\count0__49_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(2)
    );
\count0__49_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => S(1)
    );
\count0__49_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \out\,
      I2 => rd_en,
      O => S(0)
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => \count[0]_i_1__0_n_0\,
      PRE => \count_reg[1]_0\,
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(0),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(1),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(2),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(3),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(4),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(5),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(6),
      Q => \^q\(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(7),
      Q => pntr_plus1(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(8),
      Q => pntr_plus1(9)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pntr_plus1(8),
      I1 => pntr_plus1(9),
      O => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fifo_us_updn_cntr__parameterized2\ is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    sel : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    \count_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fifo_us_updn_cntr__parameterized2\ : entity is "updn_cntr";
end \fifo_us_updn_cntr__parameterized2\;

architecture STRUCTURE of \fifo_us_updn_cntr__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 8 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count0__74_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => pntr_plus2(8),
      O => \count_reg[7]_0\(3)
    );
\count0__74_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count_reg[7]_0\(2)
    );
\count0__74_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count_reg[7]_0\(1)
    );
\count0__74_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count_reg[7]_0\(0)
    );
\count0__74_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pntr_plus2(8),
      I1 => pntr_plus2(9),
      O => \count_reg[8]_0\(0)
    );
\count0__74_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => DI(0)
    );
\count0__74_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => S(3)
    );
\count0__74_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(2)
    );
\count0__74_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => S(1)
    );
\count0__74_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \out\,
      I2 => rd_en,
      O => S(0)
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => \count[0]_i_1__1_n_0\,
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => D(0),
      PRE => \count_reg[1]_0\,
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(1),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(2),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(3),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(4),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(5),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(6),
      Q => \^q\(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(7),
      Q => pntr_plus2(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \count_reg[1]_0\,
      D => D(8),
      Q => pntr_plus2(9)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pntr_plus2(8),
      I1 => pntr_plus2(9),
      O => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_wr_pf_sshft is
  port (
    prog_full : out STD_LOGIC;
    \greg.ram_wr_en_i_reg_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \greg.ram_rd_en_i_reg_0\ : in STD_LOGIC;
    \greg.ram_rd_en_i_reg_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpf3.prog_full_i_reg_0\ : in STD_LOGIC;
    \gpf3.prog_full_i_reg_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_wr_pf_sshft : entity is "wr_pf_sshft";
end fifo_us_wr_pf_sshft;

architecture STRUCTURE of fifo_us_wr_pf_sshft is
  signal eqOp : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal \gpf3.prog_full_i_i_1_n_0\ : STD_LOGIC;
  signal \gpf3.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[1]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[2]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[3]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[4]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[5]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[6]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[7]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[8]\ : STD_LOGIC;
  signal \greg.pntr_d1_reg_n_0_[9]\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of eqOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of gtOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gtOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  prog_full <= \^prog_full\;
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prog_full_thresh(9),
      I1 => \greg.pntr_d1_reg_n_0_[9]\,
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[6]\,
      I1 => prog_full_thresh(6),
      I2 => prog_full_thresh(8),
      I3 => \greg.pntr_d1_reg_n_0_[8]\,
      I4 => prog_full_thresh(7),
      I5 => \greg.pntr_d1_reg_n_0_[7]\,
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[3]\,
      I1 => prog_full_thresh(3),
      I2 => prog_full_thresh(5),
      I3 => \greg.pntr_d1_reg_n_0_[5]\,
      I4 => prog_full_thresh(4),
      I5 => \greg.pntr_d1_reg_n_0_[4]\,
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[0]\,
      I1 => prog_full_thresh(0),
      I2 => prog_full_thresh(2),
      I3 => \greg.pntr_d1_reg_n_0_[2]\,
      I4 => prog_full_thresh(1),
      I5 => \greg.pntr_d1_reg_n_0_[1]\,
      O => eqOp_carry_i_4_n_0
    );
\gpf3.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F2000000F2"
    )
        port map (
      I0 => eqOp,
      I1 => \gpf3.prog_full_i_i_2_n_0\,
      I2 => gtOp,
      I3 => \gpf3.prog_full_i_reg_0\,
      I4 => \gpf3.prog_full_i_reg_1\,
      I5 => \^prog_full\,
      O => \gpf3.prog_full_i_i_1_n_0\
    );
\gpf3.prog_full_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ram_rd_en_i,
      I1 => ram_wr_en_i,
      O => \gpf3.prog_full_i_i_2_n_0\
    );
\gpf3.prog_full_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \gpf3.prog_full_i_i_1_n_0\,
      PRE => \out\,
      Q => \^prog_full\
    );
\greg.pntr_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(0),
      Q => \greg.pntr_d1_reg_n_0_[0]\
    );
\greg.pntr_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(1),
      Q => \greg.pntr_d1_reg_n_0_[1]\
    );
\greg.pntr_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(2),
      Q => \greg.pntr_d1_reg_n_0_[2]\
    );
\greg.pntr_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(3),
      Q => \greg.pntr_d1_reg_n_0_[3]\
    );
\greg.pntr_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(4),
      Q => \greg.pntr_d1_reg_n_0_[4]\
    );
\greg.pntr_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(5),
      Q => \greg.pntr_d1_reg_n_0_[5]\
    );
\greg.pntr_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(6),
      Q => \greg.pntr_d1_reg_n_0_[6]\
    );
\greg.pntr_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(7),
      Q => \greg.pntr_d1_reg_n_0_[7]\
    );
\greg.pntr_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(8),
      Q => \greg.pntr_d1_reg_n_0_[8]\
    );
\greg.pntr_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => D(9),
      Q => \greg.pntr_d1_reg_n_0_[9]\
    );
\greg.ram_rd_en_i_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => \greg.ram_rd_en_i_reg_1\,
      Q => ram_rd_en_i
    );
\greg.ram_wr_en_i_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \greg.ram_rd_en_i_reg_0\,
      D => \greg.ram_wr_en_i_reg_0\,
      Q => ram_wr_en_i
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gtOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gtOp_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[8]\,
      I1 => prog_full_thresh(8),
      I2 => prog_full_thresh(9),
      I3 => \greg.pntr_d1_reg_n_0_[9]\,
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[8]\,
      I1 => prog_full_thresh(8),
      I2 => \greg.pntr_d1_reg_n_0_[9]\,
      I3 => prog_full_thresh(9),
      O => \gtOp_carry__0_i_2_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[6]\,
      I1 => prog_full_thresh(6),
      I2 => prog_full_thresh(7),
      I3 => \greg.pntr_d1_reg_n_0_[7]\,
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[4]\,
      I1 => prog_full_thresh(4),
      I2 => prog_full_thresh(5),
      I3 => \greg.pntr_d1_reg_n_0_[5]\,
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[2]\,
      I1 => prog_full_thresh(2),
      I2 => prog_full_thresh(3),
      I3 => \greg.pntr_d1_reg_n_0_[3]\,
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[0]\,
      I1 => prog_full_thresh(0),
      I2 => prog_full_thresh(1),
      I3 => \greg.pntr_d1_reg_n_0_[1]\,
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[6]\,
      I1 => prog_full_thresh(6),
      I2 => \greg.pntr_d1_reg_n_0_[7]\,
      I3 => prog_full_thresh(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[4]\,
      I1 => prog_full_thresh(4),
      I2 => \greg.pntr_d1_reg_n_0_[5]\,
      I3 => prog_full_thresh(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[2]\,
      I1 => prog_full_thresh(2),
      I2 => \greg.pntr_d1_reg_n_0_[3]\,
      I3 => prog_full_thresh(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \greg.pntr_d1_reg_n_0_[0]\,
      I1 => prog_full_thresh(0),
      I2 => \greg.pntr_d1_reg_n_0_[1]\,
      I3 => prog_full_thresh(1),
      O => gtOp_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_rd_status_flags_sshft is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_en_0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_rd_status_flags_sshft : entity is "rd_status_flags_sshft";
end fifo_us_rd_status_flags_sshft;

architecture STRUCTURE of fifo_us_rd_status_flags_sshft is
  signal comp0 : STD_LOGIC;
  signal ram_empty_comb : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  empty <= ram_empty_i;
  \out\ <= ram_empty_fb_i;
c0: entity work.fifo_us_compare_65
     port map (
      comp0 => comp0,
      \gmux.gm[2].gms.ms_0\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms_0\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms_0\ => \gmux.gm[4].gms.ms\,
      ram_empty_i_reg => ram_empty_i_reg_0,
      v1_reg(0) => v1_reg(0)
    );
c1: entity work.fifo_us_compare_66
     port map (
      comp0 => comp0,
      \gmux.gm[1].gms.ms_0\ => \gmux.gm[1].gms.ms\,
      \out\ => ram_empty_fb_i,
      ram_empty_comb => ram_empty_comb,
      ram_empty_i_reg => ram_empty_i_reg_1,
      rd_en => rd_en,
      v1_reg(3 downto 0) => v1_reg(4 downto 1)
    );
\dout_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => rd_en_0
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_comb,
      PRE => ram_empty_fb_i_reg_0,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_comb,
      PRE => ram_empty_fb_i_reg_0,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end fifo_us_reset_blk_ramfifo;

architecture STRUCTURE of fifo_us_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal \^wr_rst_busy\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \out\ <= rst_d2;
  wr_rst_busy <= \^wr_rst_busy\;
\dout_i[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => rst_wr_reg2,
      O => AR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^wr_rst_busy\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg2,
      Q => p_0_in(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => p_0_in(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => p_0_in(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.fifo_us_xpm_cdc_async_rst
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => clk,
      src_arst => rst
    );
rd_rst_busy_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => rst_wr_reg2,
      O => \^wr_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_shft_ram is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_10_out : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_shft_ram : entity is "shft_ram";
end fifo_us_shft_ram;

architecture STRUCTURE of fifo_us_shft_ram is
  signal \dout_2d[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[10]_10\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[12]_12\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[13]_13\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[14]_14\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[16]_16\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[17]_17\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[18]_18\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[1]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[20]_20\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[21]_21\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[22]_22\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[24]_24\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[25]_25\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[26]_26\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[28]_28\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[29]_29\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[2]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[30]_30\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[32]_32\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[33]_33\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[34]_34\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[36]_36\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[37]_37\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[38]_38\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[40]_40\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[41]_41\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[42]_42\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[44]_44\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[45]_45\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[46]_46\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[48]_48\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[49]_49\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[4]_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[50]_50\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[52]_52\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[53]_53\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[54]_54\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[56]_56\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[57]_57\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[58]_58\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[5]_5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[60]_60\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[61]_61\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[62]_62\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[63]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[6]_6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[8]_8\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dout_2d[9]_9\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gsms.gsms[11].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[11].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[15].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[19].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[23].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[27].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[31].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[35].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[39].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[3].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[43].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[47].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[55].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[59].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[63].sms_n_7\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_0\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_1\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_2\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_3\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_4\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_5\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_6\ : STD_LOGIC;
  signal \gsms.gsms[7].sms_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_104 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_112 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_120 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_128 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_136 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_144 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_152 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_16 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_160 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_168 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_176 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_184 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_192 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_200 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_208 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_216 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_224 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_232 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_24 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_240 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_248 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_256 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_264 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_272 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_280 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_288 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_296 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_304 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_312 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_32 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_320 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_328 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_336 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_344 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_352 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_360 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_368 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_376 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_384 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_392 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_40 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_400 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_408 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_416 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_424 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_432 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_440 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_448 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_456 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_464 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_472 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_48 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_480 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_488 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_496 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_56 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_64 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_72 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_80 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_88 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shft_connect_96 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(0),
      Q => dout(0)
    );
\dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(1),
      Q => dout(1)
    );
\dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(2),
      Q => dout(2)
    );
\dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(3),
      Q => dout(3)
    );
\dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(4),
      Q => dout(4)
    );
\dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(5),
      Q => dout(5)
    );
\dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(6),
      Q => dout(6)
    );
\dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \dout_2d[63]__0\(7),
      Q => dout(7)
    );
\gsms.gsms[10].sms\: entity work.fifo_us_shft_wrapper
     port map (
      DOUT(7 downto 0) => \dout_2d[10]_10\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_80(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      \gram.gsms[7].gv4.srl16_0\(7 downto 0) => shft_connect_72(7 downto 0),
      p_10_out => p_10_out
    );
\gsms.gsms[11].sms\: entity work.fifo_us_shft_wrapper_0
     port map (
      DIN(7 downto 0) => shft_connect_80(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[10]_10\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_88(7 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      clk => clk,
      \count_reg[6]\ => \gsms.gsms[11].sms_n_0\,
      \count_reg[6]_0\ => \gsms.gsms[11].sms_n_1\,
      \count_reg[6]_1\ => \gsms.gsms[11].sms_n_2\,
      \count_reg[6]_2\ => \gsms.gsms[11].sms_n_3\,
      \count_reg[6]_3\ => \gsms.gsms[11].sms_n_4\,
      \count_reg[6]_4\ => \gsms.gsms[11].sms_n_5\,
      \count_reg[6]_5\ => \gsms.gsms[11].sms_n_6\,
      \count_reg[6]_6\ => \gsms.gsms[11].sms_n_7\,
      \dout_i_reg[0]_i_5\ => \gsms.gsms[15].sms_n_0\,
      \dout_i_reg[1]_i_5\ => \gsms.gsms[15].sms_n_1\,
      \dout_i_reg[2]_i_5\ => \gsms.gsms[15].sms_n_2\,
      \dout_i_reg[3]_i_5\ => \gsms.gsms[15].sms_n_3\,
      \dout_i_reg[4]_i_5\ => \gsms.gsms[15].sms_n_4\,
      \dout_i_reg[5]_i_5\ => \gsms.gsms[15].sms_n_5\,
      \dout_i_reg[6]_i_5\ => \gsms.gsms[15].sms_n_6\,
      \dout_i_reg[7]_i_15_0\(7 downto 0) => \dout_2d[9]_9\(7 downto 0),
      \dout_i_reg[7]_i_15_1\(7 downto 0) => \dout_2d[8]_8\(7 downto 0),
      \dout_i_reg[7]_i_7\ => \gsms.gsms[15].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[12].sms\: entity work.fifo_us_shft_wrapper_1
     port map (
      DIN(7 downto 0) => shft_connect_88(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[12]_12\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_96(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[13].sms\: entity work.fifo_us_shft_wrapper_2
     port map (
      DIN(7 downto 0) => shft_connect_96(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[13]_13\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_104(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[14].sms\: entity work.fifo_us_shft_wrapper_3
     port map (
      DIN(7 downto 0) => shft_connect_104(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[14]_14\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_112(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[15].sms\: entity work.fifo_us_shft_wrapper_4
     port map (
      DIN(7 downto 0) => shft_connect_112(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[14]_14\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_120(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[15].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[15].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[15].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[15].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[15].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[15].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[15].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[15].sms_n_7\,
      \dout_i_reg[7]_i_15\(7 downto 0) => \dout_2d[13]_13\(7 downto 0),
      \dout_i_reg[7]_i_15_0\(7 downto 0) => \dout_2d[12]_12\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[16].sms\: entity work.fifo_us_shft_wrapper_5
     port map (
      DIN(7 downto 0) => shft_connect_120(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[16]_16\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_128(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[17].sms\: entity work.fifo_us_shft_wrapper_6
     port map (
      DIN(7 downto 0) => shft_connect_128(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[17]_17\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_136(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[18].sms\: entity work.fifo_us_shft_wrapper_7
     port map (
      DIN(7 downto 0) => shft_connect_136(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[18]_18\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_144(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[19].sms\: entity work.fifo_us_shft_wrapper_8
     port map (
      DIN(7 downto 0) => shft_connect_144(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[18]_18\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_152(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      clk => clk,
      \count_reg[7]\ => \gsms.gsms[19].sms_n_0\,
      \count_reg[7]_0\ => \gsms.gsms[19].sms_n_1\,
      \count_reg[7]_1\ => \gsms.gsms[19].sms_n_2\,
      \count_reg[7]_2\ => \gsms.gsms[19].sms_n_3\,
      \count_reg[7]_3\ => \gsms.gsms[19].sms_n_4\,
      \count_reg[7]_4\ => \gsms.gsms[19].sms_n_5\,
      \count_reg[7]_5\ => \gsms.gsms[19].sms_n_6\,
      \count_reg[7]_6\ => \gsms.gsms[19].sms_n_7\,
      \dout_i_reg[0]\ => \gsms.gsms[27].sms_n_0\,
      \dout_i_reg[0]_i_4_0\ => \gsms.gsms[23].sms_n_0\,
      \dout_i_reg[1]\ => \gsms.gsms[27].sms_n_1\,
      \dout_i_reg[1]_i_4_0\ => \gsms.gsms[23].sms_n_1\,
      \dout_i_reg[2]\ => \gsms.gsms[27].sms_n_2\,
      \dout_i_reg[2]_i_4_0\ => \gsms.gsms[23].sms_n_2\,
      \dout_i_reg[3]\ => \gsms.gsms[27].sms_n_3\,
      \dout_i_reg[3]_i_4_0\ => \gsms.gsms[23].sms_n_3\,
      \dout_i_reg[4]\ => \gsms.gsms[27].sms_n_4\,
      \dout_i_reg[4]_i_4_0\ => \gsms.gsms[23].sms_n_4\,
      \dout_i_reg[5]\ => \gsms.gsms[27].sms_n_5\,
      \dout_i_reg[5]_i_4_0\ => \gsms.gsms[23].sms_n_5\,
      \dout_i_reg[6]\ => \gsms.gsms[27].sms_n_6\,
      \dout_i_reg[6]_i_4_0\ => \gsms.gsms[23].sms_n_6\,
      \dout_i_reg[7]\ => \gsms.gsms[27].sms_n_7\,
      \dout_i_reg[7]_i_12_0\(7 downto 0) => \dout_2d[17]_17\(7 downto 0),
      \dout_i_reg[7]_i_12_1\(7 downto 0) => \dout_2d[16]_16\(7 downto 0),
      \dout_i_reg[7]_i_6_0\ => \gsms.gsms[23].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[1].sms\: entity work.fifo_us_shft_wrapper_9
     port map (
      DOUT(7 downto 0) => \dout_2d[1]_1\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_8(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      \gram.gsms[7].gv4.srl16_0\(7 downto 0) => p_0_in(7 downto 0),
      p_10_out => p_10_out
    );
\gsms.gsms[20].sms\: entity work.fifo_us_shft_wrapper_10
     port map (
      DIN(7 downto 0) => shft_connect_152(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[20]_20\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_160(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[21].sms\: entity work.fifo_us_shft_wrapper_11
     port map (
      DIN(7 downto 0) => shft_connect_160(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[21]_21\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_168(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[22].sms\: entity work.fifo_us_shft_wrapper_12
     port map (
      DIN(7 downto 0) => shft_connect_168(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[22]_22\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_176(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[23].sms\: entity work.fifo_us_shft_wrapper_13
     port map (
      DIN(7 downto 0) => shft_connect_176(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[22]_22\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_184(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[23].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[23].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[23].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[23].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[23].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[23].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[23].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[23].sms_n_7\,
      \dout_i_reg[7]_i_12\(7 downto 0) => \dout_2d[21]_21\(7 downto 0),
      \dout_i_reg[7]_i_12_0\(7 downto 0) => \dout_2d[20]_20\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[24].sms\: entity work.fifo_us_shft_wrapper_14
     port map (
      DIN(7 downto 0) => shft_connect_184(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[24]_24\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_192(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[25].sms\: entity work.fifo_us_shft_wrapper_15
     port map (
      DIN(7 downto 0) => shft_connect_192(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[25]_25\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_200(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[26].sms\: entity work.fifo_us_shft_wrapper_16
     port map (
      DIN(7 downto 0) => shft_connect_200(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[26]_26\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_208(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[27].sms\: entity work.fifo_us_shft_wrapper_17
     port map (
      DIN(7 downto 0) => shft_connect_208(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[26]_26\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_216(7 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      clk => clk,
      \count_reg[6]\ => \gsms.gsms[27].sms_n_0\,
      \count_reg[6]_0\ => \gsms.gsms[27].sms_n_1\,
      \count_reg[6]_1\ => \gsms.gsms[27].sms_n_2\,
      \count_reg[6]_2\ => \gsms.gsms[27].sms_n_3\,
      \count_reg[6]_3\ => \gsms.gsms[27].sms_n_4\,
      \count_reg[6]_4\ => \gsms.gsms[27].sms_n_5\,
      \count_reg[6]_5\ => \gsms.gsms[27].sms_n_6\,
      \count_reg[6]_6\ => \gsms.gsms[27].sms_n_7\,
      \dout_i_reg[0]_i_4\ => \gsms.gsms[31].sms_n_0\,
      \dout_i_reg[1]_i_4\ => \gsms.gsms[31].sms_n_1\,
      \dout_i_reg[2]_i_4\ => \gsms.gsms[31].sms_n_2\,
      \dout_i_reg[3]_i_4\ => \gsms.gsms[31].sms_n_3\,
      \dout_i_reg[4]_i_4\ => \gsms.gsms[31].sms_n_4\,
      \dout_i_reg[5]_i_4\ => \gsms.gsms[31].sms_n_5\,
      \dout_i_reg[6]_i_4\ => \gsms.gsms[31].sms_n_6\,
      \dout_i_reg[7]_i_13_0\(7 downto 0) => \dout_2d[25]_25\(7 downto 0),
      \dout_i_reg[7]_i_13_1\(7 downto 0) => \dout_2d[24]_24\(7 downto 0),
      \dout_i_reg[7]_i_6\ => \gsms.gsms[31].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[28].sms\: entity work.fifo_us_shft_wrapper_18
     port map (
      DIN(7 downto 0) => shft_connect_216(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[28]_28\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_224(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[29].sms\: entity work.fifo_us_shft_wrapper_19
     port map (
      DIN(7 downto 0) => shft_connect_224(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[29]_29\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_232(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[2].sms\: entity work.fifo_us_shft_wrapper_20
     port map (
      DIN(7 downto 0) => shft_connect_8(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[2]_2\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_16(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[30].sms\: entity work.fifo_us_shft_wrapper_21
     port map (
      DIN(7 downto 0) => shft_connect_232(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[30]_30\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_240(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[31].sms\: entity work.fifo_us_shft_wrapper_22
     port map (
      DIN(7 downto 0) => shft_connect_240(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[30]_30\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_248(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[31].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[31].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[31].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[31].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[31].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[31].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[31].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[31].sms_n_7\,
      \dout_i_reg[7]_i_13\(7 downto 0) => \dout_2d[29]_29\(7 downto 0),
      \dout_i_reg[7]_i_13_0\(7 downto 0) => \dout_2d[28]_28\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[32].sms\: entity work.fifo_us_shft_wrapper_23
     port map (
      DIN(7 downto 0) => shft_connect_248(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[32]_32\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_256(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[33].sms\: entity work.fifo_us_shft_wrapper_24
     port map (
      DIN(7 downto 0) => shft_connect_256(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[33]_33\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_264(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[34].sms\: entity work.fifo_us_shft_wrapper_25
     port map (
      DIN(7 downto 0) => shft_connect_264(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[34]_34\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_272(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[35].sms\: entity work.fifo_us_shft_wrapper_26
     port map (
      DIN(7 downto 0) => shft_connect_272(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[34]_34\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_280(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      clk => clk,
      \count_reg[7]\ => \gsms.gsms[35].sms_n_0\,
      \count_reg[7]_0\ => \gsms.gsms[35].sms_n_1\,
      \count_reg[7]_1\ => \gsms.gsms[35].sms_n_2\,
      \count_reg[7]_2\ => \gsms.gsms[35].sms_n_3\,
      \count_reg[7]_3\ => \gsms.gsms[35].sms_n_4\,
      \count_reg[7]_4\ => \gsms.gsms[35].sms_n_5\,
      \count_reg[7]_5\ => \gsms.gsms[35].sms_n_6\,
      \count_reg[7]_6\ => \gsms.gsms[35].sms_n_7\,
      \dout_i_reg[0]\ => \gsms.gsms[43].sms_n_0\,
      \dout_i_reg[0]_i_3_0\ => \gsms.gsms[39].sms_n_0\,
      \dout_i_reg[1]\ => \gsms.gsms[43].sms_n_1\,
      \dout_i_reg[1]_i_3_0\ => \gsms.gsms[39].sms_n_1\,
      \dout_i_reg[2]\ => \gsms.gsms[43].sms_n_2\,
      \dout_i_reg[2]_i_3_0\ => \gsms.gsms[39].sms_n_2\,
      \dout_i_reg[3]\ => \gsms.gsms[43].sms_n_3\,
      \dout_i_reg[3]_i_3_0\ => \gsms.gsms[39].sms_n_3\,
      \dout_i_reg[4]\ => \gsms.gsms[43].sms_n_4\,
      \dout_i_reg[4]_i_3_0\ => \gsms.gsms[39].sms_n_4\,
      \dout_i_reg[5]\ => \gsms.gsms[43].sms_n_5\,
      \dout_i_reg[5]_i_3_0\ => \gsms.gsms[39].sms_n_5\,
      \dout_i_reg[6]\ => \gsms.gsms[43].sms_n_6\,
      \dout_i_reg[6]_i_3_0\ => \gsms.gsms[39].sms_n_6\,
      \dout_i_reg[7]\ => \gsms.gsms[43].sms_n_7\,
      \dout_i_reg[7]_i_10_0\(7 downto 0) => \dout_2d[33]_33\(7 downto 0),
      \dout_i_reg[7]_i_10_1\(7 downto 0) => \dout_2d[32]_32\(7 downto 0),
      \dout_i_reg[7]_i_5_0\ => \gsms.gsms[39].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[36].sms\: entity work.fifo_us_shft_wrapper_27
     port map (
      DIN(7 downto 0) => shft_connect_280(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[36]_36\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_288(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[37].sms\: entity work.fifo_us_shft_wrapper_28
     port map (
      DIN(7 downto 0) => shft_connect_288(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[37]_37\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_296(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[38].sms\: entity work.fifo_us_shft_wrapper_29
     port map (
      DIN(7 downto 0) => shft_connect_296(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[38]_38\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_304(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[39].sms\: entity work.fifo_us_shft_wrapper_30
     port map (
      DIN(7 downto 0) => shft_connect_304(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[38]_38\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_312(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[39].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[39].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[39].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[39].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[39].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[39].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[39].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[39].sms_n_7\,
      \dout_i_reg[7]_i_10\(7 downto 0) => \dout_2d[37]_37\(7 downto 0),
      \dout_i_reg[7]_i_10_0\(7 downto 0) => \dout_2d[36]_36\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[3].sms\: entity work.fifo_us_shft_wrapper_31
     port map (
      DIN(7 downto 0) => shft_connect_16(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[2]_2\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_24(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      clk => clk,
      \count_reg[7]\ => \gsms.gsms[3].sms_n_0\,
      \count_reg[7]_0\ => \gsms.gsms[3].sms_n_1\,
      \count_reg[7]_1\ => \gsms.gsms[3].sms_n_2\,
      \count_reg[7]_2\ => \gsms.gsms[3].sms_n_3\,
      \count_reg[7]_3\ => \gsms.gsms[3].sms_n_4\,
      \count_reg[7]_4\ => \gsms.gsms[3].sms_n_5\,
      \count_reg[7]_5\ => \gsms.gsms[3].sms_n_6\,
      \count_reg[7]_6\ => \gsms.gsms[3].sms_n_7\,
      \dout_i_reg[0]\ => \gsms.gsms[11].sms_n_0\,
      \dout_i_reg[0]_i_5_0\ => \gsms.gsms[7].sms_n_0\,
      \dout_i_reg[1]\ => \gsms.gsms[11].sms_n_1\,
      \dout_i_reg[1]_i_5_0\ => \gsms.gsms[7].sms_n_1\,
      \dout_i_reg[2]\ => \gsms.gsms[11].sms_n_2\,
      \dout_i_reg[2]_i_5_0\ => \gsms.gsms[7].sms_n_2\,
      \dout_i_reg[3]\ => \gsms.gsms[11].sms_n_3\,
      \dout_i_reg[3]_i_5_0\ => \gsms.gsms[7].sms_n_3\,
      \dout_i_reg[4]\ => \gsms.gsms[11].sms_n_4\,
      \dout_i_reg[4]_i_5_0\ => \gsms.gsms[7].sms_n_4\,
      \dout_i_reg[5]\ => \gsms.gsms[11].sms_n_5\,
      \dout_i_reg[5]_i_5_0\ => \gsms.gsms[7].sms_n_5\,
      \dout_i_reg[6]\ => \gsms.gsms[11].sms_n_6\,
      \dout_i_reg[6]_i_5_0\ => \gsms.gsms[7].sms_n_6\,
      \dout_i_reg[7]\ => \gsms.gsms[11].sms_n_7\,
      \dout_i_reg[7]_i_14_0\(7 downto 0) => \dout_2d[1]_1\(7 downto 0),
      \dout_i_reg[7]_i_14_1\(7 downto 0) => \dout_2d[0]_0\(7 downto 0),
      \dout_i_reg[7]_i_7_0\ => \gsms.gsms[7].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[40].sms\: entity work.fifo_us_shft_wrapper_32
     port map (
      DIN(7 downto 0) => shft_connect_312(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[40]_40\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_320(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[41].sms\: entity work.fifo_us_shft_wrapper_33
     port map (
      DIN(7 downto 0) => shft_connect_320(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[41]_41\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_328(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[42].sms\: entity work.fifo_us_shft_wrapper_34
     port map (
      DIN(7 downto 0) => shft_connect_328(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[42]_42\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_336(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[43].sms\: entity work.fifo_us_shft_wrapper_35
     port map (
      DIN(7 downto 0) => shft_connect_336(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[42]_42\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_344(7 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      clk => clk,
      \count_reg[6]\ => \gsms.gsms[43].sms_n_0\,
      \count_reg[6]_0\ => \gsms.gsms[43].sms_n_1\,
      \count_reg[6]_1\ => \gsms.gsms[43].sms_n_2\,
      \count_reg[6]_2\ => \gsms.gsms[43].sms_n_3\,
      \count_reg[6]_3\ => \gsms.gsms[43].sms_n_4\,
      \count_reg[6]_4\ => \gsms.gsms[43].sms_n_5\,
      \count_reg[6]_5\ => \gsms.gsms[43].sms_n_6\,
      \count_reg[6]_6\ => \gsms.gsms[43].sms_n_7\,
      \dout_i_reg[0]_i_3\ => \gsms.gsms[47].sms_n_0\,
      \dout_i_reg[1]_i_3\ => \gsms.gsms[47].sms_n_1\,
      \dout_i_reg[2]_i_3\ => \gsms.gsms[47].sms_n_2\,
      \dout_i_reg[3]_i_3\ => \gsms.gsms[47].sms_n_3\,
      \dout_i_reg[4]_i_3\ => \gsms.gsms[47].sms_n_4\,
      \dout_i_reg[5]_i_3\ => \gsms.gsms[47].sms_n_5\,
      \dout_i_reg[6]_i_3\ => \gsms.gsms[47].sms_n_6\,
      \dout_i_reg[7]_i_11_0\(7 downto 0) => \dout_2d[41]_41\(7 downto 0),
      \dout_i_reg[7]_i_11_1\(7 downto 0) => \dout_2d[40]_40\(7 downto 0),
      \dout_i_reg[7]_i_5\ => \gsms.gsms[47].sms_n_7\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[44].sms\: entity work.fifo_us_shft_wrapper_36
     port map (
      DIN(7 downto 0) => shft_connect_344(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[44]_44\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_352(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[45].sms\: entity work.fifo_us_shft_wrapper_37
     port map (
      DIN(7 downto 0) => shft_connect_352(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[45]_45\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_360(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[46].sms\: entity work.fifo_us_shft_wrapper_38
     port map (
      DIN(7 downto 0) => shft_connect_360(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[46]_46\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_368(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[47].sms\: entity work.fifo_us_shft_wrapper_39
     port map (
      DIN(7 downto 0) => shft_connect_368(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[46]_46\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_376(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[47].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[47].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[47].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[47].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[47].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[47].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[47].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[47].sms_n_7\,
      \dout_i_reg[7]_i_11\(7 downto 0) => \dout_2d[45]_45\(7 downto 0),
      \dout_i_reg[7]_i_11_0\(7 downto 0) => \dout_2d[44]_44\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[48].sms\: entity work.fifo_us_shft_wrapper_40
     port map (
      DIN(7 downto 0) => shft_connect_376(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[48]_48\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_384(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[49].sms\: entity work.fifo_us_shft_wrapper_41
     port map (
      DIN(7 downto 0) => shft_connect_384(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[49]_49\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_392(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[4].sms\: entity work.fifo_us_shft_wrapper_42
     port map (
      DIN(7 downto 0) => shft_connect_24(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[4]_4\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_32(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[50].sms\: entity work.fifo_us_shft_wrapper_43
     port map (
      DIN(7 downto 0) => shft_connect_392(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[50]_50\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_400(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[51].sms\: entity work.fifo_us_shft_wrapper_44
     port map (
      D(7 downto 0) => \dout_2d[63]__0\(7 downto 0),
      DIN(7 downto 0) => shft_connect_400(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[50]_50\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_408(7 downto 0),
      Q(9 downto 0) => Q(9 downto 0),
      clk => clk,
      \dout_i_reg[0]\ => \gsms.gsms[35].sms_n_0\,
      \dout_i_reg[0]_0\ => \gsms.gsms[19].sms_n_0\,
      \dout_i_reg[0]_1\ => \gsms.gsms[3].sms_n_0\,
      \dout_i_reg[0]_2\ => \gsms.gsms[59].sms_n_0\,
      \dout_i_reg[0]_i_2_0\ => \gsms.gsms[55].sms_n_0\,
      \dout_i_reg[1]\ => \gsms.gsms[35].sms_n_1\,
      \dout_i_reg[1]_0\ => \gsms.gsms[19].sms_n_1\,
      \dout_i_reg[1]_1\ => \gsms.gsms[3].sms_n_1\,
      \dout_i_reg[1]_2\ => \gsms.gsms[59].sms_n_1\,
      \dout_i_reg[1]_i_2_0\ => \gsms.gsms[55].sms_n_1\,
      \dout_i_reg[2]\ => \gsms.gsms[35].sms_n_2\,
      \dout_i_reg[2]_0\ => \gsms.gsms[19].sms_n_2\,
      \dout_i_reg[2]_1\ => \gsms.gsms[3].sms_n_2\,
      \dout_i_reg[2]_2\ => \gsms.gsms[59].sms_n_2\,
      \dout_i_reg[2]_i_2_0\ => \gsms.gsms[55].sms_n_2\,
      \dout_i_reg[3]\ => \gsms.gsms[35].sms_n_3\,
      \dout_i_reg[3]_0\ => \gsms.gsms[19].sms_n_3\,
      \dout_i_reg[3]_1\ => \gsms.gsms[3].sms_n_3\,
      \dout_i_reg[3]_2\ => \gsms.gsms[59].sms_n_3\,
      \dout_i_reg[3]_i_2_0\ => \gsms.gsms[55].sms_n_3\,
      \dout_i_reg[4]\ => \gsms.gsms[35].sms_n_4\,
      \dout_i_reg[4]_0\ => \gsms.gsms[19].sms_n_4\,
      \dout_i_reg[4]_1\ => \gsms.gsms[3].sms_n_4\,
      \dout_i_reg[4]_2\ => \gsms.gsms[59].sms_n_4\,
      \dout_i_reg[4]_i_2_0\ => \gsms.gsms[55].sms_n_4\,
      \dout_i_reg[5]\ => \gsms.gsms[35].sms_n_5\,
      \dout_i_reg[5]_0\ => \gsms.gsms[19].sms_n_5\,
      \dout_i_reg[5]_1\ => \gsms.gsms[3].sms_n_5\,
      \dout_i_reg[5]_2\ => \gsms.gsms[59].sms_n_5\,
      \dout_i_reg[5]_i_2_0\ => \gsms.gsms[55].sms_n_5\,
      \dout_i_reg[6]\ => \gsms.gsms[35].sms_n_6\,
      \dout_i_reg[6]_0\ => \gsms.gsms[19].sms_n_6\,
      \dout_i_reg[6]_1\ => \gsms.gsms[3].sms_n_6\,
      \dout_i_reg[6]_2\ => \gsms.gsms[59].sms_n_6\,
      \dout_i_reg[6]_i_2_0\ => \gsms.gsms[55].sms_n_6\,
      \dout_i_reg[7]\ => \gsms.gsms[35].sms_n_7\,
      \dout_i_reg[7]_0\ => \gsms.gsms[19].sms_n_7\,
      \dout_i_reg[7]_1\ => \gsms.gsms[3].sms_n_7\,
      \dout_i_reg[7]_2\ => \gsms.gsms[59].sms_n_7\,
      \dout_i_reg[7]_i_4_0\ => \gsms.gsms[55].sms_n_7\,
      \dout_i_reg[7]_i_8_0\(7 downto 0) => \dout_2d[49]_49\(7 downto 0),
      \dout_i_reg[7]_i_8_1\(7 downto 0) => \dout_2d[48]_48\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[52].sms\: entity work.fifo_us_shft_wrapper_45
     port map (
      DIN(7 downto 0) => shft_connect_408(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[52]_52\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_416(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[53].sms\: entity work.fifo_us_shft_wrapper_46
     port map (
      DIN(7 downto 0) => shft_connect_416(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[53]_53\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_424(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[54].sms\: entity work.fifo_us_shft_wrapper_47
     port map (
      DIN(7 downto 0) => shft_connect_424(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[54]_54\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_432(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[55].sms\: entity work.fifo_us_shft_wrapper_48
     port map (
      DIN(7 downto 0) => shft_connect_432(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[54]_54\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_440(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[55].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[55].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[55].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[55].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[55].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[55].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[55].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[55].sms_n_7\,
      \dout_i_reg[7]_i_8\(7 downto 0) => \dout_2d[53]_53\(7 downto 0),
      \dout_i_reg[7]_i_8_0\(7 downto 0) => \dout_2d[52]_52\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[56].sms\: entity work.fifo_us_shft_wrapper_49
     port map (
      DIN(7 downto 0) => shft_connect_440(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[56]_56\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_448(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[57].sms\: entity work.fifo_us_shft_wrapper_50
     port map (
      DIN(7 downto 0) => shft_connect_448(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[57]_57\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_456(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[58].sms\: entity work.fifo_us_shft_wrapper_51
     port map (
      DIN(7 downto 0) => shft_connect_456(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[58]_58\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_464(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[59].sms\: entity work.fifo_us_shft_wrapper_52
     port map (
      DIN(7 downto 0) => shft_connect_464(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[58]_58\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_472(7 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      clk => clk,
      \count_reg[6]\ => \gsms.gsms[59].sms_n_0\,
      \count_reg[6]_0\ => \gsms.gsms[59].sms_n_1\,
      \count_reg[6]_1\ => \gsms.gsms[59].sms_n_2\,
      \count_reg[6]_2\ => \gsms.gsms[59].sms_n_3\,
      \count_reg[6]_3\ => \gsms.gsms[59].sms_n_4\,
      \count_reg[6]_4\ => \gsms.gsms[59].sms_n_5\,
      \count_reg[6]_5\ => \gsms.gsms[59].sms_n_6\,
      \count_reg[6]_6\ => \gsms.gsms[59].sms_n_7\,
      \dout_i_reg[0]_i_2\ => \gsms.gsms[63].sms_n_0\,
      \dout_i_reg[1]_i_2\ => \gsms.gsms[63].sms_n_1\,
      \dout_i_reg[2]_i_2\ => \gsms.gsms[63].sms_n_2\,
      \dout_i_reg[3]_i_2\ => \gsms.gsms[63].sms_n_3\,
      \dout_i_reg[4]_i_2\ => \gsms.gsms[63].sms_n_4\,
      \dout_i_reg[5]_i_2\ => \gsms.gsms[63].sms_n_5\,
      \dout_i_reg[6]_i_2\ => \gsms.gsms[63].sms_n_6\,
      \dout_i_reg[7]_i_4\ => \gsms.gsms[63].sms_n_7\,
      \dout_i_reg[7]_i_9_0\(7 downto 0) => \dout_2d[57]_57\(7 downto 0),
      \dout_i_reg[7]_i_9_1\(7 downto 0) => \dout_2d[56]_56\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[5].sms\: entity work.fifo_us_shft_wrapper_53
     port map (
      DIN(7 downto 0) => shft_connect_32(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[5]_5\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_40(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[60].sms\: entity work.fifo_us_shft_wrapper_54
     port map (
      DIN(7 downto 0) => shft_connect_472(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[60]_60\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_480(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[61].sms\: entity work.fifo_us_shft_wrapper_55
     port map (
      DIN(7 downto 0) => shft_connect_480(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[61]_61\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_488(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[62].sms\: entity work.fifo_us_shft_wrapper_56
     port map (
      DIN(7 downto 0) => shft_connect_488(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[62]_62\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_496(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[1].gv4.srl16_1\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[3].gv4.srl16_1\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[5].gv4.srl16_1\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[63].sms\: entity work.fifo_us_shft_wrapper_57
     port map (
      DIN(7 downto 0) => shft_connect_496(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[62]_62\(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[63].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[63].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[63].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[63].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[63].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[63].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[63].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[63].sms_n_7\,
      \dout_i[0]_i_17_0\ => \gram.gsms[0].gv4.srl16_0\,
      \dout_i[1]_i_17_0\ => \gram.gsms[0].gv4.srl16\,
      \dout_i[1]_i_17_1\ => \gram.gsms[1].gv4.srl16\,
      \dout_i[2]_i_17_0\ => \gram.gsms[2].gv4.srl16_0\,
      \dout_i[3]_i_17_0\ => \gram.gsms[2].gv4.srl16\,
      \dout_i[3]_i_17_1\ => \gram.gsms[3].gv4.srl16\,
      \dout_i[4]_i_17_0\ => \gram.gsms[4].gv4.srl16_0\,
      \dout_i[5]_i_17_0\ => \gram.gsms[4].gv4.srl16\,
      \dout_i[5]_i_17_1\ => \gram.gsms[5].gv4.srl16\,
      \dout_i[6]_i_17_0\ => \gram.gsms[6].gv4.srl16\,
      \dout_i[6]_i_17_1\ => \gram.gsms[6].gv4.srl16_0\,
      \dout_i_reg[7]_i_9\(7 downto 0) => \dout_2d[61]_61\(7 downto 0),
      \dout_i_reg[7]_i_9_0\(7 downto 0) => \dout_2d[60]_60\(7 downto 0),
      p_10_out => p_10_out
    );
\gsms.gsms[6].sms\: entity work.fifo_us_shft_wrapper_58
     port map (
      DIN(7 downto 0) => shft_connect_40(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[6]_6\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_48(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[7].sms\: entity work.fifo_us_shft_wrapper_59
     port map (
      DIN(7 downto 0) => shft_connect_48(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[6]_6\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_56(7 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      \count_reg[5]\ => \gsms.gsms[7].sms_n_0\,
      \count_reg[5]_0\ => \gsms.gsms[7].sms_n_1\,
      \count_reg[5]_1\ => \gsms.gsms[7].sms_n_2\,
      \count_reg[5]_2\ => \gsms.gsms[7].sms_n_3\,
      \count_reg[5]_3\ => \gsms.gsms[7].sms_n_4\,
      \count_reg[5]_4\ => \gsms.gsms[7].sms_n_5\,
      \count_reg[5]_5\ => \gsms.gsms[7].sms_n_6\,
      \count_reg[5]_6\ => \gsms.gsms[7].sms_n_7\,
      \dout_i_reg[7]_i_14\(7 downto 0) => \dout_2d[5]_5\(7 downto 0),
      \dout_i_reg[7]_i_14_0\(7 downto 0) => \dout_2d[4]_4\(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[8].sms\: entity work.fifo_us_shft_wrapper_60
     port map (
      DIN(7 downto 0) => shft_connect_56(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[8]_8\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_64(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.gsms[9].sms\: entity work.fifo_us_shft_wrapper_61
     port map (
      DIN(7 downto 0) => shft_connect_64(7 downto 0),
      DOUT(7 downto 0) => \dout_2d[9]_9\(7 downto 0),
      DOUT_END(7 downto 0) => shft_connect_72(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
\gsms.sm1\: entity work.fifo_us_shft_wrapper_62
     port map (
      DOUT(7 downto 0) => \dout_2d[0]_0\(7 downto 0),
      DOUT_END(7 downto 0) => p_0_in(7 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_1\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16_0\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_1\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16_0\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_1\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16_0\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_1\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_wr_status_flags_sshft is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    wr_en_0 : out STD_LOGIC;
    \p_7_out__0\ : out STD_LOGIC;
    sel : out STD_LOGIC;
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    \gaf.gaf1.ram_afull_fb_reg_0\ : in STD_LOGIC;
    \gaf.gaf1.ram_afull_fb_reg_1\ : in STD_LOGIC;
    \gaf.gaf1.ram_afull_fb_reg_2\ : in STD_LOGIC;
    \count_reg[9]\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_wr_status_flags_sshft : entity is "wr_status_flags_sshft";
end fifo_us_wr_status_flags_sshft;

architecture STRUCTURE of fifo_us_wr_status_flags_sshft is
  signal comp0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_comb : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  signal \^wr_en_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair2";
  attribute DONT_TOUCH of \gaf.gaf1.ram_afull_fb_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gaf.gaf1.ram_afull_fb_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \gaf.gaf1.ram_afull_fb_reg\ : label is "no";
  attribute SOFT_HLUTNM of \greg.pntr_d1[4]_i_2\ : label is "soft_lutpair2";
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_afull_fb;
  wr_en_0 <= \^wr_en_0\;
c0: entity work.fifo_us_compare
     port map (
      comp0 => comp0,
      \gmux.gm[1].gms.ms_0\ => \gmux.gm[1].gms.ms\,
      \gmux.gm[2].gms.ms_0\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms_0\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms_0\ => \gmux.gm[4].gms.ms\,
      ram_full_i_reg => ram_full_i_reg_0
    );
c1: entity work.fifo_us_compare_63
     port map (
      comp0 => comp0,
      comp1 => comp1,
      \out\ => ram_full_fb_i,
      ram_full_comb => ram_full_comb,
      ram_full_i_reg => \^wr_en_0\,
      ram_full_i_reg_0 => \gaf.gaf1.ram_afull_fb_reg_1\,
      ram_full_i_reg_1 => \gaf.gaf1.ram_afull_fb_reg_2\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
\count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^wr_en_0\,
      I1 => \count_reg[9]\,
      I2 => rd_en,
      O => sel
    );
\gaf.c2\: entity work.fifo_us_compare_64
     port map (
      comp1 => comp1,
      \gaf.gaf1.ram_afull_fb_reg\ => \^wr_en_0\,
      \gaf.gaf1.ram_afull_fb_reg_0\ => \gaf.gaf1.ram_afull_fb_reg_1\,
      \gaf.gaf1.ram_afull_fb_reg_1\ => \gaf.gaf1.ram_afull_fb_reg_2\,
      \out\ => ram_afull_fb,
      p_2_out => p_2_out,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
\gaf.gaf1.ram_afull_fb_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_out,
      PRE => \gaf.gaf1.ram_afull_fb_reg_0\,
      Q => ram_afull_fb
    );
\gram.gsms[0].gv4.srl16_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => \^wr_en_0\
    );
\greg.pntr_d1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^wr_en_0\,
      I1 => \count_reg[9]\,
      I2 => rd_en,
      O => \p_7_out__0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \gaf.gaf1.ram_afull_fb_reg_0\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \gaf.gaf1.ram_afull_fb_reg_0\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_logic_sshft is
  port (
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    p_11_out : out STD_LOGIC;
    \count_reg[0]_rep\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    \count_reg[3]_rep\ : out STD_LOGIC;
    \count_reg[3]_rep__0\ : out STD_LOGIC;
    \count_reg[3]_rep__1\ : out STD_LOGIC;
    \count_reg[3]_rep__2\ : out STD_LOGIC;
    \count_reg[3]_rep__3\ : out STD_LOGIC;
    \count_reg[3]_rep__4\ : out STD_LOGIC;
    \count_reg[3]_rep__5\ : out STD_LOGIC;
    \count_reg[0]_rep__0\ : out STD_LOGIC;
    \count_reg[0]_rep__1\ : out STD_LOGIC;
    \count_reg[0]_rep__2\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaf.gaf1.ram_afull_fb_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_logic_sshft : entity is "logic_sshft";
end fifo_us_logic_sshft;

architecture STRUCTURE of fifo_us_logic_sshft is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal c0_n_0 : STD_LOGIC;
  signal c0_n_1 : STD_LOGIC;
  signal c0_n_12 : STD_LOGIC;
  signal c0_n_13 : STD_LOGIC;
  signal c0_n_14 : STD_LOGIC;
  signal c0_n_15 : STD_LOGIC;
  signal c0_n_16 : STD_LOGIC;
  signal c0_n_17 : STD_LOGIC;
  signal c0_n_2 : STD_LOGIC;
  signal c0_n_28 : STD_LOGIC;
  signal c0_n_3 : STD_LOGIC;
  signal c0_n_34 : STD_LOGIC;
  signal c0_n_35 : STD_LOGIC;
  signal c0_n_36 : STD_LOGIC;
  signal c0_n_37 : STD_LOGIC;
  signal c0_n_38 : STD_LOGIC;
  signal c0_n_39 : STD_LOGIC;
  signal c0_n_40 : STD_LOGIC;
  signal c0_n_41 : STD_LOGIC;
  signal c0_n_42 : STD_LOGIC;
  signal c1_n_0 : STD_LOGIC;
  signal c1_n_1 : STD_LOGIC;
  signal c1_n_12 : STD_LOGIC;
  signal c1_n_13 : STD_LOGIC;
  signal c1_n_14 : STD_LOGIC;
  signal c1_n_15 : STD_LOGIC;
  signal c1_n_16 : STD_LOGIC;
  signal c1_n_17 : STD_LOGIC;
  signal c1_n_2 : STD_LOGIC;
  signal c1_n_3 : STD_LOGIC;
  signal c2_n_0 : STD_LOGIC;
  signal c2_n_1 : STD_LOGIC;
  signal c2_n_12 : STD_LOGIC;
  signal c2_n_13 : STD_LOGIC;
  signal c2_n_14 : STD_LOGIC;
  signal c2_n_15 : STD_LOGIC;
  signal c2_n_16 : STD_LOGIC;
  signal c2_n_17 : STD_LOGIC;
  signal c2_n_2 : STD_LOGIC;
  signal c2_n_3 : STD_LOGIC;
  signal \count0__24_carry__0_n_0\ : STD_LOGIC;
  signal \count0__24_carry__0_n_1\ : STD_LOGIC;
  signal \count0__24_carry__0_n_2\ : STD_LOGIC;
  signal \count0__24_carry__0_n_3\ : STD_LOGIC;
  signal \count0__24_carry__0_n_4\ : STD_LOGIC;
  signal \count0__24_carry__0_n_5\ : STD_LOGIC;
  signal \count0__24_carry__0_n_6\ : STD_LOGIC;
  signal \count0__24_carry__0_n_7\ : STD_LOGIC;
  signal \count0__24_carry__1_n_7\ : STD_LOGIC;
  signal \count0__24_carry_n_0\ : STD_LOGIC;
  signal \count0__24_carry_n_1\ : STD_LOGIC;
  signal \count0__24_carry_n_2\ : STD_LOGIC;
  signal \count0__24_carry_n_3\ : STD_LOGIC;
  signal \count0__24_carry_n_4\ : STD_LOGIC;
  signal \count0__24_carry_n_5\ : STD_LOGIC;
  signal \count0__24_carry_n_6\ : STD_LOGIC;
  signal \count0__24_carry_n_7\ : STD_LOGIC;
  signal \count0__49_carry__0_n_0\ : STD_LOGIC;
  signal \count0__49_carry__0_n_1\ : STD_LOGIC;
  signal \count0__49_carry__0_n_2\ : STD_LOGIC;
  signal \count0__49_carry__0_n_3\ : STD_LOGIC;
  signal \count0__49_carry__0_n_4\ : STD_LOGIC;
  signal \count0__49_carry__0_n_5\ : STD_LOGIC;
  signal \count0__49_carry__0_n_6\ : STD_LOGIC;
  signal \count0__49_carry__0_n_7\ : STD_LOGIC;
  signal \count0__49_carry__1_n_7\ : STD_LOGIC;
  signal \count0__49_carry_n_0\ : STD_LOGIC;
  signal \count0__49_carry_n_1\ : STD_LOGIC;
  signal \count0__49_carry_n_2\ : STD_LOGIC;
  signal \count0__49_carry_n_3\ : STD_LOGIC;
  signal \count0__49_carry_n_4\ : STD_LOGIC;
  signal \count0__49_carry_n_5\ : STD_LOGIC;
  signal \count0__49_carry_n_6\ : STD_LOGIC;
  signal \count0__49_carry_n_7\ : STD_LOGIC;
  signal \count0__74_carry__0_n_0\ : STD_LOGIC;
  signal \count0__74_carry__0_n_1\ : STD_LOGIC;
  signal \count0__74_carry__0_n_2\ : STD_LOGIC;
  signal \count0__74_carry__0_n_3\ : STD_LOGIC;
  signal \count0__74_carry__0_n_4\ : STD_LOGIC;
  signal \count0__74_carry__0_n_5\ : STD_LOGIC;
  signal \count0__74_carry__0_n_6\ : STD_LOGIC;
  signal \count0__74_carry__0_n_7\ : STD_LOGIC;
  signal \count0__74_carry__1_n_7\ : STD_LOGIC;
  signal \count0__74_carry_n_0\ : STD_LOGIC;
  signal \count0__74_carry_n_1\ : STD_LOGIC;
  signal \count0__74_carry_n_2\ : STD_LOGIC;
  signal \count0__74_carry_n_3\ : STD_LOGIC;
  signal \count0__74_carry_n_4\ : STD_LOGIC;
  signal \count0__74_carry_n_5\ : STD_LOGIC;
  signal \count0__74_carry_n_6\ : STD_LOGIC;
  signal \count0__74_carry_n_7\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \^count_reg[0]_rep\ : STD_LOGIC;
  signal crd_n_0 : STD_LOGIC;
  signal crd_n_1 : STD_LOGIC;
  signal crd_n_14 : STD_LOGIC;
  signal crd_n_15 : STD_LOGIC;
  signal crd_n_16 : STD_LOGIC;
  signal crd_n_17 : STD_LOGIC;
  signal crd_n_18 : STD_LOGIC;
  signal crd_n_19 : STD_LOGIC;
  signal crd_n_2 : STD_LOGIC;
  signal crd_n_3 : STD_LOGIC;
  signal \gaf.c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^p_10_out\ : STD_LOGIC;
  signal \^p_11_out\ : STD_LOGIC;
  signal \p_7_out__0\ : STD_LOGIC;
  signal pntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pntr_d1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_afull_fb : STD_LOGIC;
  signal ram_empty_fb : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal v1_reg_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_count0__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0__49_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0__49_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0__74_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0__74_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \count0__24_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__24_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__24_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__49_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__49_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__49_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__74_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__74_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0__74_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of count0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \count_reg[0]_rep\ <= \^count_reg[0]_rep\;
  p_10_out <= \^p_10_out\;
  p_11_out <= \^p_11_out\;
c0: entity work.\fifo_us_updn_cntr__parameterized0\
     port map (
      D(9 downto 0) => pntr_d1(9 downto 0),
      DI(0) => c0_n_28,
      Q(7 downto 0) => pntr(7 downto 0),
      S(3) => c0_n_0,
      S(2) => c0_n_1,
      S(1) => c0_n_2,
      S(0) => c0_n_3,
      clk => clk,
      \count_reg[0]_0\ => c0_n_17,
      \count_reg[0]_1\ => c0_n_34,
      \count_reg[2]_0\ => c0_n_35,
      \count_reg[2]_1\ => c0_n_39,
      \count_reg[4]_0\ => c0_n_36,
      \count_reg[4]_1\ => c0_n_40,
      \count_reg[6]_0\ => c0_n_37,
      \count_reg[6]_1\ => c0_n_41,
      \count_reg[7]_0\(3) => c0_n_12,
      \count_reg[7]_0\(2) => c0_n_13,
      \count_reg[7]_0\(1) => c0_n_14,
      \count_reg[7]_0\(0) => c0_n_15,
      \count_reg[8]_0\(0) => c0_n_16,
      \count_reg[8]_1\ => c0_n_38,
      \count_reg[8]_2\ => c0_n_42,
      \count_reg[9]_0\(8) => \count0__24_carry__1_n_7\,
      \count_reg[9]_0\(7) => \count0__24_carry__0_n_4\,
      \count_reg[9]_0\(6) => \count0__24_carry__0_n_5\,
      \count_reg[9]_0\(5) => \count0__24_carry__0_n_6\,
      \count_reg[9]_0\(4) => \count0__24_carry__0_n_7\,
      \count_reg[9]_0\(3) => \count0__24_carry_n_4\,
      \count_reg[9]_0\(2) => \count0__24_carry_n_5\,
      \count_reg[9]_0\(1) => \count0__24_carry_n_6\,
      \count_reg[9]_0\(0) => \count0__24_carry_n_7\,
      \count_reg[9]_1\ => ram_empty_fb_i_reg,
      \greg.pntr_d1_reg[1]\ => \^p_10_out\,
      \greg.pntr_d1_reg[3]\ => \^p_11_out\,
      \out\ => ram_empty_fb,
      \p_7_out__0\ => \p_7_out__0\,
      rd_en => rd_en,
      sel => sel,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.\fifo_us_updn_cntr__parameterized1\
     port map (
      D(8) => \count0__49_carry__1_n_7\,
      D(7) => \count0__49_carry__0_n_4\,
      D(6) => \count0__49_carry__0_n_5\,
      D(5) => \count0__49_carry__0_n_6\,
      D(4) => \count0__49_carry__0_n_7\,
      D(3) => \count0__49_carry_n_4\,
      D(2) => \count0__49_carry_n_5\,
      D(1) => \count0__49_carry_n_6\,
      D(0) => \count0__49_carry_n_7\,
      DI(0) => c1_n_17,
      Q(7 downto 0) => pntr_plus1(7 downto 0),
      S(3) => c1_n_0,
      S(2) => c1_n_1,
      S(1) => c1_n_2,
      S(0) => c1_n_3,
      clk => clk,
      \count_reg[1]_0\ => ram_empty_fb_i_reg,
      \count_reg[7]_0\(3) => c1_n_12,
      \count_reg[7]_0\(2) => c1_n_13,
      \count_reg[7]_0\(1) => c1_n_14,
      \count_reg[7]_0\(0) => c1_n_15,
      \count_reg[8]_0\(0) => c1_n_16,
      \out\ => ram_empty_fb,
      rd_en => rd_en,
      sel => sel,
      v1_reg(4 downto 0) => v1_reg_0(4 downto 0)
    );
c2: entity work.\fifo_us_updn_cntr__parameterized2\
     port map (
      D(8) => \count0__74_carry__1_n_7\,
      D(7) => \count0__74_carry__0_n_4\,
      D(6) => \count0__74_carry__0_n_5\,
      D(5) => \count0__74_carry__0_n_6\,
      D(4) => \count0__74_carry__0_n_7\,
      D(3) => \count0__74_carry_n_4\,
      D(2) => \count0__74_carry_n_5\,
      D(1) => \count0__74_carry_n_6\,
      D(0) => \count0__74_carry_n_7\,
      DI(0) => c2_n_17,
      Q(7 downto 0) => pntr_plus2(7 downto 0),
      S(3) => c2_n_0,
      S(2) => c2_n_1,
      S(1) => c2_n_2,
      S(0) => c2_n_3,
      clk => clk,
      \count_reg[1]_0\ => ram_empty_fb_i_reg,
      \count_reg[7]_0\(3) => c2_n_12,
      \count_reg[7]_0\(2) => c2_n_13,
      \count_reg[7]_0\(1) => c2_n_14,
      \count_reg[7]_0\(0) => c2_n_15,
      \count_reg[8]_0\(0) => c2_n_16,
      \out\ => ram_empty_fb,
      rd_en => rd_en,
      sel => sel,
      v1_reg(4 downto 0) => \gaf.c2/v1_reg\(4 downto 0)
    );
\count0__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count0__24_carry_n_0\,
      CO(2) => \count0__24_carry_n_1\,
      CO(1) => \count0__24_carry_n_2\,
      CO(0) => \count0__24_carry_n_3\,
      CYINIT => pntr(0),
      DI(3 downto 1) => pntr(3 downto 1),
      DI(0) => c0_n_28,
      O(3) => \count0__24_carry_n_4\,
      O(2) => \count0__24_carry_n_5\,
      O(1) => \count0__24_carry_n_6\,
      O(0) => \count0__24_carry_n_7\,
      S(3) => c0_n_0,
      S(2) => c0_n_1,
      S(1) => c0_n_2,
      S(0) => c0_n_3
    );
\count0__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__24_carry_n_0\,
      CO(3) => \count0__24_carry__0_n_0\,
      CO(2) => \count0__24_carry__0_n_1\,
      CO(1) => \count0__24_carry__0_n_2\,
      CO(0) => \count0__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pntr(7 downto 4),
      O(3) => \count0__24_carry__0_n_4\,
      O(2) => \count0__24_carry__0_n_5\,
      O(1) => \count0__24_carry__0_n_6\,
      O(0) => \count0__24_carry__0_n_7\,
      S(3) => c0_n_12,
      S(2) => c0_n_13,
      S(1) => c0_n_14,
      S(0) => c0_n_15
    );
\count0__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__24_carry__0_n_0\,
      CO(3 downto 0) => \NLW_count0__24_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count0__24_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count0__24_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => c0_n_16
    );
\count0__49_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count0__49_carry_n_0\,
      CO(2) => \count0__49_carry_n_1\,
      CO(1) => \count0__49_carry_n_2\,
      CO(0) => \count0__49_carry_n_3\,
      CYINIT => pntr_plus1(0),
      DI(3 downto 1) => pntr_plus1(3 downto 1),
      DI(0) => c1_n_17,
      O(3) => \count0__49_carry_n_4\,
      O(2) => \count0__49_carry_n_5\,
      O(1) => \count0__49_carry_n_6\,
      O(0) => \count0__49_carry_n_7\,
      S(3) => c1_n_0,
      S(2) => c1_n_1,
      S(1) => c1_n_2,
      S(0) => c1_n_3
    );
\count0__49_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__49_carry_n_0\,
      CO(3) => \count0__49_carry__0_n_0\,
      CO(2) => \count0__49_carry__0_n_1\,
      CO(1) => \count0__49_carry__0_n_2\,
      CO(0) => \count0__49_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pntr_plus1(7 downto 4),
      O(3) => \count0__49_carry__0_n_4\,
      O(2) => \count0__49_carry__0_n_5\,
      O(1) => \count0__49_carry__0_n_6\,
      O(0) => \count0__49_carry__0_n_7\,
      S(3) => c1_n_12,
      S(2) => c1_n_13,
      S(1) => c1_n_14,
      S(0) => c1_n_15
    );
\count0__49_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__49_carry__0_n_0\,
      CO(3 downto 0) => \NLW_count0__49_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count0__49_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count0__49_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => c1_n_16
    );
\count0__74_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count0__74_carry_n_0\,
      CO(2) => \count0__74_carry_n_1\,
      CO(1) => \count0__74_carry_n_2\,
      CO(0) => \count0__74_carry_n_3\,
      CYINIT => pntr_plus2(0),
      DI(3 downto 1) => pntr_plus2(3 downto 1),
      DI(0) => c2_n_17,
      O(3) => \count0__74_carry_n_4\,
      O(2) => \count0__74_carry_n_5\,
      O(1) => \count0__74_carry_n_6\,
      O(0) => \count0__74_carry_n_7\,
      S(3) => c2_n_0,
      S(2) => c2_n_1,
      S(1) => c2_n_2,
      S(0) => c2_n_3
    );
\count0__74_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__74_carry_n_0\,
      CO(3) => \count0__74_carry__0_n_0\,
      CO(2) => \count0__74_carry__0_n_1\,
      CO(1) => \count0__74_carry__0_n_2\,
      CO(0) => \count0__74_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pntr_plus2(7 downto 4),
      O(3) => \count0__74_carry__0_n_4\,
      O(2) => \count0__74_carry__0_n_5\,
      O(1) => \count0__74_carry__0_n_6\,
      O(0) => \count0__74_carry__0_n_7\,
      S(3) => c2_n_12,
      S(2) => c2_n_13,
      S(1) => c2_n_14,
      S(0) => c2_n_15
    );
\count0__74_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0__74_carry__0_n_0\,
      CO(3 downto 0) => \NLW_count0__74_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count0__74_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count0__74_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => c2_n_16
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \^count_reg[0]_rep\,
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => crd_n_19,
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => crd_n_0,
      S(2) => crd_n_1,
      S(1) => crd_n_2,
      S(0) => crd_n_3
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => crd_n_14,
      S(2) => crd_n_15,
      S(1) => crd_n_16,
      S(0) => crd_n_17
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_count0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count0_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => crd_n_18
    );
crd: entity work.fifo_us_updn_cntr
     port map (
      D(8) => \count0_carry__1_n_7\,
      D(7) => \count0_carry__0_n_4\,
      D(6) => \count0_carry__0_n_5\,
      D(5) => \count0_carry__0_n_6\,
      D(4) => \count0_carry__0_n_7\,
      D(3) => count0_carry_n_4,
      D(2) => count0_carry_n_5,
      D(1) => count0_carry_n_6,
      D(0) => count0_carry_n_7,
      DI(0) => crd_n_19,
      Q(9 downto 0) => \^q\(9 downto 0),
      S(3) => crd_n_0,
      S(2) => crd_n_1,
      S(1) => crd_n_2,
      S(0) => crd_n_3,
      clk => clk,
      \count_reg[0]_rep_0\ => \^count_reg[0]_rep\,
      \count_reg[0]_rep__0_0\ => \count_reg[0]_rep__0\,
      \count_reg[0]_rep__1_0\ => \count_reg[0]_rep__1\,
      \count_reg[0]_rep__2_0\ => \count_reg[0]_rep__2\,
      \count_reg[0]_rep__2_1\ => ram_empty_fb_i_reg,
      \count_reg[3]_rep_0\ => \count_reg[3]_rep\,
      \count_reg[3]_rep__0_0\ => \count_reg[3]_rep__0\,
      \count_reg[3]_rep__1_0\ => \count_reg[3]_rep__1\,
      \count_reg[3]_rep__2_0\ => \count_reg[3]_rep__2\,
      \count_reg[3]_rep__3_0\ => \count_reg[3]_rep__3\,
      \count_reg[3]_rep__4_0\ => \count_reg[3]_rep__4\,
      \count_reg[3]_rep__5_0\ => \count_reg[3]_rep__5\,
      \count_reg[7]_0\(3) => crd_n_14,
      \count_reg[7]_0\(2) => crd_n_15,
      \count_reg[7]_0\(1) => crd_n_16,
      \count_reg[7]_0\(0) => crd_n_17,
      \count_reg[8]_0\(0) => crd_n_18,
      \out\ => ram_empty_fb,
      rd_en => rd_en,
      sel => sel
    );
\gpf.wrpf\: entity work.fifo_us_wr_pf_sshft
     port map (
      D(9 downto 0) => pntr_d1(9 downto 0),
      clk => clk,
      \gpf3.prog_full_i_reg_0\ => \gaf.gaf1.ram_afull_fb_reg\,
      \gpf3.prog_full_i_reg_1\ => ram_afull_fb,
      \greg.ram_rd_en_i_reg_0\ => ram_empty_fb_i_reg,
      \greg.ram_rd_en_i_reg_1\ => \^p_11_out\,
      \greg.ram_wr_en_i_reg_0\ => \^p_10_out\,
      \out\ => \out\,
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0)
    );
rsts: entity work.fifo_us_rd_status_flags_sshft
     port map (
      clk => clk,
      empty => empty,
      \gmux.gm[1].gms.ms\ => c0_n_17,
      \gmux.gm[2].gms.ms\ => c0_n_39,
      \gmux.gm[3].gms.ms\ => c0_n_40,
      \gmux.gm[4].gms.ms\ => c0_n_41,
      \out\ => ram_empty_fb,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      ram_empty_i_reg_0 => c0_n_42,
      ram_empty_i_reg_1 => \^p_10_out\,
      rd_en => rd_en,
      rd_en_0 => \^p_11_out\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
wsts: entity work.fifo_us_wr_status_flags_sshft
     port map (
      clk => clk,
      \count_reg[9]\ => ram_empty_fb,
      full => full,
      \gaf.gaf1.ram_afull_fb_reg_0\ => \out\,
      \gaf.gaf1.ram_afull_fb_reg_1\ => \^p_11_out\,
      \gaf.gaf1.ram_afull_fb_reg_2\ => \gaf.gaf1.ram_afull_fb_reg\,
      \gmux.gm[1].gms.ms\ => c0_n_34,
      \gmux.gm[2].gms.ms\ => c0_n_35,
      \gmux.gm[3].gms.ms\ => c0_n_36,
      \gmux.gm[4].gms.ms\ => c0_n_37,
      \out\ => ram_afull_fb,
      \p_7_out__0\ => \p_7_out__0\,
      ram_full_i_reg_0 => c0_n_38,
      rd_en => rd_en,
      sel => sel,
      v1_reg(4 downto 0) => v1_reg_0(4 downto 0),
      v1_reg_0(4 downto 0) => \gaf.c2/v1_reg\(4 downto 0),
      wr_en => wr_en,
      wr_en_0 => \^p_10_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_10_out : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gram.gsms[0].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[0].gv4.srl16_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[1].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[2].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[3].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[4].gv4.srl16_0\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[5].gv4.srl16\ : in STD_LOGIC;
    \gram.gsms[6].gv4.srl16_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_memory : entity is "memory";
end fifo_us_memory;

architecture STRUCTURE of fifo_us_memory is
begin
\gsm.sm\: entity work.fifo_us_shft_ram
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      Q(9 downto 0) => Q(9 downto 0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gram.gsms[0].gv4.srl16\ => \gram.gsms[0].gv4.srl16\,
      \gram.gsms[0].gv4.srl16_0\ => \gram.gsms[0].gv4.srl16_0\,
      \gram.gsms[1].gv4.srl16\ => \gram.gsms[1].gv4.srl16\,
      \gram.gsms[2].gv4.srl16\ => \gram.gsms[2].gv4.srl16\,
      \gram.gsms[2].gv4.srl16_0\ => \gram.gsms[2].gv4.srl16_0\,
      \gram.gsms[3].gv4.srl16\ => \gram.gsms[3].gv4.srl16\,
      \gram.gsms[4].gv4.srl16\ => \gram.gsms[4].gv4.srl16\,
      \gram.gsms[4].gv4.srl16_0\ => \gram.gsms[4].gv4.srl16_0\,
      \gram.gsms[5].gv4.srl16\ => \gram.gsms[5].gv4.srl16\,
      \gram.gsms[6].gv4.srl16\ => \gram.gsms[6].gv4.srl16\,
      \gram.gsms[6].gv4.srl16_0\ => \gram.gsms[6].gv4.srl16_0\,
      p_10_out => p_10_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_fifo_generator_ramfifo is
  port (
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end fifo_us_fifo_generator_ramfifo;

architecture STRUCTURE of fifo_us_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gl1.lsshft_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_21\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_22\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_23\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_24\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_25\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl1.lsshft_n_4\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
\gntv_or_sync_fifo.gl1.lsshft\: entity work.fifo_us_logic_sshft
     port map (
      Q(9 downto 4) => sel0(5 downto 0),
      Q(3 downto 0) => p_12_out(3 downto 0),
      clk => clk,
      \count_reg[0]_rep\ => \gntv_or_sync_fifo.gl1.lsshft_n_4\,
      \count_reg[0]_rep__0\ => \gntv_or_sync_fifo.gl1.lsshft_n_23\,
      \count_reg[0]_rep__1\ => \gntv_or_sync_fifo.gl1.lsshft_n_24\,
      \count_reg[0]_rep__2\ => \gntv_or_sync_fifo.gl1.lsshft_n_25\,
      \count_reg[3]_rep\ => \gntv_or_sync_fifo.gl1.lsshft_n_16\,
      \count_reg[3]_rep__0\ => \gntv_or_sync_fifo.gl1.lsshft_n_17\,
      \count_reg[3]_rep__1\ => \gntv_or_sync_fifo.gl1.lsshft_n_18\,
      \count_reg[3]_rep__2\ => \gntv_or_sync_fifo.gl1.lsshft_n_19\,
      \count_reg[3]_rep__3\ => \gntv_or_sync_fifo.gl1.lsshft_n_20\,
      \count_reg[3]_rep__4\ => \gntv_or_sync_fifo.gl1.lsshft_n_21\,
      \count_reg[3]_rep__5\ => \gntv_or_sync_fifo.gl1.lsshft_n_22\,
      empty => empty,
      full => full,
      \gaf.gaf1.ram_afull_fb_reg\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      p_10_out => p_10_out,
      p_11_out => p_11_out,
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0),
      ram_empty_fb_i_reg => rstblk_n_3,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.fifo_us_memory
     port map (
      AR(0) => rstblk_n_3,
      E(0) => p_11_out,
      Q(9 downto 4) => sel0(5 downto 0),
      Q(3 downto 0) => p_12_out(3 downto 0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gram.gsms[0].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_4\,
      \gram.gsms[0].gv4.srl16_0\ => \gntv_or_sync_fifo.gl1.lsshft_n_22\,
      \gram.gsms[1].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_21\,
      \gram.gsms[2].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_23\,
      \gram.gsms[2].gv4.srl16_0\ => \gntv_or_sync_fifo.gl1.lsshft_n_20\,
      \gram.gsms[3].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_19\,
      \gram.gsms[4].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_24\,
      \gram.gsms[4].gv4.srl16_0\ => \gntv_or_sync_fifo.gl1.lsshft_n_18\,
      \gram.gsms[5].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_17\,
      \gram.gsms[6].gv4.srl16\ => \gntv_or_sync_fifo.gl1.lsshft_n_25\,
      \gram.gsms[6].gv4.srl16_0\ => \gntv_or_sync_fifo.gl1.lsshft_n_16\,
      p_10_out => p_10_out
    );
rstblk: entity work.fifo_us_reset_blk_ramfifo
     port map (
      AR(0) => rstblk_n_3,
      clk => clk,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      rst => rst,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_fifo_generator_top is
  port (
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_fifo_generator_top : entity is "fifo_generator_top";
end fifo_us_fifo_generator_top;

architecture STRUCTURE of fifo_us_fifo_generator_top is
begin
\grf.rf\: entity work.fifo_us_fifo_generator_ramfifo
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0),
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_fifo_generator_v13_2_3_synth is
  port (
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_fifo_generator_v13_2_3_synth : entity is "fifo_generator_v13_2_3_synth";
end fifo_us_fifo_generator_v13_2_3_synth;

architecture STRUCTURE of fifo_us_fifo_generator_v13_2_3_synth is
begin
\gconvfifo.rf\: entity work.fifo_us_fifo_generator_top
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0),
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us_fifo_generator_v13_2_3 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_us_fifo_generator_v13_2_3 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_us_fifo_generator_v13_2_3 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_us_fifo_generator_v13_2_3 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 3;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_us_fifo_generator_v13_2_3 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_us_fifo_generator_v13_2_3 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 3;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_us_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_us_fifo_generator_v13_2_3 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_us_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_us_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_us_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_us_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_us_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_us_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_us_fifo_generator_v13_2_3 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_us_fifo_generator_v13_2_3 : entity is "fifo_generator_v13_2_3";
end fifo_us_fifo_generator_v13_2_3;

architecture STRUCTURE of fifo_us_fifo_generator_v13_2_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^wr_rst_busy\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \^wr_rst_busy\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \^wr_rst_busy\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.fifo_us_fifo_generator_v13_2_3_synth
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0),
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => \^wr_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_us is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo_us : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_us : entity is "fifo_us,fifo_generator_v13_2_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_us : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_us : entity is "fifo_generator_v13_2_3,Vivado 2018.3";
end fifo_us;

architecture STRUCTURE of fifo_us is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 3;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 3;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 core_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.fifo_us_fifo_generator_v13_2_3
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(9 downto 0) => NLW_U0_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => prog_full,
      prog_full_thresh(9 downto 0) => prog_full_thresh(9 downto 0),
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
