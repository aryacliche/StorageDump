library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Musik is
    port (clk_50 : in std_logic;
			input : in std_logic_vector(7 downto 0);
			LED: out std_logic_vector(7 downto 0);
			Speaker: out std_logic);
end entity;

architecture bhv of Musik is
	signal n : integer := 0;
	signal i : integer := 1;
	signal par: std_logic := '0';
begin

	assign_proc:process(clk_50,input)
	begin
		if(clk_50='1' and clk_50' event) then
			LED <= input;
			if(input(0) = '1') then
				if(input(1) = '1') then
					if(input(2) = '1') then
						if(input(3) = '1') then
							if(input(4) = '1') then
								if(input(5) = '1') then
									if(input(6) = '1') then
										if(input(7) = '1') then
											n <= 52083;
										else
											n <= 55556;
										end if;
									else
										n <= 62500;
									end if;
								else
									n <= 69444;
								end if;
							else
								n <= 78125;
							end if;
						else
							n <= 83333;
						end if;
					else
						n <= 92593;
					end if;
				else
					n <= 104167;
				end if;
			else
				n <= 0;
			end if;
		end if;
	end process;
	
	speak_proc: process(n, clk_50)
	begin
		if(clk_50 = '1' and clk_50'event) then
			if(n = 0) then
				par <= '0';
				i <= 1;
			elsif (i = n) then
				i <= 1;
				par <= not par;
			else
				i <= i + 1;
				par <= par;
			end if;
		end if;
		Speaker <= par;
	end process;
	
end bhv;