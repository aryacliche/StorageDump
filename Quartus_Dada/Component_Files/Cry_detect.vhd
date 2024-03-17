library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cry_detection is
	port( inp:in std_logic_vector(4 downto 0);
			reset,clock:in std_logic;
			outp: out std_logic);
end cry_detection;

architecture bhv of cry_detection is
---------------Define state type here-----------------------------
	type state is (rst,s1,s2,s3); -- Fill other states here
---------------Define signals of state type-----------------------
	signal y_present,y_next: state:=rst;
	begin
		clock_proc:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset = '1') then
					y_present<= rst;
					--Here Reset is synchronous
					-- Fill the code here	
				else
					-- Fill the code here
					y_present <= y_next;
				end if;
			end if;
		end process;

		state_transition_proc:process(inp,y_present)
		begin
			case y_present is
				when rst=>
					if(unsigned(inp)=3) then --c has been detected
						y_next<= s1;
					end if;
				when s1=>
					if(unsigned(inp)=18) then --r has been detected
						y_next<= s2;
					end if;
				when s2=>
					if(unsigned(inp)=25) then --y has been detected
						y_next<= s3;
					end if;
				when s3=>
					y_next <= s3;
			end case;
			end process;

		output_proc:process(y_present, inp) ------- output process after this which will give
		begin
			case y_present is
				when rst=>
					outp<='0';
				when s1=>
					outp<='0';
				when s2=>
					if(unsigned(inp)=25) then
						outp<='1';
					else
						outp<='0';
					end if;
				when s3=>
					outp<='0';
			end case;
		end process;
end bhv;