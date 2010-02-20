library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity btn_reg is
	generic( N : integer := 4 );
	port (
		clk				: in std_logic;
		btns			: in std_logic_vector(6 downto 0);
		btn_reg			: out std_logic_vector(6 downto 0) );
end btn_reg;
architecture arch of btn_reg is
	signal cnt : std_logic_vector(N-1 downto 0);
	signal btn_clk : std_logic;
begin
	process
	begin
	wait until clk'event and clk = '1';
		cnt <= cnt + 1;
		if cnt = (cnt'range => '1') then
			cnt <= (cnt'range => '0');
			btn_clk <= '1';
		elsif cnt(N-1) = '0' and cnt(N-2 downto 0) = CONV_STD_LOGIC_VECTOR(0,N-1) then
			btn_clk <= '0';
		end if;
	end process;
	
	process
	begin
	wait until btn_clk'event and btn_clk = '1';
		btn_reg <= btns;
	end process;
end arch;
