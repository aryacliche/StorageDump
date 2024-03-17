LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity clock_divider_tb is
	port(clk_out : out std_logic);
end entity clock_divider_tb;

architecture bhv of clock_divider_tb is
component clk_div is
port (clk_out : out std_logic;
		clk_50, resetn : in std_logic);
end component clk_div;

signal resetn : std_logic := '0';
signal clk_50 : std_logic := '1';
constant clk_period : time := 20 ns;
begin
	
	dut_instance: clk_div port map(clk_out, clk_50, resetn);
	clk_50 <= not clk_50 after clk_period/2 ;
	resetn <= '0';
end bhv;
	

