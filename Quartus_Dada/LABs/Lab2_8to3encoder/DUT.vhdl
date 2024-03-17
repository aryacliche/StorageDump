-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component eightencoder is
		port(a7,a6,a5,a4,a3,a2,a1,a0,e: in std_logic;
			y2, y1,y0: out std_logic);
	end component eightencoder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: eightencoder 
			port map (
					-- order of inputs B A
					a7 => input_vector(8),
					a6 => input_vector(7),
					a5 => input_vector(6),
					a4 => input_vector(5),
					a3 => input_vector(4),
					a2 => input_vector(3),
					a1 => input_vector(2),
					a0 => input_vector(1),
					e => input_vector(0),
               -- order of output OUTPUT
					y2 => output_vector(2),
					y1 => output_vector(1),
					y0 => output_vector(0));
end DutWrap;