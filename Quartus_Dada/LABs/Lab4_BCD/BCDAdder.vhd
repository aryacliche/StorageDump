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
	port(a3, a2, a1, a0, b3, b2, b1, b0: in std_logic;
		m:in std_logic;
		s_3,s_2,s_1,s_0: out std_logic;
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

------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity BCDAdder is
	port(
		a, b: in std_logic_vector(3 downto 0);
		y: out std_logic_vector(4 downto 0)
	);
end entity BCDAdder;

architecture trivial of BCDAdder is
	component fourbitas is
		port(a3, a2, a1, a0, b3, b2, b1, b0: in std_logic;
			m:in std_logic;
			s_3, s_2, s_1, s_0: out std_logic;
			cout: out std_logic
			);
	end component fourbitas;
	
	for all: fourbitas
		use entity work.fourbitas(trivial);
		
	for all: AND_2
		use entity work.AND_2(equations);
	
	for all: INVERTER
		use entity work.INVERTER(equations);
	
	for all: OR_2
		use entity work.OR_2(equations);
	
	signal s: std_logic_vector(10 downto 0);
	
	begin
		
		adder1: component fourbitas
			port map(a(3),a(2),a(1),a(0),b(3),b(2),b(1),b(0),'0',s(3),s(2),s(1),s(0),s(4));
			
		adder2: component fourbitas
			port map(s(3),s(2),s(1),s(0),'0',s(8),s(9),'0','0',y(3),y(2),y(1),y(0),s(10));
			
		or1: component OR_2
			port map(s(2),s(1), s(5));
			
		and1: component AND_2
			port map(s(3),s(5),s(6));
			
		or2: component OR_2
			port map(s(4),s(6), s(7));
			
		and2: component AND_2
			port map(s(7),'1',s(8));
		
		and3: component AND_2
			port map(s(7),'1',s(9));
		
		or3: component OR_2
			port map(s(4), s(10),y(4));

end architecture trivial;