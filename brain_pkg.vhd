library ieee;
use ieee.std_logic_1164.all;

package brain_pkg is
	function frequency( str_val,strnum : std_logic_vector; mode : std_logic ) return std_logic_vector;
end;

package body brain_pkg is
	function frequency( str_val,strnum : std_logic_vector; mode : std_logic ) return std_logic_vector is
		variable freq : std_logic_vector( 12 downto 0 );
	begin
		
		if strnum = "01" and mode = '0' then
			if str_val < "00010010" then
				freq := "0000001010010";
			elsif str_val < "00100010" then
				freq := "0000001010111";				
			elsif str_val < "00110010" then
				freq := "0000001011100";				
			elsif str_val < "01000001" then
				freq := "0000001100010";				
			elsif str_val < "01001111" then
				freq := "0000001101000";				
			elsif str_val < "01011100" then
				freq := "0000001101110";				
			elsif str_val < "01101010" then
				freq := "0000001110101";				
			elsif str_val < "01110101" then
				freq := "0000001111011";				
			elsif str_val < "10000000" then
				freq := "0000010000011";				
			elsif str_val < "10001100" then
				freq := "0000010001011";				
			elsif str_val < "10010110" then
				freq := "0000010010011";				
			elsif str_val < "10100000" then
				freq := "0000010011100";				
			elsif str_val < "10101010" then
				freq := "0000010100101";				
			elsif str_val < "10110010" then
				freq := "0000010101111";				
			elsif str_val < "10110111" then
				freq := "0000010111001";				
			elsif str_val < "11000100" then
				freq := "0000011000100";				
			elsif str_val < "11001011" then
				freq := "0000011010000";				
			elsif str_val < "11010010" then
				freq := "0000011011100";				
			elsif str_val < "11010111" then
				freq := "0000011101001";				
			elsif str_val < "11011110" then
				freq := "0000011110111";				
			elsif str_val < "11100101" then
				freq := "0000100000110";
			else
				freq := "0000100010101";
			end if;
		end if;
		return freq;
	end frequency;
end package body;