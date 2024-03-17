library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_4_1  is
  port (S2, S1, In0 : in std_logic; Y3, Y2, Y1, Y0: out std_logic);
end entity DEMUX_4_1;

architecture Struct of DEMUX_4_1 is
	component DEMUX_2_1 is
		port (S, D : in std_logic; Y1, Y0: out std_logic);
   end component;
	signal A, B: std_logic;
	
begin
  -- component instances  
  DEMUX_21: DEMUX_2_1 port map(S => S2, D => In0, Y1 => A, Y0 => B);
  DEMUX_22: DEMUX_2_1 port map(S => S1, D => A, Y1 => Y3, Y0 => Y2);
  DEMUX_23: DEMUX_2_1 port map(S => S1, D => B, Y1 => Y1, Y0 => Y0);
end Struct;