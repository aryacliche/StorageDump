library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Pr_Enc4_2  is
  port (A, B, C, D: in std_logic; Y1, Y0, V: out std_logic);
end entity Pr_Enc4_2;

architecture Struct of Pr_Enc4_2 is
  signal S1, S2, S3, S4 : std_logic;
begin
  -- component instances
  NOR2: NOR_2 port map (A => A, B => B, Y => S2);
  
  NOR1: NOR_2 port map (A => C, B => D, Y => S1);
  NOT1: INVERTER port map (A => S2, Y => Y1);
  NAND1: NAND_2 port map (A => S1, B => S2, Y => V);
  
  NOT2: INVERTER port map (A => B, Y => S4);
  AND1: AND_2 port map (A => S4, B => C, Y => S3);
  OR1: OR_2 port map (A => A, B => S3, Y => Y0);
end Struct;