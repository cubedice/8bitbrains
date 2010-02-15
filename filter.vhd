library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity filter is
	port (
		wavein				: in std_logic_vector(11 downto 0);
		q					: in std_logic_vector(7 downto 0);
		freq				: in std_logic_vector(11 downto 0);
		q_ld,freq_ld		: in std_logic;
		waveout				: out std_logic_vector(11 downto 0) );
end filter;
architecture arch of filter is
	
begin
end arch;