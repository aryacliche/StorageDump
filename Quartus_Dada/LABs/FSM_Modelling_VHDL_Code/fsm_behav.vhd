library ieee;
use ieee.std_logic_1164.all;

entity  fsm_behav is
port(clock   : in std_logic; 
      reset: in std_logic;
      A  : in std_logic;  

      y: out std_logic  );
		end fsm_behav;

architecture behav  of fsm_behav is
--type declaration synthesis tool will assign state encoding
type statetype is (init,s0,s01,s011);
signal ps_state,nx_state : statetype;  


begin 

reg_process: process(clock,reset)
begin
if(reset='1')then 
ps_state<=init;
elsif(clock'event and clock='1')then
ps_state<=nx_state;
end if;
end process reg_process;


     
    next_state_output_logic: process (ps_state, A)
     begin 
      case ps_state is 
      
							when init=>
							if A='0'then 
								nx_state<=s0;
							else 
								nx_state<=init;
							end if;

							when s0=>
							if A='1'then 
								nx_state<=s01;
							else 
								nx_state<=s0;
							end if;

							when s01=>
							if A='1'then 
								nx_state<=s011;
							else 
								nx_state<=s0;
							end if;

							when s011=>
							if A='0'then 
								nx_state<=s0;
							else 
								nx_state<=init;
							end if;
							
      end case; 
      end process next_state_output_logic;
		
		Output_process: process(ps_state)
			begin
					
					case ps_state is
								
								when init =>
													y<='0';
								
								when s0 =>
													y<='0';
								
								when s01 =>
													y<='0';
								
								when s011 =>
													y<='1';
						end case;
		end process Output_process;
		

end behav;
