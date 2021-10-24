----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 08:54:39 AM
-- Design Name: 
-- Module Name: reg_12b - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_ff_12 is
generic(Bus_Width: integer := 12);
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (Bus_Width - 1 downto 0);
           Q : out  STD_LOGIC_VECTOR (Bus_Width - 1 downto 0));
end d_ff_12 ;

architecture Behavioral of d_ff_12  is

begin
p1:process(CLK,RESET,EN)

begin
	if RESET = '1' then Q <= (others => '0');
	elsif (CLK' event and clk = '1') then
	if (EN = '1') then Q <= D;
	end if;
end if;	
end process;

end Behavioral;