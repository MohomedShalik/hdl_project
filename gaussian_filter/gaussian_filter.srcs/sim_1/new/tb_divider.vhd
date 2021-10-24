----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 02:31:42 PM
-- Design Name: 
-- Module Name: tb_divider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_divider is
--  Port ( );
end tb_divider;

architecture Behavioral of tb_divider is


 COMPONENT divider
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_divisor_tvalid : IN STD_LOGIC;
    s_axis_divisor_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_dividend_tvalid : IN STD_LOGIC;
    s_axis_dividend_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
    );
   END COMPONENT;

signal clk : std_logic:= '0';
signal div_vlid , divid_valid , out_val : std_logic;
signal div_data : std_logic_vector(7 downto 0);
signal divid_data :std_logic_vector(15 downto 0);
signal dout_data_quo  : std_logic_vector(23 downto 8);
signal dout_data_rem  : std_logic_vector(7 downto 0);






begin 
   inst_divider : divider PORT MAP(
            aclk => clk,
			s_axis_divisor_tvalid => '1',
			s_axis_divisor_tdata => "00000101",
			s_axis_dividend_tvalid => '1',                   
			s_axis_dividend_tdata => "0000000000001001",
			m_axis_dout_tvalid => out_val,
    		m_axis_dout_tdata(23 downto 8) =>  dout_data_quo,
    		m_axis_dout_tdata(7 downto 0) => dout_data_rem
    		
    		);
stimulus:
process begin
    
        
        clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
        
--        divid_data <= "0000000000001010";    		
end process;

        


end Behavioral;
