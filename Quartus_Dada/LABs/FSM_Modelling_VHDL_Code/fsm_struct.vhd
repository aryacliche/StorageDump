library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity  fsm_struct is
 port(clock   : in std_logic; 
      reset: in std_logic;
      A  : in std_logic;  

      y: out std_logic  
      );
end fsm_struct;


architecture struct of fsm_struct is

component  mydff is 
port ( clk,rst: in std_logic;
		d: in std_logic;
		q: out std_logic);
end component;

signal d1,d0,q1,q0:std_logic;-- d1,d0 are binary encoded form of Next State(PS) and q1,q0 are the encoded are binary encoded form of Present State(NS) 

signal xor_out1: std_logic;

signal A_bar: std_logic;
signal q0_bar: std_logic;
signal and_out0: std_logic;


begin

-----------------------------------------D FF--------------------------------------
ff1:mydff port map(Clock,reset,d1,q1);
ff2:mydff port map(Clock,reset,d0,q0);
-----------------------------------------------------------------------------------

------------------------------------- DATA FLOW MODELING---------------------------
--d1<= (q1 xor q0) and A;
--d0<= (not A) or (q1 and (not q0));
--y<= q1 and q0;
-----------------------------------------------------------------------------------

-------------------------------------- STRUCTURAL MODELING-------------------------
xor_gate: xor_2 port map(A=>q1,B=>q0,Y=>xor_out1);
and_gate1: and_2 port map(A=>xor_out1,B=>A,Y=>d1);

not_gate0: INVERTER port map(A=>A,Y=>A_bar);
not_gate1: INVERTER port map(A=>q0,Y=>q0_bar);
and_gate0:  and_2 port map(A=>q1,B=>q0_bar,Y=>and_out0);
or_gate0: or_2 port map(A=>A_bar,B=>and_out0,Y=>d0);

output_signal: and_2 port map(A=>q1,B=>q0,Y=>y);

-----------------------------------------------------------------------------------

end architecture;


