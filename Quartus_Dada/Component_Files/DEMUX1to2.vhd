library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_2_1  is
  port (S, D : in std_logic; Y1, Y0: out std_logic);
end entity DEMUX_2_1;

architecture Struct of DEMUX_2_1 is
  signal S0: std_logic;
begin
  -- component instances  
  NOT1: INVERTER port map(A => S, Y=> S0);
  AND1: AND_2 port map (A => S0, B => D, Y => Y0);
  
  AND2: AND_2 port map (A => D, B => S, Y => Y1);
end Struct;