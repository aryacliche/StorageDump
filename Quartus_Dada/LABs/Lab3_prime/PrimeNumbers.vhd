library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity primer is
	port(a, b, c, d: in std_logic;
		output: out std_logic);
end entity primer;

architecture trivial of primer is
	for all: AND_2
		use entity work.AND_2(equations);
	
	for all: OR_2
		use entity work.OR_2(equations);
	
	for all: INVERTER
		use entity work.INVERTER(equations);
	
	
	signal s1, s2, s3, s4, s5, s6, s7, s8, s9: std_logic;
	
	begin
		
		inv1: component INVERTER
			port map(a, s1);
			
		inv2: component INVERTER
			port map(b, s2);
		
		inv3: component INVERTER
			port map(c, s3);
			
		or1: component OR_2
			port map(s1, s3, s4);
		
		or2: component OR_2
			port map(d, s1, s5);
		
		or3: component OR_2
			port map(s8, s9, output);
			
		and1: component AND_2
			port map(b, d, s6);
		
		and2: component AND_2
			port map(s4, s6, s8);
		
		and3: component AND_2
			port map(c, s2, s7);
		
		and4: component AND_2
			port map(s7, s5, s9);
		
end architecture trivial;