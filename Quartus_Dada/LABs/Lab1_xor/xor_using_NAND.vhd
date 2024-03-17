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