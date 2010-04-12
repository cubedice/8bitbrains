library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package brain_pkg is
	--function keynum ( str_val,strnum : std_logic_vector; octave : integer ) return integer;
	--function keytofreq( keyn:integer ) return std_logic_vector;
	--function frequency( str_val,strnum : std_logic_vector; octave : integer ) return std_logic_vector;
	--function chordfrequency( str_val,strnum : std_logic_vector; octave,chord_offset : integer ) return std_logic_vector;
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
			result(11 downto 0) := "111111111100";
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
		result := std_logic_vector( (intermediate / unsigned(tot)) + unsigned(dwave) );
		if result >= "00000001000000000000" then
			result(11 downto 0) := "111111111100";
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
			result(11 downto 0) := "111111111100";
		end if;
		return result(11 downto 0);
	end release_wave;
	
	
	
end package body;
