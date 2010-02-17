library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity p2s is
	port (
		clk									: in std_logic;
		data_in 							: in std_logic_vector(11 downto 0);
		cs, ioclk, data_out					: out std_logic ); --b11,b12,b21,b22,b31,b32,bd,
end p2s;
architecture arch of p2s is
signal i_ioclk : std_logic;
signal io_clk_cnt : integer range 0 to 1;
signal io_en: std_logic;
signal cs_cnt : integer range 0 to 1;
signal data : std_logic_vector(11 downto 0); 

begin
	-- cs and io_en timing process
	-- ioclk process
	process(io_en, clk)
	begin
		if clk'event and clk = '1' then
			if io_en = '1' then
				--ioclk <= not ioclk;
				i_ioclk <= not i_ioclk;
			end if;
		end if;
	end process;
end arch;