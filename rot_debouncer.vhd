library ieee;
use ieee.std_logic_1164.all;

entity rot_debouncer is
	generic( M : integer := 8 );
	port (
		clk				: in std_logic;
		switches		: in std_logic_vector(1 downto 0);
		dbswitches		: out std_logic_vector(1 downto 0) );
end rot_debouncer;
architecture arch of rot_debouncer is
	signal shift : std_logic_vector(M-1 downto 0);
	signal t_s   : std_logic;
begin
--	process
--	begin
--		wait until clk'event and clk = '1';
--		gen: for i in 0 to M-2 loop
--			shift(i) <= shift(i+1);
--		end loop;
--		shift(M-1) <= switch;
--		if shift = (shift'range => '0') then
--			t_s <= '0';
--		elsif shift = (shift'range => '1') then
--			t_s <= '1';
--		end if;
--	end process;
--	
--	dbswitch <= t_s;
end arch;
