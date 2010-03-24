library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.brain_pkg.attack_wave;
use work.brain_pkg.decay_wave;
use work.brain_pkg.release_wave;

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
signal volume : std_logic_vector(7 downto 0);
signal attack : std_logic_vector(7 downto 0) := "11111111";
signal decay, sustain, release : std_logic_vector(7 downto 0);
signal volume_ctr1, attack_ctr1, decay_ctr1, sustain_ctr1, release_ctr1 : std_logic_vector(7 downto 0);
signal volume_ctr2, attack_ctr2, decay_ctr2, sustain_ctr2, release_ctr2 : std_logic_vector(7 downto 0);
signal volume_ctr3, attack_ctr3, decay_ctr3, sustain_ctr3, release_ctr3 : std_logic_vector(7 downto 0);
signal ctr_ctr : std_logic_vector(17 downto 0);
begin
	--wave1 <= volume_ize(volume, Wave1in);
	attack <= "00000011";
	decay <= "00000011";
	release <= "00111111";
	
	process
	begin
		wait until clk'event and clk = '1';
		if ctr_ctr = (ctr_ctr'range => '1') then
			ctr_ctr <= (ctr_ctr'range => '0');
		else
			ctr_ctr <= ctr_ctr + 1;
		end if;
	end process;
	
	process( Wave1in, Gate1, clk )
	begin
		if clk'event and clk = '1' then
			if Gate1 = '1' then
				release_ctr1 <= release;
				if attack_ctr1 /= attack then
					if ctr_ctr = (ctr_ctr'range => '0') then
						attack_ctr1 <= attack_ctr1 + 1;
					end if;
					wave1 <= attack_wave( attack_ctr1, attack, Wave1in );
				elsif decay_ctr1 /= (decay_ctr1'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						decay_ctr1 <= decay_ctr1 - 1;
					end if;
					wave1 <= decay_wave( decay_ctr1, decay, Wave1in );
				else
					wave1 <= '0' & Wave1in(11 downto 1);
				end if;
			else
				attack_ctr1 <= (attack_ctr1'range => '0');
				decay_ctr1 <= decay;
				if release_ctr1 /= (release_ctr1'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						release_ctr1 <= release_ctr1 - 1;
					end if;
					wave1 <= release_wave( release_ctr1, release, Wave1in );
				end if;
			end if;
		end if;
	end process;
	
	process( Wave2in, Gate2, clk )
	begin
		if clk'event and clk = '1' then
			if Gate2 = '1' then
				release_ctr2 <= release;
				if attack_ctr2 /= attack then
					if ctr_ctr = (ctr_ctr'range => '0') then
						attack_ctr2 <= attack_ctr2 + 1;
					end if;
					wave2 <= attack_wave( attack_ctr2, attack, Wave2in );
				elsif decay_ctr2 /= (decay_ctr2'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						decay_ctr2 <= decay_ctr2 - 1;
					end if;
					wave2 <= decay_wave( decay_ctr2, decay, Wave2in );
				else
					wave2 <= '0' & Wave2in(11 downto 1);
				end if;
			else
				attack_ctr2 <= (attack_ctr2'range => '0');
				decay_ctr2 <= decay;
				if release_ctr2 /= (release_ctr2'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						release_ctr2 <= release_ctr2 - 1;
					end if;
					wave2 <= release_wave( release_ctr2, release, Wave2in );
				end if;
			end if;
		end if;
	end process;
	
	process( Wave3in, Gate3, clk )
	begin
		if clk'event and clk = '1' then
			if Gate3 = '1' then
				release_ctr3 <= release;
				if attack_ctr3 /= attack then
					if ctr_ctr = (ctr_ctr'range => '0') then
						attack_ctr3 <= attack_ctr3 + 1;
					end if;
					wave3 <= attack_wave( attack_ctr3, attack, Wave3in );
				elsif decay_ctr3 /= (decay_ctr3'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						decay_ctr3 <= decay_ctr3 - 1;
					end if;
					wave3 <= decay_wave( decay_ctr3, decay, Wave3in );
				else
					wave3 <= '0' & Wave3in(11 downto 1);
				end if;
			else
				attack_ctr3 <= (attack_ctr3'range => '0');
				decay_ctr3 <= decay;
				if release_ctr3 /= (release_ctr3'range => '0') then
					if ctr_ctr = (ctr_ctr'range => '0') then
						release_ctr3 <= release_ctr3 - 1;
					end if;
					wave3 <= release_wave( release_ctr3, release, Wave3in );
				end if;
			end if;
		end if;
	end process;
end arch;