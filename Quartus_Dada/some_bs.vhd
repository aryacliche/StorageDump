library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity some_bs is
	port(clk: in std_logic;
	output: out unsigned(7 downto 0));
end entity;

architecture ek_tarfa of some_bs is
	signal tail: unsigned(7 downto 0):= (others=>'0');
begin
	output <= tail;
	process(clk)
	begin
		tail <= tail + 1;
	end process;
end architecture;