-- I will first use the fourbit adder I had made for a homework assignment. Go to line 130 for the start of the VHDL code
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

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
	port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is
	--we will first import fourbitadder from a previous lab submission
	component fourbitas is
		port(a, b: in std_logic_vector(3 downto 0);
			m:in std_logic;
			s: out std_logic_vector(3 downto 0);
			cout: out std_logic
			);
	end component fourbitas;
	
	signal t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14: std_logic;
	signal cout_temp:std_logic;
	signal s: std_logic_vector(3 downto 0);
	
	begin
		fourbit_1: component fourbitas
			port map(X, Y, '1', s, cout_temp);
			
		not_1: component INVERTER
			port map(X(3), t3);
		
		not_2: component INVERTER
			port map(Y(3), t5);
		
		not_3: component INVERTER
			port map(s(3), t6);
		
		not_4: component INVERTER
			port map(s(3), t10);
			
		and_1: component AND_2
			port map(t3, Y(3), t4);
		
		and2: component AND_2
			port map(t4, s(3), t7);
		
		and_3: component AND_2
			port map(X(3), t5, t11);
		
		and_4: component AND_2
			port map(t11, t6, t8);
			
		or_1: component OR_2
			port map(s(3), s(2), t1);
		
		or2: component OR_2
			port map(s(1), s(0), t2);
		
		or_3: component OR_2
			port map(t7, t8, t12);
		
		or_4: component OR_2
			port map(t9,s(3), t13);
		
		or_5: component OR_2
			port map(t9, t10, t14);
		
		nor_1: component NOR_2
			port map(t1, t2, t9);
			
		xor_1: component XOR_2
			port map(t12, t13, L);
		
		xor2: component XOR_2
			port map(t12, t14, G);
		
		V<= t12;
		
		Z <= t9;
		
		N <= s(3);
end Struct;

-------------------------------------------------------------------------------
--This was used to verify that X-Y was valid
library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity alpha  is
	port (X, Y: in std_logic_vector(3 downto 0); s: out std_logic_vector(3 downto 0));
end entity alpha;

architecture subtractor of alpha is
	--we will first import fourbitadder from a previous lab submission
	component fourbitas is
		port(a, b: in std_logic_vector(3 downto 0);
			m:in std_logic;
			s: out std_logic_vector(3 downto 0);
			cout: out std_logic
			);
	end component fourbitas;
	
	signal t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11: std_logic;
	signal cout_temp:std_logic;
	
	begin
		fourbit_1: component fourbitas
			port map(X, Y, '1', s, cout_temp);
			
end subtractor;
