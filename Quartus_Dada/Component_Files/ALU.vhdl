library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
	generic(operand_width : integer:=4);

	port (
		A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0);
		op: out std_logic_vector((operand_width*2)-1 downto 0)
	) ;
end alu_beh;

architecture a1 of alu_beh is

function sub(A: in std_logic_vector(operand_width-1 downto 0);
				 B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	-- declaring and initializing variables using aggregates
	variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
	variable C : std_logic:= '1';
	begin
	-- Hint: Use for loop to calculate value of "diff" and "carry" variable
	-- Use aggregates to assign values to multiple bits
	L1: for i in 0 to (operand_width-1) loop
		if i = 0 then
			diff(i) := A(i) Xor B(i);
			C := (not B(i)) AND A(i);
		else
			diff(i) := (A(i) AND (B(i) XNOR C)) OR (NOT A(i) AND (B(i) XOR C));
			C := ((NOT B(i)) AND (A(i) OR C)) OR (A(i) AND C);
		end if;
	end loop L1;
	return diff;
end sub;

function rolf(A: in std_logic_vector(operand_width-1 downto 0);
				  B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
		variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		variable shift_no : integer;
		variable temo : std_logic;
	begin
	shift_no := 0;
	-- Hint: use for loop to calculate value of shift variable
	-- shift(____ downto _____) & shift(____ downto ______)
	-- to calculate exponent, you can use double asterisk. ex: 2**i
	L2: for i in 0 to (operand_width - 2) loop
		if(B(i) = '1') then
			shift_no := shift_no + (2**i);
		end if;
	end loop L2;
	
	
	if (shift_no + 2 > 7) then
		shift(shift_no - 6) := A(2);
	else
		shift(shift_no + 2) := A(2);
	end if;
	
	if (shift_no + 1 > 7) then
		shift(shift_no - 7) := A(1);
	else
		shift(shift_no + 1) := A(1);
	end if;
	
	shift(shift_no) := A(0);
	
	return shift;
end rolf;

function mult(A: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	-- declaring and initializing variables using aggregates
	variable mult : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
	variable num : integer;
	begin
	num := 0;
	L4: for i in 0 to (operand_width - 1) loop
		if(A(i) = '1') then
			num := num + 5*(2**i);
		end if;
	end loop L4;
	
	L5: for i in 0 to (operand_width*2 - 1) loop
		if(num mod 2 = 1) then
			mult(i) := '1';
		end if;
		num := num/2;
	end loop L5;
	return mult;
end mult;

function bitXor(A: in std_logic_vector(operand_width-1 downto 0);
					 B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	-- declaring and initializing variables using aggregates
	variable ans : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
	begin
	L7: for i in 0 to (operand_width -1) loop
		ans(i) := A(i) XOR B(i);
	end loop L7;
	return ans;
end bitXor;

begin
	alu : process(A, B)
	
	begin
		if ((A(3) AND B(3)) = '1') then
			op <= bitXor(A,B);
		elsif(A(3) = '1') then
			op <= mult(A);
		elsif(B(3) = '1') then
			op <= sub(A,B);
		else
			op <= rolf(A,B);
		end if;
			
		
-- complete VHDL code for various outputs of ALU based on select lines
-- Hint: use if/else statement
--
-- sub function usage :
-- signal_name <= sub(A,B)
-- variable_name := sub(A,B)
--
-- concatenate operator usage:
-- "0000"&A
	end process ; --alu
end a1 ; -- a1