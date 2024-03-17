library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Enc8_3  is
  port (Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, En: in std_logic; A2, A1, A0: out std_logic);
end entity Enc8_3;

architecture Struct of Enc8_3 is
   component Enc4_2 is
     port (A, B, C, D, Ein: in std_logic; Y1, Y0: out std_logic);
   end component;
  signal S1, S2, S3, S4, S5, S6, S7 : std_logic;
begin
  -- component instances
  ENC1: Enc4_2 port map (A => Y3, B => Y2, C => Y1, D => Y0, Ein => En, Y1 => S1, Y0 => S2);
  ENC2: Enc4_2 port map (A => Y7, B => Y6, C => Y5, D => Y4, Ein => En, Y1 => S3, Y0 => S4);
  ENC3: Enc4_2 port map (A => '0', B => Y4, C => '0', D => '0', Ein => En, Y1 => S5, Y0 => S6);

  OR1: OR_2 port map (A => S1, B => S3, Y => A1);
  OR2: OR_2 port map (A => S2, B => S4, Y => A0);
  OR3: OR_2 port map (A => S3, B => S4, Y => S7);
  OR4: OR_2 port map (A => S5, B => S7, Y => A2);
end Struct;