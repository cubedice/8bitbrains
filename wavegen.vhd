library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--my_slv <= std_logic_vector(to_unsigned(my_integer, my_slv'length));

entity wavegen_save_bank is
	port (
		clk			: in std_logic;
		bank_in		: in std_logic_vector(2 downto 0);
		save		: in std_logic;
		wave_sel	: in std_logic_vector(2 downto 0);
		wave_sel_out: buffer std_logic_vector(2 downto 0);
		save_mode_out : out std_logic);
end wavegen_save_bank;
architecture arch of wavegen_save_bank is
	signal save_mode,wren,prev_save,wait_cycle : std_logic;
	signal wave_sel_out_t : std_logic_vector(5 downto 0);
	component int_bank IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			wren		: IN STD_LOGIC  := '0';
			q		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
		);
	END component;

begin
	save_mode <= save;
	wave_sel_out <= wave_sel_out_t(2 downto 0);
	mode_bank : int_bank port map(
		bank_in,clk, "000"&wave_sel,wren,wave_sel_out_t );

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

--	process(save)
--	begin
--		if save'event and save='1' then
--			save_mode <= not save_mode;
--		end if;
--	end process;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--my_slv <= std_logic_vector(to_unsigned(my_integer, my_slv'length));

entity wavegen is
	port (
		clk			: in std_logic;
		freq1,freq2,freq3 : in std_logic_vector(12 downto 0);
		save_bank   : in std_logic_vector(2 downto 0);
		save_mode	: in std_logic;
		wave_form_rot : in std_logic_vector(1 downto 0);
		lfo1,lfo2	: in std_logic_vector(7 downto 0);
		btn_vec		: in std_logic_vector(6 downto 0);
		drum_mode 	: in std_logic;
		wave1, wave2, wave3,lfo1_o,lfo2_o : out std_logic_vector(11 downto 0)
		);
end wavegen;
architecture arch of wavegen is

	-- TODO: add drumsounds

	component square IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
		);
	END component;
	
	component triangle IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
		);
	END component;
	
	component sin IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
		);
	END component;
	
	component lfosin IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
	END component;
	
	component addrgen is
	port (
		clk					: in std_logic;
		freq 				: in std_logic_vector(12 downto 0);
		addr				: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component lfoaddrgen is
	port (
		clk					: in std_logic;
		freq 				: in std_logic_vector(7 downto 0);
		addr				: out std_logic_vector(11 downto 0)
		);
	end component;
	
	component wavegen_save_bank is
	port (
		clk			: in std_logic;
		bank_in		: in std_logic_vector(2 downto 0);
		save		: in std_logic;
		wave_sel	: in std_logic_vector(2 downto 0);
		wave_sel_out: buffer std_logic_vector(2 downto 0);
		save_mode_out : out std_logic
		);
	end component;
	signal wave_sel, wave_sel_t : std_logic_vector(2 downto 0);
	signal addr1, addr2, addr3 : std_logic_vector(6 downto 0);
	signal tr1_o,tr2_o,tr3_o,sq1_o,sq2_o,sq3_o,sn1_o,sn2_o,sn3_o,addrlfo1,addrlfo2,lfo1t, lfo2t : std_logic_vector(11 downto 0);
	signal prev_wave_form_rot : std_logic_vector(1 downto 0);
	signal prev_save_bank : std_logic_vector(2 downto 0);
	signal wait_cycle, IGNORE: std_logic;
begin
	waveselect_bank : wavegen_save_bank port map(
		clk, save_bank, save_mode, wave_sel, wave_sel_t, IGNORE );
	
	addr_gen1 : addrgen port map(
		clk, freq1, addr1 );
	addr_gen2 : addrgen port map(
		clk, freq2, addr2 );
	addr_gen3 : addrgen port map(
		clk, freq3, addr3 );
	addr_genlfo1 : lfoaddrgen port map(
		clk, lfo1, addrlfo1 );
	addr_genlfo2 : lfoaddrgen port map(
		clk, lfo2, addrlfo2 );
	
	tri1 : triangle port map(
		addr1, clk, tr1_o );
	tri2 : triangle port map(
		addr2, clk, tr2_o );
	tri3 : triangle port map(
		addr3, clk, tr3_o );
	
	sq1 : square port map(
		addr1, clk, sq1_o );
	sq2 : square port map(
		addr2, clk, sq2_o );
	sq3 : square port map(
		addr3, clk, sq3_o );
		
	sn1 : sin port map(
		addr1, clk, sn1_o );
	sn2 : sin port map(
		addr2, clk, sn2_o );
	sn3 : sin port map(
		addr3, clk, sn3_o );
		
	lfo1w : lfosin port map(
		addrlfo1, clk, lfo1t );
	lfo2w : lfosin port map(
		addrlfo2, clk, lfo2t );
	lfo1_o <= lfo1t;
	lfo2_o <= lfo2t;
		
	process( save_bank, clk )
	begin
		if clk'event and clk = '1' then
			if prev_wave_form_rot(0) /= wave_form_rot(0) then
				if wave_form_rot(0) = '1' then
					if wave_form_rot(1) = '1' then
						wave_sel <= wave_sel + 1;
					else
						wave_sel <= wave_sel - 1;
					end if;
				end if;
			end if;
			prev_wave_form_rot <= wave_form_rot;
			prev_save_bank <= save_bank;
			
			if prev_save_bank /= save_bank and save_mode = '0' then
				wait_cycle <= '1';
			end if;
			if wait_cycle = '1' then
				wave_sel <= wave_sel_t;
				wait_cycle <= '0';
			end if;
			
		end if;
		if drum_mode = '1' then
			-- TODO: select drum sounds
			-- i.e., if btn11,then this,btn12,that
		else
			case wave_sel is
				when "000" =>
					wave1 <= tr1_o;
					wave2 <= tr2_o;
					wave3 <= tr3_o;
				when "001" =>
					wave1 <= sq1_o;
					wave2 <= sq2_o;
					wave3 <= sq3_o;
				when "010" =>
					wave1 <= sn1_o;
					wave2 <= sn2_o;
					wave3 <= sn3_o;
				when others =>
					wave1 <= tr1_o;
					wave2 <= tr2_o;
					wave3 <= tr3_o;
			end case;
		end if;
	end process;
end arch;