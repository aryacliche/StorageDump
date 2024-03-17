library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity clock_divider is
	port (clk_out : out std_logic;
			clk_50, resetn : in std_logic);
end entity clock_divider;

architecture bhv of clock_divider is
	signal count:integer:=1;
	signal output:std_logic:='1';
	begin
		only_process: process(clk_50)
		begin
			if(resetn='1') then
				output<='0';
				count<=1;
			else
				if(clk_50='1' and clk_50' event) then
					if(count=50000000) then
					output<= not output;
					count<=1;
					else 
					count<= count+1;
					end if;
				end if;
			end if;
			clk_out<=output;
			
		end process;
end architecture bhv;