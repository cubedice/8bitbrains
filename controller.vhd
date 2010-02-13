library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity controller is
	port (
		clk														: in std_logic;
		str_1, str_2, str_3 									: in std_logic_vector(7 downto 0);
		btn_vec													: in std_logic_vector(6 downto 0); -- btn_11, btn_12 ... btn_drm
		edit_select_rot,edit_change_rot, waveform_rot 			: in std_logic_vector(1 downto 0);
		wave_bank_rot 											: in std_logic_vector(1 downto 0);
		amplitude, attack, sustain, delay, release				: out std_logic_vector(7 downto 0);
		channel_sel												: out std_logic_vector(2 downto 0);
		p_str_1, p_str_2, p_str_3, p_ch_11, p_ch_12, p_ch_13	: out std_logic;
		p_ch_21, p_ch_22, p_ch_31, p_ch_32						: out std_logic );
end controller;
architecture arch of controller is
signal playing : std_logic;
constant btn_11 	: std_logic_vector (6 DOWNTO 0):= "1000000";
constant btn_12 	: std_logic_vector (6 DOWNTO 0):= "0100000";
constant btn_21 	: std_logic_vector (6 DOWNTO 0):= "0010000";
constant btn_22 	: std_logic_vector (6 DOWNTO 0):= "0001000";
constant btn_31 	: std_logic_vector (6 DOWNTO 0):= "0000100";
constant btn_32 	: std_logic_vector (6 DOWNTO 0):= "0000010";
constant btn_drm 	: std_logic_vector (6 DOWNTO 0):= "0000001";
constant btns_11_12	: std_logic_vector (6 DOWNTO 0):= "1100000";
constant btns_11_21 : std_logic_vector (6 DOWNTO 0):= "1010000";
constant btns_11_22	: std_logic_vector (6 DOWNTO 0):= "1001000";
constant btns_11_31	: std_logic_vector (6 DOWNTO 0):= "1000100";
constant btns_11_32 : std_logic_vector (6 DOWNTO 0):= "1000010";
constant btns_11_drm: std_logic_vector (6 DOWNTO 0):= "1000001";
constant btns_12_21 : std_logic_vector (6 DOWNTO 0):= "0110000";
constant btns_12_22	: std_logic_vector (6 DOWNTO 0):= "0101000";
constant btns_12_31	: std_logic_vector (6 DOWNTO 0):= "0100100";
constant btns_12_32 : std_logic_vector (6 DOWNTO 0):= "0100010";
constant btns_12_drm: std_logic_vector (6 DOWNTO 0):= "0100001";
constant btns_21_22	: std_logic_vector (6 DOWNTO 0):= "0011000";
constant btns_21_31	: std_logic_vector (6 DOWNTO 0):= "0010100";
constant btns_21_32 : std_logic_vector (6 DOWNTO 0):= "0010010";
constant btns_21_drm: std_logic_vector (6 DOWNTO 0):= "0010001";
constant btns_22_31	: std_logic_vector (6 DOWNTO 0):= "0001100";
constant btns_22_32 : std_logic_vector (6 DOWNTO 0):= "0001010";
constant btns_22_drm: std_logic_vector (6 DOWNTO 0):= "0001001";
constant btns_31_32 : std_logic_vector (6 DOWNTO 0):= "0000110";
constant btns_31_drm: std_logic_vector (6 DOWNTO 0):= "0000101";
constant btns_32_drm: std_logic_vector (6 DOWNTO 0):= "0000011";
begin
	process(btn_vec, clk)
	begin
		if playing ='1' and btn_vec'event then
			playing <= '0';
		end if;
		if clk'event and clk='1' and playing = '0' then
			playing <='1';
			case btn_vec is
				when btn_11  => --or btn_12
					p_str_1 <= '1';
				when btn_21 => -- or btn_22
					p_str_2 <= '1';
				when btn_31 => --  or btn_32
					p_str_3 <= '1';
				when btns_11_12 =>
					p_ch_11 <= '1';
				when btns_11_22 =>
					p_ch_12 <= '1';
				when btns_11_32 =>
					p_ch_13 <= '1';
				when btns_21_22 =>
					p_ch_21 <= '1';
				--when btns_21_12 =>
				--	p_ch_22 <= '1';				
				--when btns_21_32 =>
				--	p_ch_23 <= '1';		
				when btns_31_32 =>
					p_ch_31 <= '1';		
				--when btns_31_22 =>
				--	p_ch_32 <= '1';	
				--when btns_31_12 =>
				--	p_ch_33 <= '1';
				when others =>
					playing <= '0';
			end case;
		end if;
	end process;
	--process(str_1, str_2, str_3, btn_vec)
		
end arch;