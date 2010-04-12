library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--my_slv <= std_logic_vector(to_unsigned(my_integer, my_slv'length));

entity modulator_save_bank is
	port (
		clk			: in std_logic;
		bank_in		: in std_logic_vector(2 downto 0);
		save		: in std_logic;
		vol,att,dec,sus,rel	: in std_logic_vector(7 downto 0);
		vol_o,att_o,dec_o,sus_o,rel_o: buffer std_logic_vector(7 downto 0);
		save_mode_out : out std_logic);
end modulator_save_bank;
architecture arch of modulator_save_bank is
	signal save_mode,wren,prev_save,wait_cycle : std_logic;
	signal wave_sel_out_t : std_logic_vector(5 downto 0);
	component bytebank IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC  := '0';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;

begin
	save_mode <= save;
	volbank : bytebank port map(
		bank_in,clk, vol,wren,vol_o );
	attbank : bytebank port map(
		bank_in,clk, att,wren,att_o );
	decbank : bytebank port map(
		bank_in,clk, dec,wren,dec_o );
	susbank : bytebank port map(
		bank_in,clk, vol,wren,sus_o );
	relbank : bytebank port map(
		bank_in,clk, rel,wren,rel_o );
		
	process
	begin
		wait until clk'event and clk='1';
		if save /= prev_save and save = '0' then
			wait_cycle <= '1';
		end if;
		prev_save <= save;
		
		if wait_cycle = '1' then
			wren <= '1';
			wait_cycle <= '0';
		else
			wren <= '0';
		end if;
	end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.brain_pkg.attack_wave;
use work.brain_pkg.decay_wave;
use work.brain_pkg.release_wave;

entity modulator is
	port (
		clk,Gate1,Gate2,Gate3			: in std_logic;
		Wave1in,Wave2in,Wave3in			: in std_logic_vector(11 downto 0);
		save_bank						: in std_logic_vector(2 downto 0);
		save_mode						: in std_logic;
		param							: in std_logic_vector(5 downto 0);
		modifier						: in std_logic_vector(1 downto 0);
		VASDRout						: out std_logic_vector(7 downto 0);
		wave1,wave2,wave3				: out std_logic_vector(11 downto 0) );
end modulator;
architecture arch of modulator is

	component modulator_save_bank is
		port (
			clk			: in std_logic;
			bank_in		: in std_logic_vector(2 downto 0);
			save		: in std_logic;
			vol,att,dec,sus,rel	: in std_logic_vector(7 downto 0);
			vol_o,att_o,dec_o,sus_o,rel_o: buffer std_logic_vector(7 downto 0);
			save_mode_out : out std_logic);
	end component;

	signal prev_save_bank : std_logic_vector(2 downto 0);
	signal volume,vol_t : std_logic_vector(7 downto 0);
	signal attack : std_logic_vector(7 downto 0) := "11111111";
	signal att_t, decay, dec_t, sustain, sus_t, rel_t, release : std_logic_vector(7 downto 0);
	signal volume_ctr1, attack_ctr1, decay_ctr1, sustain_ctr1, release_ctr1 : std_logic_vector(7 downto 0);
	signal volume_ctr2, attack_ctr2, decay_ctr2, sustain_ctr2, release_ctr2 : std_logic_vector(7 downto 0);
	signal volume_ctr3, attack_ctr3, decay_ctr3, sustain_ctr3, release_ctr3 : std_logic_vector(7 downto 0);
	signal ctr_ctr : std_logic_vector(17 downto 0);
	signal wait_cycle, IGNORE : std_logic;
begin
	--wave1 <= volume_ize(volume, Wave1in);
--	attack <= "00000011";
--	decay <= "00000011";
--	release <= "00111111";
	
	md_sv_bnk : modulator_save_bank port map(
		clk, save_bank, save_mode, volume, attack, decay, sustain, release,
		vol_t, att_t,dec_t, sus_t, rel_t, IGNORE );
		

	
	process( save_bank, modifier, clk )
	begin
		if clk'event and clk = '1' then
			if modifier(1) = '1' then
				if modifier(0) = '1' then
					case param is
						when "000000" =>
							attack <= attack + 32;
						when "000001" =>
							decay <= decay + 32;
						when "000010" =>
							sustain <= sustain + 32;
						when "000011" =>
							release <= release + 32;
						when "000100" =>
							volume <= volume + 32;
						when others =>
					end case;
				else
					case param is
						when "000000" =>
							attack <= attack - 32;
						when "000001" =>
							decay <= decay - 32;
						when "000010" =>
							sustain <= sustain - 32;
						when "000011" =>
							release <= release - 32;
						when "000100" =>
							volume <= volume - 32;
						when others =>
					end case;
				end if;
			end if;
			if prev_save_bank /= save_bank and save_mode = '0' then
				wait_cycle <= '1';
			end if;
			if wait_cycle = '1' then
				attack <= att_t;
				decay <= dec_t;
				volume <= vol_t;
				sustain <= sus_t;
				release <= rel_t;
				wait_cycle <= '0';
			end if;
			prev_save_bank <= save_bank;
		end if;
	end process;
	
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
					wave1 <= Wave1in;
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
					wave2 <= Wave2in;
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
					wave3 <= Wave3in;
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