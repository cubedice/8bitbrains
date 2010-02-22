library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.mixeradd;
use work.mixersub;
use work.mixermult;

entity mixer is
	port (
		wave1in,wave2in,wave3in	: in std_logic_vector(11 downto 0);
		waveout				: out std_logic_vector(11 downto 0) );
end mixer;
architecture arch of mixer is
	component mixeradd IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
	END component;
	
	component mixersub IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
	END component;
	
	component mixermult
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
	end component;

	signal wave12,wave123 : std_logic_vector(12 downto 0);
	signal wave12sum : std_logic_vector(12 downto 0);
	signal wave12prod : std_logic_vector(23 downto 0);
	signal wave123sum : std_logic_vector(12 downto 0);
	signal wave123prod : std_logic_vector(23 downto 0);
begin
	add1 : mixeradd port map(	
					wave1in,
					wave2in,
					wave12sum );
								
	mult1 : mixermult port map(	
					wave1in,
					wave2in,
					wave12prod );
	
	sub1 : mixersub port map(
					wave12sum,
					('0' & wave12prod(23 downto 12)),
					wave12 );
					
					
	add2 : mixeradd port map(	
					wave12(11 downto 0),
					wave3in,
					wave123sum );
								
	mult2 : mixermult port map(	
					wave12(11 downto 0),
					wave3in,
					wave123prod );
	
	sub2 : mixersub port map(
					wave123sum,
					('0' & wave123prod(23 downto 12)),
					wave123 );
					
	waveout <= wave123(11 downto 0);
end arch;