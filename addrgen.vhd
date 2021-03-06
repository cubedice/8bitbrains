library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.lpm_divide0;

entity addrgen is
	port (
		clk					: in std_logic;
		freq 				: in std_logic_vector(12 downto 0);
		addr				: out std_logic_vector(6 downto 0)
		 );
end addrgen;
architecture arch of addrgen is
	signal tmp_addr : std_logic_vector(6 downto 0);
	signal count : std_logic_vector(18 downto 0);
	signal count_end,count_end_t	: std_logic_vector(18 downto 0);
	signal remain : std_logic_vector(12 downto 0);
	signal flip		: std_logic;
	constant numer : std_logic_vector(18 downto 0) := std_logic_vector(to_unsigned(196680,19));
	component lpm_divide0 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		denom		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (18 DOWNTO 0);
		quotient	: OUT STD_LOGIC_VECTOR (18 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
	END component;
begin
	div1 : lpm_divide0 port map( clk, freq, numer, count_end, remain);
	process(clk, freq)
	begin
		if rising_edge(clk) then
			if flip = '1' and remain > 129808 then
				count_end_t <= std_logic_vector(unsigned(count_end) + 2);
			elsif flip = '1' and remain > 64904 then
				count_end_t <= std_logic_vector(unsigned(count_end) + 1);
			else
				count_end_t <= count_end;
			end if;
			if freq /= (freq'range => '0') then
				count <= count + 1;
				if count >= count_end_t then
					count <= (count'range => '0');
					tmp_addr <= tmp_addr + 1;
					addr <= tmp_addr;
					flip <= not flip;
				end if;
			else
				addr <= "0000000";
			end if;
		end if;
	end process;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.lpm_divide0;

entity lfoaddrgen is
	port (
		clk					: in std_logic;
		freq 				: in std_logic_vector(7 downto 0);
		addr				: out std_logic_vector(11 downto 0)
		 );
end lfoaddrgen;
architecture arch of lfoaddrgen is
	signal tmp_addr : std_logic_vector(11 downto 0);
	signal count : std_logic_vector(12 downto 0);
	signal count_end	: std_logic_vector(12 downto 0);
	signal none : std_logic_vector(7 downto 0);
	constant numer : std_logic_vector(12 downto 0) := "1100000000010";

begin
	count_end <= std_logic_vector( unsigned(numer) / unsigned(freq) );
	process(clk, freq)
	begin
		if clk'event and clk = '1' then
			if freq /= (freq'range => '0') then
				count <= count + 1;
				if count >= count_end then
					count <= (count'range => '0');
					tmp_addr <= tmp_addr + 1;
					addr <= tmp_addr;
				end if;
			end if;
		end if;
	end process;
end arch;