-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

library Work;
use Work.Gates.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component Full_adder_with_nand is 
		port(a, b, cin: in std_logic;
			cout, s: out std_logic
		);

	end component Full_adder_with_nand;
	
	for all: Full_adder_with_nand
		use entity work.Full_adder_with_nand(simpler);
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Full_adder_with_nand
			port map (
					-- order of inputs B A
					cin => input_vector(2),
					a => input_vector(1),
					b => input_vector(0),
               -- order of output OUTPUT
					cout => output_vector(0),
					s => output_vector(1));
end DutWrap;