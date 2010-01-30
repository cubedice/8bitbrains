library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity p2s is
	port (
		clk,start,ioclk							: in std_logic;
		data_in 								: in std_logic_vector(9 downto 0);
		finished, ioclk_en 						: out std_logic;
		b11,b12,b21,b22,b31,b32,bd,s1,s2,s3		: out std_logic_vector(7 downto 0) );
end p2s;
architecture arch of p2s is
signal io_wait: integer range 0 to 50;
signal capture: integer range -1 to 7;
signal working: std_logic;
begin
	process(start, clk, io_wait)
	begin
		if start'event and start = '1' then
			finished <= '0';
			working <= '1';
		end if;
		if clk'event and clk = '1' and working = '1' and io_wait < 36 then
			io_wait <= io_wait + 1;
			if io_wait = 36 then
				--capture input
				ioclk_en <= '1';
			end if;
		end if;
	end process;
	process(ioclk, working)
	begin
		if ioclk'event and ioclk='1' and working = '1' then
			b11(capture) <= data_in(0);
			b12(capture) <= data_in(1);
			b21(capture) <= data_in(2);
			b22(capture) <= data_in(3);
			b31(capture) <= data_in(4);
			b32(capture) <= data_in(5);
			bd(capture) <= data_in(6);
			s1(capture) <= data_in(7);
			s2(capture) <= data_in(8);
			s3(capture) <= data_in(9);
			capture <= capture - 1;
			if capture = -1 then
				-- capture is finished
				working <= '0';
				ioclk_en <= '0';
				capture <= 7;
				io_wait <= 0;
				finished <= '1';
			end if;
		end if;
	end process;
end arch;