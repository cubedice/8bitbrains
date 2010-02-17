library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mixer is
	port (
		wave1in,wave2in,wave3in	: in std_logic_vector(11 downto 0);
		waveout				: out std_logic_vector(11 downto 0) );
end mixer;
architecture arch of mixer is
	
begin
	waveout <= wave1in;
end arch;