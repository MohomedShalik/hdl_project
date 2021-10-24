----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:34:33 AM
-- Design Name: 
-- Module Name: test_fifo - Behavioral
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


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_fifo IS
END tb_fifo;
 
ARCHITECTURE behavior OF tb_fifo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fifo_us
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         wr_en : IN  std_logic;
         rd_en : IN  std_logic;
         prog_full_thresh : IN  std_logic_vector(9 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         full : OUT  std_logic;
         empty : OUT  std_logic;
         prog_full : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := (others => '0');
   signal wr_en : std_logic := '0';
   signal rd_en : std_logic := '0';
   signal prog_full_thresh : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
   signal full : std_logic;
   signal empty : std_logic;
   signal prog_full : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fifo_us PORT MAP (
          clk => clk,
          rst => rst,
          din => din,
          wr_en => wr_en,
          rd_en => rd_en,
          prog_full_thresh => prog_full_thresh,
          dout => dout,
          full => full,
          empty => empty,
          prog_full => prog_full
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		prog_full_thresh <= "0000000011";
		rst <= '1';
      wait for 100 ns;	
	   rst <= '0';
		
		
		
      wait for clk_period*10;
		wr_en <= '1';
		rd_en <= '0';
		din <= "00000000";	
		
		wait for clk_period;
		din <= "00000001";
		
		wait for clk_period;
		din <= "00000011";
		
		wait for clk_period;
		din <= "00000111";
		
		wait for clk_period*10;
		din <= "00001111";
		
		wait for clk_period*10;
		din <= "00011111";
	
		
		wait for clk_period*10;
		wr_en <= '0';
		rd_en <= '1';
	

      wait;
   end process;

END;

