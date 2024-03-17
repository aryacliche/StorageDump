library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_div is
    port (clk_out : out std_logic;
		clk_50, resetn : in std_logic);
end entity;

architecture bhv of clk_div is
	signal n : integer := 1;
	signal parity : std_logic := '1';
begin

	clock_proc:process(clk_50,resetn)
	begin
		if(clk_50='1' and clk_50' event) then
			if(resetn = '1') then
				n <= 1;
				parity <= '1';
			else
				if(n = 50000000) then
					n <= 1;
					parity <= not parity;
				else
					n <= n + 1;
				end if;
			end if;
		end if;
		
		clk_out <= parity;
	end process;
	
end bhv;