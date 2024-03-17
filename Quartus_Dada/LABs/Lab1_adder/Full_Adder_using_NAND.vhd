library ieee;
use ieee.std_logic_1164.all;

entity xor_using_just_NAND is
	port(
		in1, in2: in std_logic;
		output: out std_logic
	);
end entity xor_using_just_NAND;

library work;
use work.Gates.all;

architecture trivial of xor_using_just_NAND is
	
	for all: NAND_2
		use entity work.NAND_2(Equations);
		
	signal s1, s2, s3, s4: std_logic;
	
	begin
		
		n1: component NAND_2
			port map(in1, in1, s1);
			
		n2: component NAND_2
			port map(in2, in2, s2);
		
		n3: component NAND_2
			port map(s1, in2, s4);
		
		n4: component NAND_2
			port map(s2, in1, s3);
		
		n5: component NAND_2
			port map(s3, s4, output);
			
end architecture trivial;

-------------------------------------------------------Now we will do FullAdder

library ieee;
use ieee.std_logic_1164.all;

library Work;
use Work.Gates.all;

entity Full_adder_with_nand is 
	port(a, b, cin: in std_logic;
		cout, s: out std_logic
	);

end entity Full_adder_with_nand;

architecture trivial of Full_adder_with_nand is

	component xor_using_just_NAND is
		port (in1, in2: in std_logic; 
		output: out std_logic);
	end component xor_using_just_NAND;
	
	for all: xor_using_just_NAND
		use entity work.xor_using_just_NAND(trivial);
		
	for all: NAND_2
		use entity work.NAND_2(Equations);
	
	signal s1, s2, s3, s4, s5, s6: std_logic;
	
	begin
		n1: component NAND_2
			port map(a, a, s1);
		
		n2: component NAND_2
			port map(b, b, s2);
		
		n3: component NAND_2
			port map(a, b, s4);
		
		n4: component NAND_2
			port map(s1, s2, s3);
		
		n5: component NAND_2
			port map(s3, cin, s5);
		
		n6: component NAND_2
			port map(s5, s4, cout);
			
		xor1: component xor_using_just_NAND
			port map(a, b, s6);
		
		xor2: component xor_using_just_NAND
			port map(s6, cin, s);
		

end architecture trivial;

architecture simpler of full_adder_with_nand is
	begin
		cout <= (a and b) or (b and cin) or (cin and a);
		s<= cin xor (a xor b);
	
end architecture simpler;