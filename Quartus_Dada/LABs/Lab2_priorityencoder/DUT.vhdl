-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component priorityencoder is
		port(a,b,c,d: in std_logic;
			y1, y0,v : out std_logic);
	end component priorityencoder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: priorityencoder 
			port map (
					-- order of inputs B A
					a => input_vector(3),
					b => input_vector(2),
					c => input_vector(1),
					d => input_vector(0),
               -- order of output OUTPUT
					y1 => output_vector(2),
					y0 => output_vector(1),
					v => output_vector(0));
end DutWrap;