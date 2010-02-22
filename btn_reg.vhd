library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity btn_reg is
	generic( N : integer := 12;
			 M : integer := 8 );
	port (
		clk				: in std_logic;
		btns			: in std_logic_vector(6 downto 0);
		btn_reg			: out std_logic_vector(6 downto 0) );
end btn_reg;
architecture arch of btn_reg is
	signal 	cnt 				: std_logic_vector(N-1 downto 0);
	signal 	btn_clk 			: std_logic;
	signal 	load 				: integer range 0 to 30;
	subtype shift 				is std_logic_vector(M-1 downto 0);
	type 	shiftarray 			is array(6 downto 0) of shift;
	signal 	shiftarr 			: shiftarray;
	signal 	tmp_btn_reg			: std_logic_vector(6 downto 0);
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
		for i in 6 downto 0 loop
			gen: for j in 0 to M-2 loop
				shiftarr(i)(j) <= shiftarr(i)(j+1);
			end loop;
			shiftarr(i)(M-1) <= btns(i);
		end loop;	
	end process;
	
	
	process
	begin
		wait until btn_clk'event and btn_clk = '1';
		
		for i in 6 downto 0 loop
			if shiftarr(i) = (shiftarr(i)'range => '1') then
				tmp_btn_reg(i) <= '1';
			elsif shiftarr(i) = (shiftarr(i)'range => '0') then
				tmp_btn_reg(i) <= '0';
			end if;
		end loop;
		if load = 30 then
			load <= 0;
			for i in 6 downto 0 loop
				btn_reg(i) <= tmp_btn_reg(i);
			end loop;
		else
			load <= load + 1;
		end if;
	end process;
	
	
end arch;
