library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_SUB  is
  port (A3, A2, A1, A0, B3, B2, B1, B0: in std_logic; Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity BCD_SUB;

architecture Struct of BCD_SUB is
  signal CMain, CBar, S3, S2, S1, S0, S4, S5, S6, temp : std_logic;
  component RIPPLE is
     port (A0, A1, A2, A3, B0, B1, B2, B3, M: in std_logic; S0, S1, S2, S3, Cout: out std_logic);
   end component;
begin
  RIPPLE1: RIPPLE port map (A0 => A0, A1 => A1, A2 => A2, A3 => A3, B0 => B0, B1 => B1, B2 => B2, B3 => B3, 
									M => '1', S0 => S0, S1 => S1, S2 => S2, S3 => S3, Cout => CMain);

  NOT1: INVERTER port map(A => CMain, Y=> CBar);
  
  RIPPLE2: RIPPLE port map (A0 => '0', A1 => '0', A2 => '0', A3 => '0', B0 => S0, B1 => S1, B2 => S2, B3 => S3, 
									M => CBar, S0 => Y0, S1 => Y1, S2 => Y2, S3 => Y3, Cout => temp);

  Y4 <= CBar;
 
 end Struct;