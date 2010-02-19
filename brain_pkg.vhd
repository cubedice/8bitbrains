library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

package brain_pkg is
	function frequency( str_val,strnum : std_logic_vector; mode : std_logic ) return std_logic_vector;
end;

package body brain_pkg is
	function frequency( str_val,strnum : std_logic_vector; mode : std_logic ) return std_logic_vector is
		variable freq : std_logic_vector( 12 downto 0 );
	begin
		
		if strnum = "01" and mode = '0' then
			if str_val < "00010010" then
				freq := CONV_STD_LOGIC_VECTOR(82,13);
			elsif str_val < "00100010" then
				freq := CONV_STD_LOGIC_VECTOR(87,13);			
			elsif str_val < "00110010" then
				freq := CONV_STD_LOGIC_VECTOR(92,13);			
			elsif str_val < "01000001" then
				freq := CONV_STD_LOGIC_VECTOR(98,13);				
			elsif str_val < "01001111" then
				freq := CONV_STD_LOGIC_VECTOR(104,13);				
			elsif str_val < "01011100" then
				freq := CONV_STD_LOGIC_VECTOR(110,13);				
			elsif str_val < "01101010" then
				freq := CONV_STD_LOGIC_VECTOR(117,13);				
			elsif str_val < "01110101" then
				freq := CONV_STD_LOGIC_VECTOR(123,13);				
			elsif str_val < "10000000" then
				freq := CONV_STD_LOGIC_VECTOR(131,13);				
			elsif str_val < "10001100" then
				freq := CONV_STD_LOGIC_VECTOR(139,13);				
			elsif str_val < "10010110" then
				freq := CONV_STD_LOGIC_VECTOR(147,13);				
			elsif str_val < "10100000" then
				freq := CONV_STD_LOGIC_VECTOR(156,13);			
			elsif str_val < "10101010" then
				freq := CONV_STD_LOGIC_VECTOR(165,13);			
			elsif str_val < "10110010" then
				freq := CONV_STD_LOGIC_VECTOR(175,13);			
			elsif str_val < "10110111" then
				freq := CONV_STD_LOGIC_VECTOR(185,13);				
			elsif str_val < "11000100" then
				freq := CONV_STD_LOGIC_VECTOR(196,13);				
			elsif str_val < "11001011" then
				freq := CONV_STD_LOGIC_VECTOR(208,13);		
			elsif str_val < "11010010" then
				freq := CONV_STD_LOGIC_VECTOR(220,13);				
			elsif str_val < "11010111" then
				freq := CONV_STD_LOGIC_VECTOR(233,13);				
			elsif str_val < "11011110" then
				freq := CONV_STD_LOGIC_VECTOR(247,13);				
			elsif str_val < "11100101" then
				freq := CONV_STD_LOGIC_VECTOR(262,13);
			else
				freq := CONV_STD_LOGIC_VECTOR(277,13);
			end if;
		end if;
		return freq;
	end frequency;
end package body;