library ieee;
use ieee.std_logic_1164.all;
entity mydff is 
port ( clk,rst: in std_logic;
		d: in std_logic;
		q: out std_logic);
end entity;


architecture eq of mydff is
	begin

	process(d,clk,rst)
	begin                      -- Asynchronouse D Flip Flop
			if(rst = '1') then
				q<='0';
			elsif(rising_edge(clk)) then
				q<= d;
			end if;
	end process;
end architecture;


