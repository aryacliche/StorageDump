library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_SUB  is
  port (A, B, Bin: in std_logic; D, Bout: out std_logic);--DOES B-A
end entity FULL_SUB;

architecture Struct of FULL_SUB is
  signal S1, S2, S3, S4, S5 : std_logic;
begin
  -- component instances
  XOR1: XOR_2 port map (A => A, B => B, Y => S1);
  XOR2: XOR_2 port map (A => S1, B => Bin, Y => D);
  
  NOT1: INVERTER port map(A => B, Y=> S2);
  AND1: AND_2 port map (A => A, B => S2, Y => S3);
  
  XNOR1: XNOR_2 port map (A => A, B => B, Y => S4);
  AND2: AND_2 port map (A => Bin, B => S4, Y => S5);
  
  OR1: OR_2 port map(A => S5, B => S3, Y => Bout);
end Struct;