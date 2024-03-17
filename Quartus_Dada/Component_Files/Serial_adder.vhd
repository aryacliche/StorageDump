library ieee;
use ieee.std_logic_1164.all;

entity Serial_Adder is
	port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;

architecture BHV of Serial_Adder is
	signal c : std_logic := '0';
begin
	proc: process(reset, a, b, clock)
	begin
		if (clock = '0' and clock'event) then			
			if(reset = '1') then
				s <= '0';
			else
				s <= a xor b xor c;
				c <= (a and b) or (b and c) or (a and c);
			end if;
		end if;
	end process;
end BHV;