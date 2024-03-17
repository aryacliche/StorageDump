library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity halfadder is
	port(a, b: in std_logic;
		s, cout: out std_logic);
end entity halfadder;

architecture trivial of halfadder is
	-- cout is going to a and b and sum would be a xor b
	
	for all: AND_2
		use entity work.AND_2(Equations);
		
	for all: XOR_2
		use entity work.XOR_2(Equations);
	
	begin
		and1: component AND_2
			port map(a, b, cout);
		
		xor1: component XOR_2
			port map(a,b, s);
end architecture trivial;
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity fulladder is
	port(a, b, cin: in std_logic;
		s, cout: out std_logic);
end entity fulladder;

architecture trivial of fulladder is
	-- cout is going to a.b+b.cin+a.cin and sum would be c xor (a xor b)
	component halfadder is
		port(a, b: in std_logic;
			s, cout: out std_logic);
	end component halfadder;
	
	for all: OR_2
		use entity work.OR_2(Equations);
	
	for all: halfadder
		use entity work.halfadder(trivial);
		
	signal s1,s2,s3:std_logic;
	
	begin
		half1: component halfadder
			port map(a, b,s1, s2);
			
		half2: component halfadder
			port map(s1, cin,s, s3);
		
		or1: component OR_2
			port map(s2,s3, cout);
end architecture trivial;
----------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity fourbitas is
	port(a, b: in std_logic_vector(3 downto 0);
		m:in std_logic;
		s: out std_logic_vector(3 downto 0);
		cout: out std_logic
		);
end entity fourbitas;

architecture trivial of fourbitas is
	
	component fulladder is
		port(a, b, cin: in std_logic;
			s, cout: out std_logic);
	end component fulladder;
	
	for all: fulladder
		use entity work.fulladder(trivial);
		
	for all: XOR_2
		use entity work.XOR_2(Equations);
	
	signal s1, s2, s3, s4, s5, s6, s7: std_logic;
	
	begin
		xor1: component XOR_2
			port map(b(0), m, s1);
		
		fulladder1: component fulladder
			port map(a(0), s1, m, s(0), s2);
			
			
		xor2: component XOR_2
			port map(b(1), m, s3);
		
		fulladder2: component fulladder
			port map(a(1), s3, s2, s(1), s4);
			
			
		xor3: component XOR_2
			port map(b(2), m, s5);
		
		fulladder3: component fulladder
			port map(a(2), s5, s4, s(2), s6);
			
			
		xor4: component XOR_2
			port map(b(3), m, s7);
		
		fulladder4: component fulladder
			port map(a(3), s7, s6, s(3), cout);
		
end architecture trivial;