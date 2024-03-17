library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is
	signal A3, A2, A1, A0, Cout, Z1, N1, V1, XBar, YBar, O1, O2, NV, NXV: std_logic;
	component RIPPLE is
		port (A0, A1, A2, A3, B0, B1, B2, B3, M: in std_logic; S0, S1, S2, S3, Cout: out std_logic);
	end component;
	
begin
	A :INVERTER port map (A => X(3), Y => XBar);
	B :INVERTER port map (A => Y(3), Y => YBar);
	
	C :RIPPLE port map (A0 => X(0), A1 => X(1), A2 => X(2), A3 => XBar,
						  B0 => Y(0), B1 => Y(1), B2 => Y(2), B3 => YBar, M => '1',
						  S0 => A0, S1 => A1, S2 => A2, S3 => A3, Cout => Cout); 
						 
	D: XNOR_2 port map (A => Cout, B => A3, Y => V1);
	V <= V1;
	N1 <= A3;
	N <= N1;
	
	F :OR_2 port map (A => A3, B => A2, Y => O1);
	Q :OR_2 port map (A => A1, B => A0, Y => O2);
	H :NOR_2 port map (A => O1, B => O2, Y => Z1);
	Z <= Z1;
	
	I: XOR_2 port map (A => N1, B=> V1, Y => NV);
	
	W :INVERTER port map (A => NV, Y => NXV);
	
	R :OR_2 port map (A => NXV, B => Z1, Y => G);
	
	P : OR_2 port map (A => Z1, B => NV, Y => L);
	
end Struct;
