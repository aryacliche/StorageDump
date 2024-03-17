library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity ToneGenerator is
	port (clk_out, led_sa, led_re, led_ga, led_ma, led_pa, led_dha, led_ni, led_saa : out std_logic;
			clk_50, sa, re, ga, ma, pa, dha, ni, saa : in std_logic);
end entity ToneGenerator;

architecture bhv of ToneGenerator is
	signal count:integer:=1;
	signal max_count: integer:= 1;
	signal output:std_logic:='1';
	begin
		max_count_process: process(sa, re, ga, ma, pa, dha, ni, saa, clk_50)
		begin
			if (sa='1' and re='0' and ga='0' and ma='0' and pa='0' and dha='0' and ni='0' and saa='0') then
				led_sa<='1';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=104168;
				
				
			elsif (sa='1' and re='1' and ga='0' and ma='0' and pa='0' and dha='0' and ni='0' and saa='0') then
				led_sa<='0';
				led_re<='1';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=92594;
				
			elsif (sa='1' and re='1' and ga='1' and ma='0' and pa='0' and dha='0' and ni='0' and saa='0') then
				led_sa<='0';
				led_re<='0';
				led_ga<='1';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=83334;
				
			elsif (sa='1' and re='1' and ga='1' and ma='1' and pa='0' and dha='0' and ni='0' and saa='0') then
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='1';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=78126;
				
			elsif (sa='1' and re='1' and ga='1' and ma='1' and pa='1' and dha='0' and ni='0' and saa='0') then
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='1';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=69445;
				
			elsif (sa='1' and re='1' and ga='1' and ma='1' and pa='1' and dha='1' and ni='0' and saa='0') then
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='1';
				led_ni<='0';
				led_saa<='0';
				max_count<=62501;
				
			elsif (sa='1' and re='1' and ga='1' and ma='1' and pa='1' and dha='1' and ni='1' and saa='0') then
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='1';
				led_saa<='0';
				max_count<=55556;
				
			elsif (sa='1' and re='1' and ga='1' and ma='1' and pa='1' and dha='1' and ni='1' and saa='1') then
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='1';
				max_count<=52084;
				
			else
				led_sa<='0';
				led_re<='0';
				led_ga<='0';
				led_ma<='0';
				led_pa<='0';
				led_dha<='0';
				led_ni<='0';
				led_saa<='0';
				max_count<=1;
			end if;
			
			
				if(clk_50='1' and clk_50' event and (max_count/=1) ) then
		
					if(count>=max_count) then
						output<= not output;
						count<=1;
					else 
						count<= count+1;
					end if;
				end if;
				
				clk_out<=output;
		end process;
		
--		freq_process: process(clk_50)
--		begin
--			if(clk_50='1' and clk_50' event) then
--				count<= count+1;
--			end if;
--			
--			if(max_count=1) then
--				--output<=output;
--				count<=1;
--			elsif(count>=max_count) then
--				output<= not output;
--				count<=0;
--			end if;
--			
--			clk_out<=output;
--			
--		end process;

--		clock_proc:process(clk_50,resetn)
--		  begin
--			 if (resetn='1') then 
--				count <= 1;
--				temp <= '0';
--			 elsif (clk_50='1' and clk_50' event) then
--				count <= count+1;
--				 if (count = max_count) then
--					temp <= not(temp);
--					count <= 1;
--				 end if;
--			 end if;
--		  clk_out <= temp;
--		  end process;
end architecture bhv;