library ieee;
use ieee.std_logic_1164.all;

entity Serial_Adder is
	port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;

architecture BHV of Serial_Adder is
	type carry_state is (c0, c1);
	signal rising_edges:std_logic:='0';
	signal state, next_state: carry_state:=c0;
	begin
		clock_proc:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset='1') then
					state<=c0;
					--rising_edges<= not rising_edges;
					else
					state<=next_state;
					--rising_edges<= not rising_edges;
				end if;
			end if;
		end process;
		
		state_transition_proc_run:process(a, b, state, clock)
		begin
			if(reset='0') then
				case state is
					when c0=>
						if(a='0' and b='0') then
							next_state<= c0;
							s<='0';
						elsif(a='0' and b='1') then
							next_state<= c0;
							s<='1';
						elsif(a='1' and b='0') then
							next_state<= c0;
							s<='1';
						elsif(a='1' and b='1') then
							next_state<= c1;
							s<='0';
						end if;
						
					when c1=>
						if(a='0' and b='0') then
							next_state<= c0;
							s<='1';
						elsif(a='0' and b='1') then
							next_state<= c1;
							s<='0';
						elsif(a='1' and b='0') then
							next_state<= c1;
							s<='0';
						elsif (a='1' and b='1') then
							next_state<= c1;
							s<='1';
						end if;
				end case;
			elsif (reset='1') then
				s<='0';
				next_state<=c0;
			end if;
		end process state_transition_proc_run;
end BHV;