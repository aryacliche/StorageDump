library ieee;
use ieee.std_logic_1164.all;

package Flipflops is
	component dff_set is 
		port(D,clock,set:in std_logic;Q:out std_logic);
	end component dff_set;
	
	component dff_reset is 
		port(D,clock,reset:in std_logic;Q:out std_logic);
	end component dff_reset;
	
end package Flipflops;

--D flip flop with set
library ieee;
use ieee.std_logic_1164.all;
	
entity dff_set is 
	port(D,clock,set:in std_logic;Q:out std_logic);
end entity dff_set;

architecture behav of dff_set is
	begin
	dff_set_proc: process (clock,set)
		begin
			if(set='1')then -- set implies flip flip output logic high
				Q <= '1'; -- write the flip flop output when set
			elsif (clock'event and (clock='1')) then
				Q <= D; -- write flip flop output when not set
			end if ;
	end process dff_set_proc;
end behav;

--D flip flop with reset
library ieee;
use ieee.std_logic_1164.all;

entity dff_reset is 
	port(D,clock,reset:in std_logic;Q:out std_logic);
end entity dff_reset;

architecture behav of dff_reset is
	begin
		dff_reset_proc: process (clock,reset)
		begin
			if(reset='1')then -- reset implies flip flip output logic low
				Q <= '0'; -- write the flip flop output when reset
			elsif (clock'event and (clock='1')) then
				Q <= D; -- write flip flop output when not reset
			end if ;
	end process dff_reset_proc;
end behav;

library ieee;
use ieee.std_logic_1164.all;
-- write the Flipflops packege declaration
library work;
use work.Flipflops.all;

entity Sequence_generator_stru_dataflow is
	port (reset,clock: in std_logic;
			y:out std_logic);
end entity Sequence_generator_stru_dataflow;

architecture struct of Sequence_generator_stru_dataflow is
	signal D :std_logic_vector(2 downto 0);
	signal Q:std_logic_vector(2 downto 0);
	
	component dff_reset is
			port(D,clock,reset:in std_logic;Q:out std_logic);
	end component;
	
	component dff_set is
			port(D,clock,set:in std_logic;Q:out std_logic);
	end component;
	
	begin
		-- write the equations in dataflow e.g z=a+bc written as z <= a or (b and c)
		-- for DFF inputs which was derived and also for y.
		D(0) <= Q(2) or (not Q(1));
		D(1) <= (Q(1) nand Q(2)) and Q(0);
		D(2) <= ( (not Q(2)) and Q(1) and (not Q(0))) or (Q(2) and (not Q(1)));
		y <= Q(0);
		-- Instantiate components dff_reset
		-- and dff_set appropriately using port map statements.
		
		Flip1: dff_set port map (D => D(0), clock => clock, set => reset, 	Q => Q(0));
		Flip2: dff_reset port map (D => D(1), clock => clock, reset => reset, Q => Q(1));
		Flip3: dff_reset port map (D => D(2), clock => clock, reset => reset, Q => Q(2));		
end struct;