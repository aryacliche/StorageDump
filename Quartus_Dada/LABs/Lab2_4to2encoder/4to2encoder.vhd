library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity Fourtotwoencoder is
	port(a,b,c,d,e: in std_logic;
		y1, y0: out std_logic);
end entity Fourtotwoencoder;

architecture trivial of Fourtotwoencoder is
		signal s1,s2: std_logic;
		
		for all: AND_2
			use entity work.AND_2(Equations);
		
		for all: OR_2
			use entity work.OR_2(Equations);	
			
	begin
		or1: component OR_2
			port map(a, b, s1);
		
		or2: component OR_2
			port map(a, c, s2);
		
		and1: component AND_2
			port map(s1, e, y1);
			
		and2: component AND_2
			port map(s2, e, y0);
		
end architecture trivial;