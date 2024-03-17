library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity RIPPLE  is
  port (A0, A1, A2, A3, B0, B1, B2, B3, M: in std_logic; S0, S1, S2, S3, Cout: out std_logic);
end entity RIPPLE;

architecture Struct of RIPPLE is
  signal O0, O1, O2, O3, C1, C2, C3 : std_logic;
  component FULL_ADDER is
     port(A, B, Cin: in std_logic;
         S, C: out std_logic);
  end component;
begin
  XOR0: XOR_2 port map (A => M, B => B0, Y => O0);
  XOR1: XOR_2 port map (A => M, B => B1, Y => O1);
  XOR2: XOR_2 port map (A => M, B => B2, Y => O2);
  XOR3: XOR_2 port map (A => M, B => B3, Y => O3);
  
  FA0: FULL_ADDER port map (A => A0, B=> O0, Cin => M, S => S0, C => C1);
  FA1: FULL_ADDER port map (A => A1, B=> O1, Cin => C1, S => S1, C => C2);
  FA2: FULL_ADDER port map (A => A2, B=> O2, Cin => C2, S => S2, C => C3);
  FA3: FULL_ADDER port map (A => A3, B=> O3, Cin => C3, S => S3, C => Cout);
end Struct;