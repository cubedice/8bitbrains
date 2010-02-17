library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--my_slv <= std_logic_vector(to_unsigned(my_integer, my_slv'length));

entity controller is
	port (
		clk														: in std_logic;
		str_1, str_2, str_3, VASDRin							: in std_logic_vector(7 downto 0);
		btn_vec													: in std_logic_vector(6 downto 0); -- btn_11, btn_12 ... btn_drm
		edit_select_rot,edit_change_rot, waveform_rot 			: in std_logic_vector(1 downto 0);
		wave_bank_rot 											: in std_logic_vector(1 downto 0);
		VASDRld													: out std_logic;
		VASDRout,q												: out std_logic_vector(7 downto 0);
		voice_sel, VASDR_sel									: out std_logic_vector(2 downto 0);
		gate1,gate2,gate3,q_ld,filtfreq_ld						: out std_logic;
		freq1,freq2,freq3										: out std_logic_vector(12 downto 0);
		filter_freq												: out std_logic_vector(11 downto 0)
		);
end controller;
architecture arch of controller is
--p_str_1, p_str_2, p_str_3, p_ch_11, p_ch_12, p_ch_13	: out std_logic;
--		p_ch_21, p_ch_22, p_ch_31, p_ch_32						: out std_logic 
--signal state 
signal curbtns   : std_logic_vector(6 downto 0);
signal trig_vec,diff_vec  : std_logic_vector(6 downto 0);
signal play_vec : std_logic_vector(5 downto 0) := "000000";
begin
	process(btn_vec, clk)
	begin
		if clk'event and clk='1' then
			if btn_vec /= curbtns then
				diff_vec <= curbtns xor btn_vec;
				if play_vec(5 downto 3) = "000" then
					-- has "alternate" string button been triggered?
					if play_vec(2) = '1' and ((trig_vec(6) = '1' and btn_vec(5) = '1') or (trig_vec(5) = '1' and btn_vec(6) = '1')) then
						trig_vec(6) <= not trig_vec(6);
						trig_vec(5) <= not trig_vec(5);
						-- TODO: blip gate for wave1
					end if;
					if play_vec(1) = '1' and ((trig_vec(4) = '1' and btn_vec(3) = '1') or (trig_vec(3) = '1' and btn_vec(4) = '1')) then
						trig_vec(4) <= not trig_vec(4);
						trig_vec(3) <= not trig_vec(3);
						-- TODO: blip gate for wave2
					end if;
					if play_vec(0) = '1' and ((trig_vec(2) = '1' and btn_vec(1) = '1') or (trig_vec(1) = '1' and btn_vec(2) = '1')) then
						trig_vec(2) <= not trig_vec(2);
						trig_vec(1) <= not trig_vec(1);
						-- TODO: blip gate for wave3
					end if;
					
					-- has trigger been released?
					if play_vec(2) = '1' and ((trig_vec(6) = '1' and btn_vec(6) = '0') or (trig_vec(5) = '1' and btn_ven(5) = '0')) then
						trig_vec(6) <= '0';
						trig_vec(5) <= '0';
						play_vec(2) <= '0';
					end if;
					if play_vec(1) = '1' and ((trig_vec(4) = '1' and btn_vec(4) = '0') or (trig_vec(3) = '1' and btn_ven(3) = '0')) then
						trig_vec(4) <= '0';
						trig_vec(3) <= '0';
						play_vec(1) <= '0';
					end if;
					if play_vec(0) = '1' and ((trig_vec(2) = '1' and btn_vec(2) = '0') or (trig_vec(1) = '1' and btn_ven(1) = '0')) then
						trig_vec(2) <= '0';
						trig_vec(1) <= '0';
						play_vec(0) <= '0';
					end if;
				-- chord 1(1|2|3)?
				elsif play_vec(5) = '1' then
					if btn_vec(6) = '1' then
						if btn_vec(5) = '1' then
							-- TODO: recalc waves for chord11
							
							trig_vec(4 downto 0) <= "00000";
							trig_vec(5) <= '1';
						elsif btn_vec(3) = '1' then
							-- TODO: recalc waves for chord12
							
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig_vec(3) <= '1';
						elsif btn_vec(1) = '1' then
							-- TODO: recalc waves for chord13
							
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig_vec(1) <= '1';
						end if;
					else
						play_vec(5) <= '0';
					end if;
				elsif play_vec(4) = '1' then
					if btn_vec(4) = '1' then
						if btn_vec(3) = '1' then
							-- TODO: recalc waves for chord21
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig_vec(3) <= '1';
						elsif btn_vec(5) = '1' then
							-- TODO: recalc waves for chord22
							
							trig_vec(4 downto 0) <= "00000";
							trig_vec(5) <= '1';
						elsif btn_vec(1) = '1' then
							-- TODO: recalc waves for chord23
							
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig_vec(1) <= '1';
						end if;
					else
						play_vec(4) <= '0';
					end if;
				elsif play_vec(3) = '1' then
					if btn_vec(2) = '1' then
						if btn_vec(1) = '1' then							
							-- TODO: recalc waves for chord31
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig_vec(1) <= '1';
						elsif btn_vec(5) = '1' then
							-- TODO: recalc waves for chord32							
							trig_vec(4 downto 0) <= "00000";
							trig_vec(5) <= '1';
						elsif btn_vec(3) = '1' then
							-- TODO: recalc waves for chord33
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig_vec(3) <= '1';
						end if;
					else
						play_vec(3) <= '0';
					end if;
				end if;
				if play_vec(5 downto 3) = "000" then
					if diff_vec(6) = '1' and diff_vec(5) = '1' then
						-- TODO: recalc waves for chord11
						trig_vec <= "1100000";
						play_vec(5) <= '1';
					elsif diff_vec(6) = '1' and diff_vec(3) = '1' then
						-- TODO: recalc waves for chord12
						trig_vec <= "1001000";
						play_vec(5) <= '1';
					elsif diff_vec(6) = '1' and diff_vec(1) = '1' then
						-- TODO: recalc waves for chord13
						trig_vec <= "100010";
						play_vec(5) <= '1';
					elsif diff_vec(4) = '1' and diff_vec(3) = '1' then
						-- TODO: recalc waves for chord21
						trig_vec <= "0011000";
						play_vec(4) <= '1';
					elsif diff_vec(4) = '1' and diff_vec(5) = '1' then
						-- TODO: recalc waves for chord22
						trig_vec <= "011000";
						play_vec(4) <= '1';
					elsif diff_vec(4) = '1' and diff_vec(1) = '1' then
						-- TODO: recalc waves for chord23
						trig_vec <= "0010010";
						play_vec(4) <= '1';
					elsif diff_vec(2) = '1' and diff_vec(1) = '1' then
						-- TODO: recalc waves for chord31
						trig_vec <= "0000110";
						play_vec(3) <= '1';
					elsif diff_vec(2) = '1' and diff_vec(5) = '1' then
						-- TODO: recalc waves for chord32
						trig_vec <= "0100100";
						play_vec(3) <= '1';
					elsif diff_vec(2) = '1' and diff_vec(3) = '1' then
						-- TODO: recalc waves for chord33
						trig_vec <= "0001100";
						play_vec(3) <= '1';
					elsif (diff_vec(6) = '1' or diff_vec(5) = '1') and play_vec(2) = '0'  then
						trig_vec(6) <= diff_vec(6);
						trig_vec(5) <= diff_vec(5);
						play_vec(2) <= '1';
					elsif (diff_vec(4) = '1' or diff_vec(3) = '1') and play_vec(1) = '0'  then
						trig_vec(4) <= diff_vec(4);
						trig_vec(3) <= diff_vec(3);
						play_vec(1) <= '1';
					elsif (diff_vec(2) = '1' or diff_vec(1) = '1') and play_vec(0) = '0'  then
						trig_vec(2) <= diff_vec(2);
						trig_vec(1) <= diff_vec(1);
						play_vec(0) <= '1';
					end if;
				end if;
				curbtns <= btn_vec;
			end if;
		end if;
	end process;
	--process(str_1, str_2, str_3, btn_vec)
		
end arch;