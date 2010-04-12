library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s2p is
	port (
		clk							: in std_logic;
		data_in 					: in std_logic_vector(9 downto 0);
		cs, ioclk 					: out std_logic;
		s1,s2,s3,xaxis,yaxis		: out std_logic_vector(7 downto 0) ); --b11,b12,b21,b22,b31,b32,bd,
end s2p;
architecture arch of s2p is
signal i_ioclk 		: std_logic;
signal io_clk_cnt 	: integer range 1 to 13;
signal io_en		: integer range -16 to 15;
signal cs_cnt 		: integer range 1 to 568;
subtype tmp is 		std_logic_vector(7 downto 0); 
type tmp_array is 	array(0 to 9) of tmp;
signal tmp_data 	: tmp_array;

begin
	-- cs and io_en timing process
	-- ioclk process
	process
	begin
	wait until clk'event and clk = '1';
		io_clk_cnt <= io_clk_cnt + 1;
		if io_en /= -1 then				
			if io_clk_cnt = 6 then
				ioclk <= '1';
				i_ioclk <= '1';
			elsif io_clk_cnt = 13 then
				i_ioclk <= '0';
				ioclk <= '0';
				io_en <= io_en - 1;
				io_clk_cnt <= 1;
			end if;
		elsif io_clk_cnt = 6 then
			ioclk <= '0';
			i_ioclk <= '0';
		end if;
		
		cs_cnt <= cs_cnt + 1;
		if cs_cnt < 430 then
			cs <= '1';
		else
			cs <= '0';
		end if;
		if cs_cnt = 464 then
			io_en <= 7;
		elsif cs_cnt = 568 then
			cs_cnt <= 1;
		end if;
		
		if io_en = -1 then
			-- capture is finished
			--b11 <= tmp_data(0);
			--b12 <= tmp_data(1);
			--b21 <= tmp_data(2);
			--b22 <= tmp_data(3);
			--b31 <= tmp_data(4);
			yaxis <= tmp_data(5);
			xaxis <= tmp_data(6);
			s1 <= tmp_data(7);
			s2 <= tmp_data(8);
			s3 <= tmp_data(9);
		end if;
	end process;
	
	-- clock input data process
	process(i_ioclk, io_en)
	begin
		if i_ioclk'event and i_ioclk = '1' then
			if io_en > -1 then
				for i in 0 to tmp_data'length - 1 loop
					tmp_data(i)(io_en) <= data_in(i);
				end loop;
			end if;
		end if;
	end process;

end arch;