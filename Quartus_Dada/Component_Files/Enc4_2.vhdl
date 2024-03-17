library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Enc4_2  is
  port (A, B, C, D, Ein: in std_logic; Y1, Y0: out std_logic);
end entity Enc4_2;

architecture Struct of Enc4_2 is
  signal S1, S2 : std_logic;
begin
  -- component instances
  OR1: OR_2 port map (A => A, B => B, Y => S1);
  OR2: OR_2 port map (A => A, B => C, Y => S2);
  
  AND1: AND_2 port map (A => S1, B => Ein, Y => Y1);
  AND2: AND_2 port map (A => S2, B => Ein, Y => Y0);
end Struct;