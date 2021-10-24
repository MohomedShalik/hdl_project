----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 12:20:33 PM
-- Design Name: 
-- Module Name: read_lena - Behavioral
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

entity tb_filter is
       
end;

architecture arch_tb_filter of tb_filter is

	COMPONENT Pixel_Buffer
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;
		d_in : IN std_logic_vector(7 downto 0);
		neighborhood_ready : out std_logic;
		rfd : IN std_logic;
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

	
	COMPONENT filter
	PORT(
		pixel0 : IN std_logic_vector(7 downto 0);
		pixel1 : IN std_logic_vector(7 downto 0);
		pixel2 : IN std_logic_vector(7 downto 0);
		pixel3 : IN std_logic_vector(7 downto 0);
		pixel4 : IN std_logic_vector(7 downto 0);
		pixel5 : IN std_logic_vector(7 downto 0);
		pixel6 : IN std_logic_vector(7 downto 0);
		pixel7 : IN std_logic_vector(7 downto 0);
		pixel8 : IN std_logic_vector(7 downto 0);
		d_out : out std_logic_vector(15 downto 0);
		data_ready: in std_logic;
		processed_data_ready: out std_logic;
		CLK : in std_logic
		);
	END COMPONENT;
	

  signal input_pixel: std_logic_vector (7 downto 0);
  signal output_pixel: std_logic_vector (15 downto 0);
  signal CLK,RESET,read_flag, EN, file_written: std_logic;
  signal neighborhood_ready : std_logic := '1';
  signal start_writing: std_logic := '1';
  
	signal p1 : std_logic_vector (7 downto 0);
	signal p2 : std_logic_vector (7 downto 0);
	signal p3 : std_logic_vector (7 downto 0);
	signal p4 : std_logic_vector (7 downto 0);
	signal p5 : std_logic_vector (7 downto 0);
	signal p6 : std_logic_vector (7 downto 0);
	signal p7 : std_logic_vector (7 downto 0);
	signal p8 : std_logic_vector (7 downto 0);
	signal p9 : std_logic_vector (7 downto 0);	
 
  
  
begin
process
  FILE vectors : text;
  file results : text;
  variable OLine : line;
  variable Iline : line;
  variable I1_var :std_logic_vector (7 downto 0);
  
	begin
	 read_flag <= '0';
	 RESET <= '1';
	 EN <= '0';
	 
	  
	 wait for 20 ns;
	 RESET <= '0';
	 EN <= '1';
	 
	 wait for 70 ns;
	 file_open (vectors,"/home/halaldeen-ms/Dev/hdl_project/data_prep/apple.dat", read_mode);
    
	 read_flag <= '1';
    while not endfile(vectors) loop
      readline (vectors,Iline);
      read (Iline,I1_var);     
      input_pixel <= I1_var;
      wait for 20 ns;	
    end loop;
	read_flag <= '0';
	 --wait for 100 ns;
    file_close (vectors);
	 
    wait;

 end process;
 
 process
 begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
 end process;     
 
 
-- 
 process
-- 
-- 
		file results : text;
		variable OLine : line;	
    begin
--	
		file_open (results,"/home/halaldeen-ms/Dev/hdl_project/data_prep/apple_filtered.dat", write_mode);
--		wait until start_writing = '1';
		 
		wait for 520 ns;
		
		file_written <= '0';
		
		while  read_flag = '1' and start_writing = '1' loop
		
--		while  start_writing = '1' loop
			 
			--file_written <= '1';
			
			write (Oline, output_pixel, right, 2);
			writeline (results, Oline);
			
			--end if;
			
			wait for 20 ns;
		end loop;
		
				
		file_close (results);
		file_written <= '1';
--    wait ;--for 100ns;
--
 end process;
 

Inst_Pixel_Buffer: Pixel_Buffer PORT MAP(
		reset => RESET,
		clk => CLK,
		d_in => input_pixel,
		neighborhood_ready => neighborhood_ready,
		rfd => read_flag,
		pixel1 => p1,
		pixel2 => p2,
		pixel3 => p3,
		pixel4 => p4,
		pixel5 => p5,
		pixel6 => p6,
		pixel7 => p7,
		pixel8 => p8,
		pixel9 => p9,
		d_out_dammy => open,
		sig1_dummy => open,
		sig2_dummy => open
		
		);
		
		Inst_filter: filter PORT MAP(
		pixel0 =>  p1 ,
		pixel1 =>  p2,
		pixel2 =>  p3,
		pixel3 =>  p4,
		pixel4 =>  p5,
		pixel5 =>  p6,
		pixel6 =>  p7,
		pixel7 =>  p8,
		pixel8 =>  p9,
		d_out => output_pixel,
		data_ready => neighborhood_ready,
		processed_data_ready => start_writing,
		CLK => CLK
	); 
end arch_tb_filter;

