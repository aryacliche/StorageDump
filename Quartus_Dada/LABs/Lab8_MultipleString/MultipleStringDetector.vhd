library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity word_detection is
	port(inp:in std_logic_vector(4 downto 0);
		reset,clock:in std_logic; outp: out std_logic);
end word_detection;

architecture bhv of word_detection is
	---------------Define state type here-----------------------------
	type state is (rst,s1,s2, s3, s4); -- Fill other states here
	---------------Define signals of state type-----------------------
	signal y_present1,y_next1, y_present2,y_next2, y_present3,y_next3: state:=rst;
	signal outp1, outp2, outp3: std_logic:='0';
	
	begin
		clock_proc:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset='1') then
					y_present1<=rst;
					y_present2<=rst;
					y_present3<=rst;
					else
					y_present1<=y_next1;
					y_present2<=y_next2;
					y_present3<=y_next3;
				end if;
			end if;
		end process;
		
		state_transition_proc_run:process(inp,y_present1)
		begin
			case y_present1 is
				when rst=>
					if(unsigned(inp)=18) then --r 
						y_next1<= s1;
						outp1<='0';
					else
						y_next1<=rst;
						outp1<='0';
					end if;
					
				when s1=>
					if(unsigned(inp)=21) then --u
						y_next1<=s2;
						outp1<='0';
					else
						y_next1<=s1;
						outp1<='0';
					end if;
					
				when s2=>
					if(unsigned(inp)=14) then--n
						y_next1<=rst;
						outp1<='1';
					else
						y_next1<=s2;
						outp1<='0';
					end if;
					
				when s3=>
					y_next1<=rst;
				
				when s4=>
					y_next1<=rst;
			end case;
		end process state_transition_proc_run;
		
		
		state_transition_proc_cry:process(inp,y_present2)
		begin
			case y_present2 is
				when rst=>
					if(unsigned(inp)=3) then --c
						y_next2<= s1;
						outp2<='0';
					else
						y_next2<=rst;
						outp2<='0';
					end if;
					
				when s1=>
					if(unsigned(inp)=18) then--r
						y_next2<=s2;
						outp2<='0';
					else
						y_next2<=s1;
						outp2<='0';
					end if;
					
				when s2=>
					if(unsigned(inp)=25) then--y
						y_next2<=rst;
						outp2<='1';
					else
						y_next2<=s2;
						outp2<='0';
					end if;
					
				when s3=>
					y_next2<=rst;
				
				when s4=>
					y_next2<=rst;
			end case;
		end process state_transition_proc_cry;
		
		state_transition_proc_broom:process(inp,y_present3)
		begin
			case y_present3 is
				when rst=>
					if(unsigned(inp)=2) then --b
						y_next3<= s1;
						outp3<='0';
					else
						y_next3<=rst;
						outp3<='0';
					end if;
					
				when s1=>
					if(unsigned(inp)=18) then--r
						y_next3<=s2;
						outp3<='0';
					else
						y_next3<=s1;
						outp3<='0';
					end if;
					
				when s2=>
					if(unsigned(inp)=15) then--o
						y_next3<=s3;
						outp3<='0';
					else
						y_next3<=s2;
						outp3<='0';
					end if;
					
				when s3=>
					if(unsigned(inp)=15) then--o
						y_next3<=s4;
						outp3<='0';
					else
						y_next3<=s3;
						outp3<='0';
					end if;
				
				when s4=>
					if(unsigned(inp)=13) then--m
						y_next3<=rst;
						outp3<='1';
					else
						y_next3<=s4;
						outp3<='0';
					end if;
			end case;
		end process state_transition_proc_broom;
				
		output_proc:process(y_present1, y_present2, y_present3, inp, outp1, outp2, outp3) ------- output process after this which will give
		-------the output based on the present state and input (Mealy machine)
		begin
			if(outp1='1' or outp2='1' or outp3='1') then
				outp<='1';
			else
				outp<='0';
			end if;
		end process output_proc;
		
end architecture bhv;