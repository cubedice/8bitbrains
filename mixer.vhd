library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mixer_save_bank is
	port (
		clk			: in std_logic;
		bank_in		: in std_logic_vector(2 downto 0);
		save		: in std_logic;
		lfo_depth	: in integer range 2 to 15;
		lfo_depth_out: buffer integer range 2 to 15;
		save_mode_out : out std_logic);
end mixer_save_bank;
architecture arch of mixer_save_bank is
	signal save_mode,wren,prev_save,wait_cycle : std_logic;
	signal lfo_depth_t,lfo_depth_out_t : std_logic_vector(5 downto 0);
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
	lfo_depth_t <= std_logic_vector( to_unsigned(lfo_depth,6));
	lfo_depth_out <= to_integer(unsigned(lfo_depth_out_t(3 downto 0)));
	depth_bank : int_bank port map(
			bank_in,clk, lfo_depth_t,wren,lfo_depth_out_t );

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
use ieee.numeric_std.all;

entity mixer is
	port (
		wave1in,wave2in,wave3in,lfo2: in std_logic_vector(11 downto 0);
		lfo2f 				: in std_logic_vector(7 downto 0);
		clk					: in std_logic;
		save_bank   		: in std_logic_vector(2 downto 0);
		save_mode			: in std_logic;
		param				: in std_logic_vector(5 downto 0);
		modifier			: in std_logic_vector(1 downto 0);
		reset				: in std_logic;
		g1,g2,g3			: in std_logic;
		waveout				: out std_logic_vector(11 downto 0)
	 );
end mixer;
architecture arch of mixer is
	component mixer_save_bank is
		port (
		clk			: in std_logic;
		bank_in		: in std_logic_vector(2 downto 0);
		save		: in std_logic;
		lfo_depth	: in integer range 3 to 15;
		lfo_depth_out: buffer integer range 3 to 15;
		save_mode_out : out std_logic);
	end component;


	signal lfo2cnt : integer range 0 to 131071;
	signal lfo2i : std_logic_vector(11 downto 0);
	signal wave12 : std_logic_vector(11 downto 0);
	signal wave123: std_logic_vector(11 downto 0);
	signal wavelfosum : std_logic_vector(12 downto 0);
	signal wavelfoprod : std_logic_vector(15 downto 0);
	signal wavelfo : std_logic_vector(12 downto 0);
	signal wave123prod : std_logic_vector(23 downto 0);
	signal wavelfo2 : std_logic_vector(13 downto 0);
	signal lfo_depth, lfo_depth_t : integer range 2 to 15 := 4;
	signal prev_save_bank : std_logic_vector(2 downto 0);
	signal wait_cycle, ignore : std_logic;
begin

	the_save_bank : mixer_save_bank port map(
		clk, save_bank, save_mode, lfo_depth, lfo_depth_t, ignore );

	process( save_bank, modifier, clk )
	begin
		if reset = '1' then
			lfo_depth <= 3;
		elsif clk'event and clk = '1' then
			if param = "001010" then
				if modifier(1) = '1' then
					if modifier(0) = '1' and lfo_depth < 15 then
						lfo_depth <= lfo_depth + 1;
					elsif lfo_depth > 2 then
						lfo_depth <= lfo_depth - 1;
					else
						lfo_depth <= 2;
					end if;
				end if;
			end if;
			if prev_save_bank /= save_bank and save_mode = '0' then
				wait_cycle <= '1';
			end if;
			if wait_cycle = '1' then
				lfo_depth <= lfo_depth_t;
				wait_cycle <= '0';
			end if;
			prev_save_bank <= save_bank;
		end if;
	end process;

	process
	begin
		wait until clk'event and clk = '1';
		
		if lfo2f /= "00000000" and ( g1 = '1' or g2 = '1' or g3 = '1' )then
			if lfo2cnt /= 131071 then
				lfo2cnt <= lfo2cnt + 1;
			end if;
		else
			lfo2cnt <= 0;
		end if;
		
		if lfo2cnt = 131071 then
			lfo2i <= std_logic_vector(unsigned(lfo2(11 downto 4))*lfo_depth)(11 downto 0);
		else
			lfo2i <= (lfo2i'range => '0');
		end if;
	end process;
					

	wave12 <= std_logic_vector( unsigned("0"&wave1in(11 downto 1)) + unsigned("0"&wave2in(11 downto 1)) - unsigned(unsigned("0"&wave1in(11 downto 1)) * unsigned("0"&wave2in(11 downto 1))/ 4096 ) )(11 downto 0);


	wave123 <= std_logic_vector( unsigned(wave12) + unsigned("0"&wave3in(11 downto 1)) - unsigned( unsigned(wave12) * unsigned("0"&wave3in(11 downto 1))  / 4096) )(11 downto 0);
			
--	wavelfosum <=  std_logic_vector( unsigned("00"&wave123(11 downto 1)) + unsigned(lfo1) );
	
--	wavelfoprod <= std_logic_vector( unsigned(wave123(11 downto 0)) * unsigned(lfo1(11 downto 8)) );
	
--	wavelfo <= wavelfosum;

	wavelfo2 <= std_logic_vector( 	unsigned("00"&wave123(11 downto 0)) + 
									unsigned(lfo2i) - 
									unsigned(unsigned(wave123(11 downto 0)) * unsigned(lfo2i) / 4096) )(13 downto 0);

	waveout <= "0"&wavelfo2(11 downto 1);
	
end arch;