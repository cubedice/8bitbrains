library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity p2s is
	port (
		clk									: in std_logic;
		data_in 							: in std_logic_vector(11 downto 0);
		ld,cs, ioclk, data_out					: out std_logic ); --b11,b12,b21,b22,b31,b32,bd,
end p2s;
architecture arch of p2s is
signal i_ioclk : std_logic;
signal io_clk_cnt : integer range 0 to 1;
signal io_en: std_logic;
signal cycle : integer range 1 to 30;
signal data : std_logic_vector(11 downto 0); 
signal index : integer range 11 downto 0;
begin
	-- cs and io_en timing process
	-- ioclk process
	process(io_en, clk)
	begin
		if clk'event and clk = '1' then
			if io_en = '1' then
				i_ioclk <= not i_ioclk;
			else
				i_ioclk <= '1';
			end if;
		end if;
		ioclk <= i_ioclk;
	end process;
	
	process
	begin
	wait until clk'event and clk = '1';
		if cycle = 1 then
			ld <= '0';
		else
			ld <= '1';
		end if;
		
		if cycle > 2 and cycle < 29 then
			cs <= '0';
		else 
			cs <= '1';
		end if;
		
		if cycle > 3 and cycle < 28 then
			io_en <= '1';
		else 
			io_en <= '0';
		end if;
	
		if cycle < 30 then
			cycle <= cycle + 1;
		else
			cycle <= 1;
		end if;
	end process;
	
	-- data out spi process
	process
	begin
	wait until i_ioclk'event and i_ioclk = '0';
		data_out <= data_in(index);
		if index > 0 then
			index <= index - 1;
		else
			index <= 11;
		end if;
	end process;
end arch;