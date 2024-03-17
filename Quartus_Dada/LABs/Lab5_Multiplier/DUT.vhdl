-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   component multiplier is
		port(a3,a2,a1,a0,b2,b1,b0: in std_logic;
				m6,m5,m4,m3,m2,m1,m0: out std_logic);
	end component multiplier;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: multiplier 
			port map (
					-- order of inputs B A
					a3 => input_vector(6),
					a2 => input_vector(5),
					a1 => input_vector(4),
					a0 => input_vector(3),
					b2 => input_vector(2),
					b1 => input_vector(1),
					b0 => input_vector(0),
               -- order of output OUTPUT
					m6 => output_vector(6),
					m5 => output_vector(5),
					m4 => output_vector(4),
					m3 => output_vector(3),
					m2 => output_vector(2),
					m1 => output_vector(1),
					m0 => output_vector(0));
end DutWrap;