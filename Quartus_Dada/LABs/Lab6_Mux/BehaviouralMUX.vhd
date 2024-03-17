library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
	generic(
		operand_width : integer:=4);
	port (
		A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0);
		op: out std_logic_vector((operand_width*2)-1 downto 0)) ;
end alu_beh;

architecture a1 of alu_beh is
		
		function full_adder(A, B, C: in std_logic) return std_logic_vector is
			variable s: std_logic_vector(1 downto 0);
			
			begin
				s(1):= (a or b) and ((b or c) and (c or a));
				s(0):= c xor (a xor b);
				return s;
		end full_adder;
		
		function sub(A: in std_logic_vector(operand_width-1 downto 0);
							B: in std_logic_vector(operand_width-1 downto 0))
			return std_logic_vector is
		
			-- declaring and initializing variables using aggregates
			variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
			variable carry : std_logic:= '1';
			variable temp_A: std_logic_vector((operand_width*2)-1 downto 0):=(others=>'1');
			variable temp_B: std_logic_vector((operand_width*2)-1 downto 0):=(others=>'0');
			variable reciever: std_logic_vector(1 downto 0);
			
			begin
			
			ones_complement_loop: for i in 0 to operand_width-1 loop
				temp_a(i):= ('1' xor a(i));
			end loop ones_complement_loop;
			
			twos_complement_loop: for i in 0 to (operand_width*2)-1 loop
				reciever:=full_adder('0', temp_a(i), carry);
				temp_a(i) := reciever(0);
				carry :=reciever(1);
			end loop twos_complement_loop;
			
			carry:='0';
			temp_B(3 downto 0):= b;
			
			subtracting_loop: for i in 0 to (operand_width*2)-1 loop
				reciever:=full_adder(temp_b(i), temp_a(i), carry);
				diff(i) := reciever(0);
				carry := reciever(1);
			end loop subtracting_loop;
			
			return diff;
		end sub;

		function rolf(A: in std_logic_vector(operand_width-1 downto 0);
							B: in std_logic_vector(operand_width-1 downto 0))
				return std_logic_vector is
			
			variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable temp : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable shift_variable: integer:=0;
			
			begin
				shift(operand_width-1 downto 0):= A;
				-- Hint: use for loop to calculate value of shift variable
				-- shift(____ downto _____) & shift(____ downto ______)
				-- to calculate exponent, you can use double asterisk. ex: 2**i
				
				calculating_shift_variable: for i in 0 to 2 loop
					if(b(i)='1') then
					shift_variable:= shift_variable + 2**i;
					end if;
				end loop calculating_shift_variable;
					
				shift(operand_width-1 downto 0):= a;
				
				shifting: for k in 0 to (operand_width*2)-1 loop
					if (k+shift_variable)<8 then	
						temp(k+shift_variable):= shift(k);
					else 
						temp(k+shift_variable-8):= shift(k);
					end if;
				end loop shifting;
				
				shift:=temp;
				return shift;
		end rolf;
		
		function fivetimes(A: in std_logic_vector(operand_width-1 downto 0))
				return std_logic_vector is
			
			variable fourtimesa: std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable answer: std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable reciever: std_logic_vector(1 downto 0):= (others=>'0');
			variable carry:std_logic:='0';
			variable a_extended: std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			
			begin
				--first we will find 4*a
				fourtimesa:= rolf(a, "0010");
				
				--now let us just extend a
				a_extended(operand_width-1 downto 0):= a;
				
				--Now we are free to add a_extended to fourtimesa
				
				addition_loop: for i in 0 to (operand_width*2)-1 loop
					reciever:=full_adder(a_extended(i), fourtimesa(i), carry); --Just to take both carry and the sum
					carry:=reciever(1);
					answer(i):=reciever(0);
				end loop addition_loop;
				
				return answer;
		end fivetimes;
		
		function xorer(A: in std_logic_vector(operand_width-1 downto 0);
							B: in std_logic_vector(operand_width-1 downto 0))
				return std_logic_vector is
			variable answer : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			begin
				
				xoring_loop: for i in 0 to operand_width-1 loop
					answer(i):= a(i) xor b(i);
				end loop xoring_loop;
				return answer;
		end xorer;
		
		
	begin
		alu : process( A, B)
		variable final_answer : std_logic_vector(operand_width*2-1 downto 0);
			begin
			
			if (A(3)='0' and B(3)='0') then
				final_answer:= rolf(A, B);
			elsif (A(3)='0' and B(3)='1') then
				final_answer:= sub(A, B);
			elsif (A(3)='1' and B(3)='0') then
				final_answer:= fivetimes(A);
			else
				final_answer:= xorer(A, B);
			end if;
			op<= final_answer;
		end process ; --alu
end a1 ; -- a1