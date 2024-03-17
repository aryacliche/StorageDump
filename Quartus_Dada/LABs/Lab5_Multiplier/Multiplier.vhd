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
	port(a0, a1, a2, a3, b0, b1, b2, b3: in std_logic;
			m:in std_logic;
			s_0,s_1,s_2,s_3: out std_logic;
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
			port map(b0, m, s1);
		
		fulladder1: component fulladder
			port map(a0, s1, m, s_0, s2);
			
			
		xor2: component XOR_2
			port map(b1, m, s3);
		
		fulladder2: component fulladder
			port map(a1, s3, s2, s_1, s4);
			
			
		xor3: component XOR_2
			port map(b2, m, s5);
		
		fulladder3: component fulladder
			port map(a2, s5, s4, s_2, s6);
			
			
		xor4: component XOR_2
			port map(b3, m, s7);
		
		fulladder4: component fulladder
			port map(a3, s7, s6, s_3, cout);
		
end architecture trivial;
------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity multiplier is
	port(a3,a2,a1,a0,b2,b1,b0: in std_logic;
			m6,m5,m4,m3,m2,m1,m0: out std_logic);
end entity multiplier;

architecture trivial of multiplier is
	component fourbitas is
		port(a0, a1, a2, a3, b0, b1, b2, b3: in std_logic;
			m:in std_logic;
			s_0,s_1,s_2,s_3: out std_logic;
			cout: out std_logic
			);
	end component fourbitas;
	
	for all: AND_2
		use entity work.AND_2(Equations);
		
	for all:fourbitas
		use entity work.fourbitas(trivial);
	
	signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15: std_logic;
	
	begin
		
		and1: component AND_2
			port map(a0, b0, m0);
		
		and2: component AND_2
			port map(a1, b0, s1);
		
		and3: component AND_2
			port map(a2, b0, s2);
		
		and4: component AND_2
			port map(a3, b0, s3);
		
		and5: component AND_2
			port map(a0, b1, s4);
		
		and6: component AND_2
			port map(a1, b1, s5);
		
		and7: component AND_2
			port map(a2, b1, s6);
		
		and8: component AND_2
			port map(a3, b1, s7);
		
		and9: component AND_2
			port map(a0, b2, s12);
		
		and10: component AND_2
			port map(a1, b2, s13);
		
		and11: component AND_2
			port map(a2, b2, s14);
		
		and12: component AND_2
			port map(a3, b2, s15);
			
		four1: component fourbitas
			port map(s1,s2,s3,'0', s4,s5,s6,s7, '0', m1, s8, s9, s10, s11);
			
		four2: component fourbitas
			port map(s8,s9,s10,s11, s12,s13,s14,s15, '0', m2, m3, m4, m5, m6);
		
		
end architecture trivial;