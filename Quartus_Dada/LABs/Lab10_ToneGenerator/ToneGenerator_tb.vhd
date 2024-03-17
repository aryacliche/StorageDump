LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity clock_divider_tb is
end entity clock_divider_tb;

architecture bhv of clock_divider_tb is
	component tone_generator is
		port (clk_out, led_sa, led_re, led_ga, led_ma, led_pa, led_dha, led_ni, led_saa : out std_logic;
				clk_50, sa, re, ga, ma, pa, dha, ni, saa : in std_logic);
	end component tone_generator;

signal resetn : std_logic := '0';
signal clk_50, clk_out : std_logic := '1';
constant clk_period : time := 20 ns;
begin
	
	dut_instance: clock_divider port map(clk_out, clk_50, resetn);
	clk_50 <= not clk_50 after clk_period/2 ;
	sa<= '1';
	re<=
end bhv;