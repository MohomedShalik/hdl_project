----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:15:36 AM
-- Design Name: 
-- Module Name: cachememdemo - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity tb_buffer is
       
end;

architecture arch_tb_buffer of tb_buffer is

	COMPONENT Pixel_Buffer
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;
		rfd : in std_logic;
		d_in : IN std_logic_vector(7 downto 0);          
		pixel1 : OUT std_logic_vector(7 downto 0);
		pixel2 : OUT std_logic_vector(7 downto 0);
		pixel3 : OUT std_logic_vector(7 downto 0);
		pixel4 : OUT std_logic_vector(7 downto 0);
		pixel5 : OUT std_logic_vector(7 downto 0);
		pixel6 : OUT std_logic_vector(7 downto 0);
		pixel7 : OUT std_logic_vector(7 downto 0);
		pixel8 : OUT std_logic_vector(7 downto 0);
		pixel9 : OUT std_logic_vector(7 downto 0);
		d_out_dammy : OUT std_logic_vector(7 downto 0);
		sig1_dummy : OUT std_logic_vector(7 downto 0);
		sig2_dummy : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	

  signal CLK, RESET, en : std_logic;
  signal prog_full_thresh : std_logic_vector(9 downto 0) := "00"&X"7C";
  signal d_in, d_out : std_logic_vector(7 downto 0);
  --signal pixel_counter: std_logic_vector(8 downto 0);
  signal read_flag, finish : std_logic := '1';
  signal data_ready : std_logic := '1';
  signal writing : std_logic := '1';
  
	signal p0 : std_logic_vector(7 downto 0);
	signal p1 : std_logic_vector(7 downto 0);
	signal p2 : std_logic_vector(7 downto 0);
	signal p3 : std_logic_vector(7 downto 0);
	signal p4 : std_logic_vector(7 downto 0);
	signal p5 : std_logic_vector(7 downto 0);
	signal p6 : std_logic_vector(7 downto 0);
	signal p7 : std_logic_vector(7 downto 0);
	signal p8 : std_logic_vector(7 downto 0);
  
  
  
  
  
	    
begin
 process
  FILE vectors : text;
  
  variable Iline : line;
  variable I1_var, I2_var :std_logic_vector (7 downto 0);
 -- variable O1_var :std_logic_vector (7 downto 0);
--    /home/halaldeen-ms/sem_projects/gaussian_filter/gaussian_filter.srcs/sim_1/new/Lena
    begin
	 read_flag <= '0';
	 RESET <= '1';
	 en <= '0';
	 
	 wait for 100 ns;
	 RESET <= '0';
	 en <= '1';
    file_open (vectors,"/home/halaldeen-ms/Dev/hdl_project/data_prep/apple.dat", read_mode);
	 
    
    while not endfile(vectors) loop
      readline (vectors,Iline);
      read (Iline,I1_var);
		
		d_in <= I1_var;
		read_flag <= '1';
		
		CLK <= '0';
      wait for 10 ns;
      CLK <= '1';
            
      wait for 10 ns;
		

    end loop;
    file_close (vectors);
	 
	 read_flag <= '0';
	 wait for 100 ns;

    wait;

 end process;
 
 process

file results : text;
variable OLine : line;
    
 begin
 
		file_open (results,"/home/halaldeen-ms/Dev/hdl_project/data_prep/apple_filtered.dat", write_mode);
		wait until read_flag= '1';	
		finish <= '0';
		--WAIT FOR 20 ns;		
		while read_flag='1' loop
--			if data_ready = '1' and CLK = '1' then
			if CLK = '1' then
				--wait for 20 ns;
				
				writing <= '1';
				write (Oline, d_out, right, 2);
				writeline (results, Oline);
				--wait for 20 ns;
				
			end if;
			wait for 10 ns;
			writing <= '0';
		end loop;
		file_close (results);
		finish <= '1';
      wait;
 end process;
 
--d_out <= d_in; 
Inst_Pixel_Buffer: Pixel_Buffer PORT MAP(
		reset => RESET,
		clk => CLK,
		rfd =>data_ready,
		d_in => d_in,
		pixel1 => p0,
		pixel2 => p1,
		pixel3 => p2,
		pixel4 => p3,
		pixel5 => p4,
		pixel6 => p5,
		pixel7 => p6,
		pixel8 => p7,
		pixel9 => p8,
		d_out_dammy => d_out,
		sig1_dummy => open,
		sig2_dummy => open
	);

  
end arch_tb_buffer;
