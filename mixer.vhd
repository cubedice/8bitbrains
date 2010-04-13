library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mixer is
	port (
		wave1in,wave2in,wave3in,lfo1,lfo2: in std_logic_vector(11 downto 0);
		lfo1f,lfo2f 	: in std_logic_vector(7 downto 0);
		clk					: in std_logic;
		waveout				: out std_logic_vector(11 downto 0) );
end mixer;
architecture arch of mixer is

	signal lfo1cnt,lfo2cnt : integer range 0 to 131071;
	signal lfo1i,lfo2i : std_logic_vector(11 downto 0);
	signal wave12 : std_logic_vector(11 downto 0);
	signal wave123: std_logic_vector(11 downto 0);
	signal wavelfosum : std_logic_vector(12 downto 0);
	signal wavelfoprod : std_logic_vector(15 downto 0);
	signal wavelfo : std_logic_vector(12 downto 0);
	signal wave123prod : std_logic_vector(23 downto 0);
	signal wavelfo2 : std_logic_vector(13 downto 0);
begin

	process
	begin
		wait until clk'event and clk = '1';
		if (lfo1f < X"48" or lfo1f > X"50" ) and lfo1cnt /= 131071 then
			lfo1cnt <= lfo1cnt + 1;
		elsif lfo1f = (lfo1f'range => '0') then
			lfo1cnt <= 0;
		end if;
		
		if lfo1cnt = 131071 then
			lfo1i <= lfo1;
		end if;
		
		if (lfo1f > X"48" or lfo1f < X"50" ) and lfo2cnt /= 131071 then
			lfo2cnt <= lfo2cnt + 1;
		elsif (lfo1f < X"48" and lfo1f > X"50" ) then
			lfo2cnt <= 0;
		end if;
		
		if lfo2cnt = 131071 then
			lfo2i <= lfo2;
		end if;
	end process;
					

	wave12 <= std_logic_vector( unsigned("0"&wave1in(11 downto 1)) + unsigned("0"&wave2in(11 downto 1)) - unsigned(unsigned("0"&wave1in(11 downto 1)) * unsigned("0"&wave2in(11 downto 1))/ 4096 ) )(11 downto 0);


	wave123 <= std_logic_vector( unsigned(wave12) + unsigned("0"&wave3in(11 downto 1)) - unsigned( unsigned(wave12) * unsigned("0"&wave3in(11 downto 1))  / 4096) )(11 downto 0);
			
--	wavelfosum <=  std_logic_vector( unsigned("00"&wave123(11 downto 1)) + unsigned(lfo1) );
	
--	wavelfoprod <= std_logic_vector( unsigned(wave123(11 downto 0)) * unsigned(lfo1(11 downto 8)) );
	
--	wavelfo <= wavelfosum;
	
	wavelfo2 <= std_logic_vector( unsigned("00"&wave123(11 downto 0)) + unsigned(lfo2i(11 downto 2)) - unsigned(unsigned(wave123(11 downto 0)) * unsigned(lfo2i(11 downto 1)) / 4096) )(13 downto 0);
	
	waveout <= "0"&wavelfo2(11 downto 1);
	
end arch;