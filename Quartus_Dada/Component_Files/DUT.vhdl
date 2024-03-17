-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component Enc4_2 is
     port (A, B, C, D, Ein: in std_logic; Y1, Y0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Enc4_2 
			port map (
					A => input_vector(4),
					B => input_vector(3),
					C => input_vector(2),
					D => input_vector(1),
					Ein => input_vector(0),

					Y1 => output_vector(1),
					Y0 => output_vector(0));
end DutWrap;