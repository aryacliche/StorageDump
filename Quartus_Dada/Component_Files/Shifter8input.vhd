library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity SHIFT is
  port (B2, B1, B0, A7, A6, A5, A4, A3, A2, A1, A0, L: in std_logic; S7, S6, S5, S4, S3, S2, S1, S0 : out std_logic);
end entity SHIFT;

architecture Struct of SHIFT is
  signal X7, X6, X5, X4, X3, X2, X1, X0,
			Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: std_logic;
  	component MUX_4_1  is
		port (C1, C0, D3, D2, D1, D0: in std_logic; Y: out std_logic);
	end component;
 
begin
	
	--SHIFT RIGHT LOOP 4
	MUX1a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => A3, D2 => A7, D1 => '0', D0 => A7, Y => Y7);
	MUX2a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => A2, D2 => A6, D1 => '0', D0 => A6, Y => Y6);
	MUX3a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => A1, D2 => A5, D1 => '0', D0 => A5, Y => Y5);
	MUX4a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => A0, D2 => A4, D1 => '0', D0 => A4, Y => Y4);
	MUX5a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => '0', D2 => A3, D1 => A7, D0 => A3, Y => Y3);
	MUX6a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => '0', D2 => A2, D1 => A6, D0 => A2, Y => Y2);
	MUX7a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => '0', D2 => A1, D1 => A5, D0 => A1, Y => Y1);
	MUX8a: MUX_4_1 port map (C1 => L, C0 => B2, D3 => '0', D2 => A0, D1 => A4, D0 => A0, Y => Y0);
	
	--SHIFT RIGHT LOOP 2
	MUX7b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y5, D2 => Y7, D1 => '0', D0 => Y7, Y => X7);
	MUX8b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y4, D2 => Y6, D1 => '0', D0 => Y6, Y => X6);
	MUX1b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y3, D2 => Y5, D1 => Y7 , D0 => Y5, Y => X5);
	MUX2b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y2, D2 => Y4, D1 => Y6 , D0 => Y4, Y => X4);
	MUX3b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y1, D2 => Y3, D1 => Y5 , D0 => Y3, Y => X3);
	MUX4b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => Y0, D2 => Y2, D1 => Y4 , D0 => Y2, Y => X2);
	MUX5b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => '0', D2 => Y1, D1 => Y3, D0 => Y1, Y => X1);
	MUX6b: MUX_4_1 port map (C1 => L, C0 => B1, D3 => '0', D2 => Y0, D1 => Y2, D0 => Y0, Y => X0);
	
	--SHIFT RIGHT LOOP 1
	MUX7c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X6, D2 => X7, D1 => '0', D0 => X7, Y => S7);
	MUX8c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X5, D2 => X6, D1 => X7, D0 => X6, Y => S6);
	MUX1c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X4, D2 => X5, D1 => X6 , D0 => X5, Y => S5);
	MUX2c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X3, D2 => X4, D1 => X5 , D0 => X4, Y => S4);
	MUX3c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X2, D2 => X3, D1 => X4 , D0 => X3, Y => S3);
	MUX4c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X1, D2 => X2, D1 => X3 , D0 => X2, Y => S2);
	MUX5c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => X0, D2 => X1, D1 => X2, D0 => X1, Y => S1);
	MUX6c: MUX_4_1 port map (C1 => L, C0 => B0, D3 => '0', D2 => X0, D1 => X1, D0 => X0, Y => S0);
end Struct;