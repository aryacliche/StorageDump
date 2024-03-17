library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MULT  is
  port (A3, A2, A1, A0, B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity MULT;

architecture Struct of MULT is
  signal C1, S4, S3, S2, S1, 
			A0B0, A1B0, A2B0, A3B0, 
			A0B1, A1B1, A2B1, A3B1, 	
			A0B2, A1B2, A2B2, A3B2 : std_logic;
  component RIPPLE is
     port (A0, A1, A2, A3, B0, B1, B2, B3, M: in std_logic; S0, S1, S2, S3, Cout: out std_logic);
   end component;
begin
  -- component instances
  AND1 : AND_2 port map (A => A0, B => B0, Y => A0B0);
  AND2 : AND_2 port map (A => A1, B => B0, Y => A1B0);
  AND3 : AND_2 port map (A => A2, B => B0, Y => A2B0);
  AND4 : AND_2 port map (A => A3, B => B0, Y => A3B0);
  AND5 : AND_2 port map (A => A0, B => B1, Y => A0B1);
  AND6 : AND_2 port map (A => A1, B => B1, Y => A1B1);
  AND7 : AND_2 port map (A => A2, B => B1, Y => A2B1);
  AND8 : AND_2 port map (A => A3, B => B1, Y => A3B1);
  AND9 : AND_2 port map (A => A0, B => B2, Y => A0B2);
  AND10: AND_2 port map (A => A1, B => B2, Y => A1B2);
  AND11: AND_2 port map (A => A2, B => B2, Y => A2B2);
  AND12: AND_2 port map (A => A3, B => B2, Y => A3B2);

  RIPPLE1: RIPPLE port map (A0 => '0', A1 => A0B1, A2 => A1B1, A3 => A2B1, B0 => A0B0, B1 => A1B0, B2 => A2B0, B3 => A3B0, M => '0', S0 => M0, S1 => M1, S2 => S1, S3 => S2, Cout => C1);
  HALF_ADDER1 : HALF_ADDER port map (A => A3B1, B => C1, S => S3, C=> S4);
 
  RIPPLE2: RIPPLE port map (A0 => S1, A1 => S2, A2 => S3, A3 => S4, B0 => A0B2, B1 => A1B2, B2 => A2B2, B3 => A3B2, M => '0', S0 => M2, S1 => M3, S2 => M4, S3 => M5, Cout => M6);
end Struct;