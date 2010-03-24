library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.brain_pkg.all;


entity sequencer is
	port (
		s1,s2,s3				: in std_logic_vector(7 downto 0);
		gate1,gate2,gate3,clk	: in std_logic;
		arp_style				: in std_logic_vector(2 downto 0);
		octave_in				: in std_logic_vector(1 downto 0);
		freq1,freq2,freq3		: out std_logic_vector(12 downto 0) );
end sequencer;
architecture arch of sequencer is
	signal tempo_ctr 	: integer range 0 to 10000000;
	signal key 			: integer range 1 to 88;
	signal keyoffset 	: std_logic_vector(7 downto 0);
	signal index     	: std_logic_vector(6 downto 0);
	signal reset	 	: std_logic;
	signal octave		: integer range 1 to 3;
	constant 	STRING1																: std_logic_vector (1 DOWNTO 0):= "01";
	constant 	STRING2																: std_logic_vector (1 DOWNTO 0):= "10";
	constant 	STRING3																: std_logic_vector (1 DOWNTO 0):= "11";
	constant 	GUITARMODE															: integer:= 2;
	constant	BASSMODE															: integer:= 1;
	constant	HIGHMODE															: integer:= 3;
	component maj7 IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;
begin
	octave <= to_integer( unsigned( octave_in ) );
	sequence : maj7 port map(	
					index,
					clk,
					keyoffset );
	
	process
	begin
		wait until clk'event and clk = '1';
		if keyoffset = "11111111" then
			reset <= '1';
		else
			freq1 <= keytofreq( key + to_integer( unsigned(keyoffset) ) );
			reset <= '0';
		end if;
		if tempo_ctr > 1000000 then
			tempo_ctr <= 0;
		else
			tempo_ctr <= tempo_ctr + 1;
		end if;
	end process;
	
	process
	begin
		wait until gate1'event and gate1 = '1';
		key <= keynum( s1, STRING1, octave );
	end process;
	
	--process
	--begin
	--	wait until gate2'event and gate2 = '1';
	--	key <= keynum( s2, STRING2, octave );
	--end process;
	
	--	process
	--begin
	--	wait until gate3'event and gate3 = '1';
	--	key <= keynum( s3, STRING3, octave );
	--end process;
	
	process( reset, tempo_ctr, clk )
	begin
		if reset = '1' then
			index <= "0000000";
		elsif clk'event and clk = '1' then
			if tempo_ctr = 0 and arp_style /= "00" then
				index <= index + 1;
			end if;
		end if;
	end process;
		
end arch;