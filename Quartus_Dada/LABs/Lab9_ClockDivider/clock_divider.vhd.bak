library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;

entity clock_divider is
	port (clk_out : out std_logic;
			clk_50, resetn : in std_logic);
end entity clock_divider;

architecture bhv of clock_divider is
	signal y_present, y_next:std_logic:='1';
	variable state:integer:=1;
	begin
		
		clock_proc:process(clk_50,resetn)
		begin
			if(clk_50='1' and clk_50' event) then
				if(resetn='1') then
					y_present<='1';
					else
					y_present<=y_next;
				end if;
			end if;
		end process;
		
		transition: process(clk_50, y_present)
		begin
			if(state<52084) then
				y_next<=y_present;
				state:=state+1;
			else
				y_next<=not y_present;
				state:=1;
			end if;
		end process;
		
		output_clk: process(y_present, clk_50)
		begin
			clk_out<=y_present;
		end process;
	
end architecture bhv;