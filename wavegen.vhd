

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity modulator is
	port (
		clk,VASDRld,Gate1,Gate2,Gate3	: in std_logic;
		Wave1in,Wave2in,Wave3in			: in std_logic_vector(11 downto 0);
		VASDRsel,voicesel				: in std_logic_vector(2 downto 0);
		VASDRin							: in std_logic_vector(7 downto 0);
		VASDRout						: out std_logic_vector(7 downto 0);
		wave1,wave2,wave3				: out std_logic_vector(11 downto 0) );
end modulator;
architecture arch of modulator is
	
begin
end arch;