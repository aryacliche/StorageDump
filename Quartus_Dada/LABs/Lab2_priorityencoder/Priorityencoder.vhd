library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity priorityencoder is
	port(a,b,c,d: in std_logic;
		y1, y0,v : out std_logic);
end entity priorityencoder;

architecture trivial of priorityencoder is
		signal s1, s2, s3, s4: std_logic;
		
		for all: inverter
			use entity work.inverter(Equations);
		
		for all: AND_2
			use entity work.AND_2(Equations);
		
		for all: OR_2
			use entity work.OR_2(Equations);
	begin
		or1: component OR_2
			port map(a, b, y1);
		
		or2: component OR_2
			port map(a, s2, y0);
		
		or3: component OR_2
			port map(a, b, s3);
		
		or4: component OR_2
			port map(c, d, s4);
		
		or5: component OR_2
			port map(s3, s4, v);
			
		not1: component inverter
			port map(b,s1);
		
		and1: component AND_2
			port map(s1, c, s2);
end architecture trivial;