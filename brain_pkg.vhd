library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_std_logic_vector;

package brain_pkg is
	function keynum ( str_val,strnum : std_logic_vector; octave : integer ) return integer;
	function keytofreq( keyn:integer ) return std_logic_vector;
	function frequency( str_val,strnum : std_logic_vector; octave : integer ) return std_logic_vector;
	function chordfrequency( str_val,strnum : std_logic_vector; octave,chord_offset : integer ) return std_logic_vector;
	function attack_wave( ctr,tot : std_logic_vector; wave :std_logic_vector ) return std_logic_vector;
	function decay_wave( ctr,tot : std_logic_vector; wave :std_logic_vector ) return std_logic_vector;
	function release_wave( ctr,tot : std_logic_vector; wave :std_logic_vector ) return std_logic_vector;
end;

package body brain_pkg is
	function attack_wave( ctr, tot : std_logic_vector; wave : std_logic_vector ) return std_logic_vector is
		variable intermediate : unsigned( 19 downto 0 );
		variable result : std_logic_vector( 19 downto 0 );
	begin
		intermediate := unsigned(ctr) * unsigned(wave);
		result := std_logic_vector(intermediate / unsigned(tot));
		if result >= "00000001000000000000" then
			result(11 downto 0) := "111111111111";
		end if;
		return result(11 downto 0);
	end attack_wave;
	
	function decay_wave( ctr, tot : std_logic_vector; wave : std_logic_vector ) return std_logic_vector is
		variable dwave : std_logic_vector( 11 downto 0 );
		variable intermediate : unsigned( 19 downto 0 );
		variable result : std_logic_vector( 19 downto 0 );
	begin
		dwave := '0' & wave(11 downto 1);
		intermediate := unsigned(ctr) * unsigned(dwave);
		result := std_logic_vector(intermediate / unsigned(tot));
		result := std_logic_vector(unsigned(result) + unsigned(dwave));
		if result >= "00000001000000000000" then
			result(11 downto 0) := "111111111111";
		end if;
		return result(11 downto 0);
	end decay_wave;
	
	function release_wave( ctr, tot : std_logic_vector; wave : std_logic_vector ) return std_logic_vector is
		variable intermediate : unsigned( 19 downto 0 );
		variable result : std_logic_vector( 19 downto 0 );
		variable dwave : std_logic_vector( 11 downto 0 );
	begin
		dwave := '0' & wave(11 downto 1);
		intermediate := unsigned(ctr) * unsigned(dwave);
		result := std_logic_vector(intermediate / unsigned(tot));
		if result >= "00000001000000000000" then
			result(11 downto 0) := "111111111111";
		end if;
		return result(11 downto 0);
	end release_wave;
	
	function frequency( str_val,strnum : std_logic_vector; octave : integer ) return std_logic_vector is
		variable freq : std_logic_vector( 12 downto 0 );
		variable keyn : integer range 1 to 88;
	begin
		keyn := keynum( str_val, strnum,octave );
		freq := keytofreq( keyn );
		
		return freq;
	end frequency;
	
	function keytofreq( keyn:integer ) return std_logic_vector is
		variable freq : std_logic_vector( 12 downto 0);
	begin
		case keyn is 
			when 1 =>
				freq := conv_STD_LOGIC_VECTOR(27,13);
			when 2 =>
				freq := CONV_STD_LOGIC_VECTOR(29,13);
			when 3 =>
				freq := CONV_STD_LOGIC_VECTOR(31,13);
			when 4 =>
				freq := CONV_STD_LOGIC_VECTOR(33,13);
			when 5 =>
				freq := CONV_STD_LOGIC_VECTOR(35,13);
			when 6 =>
				freq := CONV_STD_LOGIC_VECTOR(37,13);
			when 7 =>
				freq := CONV_STD_LOGIC_VECTOR(39,13);
			when 8 =>
				freq := CONV_STD_LOGIC_VECTOR(41,13);
			when 9 =>
				freq := CONV_STD_LOGIC_VECTOR(44,13);
			when 10 =>
				freq := CONV_STD_LOGIC_VECTOR(46,13);
			when 11 =>
				freq := CONV_STD_LOGIC_VECTOR(59,13);
			when 12 =>
				freq := CONV_STD_LOGIC_VECTOR(52,13);
			when 13 =>
				freq := CONV_STD_LOGIC_VECTOR(55,13);
			when 14 =>
				freq := CONV_STD_LOGIC_VECTOR(58,13);
			when 15 =>
				freq := CONV_STD_LOGIC_VECTOR(62,13);
			when 16 =>
				freq := CONV_STD_LOGIC_VECTOR(65,13);
			when 17 =>
				freq := CONV_STD_LOGIC_VECTOR(69,13);
			when 18 =>
				freq := CONV_STD_LOGIC_VECTOR(73,13);
			when 19 =>
				freq := CONV_STD_LOGIC_VECTOR(78,13);
			when 20 =>
				freq := CONV_STD_LOGIC_VECTOR(82,13);
			when 21 =>
				freq := CONV_STD_LOGIC_VECTOR(87,13);
			when 22 =>
				freq := CONV_STD_LOGIC_VECTOR(92,13);
			when 23 =>
				freq := CONV_STD_LOGIC_VECTOR(98,13);
			when 24 =>
				freq := CONV_STD_LOGIC_VECTOR(104,13);	
			when 25 =>
				freq := CONV_STD_LOGIC_VECTOR(110,13);	
			when 26 =>
				freq := CONV_STD_LOGIC_VECTOR(117,13);
			when 27 =>
				freq := CONV_STD_LOGIC_VECTOR(123,13);	
			when 28 =>
				freq := CONV_STD_LOGIC_VECTOR(131,13);	
			when 29 =>
				freq := CONV_STD_LOGIC_VECTOR(139,13);	
			when 30 =>
				freq := CONV_STD_LOGIC_VECTOR(147,13);
			when 31 =>
				freq := CONV_STD_LOGIC_VECTOR(156,13);	
			when 32 =>
				freq := CONV_STD_LOGIC_VECTOR(165,13);	
			when 33 =>
				freq := CONV_STD_LOGIC_VECTOR(175,13);
			when 34 =>
				freq := CONV_STD_LOGIC_VECTOR(185,13);
			when 35 =>
				freq := CONV_STD_LOGIC_VECTOR(196,13);
			when 36 =>
				freq := CONV_STD_LOGIC_VECTOR(208,13);	
			when 37 =>
				freq := CONV_STD_LOGIC_VECTOR(220,13);	
			when 38 =>
				freq := CONV_STD_LOGIC_VECTOR(233,13);
			when 39 =>
				freq := CONV_STD_LOGIC_VECTOR(247,13);
			when 40 =>
				freq := CONV_STD_LOGIC_VECTOR(262,13);
			when 41 =>
				freq := CONV_STD_LOGIC_VECTOR(277,13);
			when 42 =>
				freq := CONV_STD_LOGIC_VECTOR(294,13);
			when 43 =>
				freq := CONV_STD_LOGIC_VECTOR(311,13);
			when 44 =>
				freq := CONV_STD_LOGIC_VECTOR(330,13);
			when 45 =>
				freq := CONV_STD_LOGIC_VECTOR(349,13);
			when 46 =>
				freq := CONV_STD_LOGIC_VECTOR(370,13);
			when 47 =>
				freq := CONV_STD_LOGIC_VECTOR(392,13);
			when 48 =>
				freq := CONV_STD_LOGIC_VECTOR(415,13);
			when 49 =>
				freq := CONV_STD_LOGIC_VECTOR(440,13);
			when 50 =>
				freq := CONV_STD_LOGIC_VECTOR(466,13);
			when 51 =>
				freq := CONV_STD_LOGIC_VECTOR(494,13);
			when 52 =>
				freq := CONV_STD_LOGIC_VECTOR(523,13);
			when 53 =>
				freq := CONV_STD_LOGIC_VECTOR(554,13);
			when 54 =>
				freq := CONV_STD_LOGIC_VECTOR(587,13);
			when 55 =>
				freq := CONV_STD_LOGIC_VECTOR(622,13);
			when 56 =>
				freq := CONV_STD_LOGIC_VECTOR(659,13);
			when 57 =>
				freq := CONV_STD_LOGIC_VECTOR(698,13);
			when 58 =>
				freq := CONV_STD_LOGIC_VECTOR(740,13);
			when 59 =>
				freq := CONV_STD_LOGIC_VECTOR(784,13);
			when 60 =>
				freq := CONV_STD_LOGIC_VECTOR(831,13);
			when 61 =>
				freq := CONV_STD_LOGIC_VECTOR(880,13);
			when 62 =>
				freq := CONV_STD_LOGIC_VECTOR(932,13);
			when 63 =>
				freq := CONV_STD_LOGIC_VECTOR(988,13);
			when 64 =>
				freq := CONV_STD_LOGIC_VECTOR(1047,13);
			when 65 =>
				freq := CONV_STD_LOGIC_VECTOR(1109,13);
			when 66 =>
				freq := CONV_STD_LOGIC_VECTOR(1175,13);
			when 67 =>
				freq := CONV_STD_LOGIC_VECTOR(1245,13);
			when 68 =>
				freq := CONV_STD_LOGIC_VECTOR(1319,13);
			when 69 =>
				freq := CONV_STD_LOGIC_VECTOR(1397,13);
			when 70 =>
				freq := CONV_STD_LOGIC_VECTOR(1480,13);
			when 71 =>
				freq := CONV_STD_LOGIC_VECTOR(1568,13);
			when 72 =>
				freq := CONV_STD_LOGIC_VECTOR(1661,13);
			when 73 =>
				freq := CONV_STD_LOGIC_VECTOR(1760,13);
			when 74 =>
				freq := CONV_STD_LOGIC_VECTOR(1865,13);
			when 75 =>
				freq := CONV_STD_LOGIC_VECTOR(1976,13);
			when 76 =>
				freq := CONV_STD_LOGIC_VECTOR(2093,13);
			when 77 =>
				freq := CONV_STD_LOGIC_VECTOR(2217,13);
			when 78 =>
				freq := CONV_STD_LOGIC_VECTOR(2349,13);
			when 79 =>
				freq := CONV_STD_LOGIC_VECTOR(2489,13);
			when 80 =>
				freq := CONV_STD_LOGIC_VECTOR(2637,13);
			when 81 =>
				freq := CONV_STD_LOGIC_VECTOR(2794,13);
			when 82 =>
				freq := CONV_STD_LOGIC_VECTOR(2960,13);
			when 83 =>
				freq := CONV_STD_LOGIC_VECTOR(3136,13);
			when 84 =>
				freq := CONV_STD_LOGIC_VECTOR(3322,13);
			when 85 =>
				freq := CONV_STD_LOGIC_VECTOR(3520,13);
			when 86 =>
				freq := CONV_STD_LOGIC_VECTOR(3729,13);
			when 87 =>
				freq := CONV_STD_LOGIC_VECTOR(3951,13);
			when 88 =>
				freq := CONV_STD_LOGIC_VECTOR(4186,13);
			when others =>
				freq := CONV_STD_LOGIC_VECTOR(0,13);
		end case;
		
		return freq;
	end keytofreq;
	
	function chordfrequency( str_val,strnum : std_logic_vector; octave,chord_offset : integer ) return std_logic_vector is
		variable freq : std_logic_vector( 12 downto 0 );
		variable keyn : integer range 1 to 88;
	begin
		keyn := keynum( str_val, strnum,octave );
		freq := keytofreq( keyn + chord_offset );
		
		return freq;
	end chordfrequency;
	
	function keynum ( str_val,strnum : std_logic_vector; octave : integer ) return integer is
		variable keyn : integer range 1 to 88;
	begin
		if strnum = "01" then 
			if octave = 1 then
				if str_val < "00010010" then
					keyn := 8;
				elsif str_val < "00100010" then
					keyn := 9;			
				elsif str_val < "00110010" then
					keyn := 10;			
				elsif str_val < "01000001" then
					keyn := 11;				
				elsif str_val < "01001111" then
					keyn := 12;				
				elsif str_val < "01011100" then
					keyn := 13;				
				elsif str_val < "01101010" then
					keyn := 14;				
				elsif str_val < "01110101" then
					keyn := 15;				
				elsif str_val < "10000000" then
					keyn := 16;				
				elsif str_val < "10001100" then
					keyn := 17;				
				elsif str_val < "10010110" then
					keyn := 18;				
				elsif str_val < "10100000" then
					keyn := 19;			
				elsif str_val < "10101010" then
					keyn := 20;			
				elsif str_val < "10110010" then
					keyn := 21;			
				elsif str_val < "10110111" then
					keyn := 22;				
				elsif str_val < "11000100" then
					keyn := 23;				
				elsif str_val < "11001011" then
					keyn := 24;		
				elsif str_val < "11010010" then
					keyn := 25;				
				elsif str_val < "11010111" then
					keyn := 26;				
				elsif str_val < "11011110" then
					keyn := 27;				
				elsif str_val < "11100101" then
					keyn := 28;
				else
					keyn := 29;
				end if;
			elsif octave = 2 then
				if str_val < "00010010" then
					keyn := 20;
				elsif str_val < "00100010" then
					keyn := 21;			
				elsif str_val < "00110010" then
					keyn := 22;			
				elsif str_val < "01000001" then
					keyn := 23;				
				elsif str_val < "01001111" then
					keyn := 24;				
				elsif str_val < "01011100" then
					keyn := 25;				
				elsif str_val < "01101010" then
					keyn := 26;				
				elsif str_val < "01110101" then
					keyn := 27;				
				elsif str_val < "10000000" then
					keyn := 28;				
				elsif str_val < "10001100" then
					keyn := 29;				
				elsif str_val < "10010110" then
					keyn := 30;				
				elsif str_val < "10100000" then
					keyn := 31;			
				elsif str_val < "10101010" then
					keyn := 32;			
				elsif str_val < "10110010" then
					keyn := 33;			
				elsif str_val < "10110111" then
					keyn := 34;				
				elsif str_val < "11000100" then
					keyn := 35;				
				elsif str_val < "11001011" then
					keyn := 36;		
				elsif str_val < "11010010" then
					keyn := 37;				
				elsif str_val < "11010111" then
					keyn := 38;				
				elsif str_val < "11011110" then
					keyn := 39;				
				elsif str_val < "11100101" then
					keyn := 40;
				else
					keyn := 41;
				end if;
			elsif octave = 3 then
				if str_val < "00010010" then
					keyn := 32;
				elsif str_val < "00100010" then
					keyn := 33;			
				elsif str_val < "00110010" then
					keyn := 34;			
				elsif str_val < "01000001" then
					keyn := 35;				
				elsif str_val < "01001111" then
					keyn := 36;				
				elsif str_val < "01011100" then
					keyn := 37;				
				elsif str_val < "01101010" then
					keyn := 38;				
				elsif str_val < "01110101" then
					keyn := 39;				
				elsif str_val < "10000000" then
					keyn := 40;				
				elsif str_val < "10001100" then
					keyn := 41;				
				elsif str_val < "10010110" then
					keyn := 42;				
				elsif str_val < "10100000" then
					keyn := 43;			
				elsif str_val < "10101010" then
					keyn := 44;			
				elsif str_val < "10110010" then
					keyn := 45;			
				elsif str_val < "10110111" then
					keyn := 46;				
				elsif str_val < "11000100" then
					keyn := 47;				
				elsif str_val < "11001011" then
					keyn := 48;		
				elsif str_val < "11010010" then
					keyn := 49;				
				elsif str_val < "11010111" then
					keyn := 50;				
				elsif str_val < "11011110" then
					keyn := 51;				
				elsif str_val < "11100101" then
					keyn := 52;
				else
					keyn := 53;
				end if;
			end if;
		end if;
		
		return keyn;
	end keynum;
	
end package body;