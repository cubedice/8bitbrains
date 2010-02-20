library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.brain_pkg.all;
--my_slv <= std_logic_vector(to_unsigned(my_integer, my_slv'length));

entity controller is
	port (
		clk														: in std_logic;
		str_1, str_2, str_3, VASDRin							: in std_logic_vector(7 downto 0);
		btn_vec													: in std_logic_vector(6 downto 0); -- btn_11, btn_12 ... btn_drm
		edit_select_rot,edit_change_rot, waveform_rot 			: in std_logic_vector(1 downto 0);
		wave_bank_rot 											: in std_logic_vector(1 downto 0);
		reset													: in std_logic;
		VASDRld													: out std_logic;
		VASDRout,q												: out std_logic_vector(7 downto 0);
		voice_sel, VASDR_sel									: out std_logic_vector(2 downto 0);
		gate1,gate2,gate3,q_ld,filtfreq_ld						: out std_logic;
		freq1,freq2,freq3										: out std_logic_vector(12 downto 0);
		filter_freq												: out std_logic_vector(11 downto 0)
		);	
end controller;
architecture arch of controller is
signal 		chord2offset, chord3offset 									: integer range 1 to 44;
signal 		curbtns   													: std_logic_vector(6 downto 0);
signal 		prev_trig_vec,trig_vec,diff_trig_vec,diff_btn_vec	  		: std_logic_vector(6 downto 0);
signal	 	prev_play_vec,play_vec,diff_play_vec 						: std_logic_vector(5 downto 0);
constant 	string1														: std_logic_vector (1 DOWNTO 0):= "01";
constant 	guitarmode													: std_logic:= '0';

	-- button aliases
alias btn11 is btn_vec(6);
alias btn12 is btn_vec(5);
alias btn21 is btn_vec(4);
alias btn22 is btn_vec(3);
alias btn31 is btn_vec(2);
alias btn32 is btn_vec(1);

	-- diff button aliases
alias diffbtn11:std_logic is diff_btn_vec(6);
alias diffbtn12 is diff_btn_vec(5);
alias diffbtn21 is diff_btn_vec(4);
alias diffbtn22 is diff_btn_vec(3);
alias diffbtn31 is diff_btn_vec(2);
alias diffbtn32 is diff_btn_vec(1);
	
	-- trigger aliases
alias trig11:std_logic is trig_vec(6);
alias trig12 is trig_vec(5);
alias trig21 is trig_vec(4);
alias trig22 is trig_vec(3);
alias trig31 is trig_vec(2);
alias trig32 is trig_vec(1);
	
	-- play aliases
alias playch1 is play_vec(5);
alias playch2 is play_vec(4);
alias playch3 is play_vec(3);
alias playstr1 is play_vec(2);
alias playstr2 is play_vec(1);
alias playstr3 is play_vec(0);

	-- diff play aliases
alias diffplaych1 is diff_play_vec(5);
alias diffplaych2 is diff_play_vec(4);
alias diffplaych3 is diff_play_vec(3);
alias diffplaystr1 is diff_play_vec(2);
alias diffplaystr2 is diff_play_vec(1);
alias diffplaystr3 is diff_play_vec(0);	
	

begin
	
	
	-- button press detection
	process(clk,reset,btn_vec)
	begin
		if btn_vec /= curbtns then
			diff_btn_vec <= curbtns xor btn_vec;
		end if;
		
		if reset = '1' then
			curbtns <= "0000000";
			play_vec <= "000000";			
			prev_play_vec <= "000000";
		elsif clk'event and clk = '1' then
			-- which buttons have changed?
			
			if diff_btn_vec /= "0000000" then
				
				
				-- we were not playing a chord
				if play_vec(5 downto 3) = "000" then
				
					-- are we playing anything now?
					
					-- chord 1 ?
					if diffbtn11 = '1' and diffbtn12 = '1' and btn11 = '1' and btn12 = '1' then  --chord 11
						trig_vec <= "1100000";
						playch1 <= '1';
					elsif diffbtn11 = '1' and diffbtn22 = '1' and btn11 = '1' and btn22 = '1' then --chord 12
						trig_vec <= "1001000";
						playch1 <= '1';
					elsif diffbtn11 = '1' and diffbtn32 = '1' and btn11 = '1' and btn32 = '1' then --chord 13
						trig_vec <= "1000010";
						playch1 <= '1';
						
					-- chord 2 ?
					elsif diffbtn21 = '1' and diffbtn22 = '1' and btn21 = '1' and btn22 = '1' then --chord 21
						trig_vec <= "0011000";
						playch2 <= '1';
					elsif diffbtn21 = '1' and diffbtn32 = '1' and btn21 = '1' and btn32 = '1' then --chord 22
						trig_vec <= "0110000";
						playch2 <= '1';
					elsif diffbtn21 = '1' and diffbtn12 = '1' and btn21 = '1' and btn12 = '1' then --chord 23
						trig_vec <= "0010010";
						playch2 <= '1';
						
					-- chord 3 ?
					elsif diffbtn31 = '1' and diffbtn32 = '1' and btn31 = '1' and btn32 = '1' then --chord 31
						trig_vec <= "0000110";
						playch3 <= '1';
					elsif diffbtn31 = '1' and diffbtn12 = '1' and btn31 = '1' and btn12 = '1' then --chord 32
						trig_vec <= "0100100";
						playch3 <= '1';
					elsif diffbtn31 = '1' and diffbtn22 = '1' and btn31 = '1' and btn22 = '1' then --chord 33
						trig_vec <= "0001100";
						playch3 <= '1';
					
					else

						if ((diffbtn11 = '1' and btn11 = '1') or (diffbtn12 = '1' and btn12 = '1')) and playstr1 = '0' then -- string 1
							-- NOTE: this should work since if both btnX1 and btnX2 were pressed, it should have bee caught in the 
							-- chord elsifs
							trig11 <= btn11;
							trig12 <= btn12;
							playstr1 <= '1';
						elsif ((diffbtn11 = '1' and btn11 = '0') or (diffbtn12 = '1' and btn12 = '0')) and playstr1 = '1' then
							trig11 <= '0';
							trig12 <= '0';
							playstr1 <= '0';
						end if;
						
						if ((diffbtn21 = '1' and btn21 = '1') or (diffbtn22 = '1' and btn22 = '1')) and playstr2 = '0' then -- string 2
							trig21 <= btn21;
							trig22 <= btn22;
							playstr2 <= '1';
						elsif ((diffbtn21 = '1' and btn21 = '0') or (diffbtn22 = '1' and btn22 = '0')) and playstr2 = '1' then
							trig21 <= '0';
							trig22 <= '0';
							playstr2 <= '0';
						end if;
						
						if ((diffbtn31 = '1' and btn31 = '1') or (diffbtn32 = '1' and btn32 = '1')) and playstr3 = '0' then -- string 3
							trig31 <= btn31;
							trig32 <= btn32;
							playstr3 <= '1';
						elsif ((diffbtn31 = '1' and btn31 = '0') or (diffbtn32 = '1' and btn32 = '0')) and playstr3 = '1' then
							trig31 <= '0';
							trig32 <= '0';
							playstr3 <= '0';
						end if;
					end if;
				
				
					-- has "alternate" string button been triggered?
					--if playstr1 = '1' and ((trig11 = '1' and btn12 = '1') or (trig12 = '1' and btn11 = '1')) then
					--	trig11 <= not trig11;
					--	trig12 <= not trig12;
						-- TODO: blip gate for wave1
					--end if;
					--if playstr2 = '1' and ((trig21 = '1' and btn22 = '1') or (trig22 = '1' and btn21 = '1')) then
					--	trig21 <= not trig21;
					--	trig22 <= not trig22;
						-- TODO: blip gate for wave2
					--end if;
					--if playstr3 = '1' and ((trig31 = '1' and btn32 = '1') or (trig32 = '1' and btn31 = '1')) then
					--	trig32 <= not trig32;
					--	trig31 <= not trig31;
						-- TODO: blip gate for wave3
					--end if;
								
					
				-- we were playing a chord
				elsif playch1 = '1' then
					if btn11 = '1' then
						if btn12 = '1' then
							-- TODO: recalc waves for chord11							
							trig_vec(4 downto 0) <= "00000";
							trig12 <= '1';
						elsif btn22 = '1' then
							-- TODO: recalc waves for chord12							
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig22 <= '1';
						elsif btn32 = '1' then
							-- TODO: recalc waves for chord13
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig32 <= '1';
						end if;
					else
						playch1 <= '0';
					end if;
				elsif playch2 = '1' then
					if btn21 = '1' then
						if btn22 = '1' then
							-- TODO: recalc waves for chord21
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig22 <= '1';
						elsif btn12 = '1' then
							-- TODO: recalc waves for chord22
							trig_vec(4 downto 0) <= "00000";
							trig12 <= '1';
						elsif btn32 = '1' then
							-- TODO: recalc waves for chord23
							
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig32 <= '1';
						end if;
					else
						playch2 <= '0';
					end if;
				elsif playch3 = '1' then
					if btn31 = '1' then
						if btn32 = '1' then							
							-- TODO: recalc waves for chord31
							trig_vec(5 downto 2) <= "0000";
							trig_vec(0) <= '0';
							trig32 <= '1';
						elsif btn12 = '1' then
							-- TODO: recalc waves for chord32							
							trig_vec(4 downto 0) <= "00000";
							trig12 <= '1';
						elsif btn22 = '1' then
							-- TODO: recalc waves for chord33
							trig_vec(5 downto 4) <= "00";
							trig_vec(2 downto 0) <= "000";
							trig22 <= '1';
						end if;
					else
						playch3 <= '0';
					end if;
				end if;
				
				prev_play_vec <= play_vec;
				prev_trig_vec <= trig_vec;
				curbtns <= btn_vec;
			end if;
		end if;		
	end process;
	
	-- gate control, pitch determining
	process(clk,reset,play_vec,trig_vec)
	begin
		if play_vec /= prev_play_vec then
			-- which chords/string play events have changed?
			diff_play_vec <= play_vec xor prev_play_vec;
		end if;
		if trig_vec /= prev_trig_vec then
			-- which note triggers (buttons that currently impact note playing) have changed?
			diff_trig_vec <= trig_vec xor prev_trig_vec;
		end if;
		
		if reset = '1' then
			diff_play_vec <= "000000";
			freq1 <= "0000000000000";
		elsif clk'event and clk = '1' then
			
			-- will we start playing a chord?
			if diffplaych1 = '1' and playch1 = '1' then  -- now playing chord 1
				-- lock in str1
				freq1 <= frequency(str_1,string1,guitarmode);
				gate1 <= '1';
				gate2 <= '1';
				gate3 <= '1';
			elsif diffplaych2 = '1' and playch2 = '1' then -- now playing chord 2
				-- lock in str2
				gate1 <= '1';
				gate2 <= '1';
				gate3 <= '1';
			elsif diffplaych3 = '1' and playch3 = '1' then -- now playing chord 3
				-- lock in str3
				gate1 <= '1';
				gate2 <= '1';
				gate3 <= '1';
				
			else -- we aren't playing a chord
			
				-- now playing str 1
				if diffplaystr1 = '1' and playstr1 = '1' then 
					freq1 <= frequency(str_1,string1,guitarmode);
					gate1 <= '1';	
				end if;
				if diffplaystr2 = '1' and playstr2 = '1' then -- now playing str 2
					-- lock in str2
					gate2 <= '1';
				end if;
				if diffplaystr3 = '1' and playstr3 = '1' then -- now playing str 3
					-- lock in str3
					gate3 <= '1';
				end if;
			end if;
			
			-- will we stop playing a chord/string ?
			if diffplaych1 = '1' and playch1 = '0' then
				gate1 <= '0';
				gate2 <= '0';
				gate3 <= '0';
			elsif diffplaych2 = '1' and playch2 = '0' then
				gate1 <= '0';
				gate2 <= '0';
				gate3 <= '0';
			elsif diffplaych3 = '1' and playch3 = '0' then
				gate1 <= '0';
				gate2 <= '0';
				gate3 <= '0';
			end if;
			if diffplaystr1 = '1' and playstr1 = '0' then
				gate1 <= '0';
				freq1 <= (freq1'range => '0');
			end if;
			if diffplaystr2 = '1' and playstr2 = '0' then
				gate2 <= '0';
				freq2 <= (freq2'range => '0');
			end if;
			if diffplaystr3 = '1' and playstr3 = '0' then
				gate3 <= '0';
				freq3 <= (freq3'range => '0');
			end if;
		end if;		
	end process;
end arch;