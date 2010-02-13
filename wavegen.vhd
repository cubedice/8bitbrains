library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity wavegen is
	port (
		clk					: in std_logic;
		newwave 					: in std_logic_vector(11 downto 0);
		outwave						: out std_logic_vector(11 downto 0) );
end wavegen;
architecture arch of wavegen is
	subtype tmp is std_logic_vector(11 downto 0); 
	type wave_array is array(0 to 15) of tmp;
	signal wave : wave_array;
	signal index : integer range 0 to 15;
begin
	index <= 0;
	wave(0)  <= "111111111111";
	wave(1)  <= "001111111111";
	wave(2)  <= "000011111111";
	wave(3)  <= "000000111111";
	wave(4)  <= "000000011111";
	wave(5)  <= "000000000111";
	wave(6)  <= "000000000011";
	wave(7)  <= "000000000000";
	wave(8)  <= "000000000011";
	wave(9)  <= "000000000111";
	wave(10) <= "000000011111";
	wave(11) <= "000000111111";
	wave(12) <= "000011111111";
	wave(13) <= "000111111111";
	wave(14) <= "001111111111";
	wave(15) <= "111111111111";
	process(clk, wave)
	begin
		if clk'event and clk = '1' then
			outwave <= wave(index);
			if index = 15 then
				index <= 0;
			else
				index <= index + 1;
			end if;
		end if;
	end process;
	--process(ld_wave)
	--begin
	--	if ioclk'event and ioclk='1' and working = '1' then
			
	--	end if;
	--end process;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity modulator is
	port (
		clk,ld_a,ld_s,ld_d,ld_r		: in std_logic;
		inwave						: in std_logic_vector(11 downto 0);
		indata						: in std_logic_vector(9 downto 0);
		attack,decay,sustain,release: out std_logic_vector(9 downto 0);
		outwave						: out std_logic_vector(11 downto 0) );
end modulator;
architecture arch of modulator is
	
begin
	index <= 0;
end arch;