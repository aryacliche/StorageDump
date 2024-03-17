library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_ADD  is
  port (A3, A2, A1, A0, B3, B2, B1, B0: in std_logic; Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity BCD_ADD;

architecture Struct of BCD_ADD is
  signal C1, S3, S2, S1, S0, S4, S5, C2, temp : std_logic;
  component RIPPLE is
     port (A0, A1, A2, A3, B0, B1, B2, B3, M: in std_logic; S0, S1, S2, S3, Cout: out std_logic);
   end component;
begin
  -- component instances
  RIPPLE1: RIPPLE port map (A0 => A0, A1 => A1, A2 => A2, A3 => A3, B0 => B0, B1 => B1, B2 => B2, B3 => B3, M => '0', S0 => S0, S1 => S1, S2 => S2, S3 => S3, Cout => C1);
  
  OR1 : OR_2 port map (A => S2, B => S1, Y => S4);
  AND1 : AND_2 port map (A => S4, B => S3, Y => S5);
  OR2 : OR_2 port map (A => S5, B => C1, Y => temp);

  RIPPLE2: RIPPLE port map (A0 => '0', A1 => temp, A2 => temp, A3 => '0', B0 => S0, B1 => S1, B2 => S2, B3 => S3, M => '0', S0 => Y0, S1 => Y1, S2 => Y2, S3 => Y3, Cout => C2);
Y4<=temp;
  end Struct;