library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_ADDER  is
  port (A, B, Cin: in std_logic; S, C: out std_logic);
end entity FULL_ADDER;

architecture Struct of FULL_ADDER is
  signal S1, S2, S3 : std_logic;
begin
  -- component instances
  HALF1: HALF_ADDER port map (A => A, B => B, S => S1, C => S3);
  HALF2: HALF_ADDER port map (A => Cin, B => S1, S => S, C => S2);
  
  -- final OR
  OR1: OR_2 port map (A => S2, B => S3, Y => C);
end Struct;