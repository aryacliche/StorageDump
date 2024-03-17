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
-----------------------------------------------------8to3encoder below

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity eightencoder is
	port(a7,a6,a5,a4,a3,a2,a1,a0,e: in std_logic;
			y2, y1,y0: out std_logic);
end entity eightencoder;

architecture trivial of eightencoder is
	component Fourtotwoencoder is
		port(a,b,c,d,e: in std_logic;
			y1, y0: out std_logic);
	end component Fourtotwoencoder;
	
	for all: Fourtotwoencoder
		use entity work.Fourtotwoencoder(trivial);
	
	for all: OR_2
		use entity work.OR_2(equations);
		
	signal s1, s2, s3, s4, s5, s6: std_logic;
		
	begin
		smallencoder1: component fourtotwoencoder
			port map(s1, s2, s3, a7, e, y2, y1);
			
		smallencoder2: component fourtotwoencoder
			port map(s4, s5, a7, a7, e, y0, s6);
		
		or1: component OR_2
			port map(a7, a6, s1);
			
		or2: component OR_2
			port map(a5, a4, s2);
		
		or3: component OR_2
			port map(a3, a2, s3);
		
		or4: component OR_2
			port map(a7, a5, s4);
			
		or5: component OR_2
			port map(a3, a1, s5);
	
end architecture trivial;