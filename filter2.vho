--IP Functional Simulation Model
--VERSION_BEGIN 9.0SP2 cbx_mgl 2009:02:26:16:06:21:SJ cbx_simgen 2008:08:06:16:30:59:SJ  VERSION_END


-- Legal Notice: © 2003 Altera Corporation. All rights reserved.
-- You may only use these  simulation  model  output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event  Altera disclaims all warranties of any kind). Your use of  Altera
-- Corporation's design tools, logic functions and other software and tools,
-- and its AMPP partner logic functions, and any output files any of the
-- foregoing (including device programming or simulation files), and any
-- associated documentation or information  are expressly subject to the
-- terms and conditions of the  Altera Program License Subscription Agreement
-- or other applicable license agreement, including, without limitation, that
-- your use is for the sole purpose of programming logic devices manufactured
-- by Altera and sold by Altera or its authorized distributors.  Please refer
-- to the applicable agreement for further details.


--synopsys translate_off

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = altsyncram 39 lut 1965 mux21 948 oper_add 65 oper_less_than 2 oper_mux 16 oper_selector 4 scfifo 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  filter2 IS 
	 PORT 
	 ( 
		 ast_sink_data	:	IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
		 ast_sink_error	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 ast_sink_ready	:	OUT  STD_LOGIC;
		 ast_sink_valid	:	IN  STD_LOGIC;
		 ast_source_data	:	OUT  STD_LOGIC_VECTOR (11 DOWNTO 0);
		 ast_source_error	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 ast_source_ready	:	IN  STD_LOGIC;
		 ast_source_valid	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 reset_n	:	IN  STD_LOGIC
	 ); 
 END filter2;

 ARCHITECTURE RTL OF filter2 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_n0000i_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0000i_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_n0000i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0000i_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0000i_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_n0000l_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0000l_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0000l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0000l_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0000l_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0000O_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0000O_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0000O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0000O_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0000O_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001i_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001i_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0001i_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001i_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001l_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001l_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0001l_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001l_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001O_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001O_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n0001O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n0001O_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n0001O_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000ii_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000ii_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000ii_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000ii_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000ii_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000il_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000il_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000il_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000il_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000il_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000iO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000iO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000iO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000iO_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000iO_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000li_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000li_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000li_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000li_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000li_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000ll_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000ll_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000ll_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000ll_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000ll_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000lO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000lO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000lO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000lO_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000lO_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n000Oi_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000Oi_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000Oi_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000Oi_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n000Oi_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n000Ol_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000Ol_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000Ol_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000Ol_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n000Ol_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n000OO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000OO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n000OO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n000OO_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n000OO_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n001OO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n001OO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n001OO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n001OO_data_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n001OO_q_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_n00i0i_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0i_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i0i_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i0i_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i0l_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0l_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i0l_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i0l_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i0O_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0O_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i0O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i0O_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i0O_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1i_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1i_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i1i_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1i_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1l_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1l_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i1l_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1l_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1O_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1O_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00i1O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00i1O_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00i1O_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iii_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iii_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iii_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iii_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iii_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iil_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iil_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iil_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iil_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iil_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iiO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iiO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00iiO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iiO_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iiO_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ili_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00ili_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_n00ili_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00ili_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ili_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ill_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00ill_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00ill_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00ill_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ill_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ilO_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00ilO_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00ilO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00ilO_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00ilO_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOi_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOi_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOi_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iOi_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOi_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOl_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOl_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOl_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iOl_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOl_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOO_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOO_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00iOO_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00iOO_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00iOO_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0i_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0i_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l0i_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0i_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0l_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0l_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l0l_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0l_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0O_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0O_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l0O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l0O_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l0O_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1i_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1i_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1i_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l1i_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1i_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1l_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1l_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1l_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l1l_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1l_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1O_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1O_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00l1O_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00l1O_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00l1O_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00lii_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00lii_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00lii_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00lii_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00lii_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00lil_address_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00lil_address_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00lil_clocken1	:	STD_LOGIC;
	 SIGNAL  wire_n00lil_data_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n00lil_q_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL	nl0illl	:	STD_LOGIC := '0';
	 SIGNAL	wire_nl0illi_ENA	:	STD_LOGIC;
	 SIGNAL  wire_nl0illi_w_lg_nl0illl7930w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nl0il0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOii	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOil	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOiO	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOli	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOll	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOlO	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOOO	:	STD_LOGIC := '0';
	 SIGNAL	nl0l11i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l11O	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1li	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl0l1iO_w_lg_nl0l1li7977w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nl0lO0O	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl0lO0l_w_lg_nl0lO0O7892w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nl0lOll	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0OO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi0O	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oiii	:	STD_LOGIC := '0';
	 SIGNAL	nl0OiiO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oili	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oill	:	STD_LOGIC := '0';
	 SIGNAL	nl0OilO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OiOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0OiOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0OiOO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0Olii	:	STD_LOGIC := '0';
	 SIGNAL	nl0OllO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OlOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0OlOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0OlOO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO0O	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOii	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOiO	:	STD_LOGIC := '0';
	 SIGNAL	nl0l10i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l10l	:	STD_LOGIC := '0';
	 SIGNAL	nl0l10O	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1ii	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1il	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1ll	:	STD_LOGIC := '0';
	 SIGNAL	nl0lO0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0lOOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0Olil	:	STD_LOGIC := '0';
	 SIGNAL	nl0OliO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Olli	:	STD_LOGIC := '0';
	 SIGNAL	nl0Olll	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOll	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl0OOli_w_lg_w_lg_nl0OliO7925w7926w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0Olli7920w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0l10i7957w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0l10l7933w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0lOOl7849w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0OliO7925w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOli_w_lg_nl0Olli7923w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nl0OOlO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOOO	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl0OOOl_w_lg_nl0OOlO7844w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOOl_w_lg_nl0OOOi7842w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0OOOl_w_lg_nl0OOOO18w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	n000i	:	STD_LOGIC := '0';
	 SIGNAL	n000l	:	STD_LOGIC := '0';
	 SIGNAL	n000O	:	STD_LOGIC := '0';
	 SIGNAL	n0010i	:	STD_LOGIC := '0';
	 SIGNAL	n0010l	:	STD_LOGIC := '0';
	 SIGNAL	n0010O	:	STD_LOGIC := '0';
	 SIGNAL	n0011i	:	STD_LOGIC := '0';
	 SIGNAL	n0011l	:	STD_LOGIC := '0';
	 SIGNAL	n0011O	:	STD_LOGIC := '0';
	 SIGNAL	n001i	:	STD_LOGIC := '0';
	 SIGNAL	n001ii	:	STD_LOGIC := '0';
	 SIGNAL	n001il	:	STD_LOGIC := '0';
	 SIGNAL	n001iO	:	STD_LOGIC := '0';
	 SIGNAL	n001l	:	STD_LOGIC := '0';
	 SIGNAL	n001li	:	STD_LOGIC := '0';
	 SIGNAL	n001ll	:	STD_LOGIC := '0';
	 SIGNAL	n001lO	:	STD_LOGIC := '0';
	 SIGNAL	n001O	:	STD_LOGIC := '0';
	 SIGNAL	n001Ol	:	STD_LOGIC := '0';
	 SIGNAL	n00ii	:	STD_LOGIC := '0';
	 SIGNAL	n00il	:	STD_LOGIC := '0';
	 SIGNAL	n00iO	:	STD_LOGIC := '0';
	 SIGNAL	n00li	:	STD_LOGIC := '0';
	 SIGNAL	n00liO	:	STD_LOGIC := '0';
	 SIGNAL	n00ll	:	STD_LOGIC := '0';
	 SIGNAL	n00lli	:	STD_LOGIC := '0';
	 SIGNAL	n00lll	:	STD_LOGIC := '0';
	 SIGNAL	n00llO	:	STD_LOGIC := '0';
	 SIGNAL	n00lO	:	STD_LOGIC := '0';
	 SIGNAL	n00lOi	:	STD_LOGIC := '0';
	 SIGNAL	n00lOl	:	STD_LOGIC := '0';
	 SIGNAL	n00lOO	:	STD_LOGIC := '0';
	 SIGNAL	n00O0i	:	STD_LOGIC := '0';
	 SIGNAL	n00O0l	:	STD_LOGIC := '0';
	 SIGNAL	n00O0O	:	STD_LOGIC := '0';
	 SIGNAL	n00O1i	:	STD_LOGIC := '0';
	 SIGNAL	n00O1l	:	STD_LOGIC := '0';
	 SIGNAL	n00O1O	:	STD_LOGIC := '0';
	 SIGNAL	n00Oi	:	STD_LOGIC := '0';
	 SIGNAL	n00Oii	:	STD_LOGIC := '0';
	 SIGNAL	n00Oil	:	STD_LOGIC := '0';
	 SIGNAL	n00OiO	:	STD_LOGIC := '0';
	 SIGNAL	n00Ol	:	STD_LOGIC := '0';
	 SIGNAL	n00Oli	:	STD_LOGIC := '0';
	 SIGNAL	n00Oll	:	STD_LOGIC := '0';
	 SIGNAL	n00OlO	:	STD_LOGIC := '0';
	 SIGNAL	n00OO	:	STD_LOGIC := '0';
	 SIGNAL	n00OOi	:	STD_LOGIC := '0';
	 SIGNAL	n00OOl	:	STD_LOGIC := '0';
	 SIGNAL	n00OOO	:	STD_LOGIC := '0';
	 SIGNAL	n0100i	:	STD_LOGIC := '0';
	 SIGNAL	n0100l	:	STD_LOGIC := '0';
	 SIGNAL	n0100O	:	STD_LOGIC := '0';
	 SIGNAL	n0101i	:	STD_LOGIC := '0';
	 SIGNAL	n0101l	:	STD_LOGIC := '0';
	 SIGNAL	n010i	:	STD_LOGIC := '0';
	 SIGNAL	n010ii	:	STD_LOGIC := '0';
	 SIGNAL	n010il	:	STD_LOGIC := '0';
	 SIGNAL	n010iO	:	STD_LOGIC := '0';
	 SIGNAL	n010l	:	STD_LOGIC := '0';
	 SIGNAL	n010li	:	STD_LOGIC := '0';
	 SIGNAL	n010ll	:	STD_LOGIC := '0';
	 SIGNAL	n010lO	:	STD_LOGIC := '0';
	 SIGNAL	n010Oi	:	STD_LOGIC := '0';
	 SIGNAL	n010Ol	:	STD_LOGIC := '0';
	 SIGNAL	n010OO	:	STD_LOGIC := '0';
	 SIGNAL	n0110l	:	STD_LOGIC := '0';
	 SIGNAL	n0110O	:	STD_LOGIC := '0';
	 SIGNAL	n0111i	:	STD_LOGIC := '0';
	 SIGNAL	n0111l	:	STD_LOGIC := '0';
	 SIGNAL	n0111O	:	STD_LOGIC := '0';
	 SIGNAL	n011i	:	STD_LOGIC := '0';
	 SIGNAL	n011ii	:	STD_LOGIC := '0';
	 SIGNAL	n011il	:	STD_LOGIC := '0';
	 SIGNAL	n011iO	:	STD_LOGIC := '0';
	 SIGNAL	n011l	:	STD_LOGIC := '0';
	 SIGNAL	n011li	:	STD_LOGIC := '0';
	 SIGNAL	n011ll	:	STD_LOGIC := '0';
	 SIGNAL	n011lO	:	STD_LOGIC := '0';
	 SIGNAL	n011O	:	STD_LOGIC := '0';
	 SIGNAL	n011Oi	:	STD_LOGIC := '0';
	 SIGNAL	n011Ol	:	STD_LOGIC := '0';
	 SIGNAL	n011OO	:	STD_LOGIC := '0';
	 SIGNAL	n01i0i	:	STD_LOGIC := '0';
	 SIGNAL	n01i0l	:	STD_LOGIC := '0';
	 SIGNAL	n01i0O	:	STD_LOGIC := '0';
	 SIGNAL	n01i1i	:	STD_LOGIC := '0';
	 SIGNAL	n01i1O	:	STD_LOGIC := '0';
	 SIGNAL	n01ii	:	STD_LOGIC := '0';
	 SIGNAL	n01iii	:	STD_LOGIC := '0';
	 SIGNAL	n01iil	:	STD_LOGIC := '0';
	 SIGNAL	n01iiO	:	STD_LOGIC := '0';
	 SIGNAL	n01il	:	STD_LOGIC := '0';
	 SIGNAL	n01ili	:	STD_LOGIC := '0';
	 SIGNAL	n01ill	:	STD_LOGIC := '0';
	 SIGNAL	n01ilO	:	STD_LOGIC := '0';
	 SIGNAL	n01iO	:	STD_LOGIC := '0';
	 SIGNAL	n01iOi	:	STD_LOGIC := '0';
	 SIGNAL	n01iOl	:	STD_LOGIC := '0';
	 SIGNAL	n01iOO	:	STD_LOGIC := '0';
	 SIGNAL	n01l0i	:	STD_LOGIC := '0';
	 SIGNAL	n01l0l	:	STD_LOGIC := '0';
	 SIGNAL	n01l0O	:	STD_LOGIC := '0';
	 SIGNAL	n01l1l	:	STD_LOGIC := '0';
	 SIGNAL	n01l1O	:	STD_LOGIC := '0';
	 SIGNAL	n01li	:	STD_LOGIC := '0';
	 SIGNAL	n01lii	:	STD_LOGIC := '0';
	 SIGNAL	n01lil	:	STD_LOGIC := '0';
	 SIGNAL	n01liO	:	STD_LOGIC := '0';
	 SIGNAL	n01ll	:	STD_LOGIC := '0';
	 SIGNAL	n01lli	:	STD_LOGIC := '0';
	 SIGNAL	n01lll	:	STD_LOGIC := '0';
	 SIGNAL	n01llO	:	STD_LOGIC := '0';
	 SIGNAL	n01lO	:	STD_LOGIC := '0';
	 SIGNAL	n01lOi	:	STD_LOGIC := '0';
	 SIGNAL	n01lOl	:	STD_LOGIC := '0';
	 SIGNAL	n01O0i	:	STD_LOGIC := '0';
	 SIGNAL	n01O0l	:	STD_LOGIC := '0';
	 SIGNAL	n01O0O	:	STD_LOGIC := '0';
	 SIGNAL	n01O1i	:	STD_LOGIC := '0';
	 SIGNAL	n01O1l	:	STD_LOGIC := '0';
	 SIGNAL	n01O1O	:	STD_LOGIC := '0';
	 SIGNAL	n01Oi	:	STD_LOGIC := '0';
	 SIGNAL	n01Oii	:	STD_LOGIC := '0';
	 SIGNAL	n01Oil	:	STD_LOGIC := '0';
	 SIGNAL	n01OiO	:	STD_LOGIC := '0';
	 SIGNAL	n01Ol	:	STD_LOGIC := '0';
	 SIGNAL	n01Oli	:	STD_LOGIC := '0';
	 SIGNAL	n01Oll	:	STD_LOGIC := '0';
	 SIGNAL	n01OlO	:	STD_LOGIC := '0';
	 SIGNAL	n01OO	:	STD_LOGIC := '0';
	 SIGNAL	n01OOi	:	STD_LOGIC := '0';
	 SIGNAL	n01OOO	:	STD_LOGIC := '0';
	 SIGNAL	n0i00i	:	STD_LOGIC := '0';
	 SIGNAL	n0i00l	:	STD_LOGIC := '0';
	 SIGNAL	n0i00O	:	STD_LOGIC := '0';
	 SIGNAL	n0i01i	:	STD_LOGIC := '0';
	 SIGNAL	n0i01l	:	STD_LOGIC := '0';
	 SIGNAL	n0i01O	:	STD_LOGIC := '0';
	 SIGNAL	n0i0i	:	STD_LOGIC := '0';
	 SIGNAL	n0i0ii	:	STD_LOGIC := '0';
	 SIGNAL	n0i0il	:	STD_LOGIC := '0';
	 SIGNAL	n0i0iO	:	STD_LOGIC := '0';
	 SIGNAL	n0i0li	:	STD_LOGIC := '0';
	 SIGNAL	n0i0ll	:	STD_LOGIC := '0';
	 SIGNAL	n0i0lO	:	STD_LOGIC := '0';
	 SIGNAL	n0i0O	:	STD_LOGIC := '0';
	 SIGNAL	n0i0Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0i0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0i0OO	:	STD_LOGIC := '0';
	 SIGNAL	n0i10l	:	STD_LOGIC := '0';
	 SIGNAL	n0i10O	:	STD_LOGIC := '0';
	 SIGNAL	n0i11i	:	STD_LOGIC := '0';
	 SIGNAL	n0i11l	:	STD_LOGIC := '0';
	 SIGNAL	n0i11O	:	STD_LOGIC := '0';
	 SIGNAL	n0i1i	:	STD_LOGIC := '0';
	 SIGNAL	n0i1ii	:	STD_LOGIC := '0';
	 SIGNAL	n0i1il	:	STD_LOGIC := '0';
	 SIGNAL	n0i1iO	:	STD_LOGIC := '0';
	 SIGNAL	n0i1l	:	STD_LOGIC := '0';
	 SIGNAL	n0i1li	:	STD_LOGIC := '0';
	 SIGNAL	n0i1ll	:	STD_LOGIC := '0';
	 SIGNAL	n0i1lO	:	STD_LOGIC := '0';
	 SIGNAL	n0i1O	:	STD_LOGIC := '0';
	 SIGNAL	n0i1Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0i1Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0i1OO	:	STD_LOGIC := '0';
	 SIGNAL	n0ii0i	:	STD_LOGIC := '0';
	 SIGNAL	n0ii0l	:	STD_LOGIC := '0';
	 SIGNAL	n0ii0O	:	STD_LOGIC := '0';
	 SIGNAL	n0ii1l	:	STD_LOGIC := '0';
	 SIGNAL	n0ii1O	:	STD_LOGIC := '0';
	 SIGNAL	n0iii	:	STD_LOGIC := '0';
	 SIGNAL	n0iiii	:	STD_LOGIC := '0';
	 SIGNAL	n0iiil	:	STD_LOGIC := '0';
	 SIGNAL	n0iiiO	:	STD_LOGIC := '0';
	 SIGNAL	n0iil	:	STD_LOGIC := '0';
	 SIGNAL	n0iili	:	STD_LOGIC := '0';
	 SIGNAL	n0iill	:	STD_LOGIC := '0';
	 SIGNAL	n0iilO	:	STD_LOGIC := '0';
	 SIGNAL	n0iiO	:	STD_LOGIC := '0';
	 SIGNAL	n0iiOi	:	STD_LOGIC := '0';
	 SIGNAL	n0iiOl	:	STD_LOGIC := '0';
	 SIGNAL	n0iiOO	:	STD_LOGIC := '0';
	 SIGNAL	n0il0i	:	STD_LOGIC := '0';
	 SIGNAL	n0il0l	:	STD_LOGIC := '0';
	 SIGNAL	n0il0O	:	STD_LOGIC := '0';
	 SIGNAL	n0il1i	:	STD_LOGIC := '0';
	 SIGNAL	n0il1l	:	STD_LOGIC := '0';
	 SIGNAL	n0il1O	:	STD_LOGIC := '0';
	 SIGNAL	n0ili	:	STD_LOGIC := '0';
	 SIGNAL	n0ilii	:	STD_LOGIC := '0';
	 SIGNAL	n0ilil	:	STD_LOGIC := '0';
	 SIGNAL	n0iliO	:	STD_LOGIC := '0';
	 SIGNAL	n0ill	:	STD_LOGIC := '0';
	 SIGNAL	n0illi	:	STD_LOGIC := '0';
	 SIGNAL	n0illl	:	STD_LOGIC := '0';
	 SIGNAL	n0illO	:	STD_LOGIC := '0';
	 SIGNAL	n0ilO	:	STD_LOGIC := '0';
	 SIGNAL	n0ilOl	:	STD_LOGIC := '0';
	 SIGNAL	n0ilOO	:	STD_LOGIC := '0';
	 SIGNAL	n0iO0i	:	STD_LOGIC := '0';
	 SIGNAL	n0iO0l	:	STD_LOGIC := '0';
	 SIGNAL	n0iO0O	:	STD_LOGIC := '0';
	 SIGNAL	n0iO1i	:	STD_LOGIC := '0';
	 SIGNAL	n0iO1l	:	STD_LOGIC := '0';
	 SIGNAL	n0iO1O	:	STD_LOGIC := '0';
	 SIGNAL	n0iOi	:	STD_LOGIC := '0';
	 SIGNAL	n0iOii	:	STD_LOGIC := '0';
	 SIGNAL	n0iOil	:	STD_LOGIC := '0';
	 SIGNAL	n0iOiO	:	STD_LOGIC := '0';
	 SIGNAL	n0iOl	:	STD_LOGIC := '0';
	 SIGNAL	n0iOli	:	STD_LOGIC := '0';
	 SIGNAL	n0iOll	:	STD_LOGIC := '0';
	 SIGNAL	n0iOlO	:	STD_LOGIC := '0';
	 SIGNAL	n0iOO	:	STD_LOGIC := '0';
	 SIGNAL	n0iOOi	:	STD_LOGIC := '0';
	 SIGNAL	n0iOOl	:	STD_LOGIC := '0';
	 SIGNAL	n0iOOO	:	STD_LOGIC := '0';
	 SIGNAL	n0l00i	:	STD_LOGIC := '0';
	 SIGNAL	n0l00l	:	STD_LOGIC := '0';
	 SIGNAL	n0l00O	:	STD_LOGIC := '0';
	 SIGNAL	n0l01i	:	STD_LOGIC := '0';
	 SIGNAL	n0l01l	:	STD_LOGIC := '0';
	 SIGNAL	n0l01O	:	STD_LOGIC := '0';
	 SIGNAL	n0l0i	:	STD_LOGIC := '0';
	 SIGNAL	n0l0ii	:	STD_LOGIC := '0';
	 SIGNAL	n0l0il	:	STD_LOGIC := '0';
	 SIGNAL	n0l0iO	:	STD_LOGIC := '0';
	 SIGNAL	n0l0l	:	STD_LOGIC := '0';
	 SIGNAL	n0l0li	:	STD_LOGIC := '0';
	 SIGNAL	n0l0ll	:	STD_LOGIC := '0';
	 SIGNAL	n0l0lO	:	STD_LOGIC := '0';
	 SIGNAL	n0l0O	:	STD_LOGIC := '0';
	 SIGNAL	n0l0Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0l0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0l0OO	:	STD_LOGIC := '0';
	 SIGNAL	n0l10i	:	STD_LOGIC := '0';
	 SIGNAL	n0l10l	:	STD_LOGIC := '0';
	 SIGNAL	n0l10O	:	STD_LOGIC := '0';
	 SIGNAL	n0l11i	:	STD_LOGIC := '0';
	 SIGNAL	n0l11l	:	STD_LOGIC := '0';
	 SIGNAL	n0l11O	:	STD_LOGIC := '0';
	 SIGNAL	n0l1i	:	STD_LOGIC := '0';
	 SIGNAL	n0l1ii	:	STD_LOGIC := '0';
	 SIGNAL	n0l1il	:	STD_LOGIC := '0';
	 SIGNAL	n0l1iO	:	STD_LOGIC := '0';
	 SIGNAL	n0l1l	:	STD_LOGIC := '0';
	 SIGNAL	n0l1ll	:	STD_LOGIC := '0';
	 SIGNAL	n0l1lO	:	STD_LOGIC := '0';
	 SIGNAL	n0l1O	:	STD_LOGIC := '0';
	 SIGNAL	n0l1Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0l1Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0l1OO	:	STD_LOGIC := '0';
	 SIGNAL	n0li0i	:	STD_LOGIC := '0';
	 SIGNAL	n0li0l	:	STD_LOGIC := '0';
	 SIGNAL	n0li0O	:	STD_LOGIC := '0';
	 SIGNAL	n0li1i	:	STD_LOGIC := '0';
	 SIGNAL	n0li1l	:	STD_LOGIC := '0';
	 SIGNAL	n0li1O	:	STD_LOGIC := '0';
	 SIGNAL	n0lii	:	STD_LOGIC := '0';
	 SIGNAL	n0liil	:	STD_LOGIC := '0';
	 SIGNAL	n0liiO	:	STD_LOGIC := '0';
	 SIGNAL	n0lil	:	STD_LOGIC := '0';
	 SIGNAL	n0lili	:	STD_LOGIC := '0';
	 SIGNAL	n0lill	:	STD_LOGIC := '0';
	 SIGNAL	n0lilO	:	STD_LOGIC := '0';
	 SIGNAL	n0liO	:	STD_LOGIC := '0';
	 SIGNAL	n0liOi	:	STD_LOGIC := '0';
	 SIGNAL	n0liOl	:	STD_LOGIC := '0';
	 SIGNAL	n0liOO	:	STD_LOGIC := '0';
	 SIGNAL	n0ll0i	:	STD_LOGIC := '0';
	 SIGNAL	n0ll0l	:	STD_LOGIC := '0';
	 SIGNAL	n0ll0O	:	STD_LOGIC := '0';
	 SIGNAL	n0ll1i	:	STD_LOGIC := '0';
	 SIGNAL	n0ll1l	:	STD_LOGIC := '0';
	 SIGNAL	n0ll1O	:	STD_LOGIC := '0';
	 SIGNAL	n0lli	:	STD_LOGIC := '0';
	 SIGNAL	n0llii	:	STD_LOGIC := '0';
	 SIGNAL	n0llil	:	STD_LOGIC := '0';
	 SIGNAL	n0lliO	:	STD_LOGIC := '0';
	 SIGNAL	n0lll	:	STD_LOGIC := '0';
	 SIGNAL	n0llli	:	STD_LOGIC := '0';
	 SIGNAL	n0llll	:	STD_LOGIC := '0';
	 SIGNAL	n0lllO	:	STD_LOGIC := '0';
	 SIGNAL	n0llO	:	STD_LOGIC := '0';
	 SIGNAL	n0llOi	:	STD_LOGIC := '0';
	 SIGNAL	n0llOl	:	STD_LOGIC := '0';
	 SIGNAL	n0llOO	:	STD_LOGIC := '0';
	 SIGNAL	n0lO0l	:	STD_LOGIC := '0';
	 SIGNAL	n0lO0O	:	STD_LOGIC := '0';
	 SIGNAL	n0lO1i	:	STD_LOGIC := '0';
	 SIGNAL	n0lO1l	:	STD_LOGIC := '0';
	 SIGNAL	n0lO1O	:	STD_LOGIC := '0';
	 SIGNAL	n0lOi	:	STD_LOGIC := '0';
	 SIGNAL	n0lOii	:	STD_LOGIC := '0';
	 SIGNAL	n0lOil	:	STD_LOGIC := '0';
	 SIGNAL	n0lOiO	:	STD_LOGIC := '0';
	 SIGNAL	n0lOl	:	STD_LOGIC := '0';
	 SIGNAL	n0lOli	:	STD_LOGIC := '0';
	 SIGNAL	n0lOll	:	STD_LOGIC := '0';
	 SIGNAL	n0lOlO	:	STD_LOGIC := '0';
	 SIGNAL	n0lOO	:	STD_LOGIC := '0';
	 SIGNAL	n0lOOi	:	STD_LOGIC := '0';
	 SIGNAL	n0lOOl	:	STD_LOGIC := '0';
	 SIGNAL	n0lOOO	:	STD_LOGIC := '0';
	 SIGNAL	n0O00i	:	STD_LOGIC := '0';
	 SIGNAL	n0O00l	:	STD_LOGIC := '0';
	 SIGNAL	n0O00O	:	STD_LOGIC := '0';
	 SIGNAL	n0O01l	:	STD_LOGIC := '0';
	 SIGNAL	n0O01O	:	STD_LOGIC := '0';
	 SIGNAL	n0O0ii	:	STD_LOGIC := '0';
	 SIGNAL	n0O0il	:	STD_LOGIC := '0';
	 SIGNAL	n0O0iO	:	STD_LOGIC := '0';
	 SIGNAL	n0O0l	:	STD_LOGIC := '0';
	 SIGNAL	n0O0li	:	STD_LOGIC := '0';
	 SIGNAL	n0O0ll	:	STD_LOGIC := '0';
	 SIGNAL	n0O0lO	:	STD_LOGIC := '0';
	 SIGNAL	n0O0O	:	STD_LOGIC := '0';
	 SIGNAL	n0O0Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0O0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0O0OO	:	STD_LOGIC := '0';
	 SIGNAL	n0O10i	:	STD_LOGIC := '0';
	 SIGNAL	n0O10l	:	STD_LOGIC := '0';
	 SIGNAL	n0O10O	:	STD_LOGIC := '0';
	 SIGNAL	n0O11i	:	STD_LOGIC := '0';
	 SIGNAL	n0O11l	:	STD_LOGIC := '0';
	 SIGNAL	n0O11O	:	STD_LOGIC := '0';
	 SIGNAL	n0O1i	:	STD_LOGIC := '0';
	 SIGNAL	n0O1ii	:	STD_LOGIC := '0';
	 SIGNAL	n0O1il	:	STD_LOGIC := '0';
	 SIGNAL	n0O1iO	:	STD_LOGIC := '0';
	 SIGNAL	n0O1l	:	STD_LOGIC := '0';
	 SIGNAL	n0O1li	:	STD_LOGIC := '0';
	 SIGNAL	n0O1ll	:	STD_LOGIC := '0';
	 SIGNAL	n0O1lO	:	STD_LOGIC := '0';
	 SIGNAL	n0O1O	:	STD_LOGIC := '0';
	 SIGNAL	n0O1Oi	:	STD_LOGIC := '0';
	 SIGNAL	n0O1Ol	:	STD_LOGIC := '0';
	 SIGNAL	n0O1OO	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi0i	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi0l	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi0O	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi1i	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi1l	:	STD_LOGIC := '0';
	 SIGNAL	n0Oi1O	:	STD_LOGIC := '0';
	 SIGNAL	n0Oii	:	STD_LOGIC := '0';
	 SIGNAL	n0Oiii	:	STD_LOGIC := '0';
	 SIGNAL	n0Oiil	:	STD_LOGIC := '0';
	 SIGNAL	n0OiiO	:	STD_LOGIC := '0';
	 SIGNAL	n0Oil	:	STD_LOGIC := '0';
	 SIGNAL	n0Oili	:	STD_LOGIC := '0';
	 SIGNAL	n0Oill	:	STD_LOGIC := '0';
	 SIGNAL	n0OilO	:	STD_LOGIC := '0';
	 SIGNAL	n0OiO	:	STD_LOGIC := '0';
	 SIGNAL	n0OiOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OiOO	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol0i	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol0l	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol0O	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol1i	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol1l	:	STD_LOGIC := '0';
	 SIGNAL	n0Ol1O	:	STD_LOGIC := '0';
	 SIGNAL	n0Oli	:	STD_LOGIC := '0';
	 SIGNAL	n0Olii	:	STD_LOGIC := '0';
	 SIGNAL	n0Olil	:	STD_LOGIC := '0';
	 SIGNAL	n0OliO	:	STD_LOGIC := '0';
	 SIGNAL	n0Oll	:	STD_LOGIC := '0';
	 SIGNAL	n0Olli	:	STD_LOGIC := '0';
	 SIGNAL	n0Olll	:	STD_LOGIC := '0';
	 SIGNAL	n0OllO	:	STD_LOGIC := '0';
	 SIGNAL	n0OlO	:	STD_LOGIC := '0';
	 SIGNAL	n0OlOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OlOl	:	STD_LOGIC := '0';
	 SIGNAL	n0OlOO	:	STD_LOGIC := '0';
	 SIGNAL	n0OO0i	:	STD_LOGIC := '0';
	 SIGNAL	n0OO0l	:	STD_LOGIC := '0';
	 SIGNAL	n0OO0O	:	STD_LOGIC := '0';
	 SIGNAL	n0OO1i	:	STD_LOGIC := '0';
	 SIGNAL	n0OO1l	:	STD_LOGIC := '0';
	 SIGNAL	n0OO1O	:	STD_LOGIC := '0';
	 SIGNAL	n0OOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OOii	:	STD_LOGIC := '0';
	 SIGNAL	n0OOil	:	STD_LOGIC := '0';
	 SIGNAL	n0OOiO	:	STD_LOGIC := '0';
	 SIGNAL	n0OOl	:	STD_LOGIC := '0';
	 SIGNAL	n0OOli	:	STD_LOGIC := '0';
	 SIGNAL	n0OOll	:	STD_LOGIC := '0';
	 SIGNAL	n0OOO	:	STD_LOGIC := '0';
	 SIGNAL	n0OOOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OOOl	:	STD_LOGIC := '0';
	 SIGNAL	n0OOOO	:	STD_LOGIC := '0';
	 SIGNAL	n100i	:	STD_LOGIC := '0';
	 SIGNAL	n100l	:	STD_LOGIC := '0';
	 SIGNAL	n100O	:	STD_LOGIC := '0';
	 SIGNAL	n101i	:	STD_LOGIC := '0';
	 SIGNAL	n101l	:	STD_LOGIC := '0';
	 SIGNAL	n101O	:	STD_LOGIC := '0';
	 SIGNAL	n10ii	:	STD_LOGIC := '0';
	 SIGNAL	n10il	:	STD_LOGIC := '0';
	 SIGNAL	n10iO	:	STD_LOGIC := '0';
	 SIGNAL	n10ll	:	STD_LOGIC := '0';
	 SIGNAL	n10lO	:	STD_LOGIC := '0';
	 SIGNAL	n10Oi	:	STD_LOGIC := '0';
	 SIGNAL	n10Ol	:	STD_LOGIC := '0';
	 SIGNAL	n10OO	:	STD_LOGIC := '0';
	 SIGNAL	n110i	:	STD_LOGIC := '0';
	 SIGNAL	n110l	:	STD_LOGIC := '0';
	 SIGNAL	n110O	:	STD_LOGIC := '0';
	 SIGNAL	n111i	:	STD_LOGIC := '0';
	 SIGNAL	n111l	:	STD_LOGIC := '0';
	 SIGNAL	n111O	:	STD_LOGIC := '0';
	 SIGNAL	n11ii	:	STD_LOGIC := '0';
	 SIGNAL	n11il	:	STD_LOGIC := '0';
	 SIGNAL	n11iO	:	STD_LOGIC := '0';
	 SIGNAL	n11li	:	STD_LOGIC := '0';
	 SIGNAL	n11ll	:	STD_LOGIC := '0';
	 SIGNAL	n11lO	:	STD_LOGIC := '0';
	 SIGNAL	n11Oi	:	STD_LOGIC := '0';
	 SIGNAL	n11Ol	:	STD_LOGIC := '0';
	 SIGNAL	n11OO	:	STD_LOGIC := '0';
	 SIGNAL	n1i0i	:	STD_LOGIC := '0';
	 SIGNAL	n1i0l	:	STD_LOGIC := '0';
	 SIGNAL	n1i0O	:	STD_LOGIC := '0';
	 SIGNAL	n1i1i	:	STD_LOGIC := '0';
	 SIGNAL	n1i1l	:	STD_LOGIC := '0';
	 SIGNAL	n1i1O	:	STD_LOGIC := '0';
	 SIGNAL	n1iii	:	STD_LOGIC := '0';
	 SIGNAL	n1iil	:	STD_LOGIC := '0';
	 SIGNAL	n1iiO	:	STD_LOGIC := '0';
	 SIGNAL	n1ili	:	STD_LOGIC := '0';
	 SIGNAL	n1ill	:	STD_LOGIC := '0';
	 SIGNAL	n1ilO	:	STD_LOGIC := '0';
	 SIGNAL	n1iO0i	:	STD_LOGIC := '0';
	 SIGNAL	n1iO0l	:	STD_LOGIC := '0';
	 SIGNAL	n1iO0O	:	STD_LOGIC := '0';
	 SIGNAL	n1iO1O	:	STD_LOGIC := '0';
	 SIGNAL	n1iOi	:	STD_LOGIC := '0';
	 SIGNAL	n1iOii	:	STD_LOGIC := '0';
	 SIGNAL	n1iOil	:	STD_LOGIC := '0';
	 SIGNAL	n1iOiO	:	STD_LOGIC := '0';
	 SIGNAL	n1iOl	:	STD_LOGIC := '0';
	 SIGNAL	n1iOli	:	STD_LOGIC := '0';
	 SIGNAL	n1iOll	:	STD_LOGIC := '0';
	 SIGNAL	n1iOlO	:	STD_LOGIC := '0';
	 SIGNAL	n1iOO	:	STD_LOGIC := '0';
	 SIGNAL	n1iOOi	:	STD_LOGIC := '0';
	 SIGNAL	n1iOOl	:	STD_LOGIC := '0';
	 SIGNAL	n1l00i	:	STD_LOGIC := '0';
	 SIGNAL	n1l00l	:	STD_LOGIC := '0';
	 SIGNAL	n1l00O	:	STD_LOGIC := '0';
	 SIGNAL	n1l01i	:	STD_LOGIC := '0';
	 SIGNAL	n1l01l	:	STD_LOGIC := '0';
	 SIGNAL	n1l01O	:	STD_LOGIC := '0';
	 SIGNAL	n1l0i	:	STD_LOGIC := '0';
	 SIGNAL	n1l0ii	:	STD_LOGIC := '0';
	 SIGNAL	n1l0il	:	STD_LOGIC := '0';
	 SIGNAL	n1l0iO	:	STD_LOGIC := '0';
	 SIGNAL	n1l0l	:	STD_LOGIC := '0';
	 SIGNAL	n1l0li	:	STD_LOGIC := '0';
	 SIGNAL	n1l0ll	:	STD_LOGIC := '0';
	 SIGNAL	n1l0lO	:	STD_LOGIC := '0';
	 SIGNAL	n1l0O	:	STD_LOGIC := '0';
	 SIGNAL	n1l0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n1l0OO	:	STD_LOGIC := '0';
	 SIGNAL	n1l10i	:	STD_LOGIC := '0';
	 SIGNAL	n1l10l	:	STD_LOGIC := '0';
	 SIGNAL	n1l10O	:	STD_LOGIC := '0';
	 SIGNAL	n1l11i	:	STD_LOGIC := '0';
	 SIGNAL	n1l11l	:	STD_LOGIC := '0';
	 SIGNAL	n1l11O	:	STD_LOGIC := '0';
	 SIGNAL	n1l1i	:	STD_LOGIC := '0';
	 SIGNAL	n1l1ii	:	STD_LOGIC := '0';
	 SIGNAL	n1l1il	:	STD_LOGIC := '0';
	 SIGNAL	n1l1iO	:	STD_LOGIC := '0';
	 SIGNAL	n1l1l	:	STD_LOGIC := '0';
	 SIGNAL	n1l1li	:	STD_LOGIC := '0';
	 SIGNAL	n1l1ll	:	STD_LOGIC := '0';
	 SIGNAL	n1l1lO	:	STD_LOGIC := '0';
	 SIGNAL	n1l1O	:	STD_LOGIC := '0';
	 SIGNAL	n1l1Oi	:	STD_LOGIC := '0';
	 SIGNAL	n1l1OO	:	STD_LOGIC := '0';
	 SIGNAL	n1li0i	:	STD_LOGIC := '0';
	 SIGNAL	n1li0l	:	STD_LOGIC := '0';
	 SIGNAL	n1li0O	:	STD_LOGIC := '0';
	 SIGNAL	n1li1i	:	STD_LOGIC := '0';
	 SIGNAL	n1li1l	:	STD_LOGIC := '0';
	 SIGNAL	n1li1O	:	STD_LOGIC := '0';
	 SIGNAL	n1lii	:	STD_LOGIC := '0';
	 SIGNAL	n1liii	:	STD_LOGIC := '0';
	 SIGNAL	n1liil	:	STD_LOGIC := '0';
	 SIGNAL	n1liiO	:	STD_LOGIC := '0';
	 SIGNAL	n1lili	:	STD_LOGIC := '0';
	 SIGNAL	n1lill	:	STD_LOGIC := '0';
	 SIGNAL	n1liO	:	STD_LOGIC := '0';
	 SIGNAL	n1liOi	:	STD_LOGIC := '0';
	 SIGNAL	n1liOl	:	STD_LOGIC := '0';
	 SIGNAL	n1liOO	:	STD_LOGIC := '0';
	 SIGNAL	n1ll0i	:	STD_LOGIC := '0';
	 SIGNAL	n1ll0l	:	STD_LOGIC := '0';
	 SIGNAL	n1ll0O	:	STD_LOGIC := '0';
	 SIGNAL	n1ll1i	:	STD_LOGIC := '0';
	 SIGNAL	n1ll1l	:	STD_LOGIC := '0';
	 SIGNAL	n1ll1O	:	STD_LOGIC := '0';
	 SIGNAL	n1lli	:	STD_LOGIC := '0';
	 SIGNAL	n1llii	:	STD_LOGIC := '0';
	 SIGNAL	n1llil	:	STD_LOGIC := '0';
	 SIGNAL	n1lliO	:	STD_LOGIC := '0';
	 SIGNAL	n1lll	:	STD_LOGIC := '0';
	 SIGNAL	n1llli	:	STD_LOGIC := '0';
	 SIGNAL	n1lllO	:	STD_LOGIC := '0';
	 SIGNAL	n1llO	:	STD_LOGIC := '0';
	 SIGNAL	n1llOi	:	STD_LOGIC := '0';
	 SIGNAL	n1llOl	:	STD_LOGIC := '0';
	 SIGNAL	n1llOO	:	STD_LOGIC := '0';
	 SIGNAL	n1lO0i	:	STD_LOGIC := '0';
	 SIGNAL	n1lO0l	:	STD_LOGIC := '0';
	 SIGNAL	n1lO0O	:	STD_LOGIC := '0';
	 SIGNAL	n1lO1i	:	STD_LOGIC := '0';
	 SIGNAL	n1lO1l	:	STD_LOGIC := '0';
	 SIGNAL	n1lO1O	:	STD_LOGIC := '0';
	 SIGNAL	n1lOi	:	STD_LOGIC := '0';
	 SIGNAL	n1lOii	:	STD_LOGIC := '0';
	 SIGNAL	n1lOil	:	STD_LOGIC := '0';
	 SIGNAL	n1lOiO	:	STD_LOGIC := '0';
	 SIGNAL	n1lOl	:	STD_LOGIC := '0';
	 SIGNAL	n1lOll	:	STD_LOGIC := '0';
	 SIGNAL	n1lOlO	:	STD_LOGIC := '0';
	 SIGNAL	n1lOO	:	STD_LOGIC := '0';
	 SIGNAL	n1lOOi	:	STD_LOGIC := '0';
	 SIGNAL	n1lOOl	:	STD_LOGIC := '0';
	 SIGNAL	n1lOOO	:	STD_LOGIC := '0';
	 SIGNAL	n1O00i	:	STD_LOGIC := '0';
	 SIGNAL	n1O00l	:	STD_LOGIC := '0';
	 SIGNAL	n1O00O	:	STD_LOGIC := '0';
	 SIGNAL	n1O01i	:	STD_LOGIC := '0';
	 SIGNAL	n1O01l	:	STD_LOGIC := '0';
	 SIGNAL	n1O01O	:	STD_LOGIC := '0';
	 SIGNAL	n1O0i	:	STD_LOGIC := '0';
	 SIGNAL	n1O0ii	:	STD_LOGIC := '0';
	 SIGNAL	n1O0iO	:	STD_LOGIC := '0';
	 SIGNAL	n1O0l	:	STD_LOGIC := '0';
	 SIGNAL	n1O0li	:	STD_LOGIC := '0';
	 SIGNAL	n1O0ll	:	STD_LOGIC := '0';
	 SIGNAL	n1O0lO	:	STD_LOGIC := '0';
	 SIGNAL	n1O0O	:	STD_LOGIC := '0';
	 SIGNAL	n1O0Oi	:	STD_LOGIC := '0';
	 SIGNAL	n1O0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n1O0OO	:	STD_LOGIC := '0';
	 SIGNAL	n1O10i	:	STD_LOGIC := '0';
	 SIGNAL	n1O10l	:	STD_LOGIC := '0';
	 SIGNAL	n1O10O	:	STD_LOGIC := '0';
	 SIGNAL	n1O11i	:	STD_LOGIC := '0';
	 SIGNAL	n1O11l	:	STD_LOGIC := '0';
	 SIGNAL	n1O11O	:	STD_LOGIC := '0';
	 SIGNAL	n1O1i	:	STD_LOGIC := '0';
	 SIGNAL	n1O1ii	:	STD_LOGIC := '0';
	 SIGNAL	n1O1il	:	STD_LOGIC := '0';
	 SIGNAL	n1O1l	:	STD_LOGIC := '0';
	 SIGNAL	n1O1li	:	STD_LOGIC := '0';
	 SIGNAL	n1O1ll	:	STD_LOGIC := '0';
	 SIGNAL	n1O1lO	:	STD_LOGIC := '0';
	 SIGNAL	n1O1O	:	STD_LOGIC := '0';
	 SIGNAL	n1O1Oi	:	STD_LOGIC := '0';
	 SIGNAL	n1O1Ol	:	STD_LOGIC := '0';
	 SIGNAL	n1O1OO	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi0i	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi0l	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi0O	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi1i	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi1l	:	STD_LOGIC := '0';
	 SIGNAL	n1Oi1O	:	STD_LOGIC := '0';
	 SIGNAL	n1Oii	:	STD_LOGIC := '0';
	 SIGNAL	n1Oiil	:	STD_LOGIC := '0';
	 SIGNAL	n1OiiO	:	STD_LOGIC := '0';
	 SIGNAL	n1Oil	:	STD_LOGIC := '0';
	 SIGNAL	n1Oili	:	STD_LOGIC := '0';
	 SIGNAL	n1Oill	:	STD_LOGIC := '0';
	 SIGNAL	n1OilO	:	STD_LOGIC := '0';
	 SIGNAL	n1OiO	:	STD_LOGIC := '0';
	 SIGNAL	n1OiOi	:	STD_LOGIC := '0';
	 SIGNAL	n1OiOl	:	STD_LOGIC := '0';
	 SIGNAL	n1OiOO	:	STD_LOGIC := '0';
	 SIGNAL	n1Ol0i	:	STD_LOGIC := '0';
	 SIGNAL	n1Ol0l	:	STD_LOGIC := '0';
	 SIGNAL	n1Ol1i	:	STD_LOGIC := '0';
	 SIGNAL	n1Ol1l	:	STD_LOGIC := '0';
	 SIGNAL	n1Ol1O	:	STD_LOGIC := '0';
	 SIGNAL	n1Oli	:	STD_LOGIC := '0';
	 SIGNAL	n1Olii	:	STD_LOGIC := '0';
	 SIGNAL	n1Olil	:	STD_LOGIC := '0';
	 SIGNAL	n1OliO	:	STD_LOGIC := '0';
	 SIGNAL	n1Oll	:	STD_LOGIC := '0';
	 SIGNAL	n1Olli	:	STD_LOGIC := '0';
	 SIGNAL	n1Olll	:	STD_LOGIC := '0';
	 SIGNAL	n1OllO	:	STD_LOGIC := '0';
	 SIGNAL	n1OlO	:	STD_LOGIC := '0';
	 SIGNAL	n1OlOi	:	STD_LOGIC := '0';
	 SIGNAL	n1OlOl	:	STD_LOGIC := '0';
	 SIGNAL	n1OlOO	:	STD_LOGIC := '0';
	 SIGNAL	n1OO0i	:	STD_LOGIC := '0';
	 SIGNAL	n1OO0O	:	STD_LOGIC := '0';
	 SIGNAL	n1OO1i	:	STD_LOGIC := '0';
	 SIGNAL	n1OO1l	:	STD_LOGIC := '0';
	 SIGNAL	n1OO1O	:	STD_LOGIC := '0';
	 SIGNAL	n1OOi	:	STD_LOGIC := '0';
	 SIGNAL	n1OOii	:	STD_LOGIC := '0';
	 SIGNAL	n1OOil	:	STD_LOGIC := '0';
	 SIGNAL	n1OOiO	:	STD_LOGIC := '0';
	 SIGNAL	n1OOl	:	STD_LOGIC := '0';
	 SIGNAL	n1OOli	:	STD_LOGIC := '0';
	 SIGNAL	n1OOll	:	STD_LOGIC := '0';
	 SIGNAL	n1OOlO	:	STD_LOGIC := '0';
	 SIGNAL	n1OOO	:	STD_LOGIC := '0';
	 SIGNAL	n1OOOi	:	STD_LOGIC := '0';
	 SIGNAL	n1OOOl	:	STD_LOGIC := '0';
	 SIGNAL	n1OOOO	:	STD_LOGIC := '0';
	 SIGNAL	ni000i	:	STD_LOGIC := '0';
	 SIGNAL	ni000l	:	STD_LOGIC := '0';
	 SIGNAL	ni000O	:	STD_LOGIC := '0';
	 SIGNAL	ni001i	:	STD_LOGIC := '0';
	 SIGNAL	ni001l	:	STD_LOGIC := '0';
	 SIGNAL	ni001O	:	STD_LOGIC := '0';
	 SIGNAL	ni00ii	:	STD_LOGIC := '0';
	 SIGNAL	ni00il	:	STD_LOGIC := '0';
	 SIGNAL	ni00iO	:	STD_LOGIC := '0';
	 SIGNAL	ni00l	:	STD_LOGIC := '0';
	 SIGNAL	ni00li	:	STD_LOGIC := '0';
	 SIGNAL	ni00ll	:	STD_LOGIC := '0';
	 SIGNAL	ni00lO	:	STD_LOGIC := '0';
	 SIGNAL	ni00O	:	STD_LOGIC := '0';
	 SIGNAL	ni00Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni00Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni00OO	:	STD_LOGIC := '0';
	 SIGNAL	ni010i	:	STD_LOGIC := '0';
	 SIGNAL	ni010l	:	STD_LOGIC := '0';
	 SIGNAL	ni010O	:	STD_LOGIC := '0';
	 SIGNAL	ni011i	:	STD_LOGIC := '0';
	 SIGNAL	ni011l	:	STD_LOGIC := '0';
	 SIGNAL	ni011O	:	STD_LOGIC := '0';
	 SIGNAL	ni01i	:	STD_LOGIC := '0';
	 SIGNAL	ni01il	:	STD_LOGIC := '0';
	 SIGNAL	ni01iO	:	STD_LOGIC := '0';
	 SIGNAL	ni01l	:	STD_LOGIC := '0';
	 SIGNAL	ni01li	:	STD_LOGIC := '0';
	 SIGNAL	ni01ll	:	STD_LOGIC := '0';
	 SIGNAL	ni01lO	:	STD_LOGIC := '0';
	 SIGNAL	ni01O	:	STD_LOGIC := '0';
	 SIGNAL	ni01Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni01Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni01OO	:	STD_LOGIC := '0';
	 SIGNAL	ni0i0i	:	STD_LOGIC := '0';
	 SIGNAL	ni0i0l	:	STD_LOGIC := '0';
	 SIGNAL	ni0i1i	:	STD_LOGIC := '0';
	 SIGNAL	ni0i1l	:	STD_LOGIC := '0';
	 SIGNAL	ni0i1O	:	STD_LOGIC := '0';
	 SIGNAL	ni0ii	:	STD_LOGIC := '0';
	 SIGNAL	ni0iii	:	STD_LOGIC := '0';
	 SIGNAL	ni0iil	:	STD_LOGIC := '0';
	 SIGNAL	ni0iiO	:	STD_LOGIC := '0';
	 SIGNAL	ni0il	:	STD_LOGIC := '0';
	 SIGNAL	ni0ili	:	STD_LOGIC := '0';
	 SIGNAL	ni0ill	:	STD_LOGIC := '0';
	 SIGNAL	ni0ilO	:	STD_LOGIC := '0';
	 SIGNAL	ni0iO	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOi	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOl	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOO	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0i	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0l	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0O	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1i	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1l	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1O	:	STD_LOGIC := '0';
	 SIGNAL	ni0li	:	STD_LOGIC := '0';
	 SIGNAL	ni0lii	:	STD_LOGIC := '0';
	 SIGNAL	ni0lil	:	STD_LOGIC := '0';
	 SIGNAL	ni0liO	:	STD_LOGIC := '0';
	 SIGNAL	ni0ll	:	STD_LOGIC := '0';
	 SIGNAL	ni0lli	:	STD_LOGIC := '0';
	 SIGNAL	ni0lll	:	STD_LOGIC := '0';
	 SIGNAL	ni0llO	:	STD_LOGIC := '0';
	 SIGNAL	ni0lO	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOi	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOl	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOO	:	STD_LOGIC := '0';
	 SIGNAL	ni0O0i	:	STD_LOGIC := '0';
	 SIGNAL	ni0O0l	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1i	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1l	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1O	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oii	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oil	:	STD_LOGIC := '0';
	 SIGNAL	ni0OiO	:	STD_LOGIC := '0';
	 SIGNAL	ni0Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oli	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oll	:	STD_LOGIC := '0';
	 SIGNAL	ni0OlO	:	STD_LOGIC := '0';
	 SIGNAL	ni0OO	:	STD_LOGIC := '0';
	 SIGNAL	ni0OOi	:	STD_LOGIC := '0';
	 SIGNAL	ni0OOl	:	STD_LOGIC := '0';
	 SIGNAL	ni0OOO	:	STD_LOGIC := '0';
	 SIGNAL	ni100i	:	STD_LOGIC := '0';
	 SIGNAL	ni100l	:	STD_LOGIC := '0';
	 SIGNAL	ni100O	:	STD_LOGIC := '0';
	 SIGNAL	ni101i	:	STD_LOGIC := '0';
	 SIGNAL	ni101l	:	STD_LOGIC := '0';
	 SIGNAL	ni101O	:	STD_LOGIC := '0';
	 SIGNAL	ni10i	:	STD_LOGIC := '0';
	 SIGNAL	ni10ii	:	STD_LOGIC := '0';
	 SIGNAL	ni10il	:	STD_LOGIC := '0';
	 SIGNAL	ni10iO	:	STD_LOGIC := '0';
	 SIGNAL	ni10l	:	STD_LOGIC := '0';
	 SIGNAL	ni10ll	:	STD_LOGIC := '0';
	 SIGNAL	ni10lO	:	STD_LOGIC := '0';
	 SIGNAL	ni10O	:	STD_LOGIC := '0';
	 SIGNAL	ni10Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni10Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni10OO	:	STD_LOGIC := '0';
	 SIGNAL	ni110i	:	STD_LOGIC := '0';
	 SIGNAL	ni110l	:	STD_LOGIC := '0';
	 SIGNAL	ni110O	:	STD_LOGIC := '0';
	 SIGNAL	ni111i	:	STD_LOGIC := '0';
	 SIGNAL	ni111l	:	STD_LOGIC := '0';
	 SIGNAL	ni111O	:	STD_LOGIC := '0';
	 SIGNAL	ni11i	:	STD_LOGIC := '0';
	 SIGNAL	ni11ii	:	STD_LOGIC := '0';
	 SIGNAL	ni11il	:	STD_LOGIC := '0';
	 SIGNAL	ni11iO	:	STD_LOGIC := '0';
	 SIGNAL	ni11l	:	STD_LOGIC := '0';
	 SIGNAL	ni11li	:	STD_LOGIC := '0';
	 SIGNAL	ni11ll	:	STD_LOGIC := '0';
	 SIGNAL	ni11lO	:	STD_LOGIC := '0';
	 SIGNAL	ni11O	:	STD_LOGIC := '0';
	 SIGNAL	ni11Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni11Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni11OO	:	STD_LOGIC := '0';
	 SIGNAL	ni1i0i	:	STD_LOGIC := '0';
	 SIGNAL	ni1i0l	:	STD_LOGIC := '0';
	 SIGNAL	ni1i0O	:	STD_LOGIC := '0';
	 SIGNAL	ni1i1i	:	STD_LOGIC := '0';
	 SIGNAL	ni1i1l	:	STD_LOGIC := '0';
	 SIGNAL	ni1i1O	:	STD_LOGIC := '0';
	 SIGNAL	ni1ii	:	STD_LOGIC := '0';
	 SIGNAL	ni1iii	:	STD_LOGIC := '0';
	 SIGNAL	ni1iil	:	STD_LOGIC := '0';
	 SIGNAL	ni1iiO	:	STD_LOGIC := '0';
	 SIGNAL	ni1il	:	STD_LOGIC := '0';
	 SIGNAL	ni1ili	:	STD_LOGIC := '0';
	 SIGNAL	ni1ill	:	STD_LOGIC := '0';
	 SIGNAL	ni1ilO	:	STD_LOGIC := '0';
	 SIGNAL	ni1iO	:	STD_LOGIC := '0';
	 SIGNAL	ni1iOi	:	STD_LOGIC := '0';
	 SIGNAL	ni1iOl	:	STD_LOGIC := '0';
	 SIGNAL	ni1iOO	:	STD_LOGIC := '0';
	 SIGNAL	ni1l0i	:	STD_LOGIC := '0';
	 SIGNAL	ni1l0l	:	STD_LOGIC := '0';
	 SIGNAL	ni1l0O	:	STD_LOGIC := '0';
	 SIGNAL	ni1l1i	:	STD_LOGIC := '0';
	 SIGNAL	ni1l1l	:	STD_LOGIC := '0';
	 SIGNAL	ni1l1O	:	STD_LOGIC := '0';
	 SIGNAL	ni1li	:	STD_LOGIC := '0';
	 SIGNAL	ni1lii	:	STD_LOGIC := '0';
	 SIGNAL	ni1liO	:	STD_LOGIC := '0';
	 SIGNAL	ni1ll	:	STD_LOGIC := '0';
	 SIGNAL	ni1lli	:	STD_LOGIC := '0';
	 SIGNAL	ni1lll	:	STD_LOGIC := '0';
	 SIGNAL	ni1llO	:	STD_LOGIC := '0';
	 SIGNAL	ni1lO	:	STD_LOGIC := '0';
	 SIGNAL	ni1lOi	:	STD_LOGIC := '0';
	 SIGNAL	ni1lOl	:	STD_LOGIC := '0';
	 SIGNAL	ni1lOO	:	STD_LOGIC := '0';
	 SIGNAL	ni1O0i	:	STD_LOGIC := '0';
	 SIGNAL	ni1O0l	:	STD_LOGIC := '0';
	 SIGNAL	ni1O0O	:	STD_LOGIC := '0';
	 SIGNAL	ni1O1i	:	STD_LOGIC := '0';
	 SIGNAL	ni1O1l	:	STD_LOGIC := '0';
	 SIGNAL	ni1O1O	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oii	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oil	:	STD_LOGIC := '0';
	 SIGNAL	ni1OiO	:	STD_LOGIC := '0';
	 SIGNAL	ni1Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oli	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oll	:	STD_LOGIC := '0';
	 SIGNAL	ni1OlO	:	STD_LOGIC := '0';
	 SIGNAL	ni1OO	:	STD_LOGIC := '0';
	 SIGNAL	ni1OOi	:	STD_LOGIC := '0';
	 SIGNAL	ni1OOl	:	STD_LOGIC := '0';
	 SIGNAL	ni1OOO	:	STD_LOGIC := '0';
	 SIGNAL	nii00i	:	STD_LOGIC := '0';
	 SIGNAL	nii00l	:	STD_LOGIC := '0';
	 SIGNAL	nii00O	:	STD_LOGIC := '0';
	 SIGNAL	nii01i	:	STD_LOGIC := '0';
	 SIGNAL	nii01l	:	STD_LOGIC := '0';
	 SIGNAL	nii0i	:	STD_LOGIC := '0';
	 SIGNAL	nii0ii	:	STD_LOGIC := '0';
	 SIGNAL	nii0il	:	STD_LOGIC := '0';
	 SIGNAL	nii0iO	:	STD_LOGIC := '0';
	 SIGNAL	nii0l	:	STD_LOGIC := '0';
	 SIGNAL	nii0li	:	STD_LOGIC := '0';
	 SIGNAL	nii0ll	:	STD_LOGIC := '0';
	 SIGNAL	nii0lO	:	STD_LOGIC := '0';
	 SIGNAL	nii0O	:	STD_LOGIC := '0';
	 SIGNAL	nii0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nii0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nii0OO	:	STD_LOGIC := '0';
	 SIGNAL	nii10i	:	STD_LOGIC := '0';
	 SIGNAL	nii10l	:	STD_LOGIC := '0';
	 SIGNAL	nii10O	:	STD_LOGIC := '0';
	 SIGNAL	nii11i	:	STD_LOGIC := '0';
	 SIGNAL	nii11l	:	STD_LOGIC := '0';
	 SIGNAL	nii11O	:	STD_LOGIC := '0';
	 SIGNAL	nii1i	:	STD_LOGIC := '0';
	 SIGNAL	nii1ii	:	STD_LOGIC := '0';
	 SIGNAL	nii1il	:	STD_LOGIC := '0';
	 SIGNAL	nii1iO	:	STD_LOGIC := '0';
	 SIGNAL	nii1l	:	STD_LOGIC := '0';
	 SIGNAL	nii1li	:	STD_LOGIC := '0';
	 SIGNAL	nii1ll	:	STD_LOGIC := '0';
	 SIGNAL	nii1lO	:	STD_LOGIC := '0';
	 SIGNAL	nii1O	:	STD_LOGIC := '0';
	 SIGNAL	nii1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nii1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nii1OO	:	STD_LOGIC := '0';
	 SIGNAL	niii0i	:	STD_LOGIC := '0';
	 SIGNAL	niii0l	:	STD_LOGIC := '0';
	 SIGNAL	niii0O	:	STD_LOGIC := '0';
	 SIGNAL	niii1i	:	STD_LOGIC := '0';
	 SIGNAL	niii1l	:	STD_LOGIC := '0';
	 SIGNAL	niii1O	:	STD_LOGIC := '0';
	 SIGNAL	niiii	:	STD_LOGIC := '0';
	 SIGNAL	niiiii	:	STD_LOGIC := '0';
	 SIGNAL	niiiil	:	STD_LOGIC := '0';
	 SIGNAL	niiiiO	:	STD_LOGIC := '0';
	 SIGNAL	niiil	:	STD_LOGIC := '0';
	 SIGNAL	niiili	:	STD_LOGIC := '0';
	 SIGNAL	niiill	:	STD_LOGIC := '0';
	 SIGNAL	niiilO	:	STD_LOGIC := '0';
	 SIGNAL	niiiO	:	STD_LOGIC := '0';
	 SIGNAL	niiiOi	:	STD_LOGIC := '0';
	 SIGNAL	niiiOl	:	STD_LOGIC := '0';
	 SIGNAL	niil0i	:	STD_LOGIC := '0';
	 SIGNAL	niil0l	:	STD_LOGIC := '0';
	 SIGNAL	niil0O	:	STD_LOGIC := '0';
	 SIGNAL	niil1i	:	STD_LOGIC := '0';
	 SIGNAL	niil1l	:	STD_LOGIC := '0';
	 SIGNAL	niil1O	:	STD_LOGIC := '0';
	 SIGNAL	niili	:	STD_LOGIC := '0';
	 SIGNAL	niilii	:	STD_LOGIC := '0';
	 SIGNAL	niilil	:	STD_LOGIC := '0';
	 SIGNAL	niiliO	:	STD_LOGIC := '0';
	 SIGNAL	niill	:	STD_LOGIC := '0';
	 SIGNAL	niilli	:	STD_LOGIC := '0';
	 SIGNAL	niilll	:	STD_LOGIC := '0';
	 SIGNAL	niillO	:	STD_LOGIC := '0';
	 SIGNAL	niilO	:	STD_LOGIC := '0';
	 SIGNAL	niilOi	:	STD_LOGIC := '0';
	 SIGNAL	niilOl	:	STD_LOGIC := '0';
	 SIGNAL	niilOO	:	STD_LOGIC := '0';
	 SIGNAL	niiO0i	:	STD_LOGIC := '0';
	 SIGNAL	niiO0l	:	STD_LOGIC := '0';
	 SIGNAL	niiO0O	:	STD_LOGIC := '0';
	 SIGNAL	niiO1i	:	STD_LOGIC := '0';
	 SIGNAL	niiO1l	:	STD_LOGIC := '0';
	 SIGNAL	niiO1O	:	STD_LOGIC := '0';
	 SIGNAL	niiOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOii	:	STD_LOGIC := '0';
	 SIGNAL	niiOil	:	STD_LOGIC := '0';
	 SIGNAL	niiOiO	:	STD_LOGIC := '0';
	 SIGNAL	niiOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOli	:	STD_LOGIC := '0';
	 SIGNAL	niiOll	:	STD_LOGIC := '0';
	 SIGNAL	niiOO	:	STD_LOGIC := '0';
	 SIGNAL	niiOOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOOO	:	STD_LOGIC := '0';
	 SIGNAL	nil00i	:	STD_LOGIC := '0';
	 SIGNAL	nil00l	:	STD_LOGIC := '0';
	 SIGNAL	nil00O	:	STD_LOGIC := '0';
	 SIGNAL	nil01i	:	STD_LOGIC := '0';
	 SIGNAL	nil01l	:	STD_LOGIC := '0';
	 SIGNAL	nil01O	:	STD_LOGIC := '0';
	 SIGNAL	nil0i	:	STD_LOGIC := '0';
	 SIGNAL	nil0ii	:	STD_LOGIC := '0';
	 SIGNAL	nil0il	:	STD_LOGIC := '0';
	 SIGNAL	nil0li	:	STD_LOGIC := '0';
	 SIGNAL	nil0ll	:	STD_LOGIC := '0';
	 SIGNAL	nil0lO	:	STD_LOGIC := '0';
	 SIGNAL	nil0O	:	STD_LOGIC := '0';
	 SIGNAL	nil0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nil0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nil0OO	:	STD_LOGIC := '0';
	 SIGNAL	nil10i	:	STD_LOGIC := '0';
	 SIGNAL	nil10l	:	STD_LOGIC := '0';
	 SIGNAL	nil10O	:	STD_LOGIC := '0';
	 SIGNAL	nil11i	:	STD_LOGIC := '0';
	 SIGNAL	nil11l	:	STD_LOGIC := '0';
	 SIGNAL	nil11O	:	STD_LOGIC := '0';
	 SIGNAL	nil1i	:	STD_LOGIC := '0';
	 SIGNAL	nil1ii	:	STD_LOGIC := '0';
	 SIGNAL	nil1il	:	STD_LOGIC := '0';
	 SIGNAL	nil1iO	:	STD_LOGIC := '0';
	 SIGNAL	nil1l	:	STD_LOGIC := '0';
	 SIGNAL	nil1li	:	STD_LOGIC := '0';
	 SIGNAL	nil1ll	:	STD_LOGIC := '0';
	 SIGNAL	nil1lO	:	STD_LOGIC := '0';
	 SIGNAL	nil1O	:	STD_LOGIC := '0';
	 SIGNAL	nil1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nil1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nil1OO	:	STD_LOGIC := '0';
	 SIGNAL	nili0i	:	STD_LOGIC := '0';
	 SIGNAL	nili0l	:	STD_LOGIC := '0';
	 SIGNAL	nili0O	:	STD_LOGIC := '0';
	 SIGNAL	nili1i	:	STD_LOGIC := '0';
	 SIGNAL	nili1l	:	STD_LOGIC := '0';
	 SIGNAL	nili1O	:	STD_LOGIC := '0';
	 SIGNAL	nilii	:	STD_LOGIC := '0';
	 SIGNAL	niliii	:	STD_LOGIC := '0';
	 SIGNAL	niliil	:	STD_LOGIC := '0';
	 SIGNAL	niliiO	:	STD_LOGIC := '0';
	 SIGNAL	nilil	:	STD_LOGIC := '0';
	 SIGNAL	nilili	:	STD_LOGIC := '0';
	 SIGNAL	nilill	:	STD_LOGIC := '0';
	 SIGNAL	nililO	:	STD_LOGIC := '0';
	 SIGNAL	niliO	:	STD_LOGIC := '0';
	 SIGNAL	niliOi	:	STD_LOGIC := '0';
	 SIGNAL	niliOl	:	STD_LOGIC := '0';
	 SIGNAL	niliOO	:	STD_LOGIC := '0';
	 SIGNAL	nill0i	:	STD_LOGIC := '0';
	 SIGNAL	nill0l	:	STD_LOGIC := '0';
	 SIGNAL	nill1i	:	STD_LOGIC := '0';
	 SIGNAL	nill1l	:	STD_LOGIC := '0';
	 SIGNAL	nill1O	:	STD_LOGIC := '0';
	 SIGNAL	nilli	:	STD_LOGIC := '0';
	 SIGNAL	nillii	:	STD_LOGIC := '0';
	 SIGNAL	nillil	:	STD_LOGIC := '0';
	 SIGNAL	nilliO	:	STD_LOGIC := '0';
	 SIGNAL	nilll	:	STD_LOGIC := '0';
	 SIGNAL	nillli	:	STD_LOGIC := '0';
	 SIGNAL	nillll	:	STD_LOGIC := '0';
	 SIGNAL	nilllO	:	STD_LOGIC := '0';
	 SIGNAL	nillO	:	STD_LOGIC := '0';
	 SIGNAL	nillOi	:	STD_LOGIC := '0';
	 SIGNAL	nillOl	:	STD_LOGIC := '0';
	 SIGNAL	nillOO	:	STD_LOGIC := '0';
	 SIGNAL	nilO0i	:	STD_LOGIC := '0';
	 SIGNAL	nilO0l	:	STD_LOGIC := '0';
	 SIGNAL	nilO0O	:	STD_LOGIC := '0';
	 SIGNAL	nilO1i	:	STD_LOGIC := '0';
	 SIGNAL	nilO1l	:	STD_LOGIC := '0';
	 SIGNAL	nilO1O	:	STD_LOGIC := '0';
	 SIGNAL	nilOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOii	:	STD_LOGIC := '0';
	 SIGNAL	nilOil	:	STD_LOGIC := '0';
	 SIGNAL	nilOiO	:	STD_LOGIC := '0';
	 SIGNAL	nilOl	:	STD_LOGIC := '0';
	 SIGNAL	nilOli	:	STD_LOGIC := '0';
	 SIGNAL	nilOll	:	STD_LOGIC := '0';
	 SIGNAL	nilOlO	:	STD_LOGIC := '0';
	 SIGNAL	nilOO	:	STD_LOGIC := '0';
	 SIGNAL	nilOOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOOl	:	STD_LOGIC := '0';
	 SIGNAL	nilOOO	:	STD_LOGIC := '0';
	 SIGNAL	niO00i	:	STD_LOGIC := '0';
	 SIGNAL	niO00l	:	STD_LOGIC := '0';
	 SIGNAL	niO00O	:	STD_LOGIC := '0';
	 SIGNAL	niO01i	:	STD_LOGIC := '0';
	 SIGNAL	niO01l	:	STD_LOGIC := '0';
	 SIGNAL	niO01O	:	STD_LOGIC := '0';
	 SIGNAL	niO0i	:	STD_LOGIC := '0';
	 SIGNAL	niO0ii	:	STD_LOGIC := '0';
	 SIGNAL	niO0il	:	STD_LOGIC := '0';
	 SIGNAL	niO0iO	:	STD_LOGIC := '0';
	 SIGNAL	niO0l	:	STD_LOGIC := '0';
	 SIGNAL	niO0li	:	STD_LOGIC := '0';
	 SIGNAL	niO0ll	:	STD_LOGIC := '0';
	 SIGNAL	niO0lO	:	STD_LOGIC := '0';
	 SIGNAL	niO0O	:	STD_LOGIC := '0';
	 SIGNAL	niO0Oi	:	STD_LOGIC := '0';
	 SIGNAL	niO0Ol	:	STD_LOGIC := '0';
	 SIGNAL	niO10i	:	STD_LOGIC := '0';
	 SIGNAL	niO10l	:	STD_LOGIC := '0';
	 SIGNAL	niO10O	:	STD_LOGIC := '0';
	 SIGNAL	niO11i	:	STD_LOGIC := '0';
	 SIGNAL	niO11l	:	STD_LOGIC := '0';
	 SIGNAL	niO1i	:	STD_LOGIC := '0';
	 SIGNAL	niO1ii	:	STD_LOGIC := '0';
	 SIGNAL	niO1il	:	STD_LOGIC := '0';
	 SIGNAL	niO1iO	:	STD_LOGIC := '0';
	 SIGNAL	niO1l	:	STD_LOGIC := '0';
	 SIGNAL	niO1li	:	STD_LOGIC := '0';
	 SIGNAL	niO1ll	:	STD_LOGIC := '0';
	 SIGNAL	niO1lO	:	STD_LOGIC := '0';
	 SIGNAL	niO1O	:	STD_LOGIC := '0';
	 SIGNAL	niO1Oi	:	STD_LOGIC := '0';
	 SIGNAL	niO1Ol	:	STD_LOGIC := '0';
	 SIGNAL	niO1OO	:	STD_LOGIC := '0';
	 SIGNAL	niOi0i	:	STD_LOGIC := '0';
	 SIGNAL	niOi0l	:	STD_LOGIC := '0';
	 SIGNAL	niOi0O	:	STD_LOGIC := '0';
	 SIGNAL	niOi1i	:	STD_LOGIC := '0';
	 SIGNAL	niOi1l	:	STD_LOGIC := '0';
	 SIGNAL	niOi1O	:	STD_LOGIC := '0';
	 SIGNAL	niOii	:	STD_LOGIC := '0';
	 SIGNAL	niOiii	:	STD_LOGIC := '0';
	 SIGNAL	niOiil	:	STD_LOGIC := '0';
	 SIGNAL	niOiiO	:	STD_LOGIC := '0';
	 SIGNAL	niOil	:	STD_LOGIC := '0';
	 SIGNAL	niOili	:	STD_LOGIC := '0';
	 SIGNAL	niOill	:	STD_LOGIC := '0';
	 SIGNAL	niOilO	:	STD_LOGIC := '0';
	 SIGNAL	niOiO	:	STD_LOGIC := '0';
	 SIGNAL	niOiOi	:	STD_LOGIC := '0';
	 SIGNAL	niOiOl	:	STD_LOGIC := '0';
	 SIGNAL	niOiOO	:	STD_LOGIC := '0';
	 SIGNAL	niOl0i	:	STD_LOGIC := '0';
	 SIGNAL	niOl0l	:	STD_LOGIC := '0';
	 SIGNAL	niOl0O	:	STD_LOGIC := '0';
	 SIGNAL	niOl1i	:	STD_LOGIC := '0';
	 SIGNAL	niOl1l	:	STD_LOGIC := '0';
	 SIGNAL	niOl1O	:	STD_LOGIC := '0';
	 SIGNAL	niOli	:	STD_LOGIC := '0';
	 SIGNAL	niOlii	:	STD_LOGIC := '0';
	 SIGNAL	niOlil	:	STD_LOGIC := '0';
	 SIGNAL	niOliO	:	STD_LOGIC := '0';
	 SIGNAL	niOll	:	STD_LOGIC := '0';
	 SIGNAL	niOlli	:	STD_LOGIC := '0';
	 SIGNAL	niOlll	:	STD_LOGIC := '0';
	 SIGNAL	niOllO	:	STD_LOGIC := '0';
	 SIGNAL	niOlO	:	STD_LOGIC := '0';
	 SIGNAL	niOlOl	:	STD_LOGIC := '0';
	 SIGNAL	niOlOO	:	STD_LOGIC := '0';
	 SIGNAL	niOO0i	:	STD_LOGIC := '0';
	 SIGNAL	niOO0l	:	STD_LOGIC := '0';
	 SIGNAL	niOO0O	:	STD_LOGIC := '0';
	 SIGNAL	niOO1i	:	STD_LOGIC := '0';
	 SIGNAL	niOO1l	:	STD_LOGIC := '0';
	 SIGNAL	niOO1O	:	STD_LOGIC := '0';
	 SIGNAL	niOOi	:	STD_LOGIC := '0';
	 SIGNAL	niOOii	:	STD_LOGIC := '0';
	 SIGNAL	niOOil	:	STD_LOGIC := '0';
	 SIGNAL	niOOiO	:	STD_LOGIC := '0';
	 SIGNAL	niOOl	:	STD_LOGIC := '0';
	 SIGNAL	niOOli	:	STD_LOGIC := '0';
	 SIGNAL	niOOll	:	STD_LOGIC := '0';
	 SIGNAL	niOOlO	:	STD_LOGIC := '0';
	 SIGNAL	niOOO	:	STD_LOGIC := '0';
	 SIGNAL	niOOOi	:	STD_LOGIC := '0';
	 SIGNAL	niOOOl	:	STD_LOGIC := '0';
	 SIGNAL	niOOOO	:	STD_LOGIC := '0';
	 SIGNAL	nl000i	:	STD_LOGIC := '0';
	 SIGNAL	nl000l	:	STD_LOGIC := '0';
	 SIGNAL	nl001i	:	STD_LOGIC := '0';
	 SIGNAL	nl001l	:	STD_LOGIC := '0';
	 SIGNAL	nl001O	:	STD_LOGIC := '0';
	 SIGNAL	nl00i	:	STD_LOGIC := '0';
	 SIGNAL	nl00ii	:	STD_LOGIC := '0';
	 SIGNAL	nl00il	:	STD_LOGIC := '0';
	 SIGNAL	nl00iO	:	STD_LOGIC := '0';
	 SIGNAL	nl00l	:	STD_LOGIC := '0';
	 SIGNAL	nl00li	:	STD_LOGIC := '0';
	 SIGNAL	nl00ll	:	STD_LOGIC := '0';
	 SIGNAL	nl00lO	:	STD_LOGIC := '0';
	 SIGNAL	nl00O	:	STD_LOGIC := '0';
	 SIGNAL	nl00Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl00Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl00OO	:	STD_LOGIC := '0';
	 SIGNAL	nl010i	:	STD_LOGIC := '0';
	 SIGNAL	nl010l	:	STD_LOGIC := '0';
	 SIGNAL	nl010O	:	STD_LOGIC := '0';
	 SIGNAL	nl011i	:	STD_LOGIC := '0';
	 SIGNAL	nl011l	:	STD_LOGIC := '0';
	 SIGNAL	nl011O	:	STD_LOGIC := '0';
	 SIGNAL	nl01i	:	STD_LOGIC := '0';
	 SIGNAL	nl01ii	:	STD_LOGIC := '0';
	 SIGNAL	nl01il	:	STD_LOGIC := '0';
	 SIGNAL	nl01iO	:	STD_LOGIC := '0';
	 SIGNAL	nl01l	:	STD_LOGIC := '0';
	 SIGNAL	nl01li	:	STD_LOGIC := '0';
	 SIGNAL	nl01ll	:	STD_LOGIC := '0';
	 SIGNAL	nl01lO	:	STD_LOGIC := '0';
	 SIGNAL	nl01O	:	STD_LOGIC := '0';
	 SIGNAL	nl01Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl01Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl01OO	:	STD_LOGIC := '0';
	 SIGNAL	nl0i0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0i0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0i0O	:	STD_LOGIC := '0';
	 SIGNAL	nl0i1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0i1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0i1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0ii	:	STD_LOGIC := '0';
	 SIGNAL	nl0iii	:	STD_LOGIC := '0';
	 SIGNAL	nl0iil	:	STD_LOGIC := '0';
	 SIGNAL	nl0iiO	:	STD_LOGIC := '0';
	 SIGNAL	nl0il	:	STD_LOGIC := '0';
	 SIGNAL	nl0ili	:	STD_LOGIC := '0';
	 SIGNAL	nl0ill	:	STD_LOGIC := '0';
	 SIGNAL	nl0ilO	:	STD_LOGIC := '0';
	 SIGNAL	nl0iO	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0iOO	:	STD_LOGIC := '0';
	 SIGNAL	nl0l0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l0O	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0l1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0li	:	STD_LOGIC := '0';
	 SIGNAL	nl0lii	:	STD_LOGIC := '0';
	 SIGNAL	nl0lil	:	STD_LOGIC := '0';
	 SIGNAL	nl0liO	:	STD_LOGIC := '0';
	 SIGNAL	nl0ll	:	STD_LOGIC := '0';
	 SIGNAL	nl0lli	:	STD_LOGIC := '0';
	 SIGNAL	nl0lll	:	STD_LOGIC := '0';
	 SIGNAL	nl0llO	:	STD_LOGIC := '0';
	 SIGNAL	nl0lO	:	STD_LOGIC := '0';
	 SIGNAL	nl0lOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0lOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0lOO	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0l	:	STD_LOGIC := '0';
	 SIGNAL	nl0O0O	:	STD_LOGIC := '0';
	 SIGNAL	nl0O1i	:	STD_LOGIC := '0';
	 SIGNAL	nl0O1l	:	STD_LOGIC := '0';
	 SIGNAL	nl0O1O	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oii	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oil	:	STD_LOGIC := '0';
	 SIGNAL	nl0OiO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oli	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oll	:	STD_LOGIC := '0';
	 SIGNAL	nl0OlO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOi	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOl	:	STD_LOGIC := '0';
	 SIGNAL	nl0OOO	:	STD_LOGIC := '0';
	 SIGNAL	nl100i	:	STD_LOGIC := '0';
	 SIGNAL	nl100l	:	STD_LOGIC := '0';
	 SIGNAL	nl100O	:	STD_LOGIC := '0';
	 SIGNAL	nl101i	:	STD_LOGIC := '0';
	 SIGNAL	nl101l	:	STD_LOGIC := '0';
	 SIGNAL	nl101O	:	STD_LOGIC := '0';
	 SIGNAL	nl10i	:	STD_LOGIC := '0';
	 SIGNAL	nl10ii	:	STD_LOGIC := '0';
	 SIGNAL	nl10il	:	STD_LOGIC := '0';
	 SIGNAL	nl10iO	:	STD_LOGIC := '0';
	 SIGNAL	nl10l	:	STD_LOGIC := '0';
	 SIGNAL	nl10li	:	STD_LOGIC := '0';
	 SIGNAL	nl10ll	:	STD_LOGIC := '0';
	 SIGNAL	nl10lO	:	STD_LOGIC := '0';
	 SIGNAL	nl10Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl10Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl10OO	:	STD_LOGIC := '0';
	 SIGNAL	nl110i	:	STD_LOGIC := '0';
	 SIGNAL	nl110l	:	STD_LOGIC := '0';
	 SIGNAL	nl110O	:	STD_LOGIC := '0';
	 SIGNAL	nl111i	:	STD_LOGIC := '0';
	 SIGNAL	nl111l	:	STD_LOGIC := '0';
	 SIGNAL	nl111O	:	STD_LOGIC := '0';
	 SIGNAL	nl11i	:	STD_LOGIC := '0';
	 SIGNAL	nl11ii	:	STD_LOGIC := '0';
	 SIGNAL	nl11il	:	STD_LOGIC := '0';
	 SIGNAL	nl11iO	:	STD_LOGIC := '0';
	 SIGNAL	nl11l	:	STD_LOGIC := '0';
	 SIGNAL	nl11li	:	STD_LOGIC := '0';
	 SIGNAL	nl11lO	:	STD_LOGIC := '0';
	 SIGNAL	nl11O	:	STD_LOGIC := '0';
	 SIGNAL	nl11Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl11Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl11OO	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0i	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1i	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1l	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1O	:	STD_LOGIC := '0';
	 SIGNAL	nl1ii	:	STD_LOGIC := '0';
	 SIGNAL	nl1iii	:	STD_LOGIC := '0';
	 SIGNAL	nl1iil	:	STD_LOGIC := '0';
	 SIGNAL	nl1il	:	STD_LOGIC := '0';
	 SIGNAL	nl1ili	:	STD_LOGIC := '0';
	 SIGNAL	nl1ill	:	STD_LOGIC := '0';
	 SIGNAL	nl1ilO	:	STD_LOGIC := '0';
	 SIGNAL	nl1iO	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOi	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOl	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOO	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0i	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1i	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1l	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1O	:	STD_LOGIC := '0';
	 SIGNAL	nl1li	:	STD_LOGIC := '0';
	 SIGNAL	nl1lii	:	STD_LOGIC := '0';
	 SIGNAL	nl1lil	:	STD_LOGIC := '0';
	 SIGNAL	nl1liO	:	STD_LOGIC := '0';
	 SIGNAL	nl1ll	:	STD_LOGIC := '0';
	 SIGNAL	nl1lli	:	STD_LOGIC := '0';
	 SIGNAL	nl1lll	:	STD_LOGIC := '0';
	 SIGNAL	nl1llO	:	STD_LOGIC := '0';
	 SIGNAL	nl1lO	:	STD_LOGIC := '0';
	 SIGNAL	nl1lOi	:	STD_LOGIC := '0';
	 SIGNAL	nl1lOl	:	STD_LOGIC := '0';
	 SIGNAL	nl1lOO	:	STD_LOGIC := '0';
	 SIGNAL	nl1O0i	:	STD_LOGIC := '0';
	 SIGNAL	nl1O0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1O0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1O1i	:	STD_LOGIC := '0';
	 SIGNAL	nl1O1l	:	STD_LOGIC := '0';
	 SIGNAL	nl1O1O	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oil	:	STD_LOGIC := '0';
	 SIGNAL	nl1OiO	:	STD_LOGIC := '0';
	 SIGNAL	nl1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oli	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oll	:	STD_LOGIC := '0';
	 SIGNAL	nl1OlO	:	STD_LOGIC := '0';
	 SIGNAL	nl1OO	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOi	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOl	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOO	:	STD_LOGIC := '0';
	 SIGNAL	nli00i	:	STD_LOGIC := '0';
	 SIGNAL	nli00l	:	STD_LOGIC := '0';
	 SIGNAL	nli00O	:	STD_LOGIC := '0';
	 SIGNAL	nli01i	:	STD_LOGIC := '0';
	 SIGNAL	nli01l	:	STD_LOGIC := '0';
	 SIGNAL	nli01O	:	STD_LOGIC := '0';
	 SIGNAL	nli0ii	:	STD_LOGIC := '0';
	 SIGNAL	nli0il	:	STD_LOGIC := '0';
	 SIGNAL	nli0iO	:	STD_LOGIC := '0';
	 SIGNAL	nli0li	:	STD_LOGIC := '0';
	 SIGNAL	nli0ll	:	STD_LOGIC := '0';
	 SIGNAL	nli0lO	:	STD_LOGIC := '0';
	 SIGNAL	nli0O	:	STD_LOGIC := '0';
	 SIGNAL	nli0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nli0OO	:	STD_LOGIC := '0';
	 SIGNAL	nli10i	:	STD_LOGIC := '0';
	 SIGNAL	nli10O	:	STD_LOGIC := '0';
	 SIGNAL	nli11i	:	STD_LOGIC := '0';
	 SIGNAL	nli11l	:	STD_LOGIC := '0';
	 SIGNAL	nli11O	:	STD_LOGIC := '0';
	 SIGNAL	nli1i	:	STD_LOGIC := '0';
	 SIGNAL	nli1ii	:	STD_LOGIC := '0';
	 SIGNAL	nli1il	:	STD_LOGIC := '0';
	 SIGNAL	nli1iO	:	STD_LOGIC := '0';
	 SIGNAL	nli1l	:	STD_LOGIC := '0';
	 SIGNAL	nli1li	:	STD_LOGIC := '0';
	 SIGNAL	nli1ll	:	STD_LOGIC := '0';
	 SIGNAL	nli1lO	:	STD_LOGIC := '0';
	 SIGNAL	nli1O	:	STD_LOGIC := '0';
	 SIGNAL	nli1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nli1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlii0i	:	STD_LOGIC := '0';
	 SIGNAL	nlii0l	:	STD_LOGIC := '0';
	 SIGNAL	nlii0O	:	STD_LOGIC := '0';
	 SIGNAL	nlii1i	:	STD_LOGIC := '0';
	 SIGNAL	nlii1O	:	STD_LOGIC := '0';
	 SIGNAL	nliiii	:	STD_LOGIC := '0';
	 SIGNAL	nliiil	:	STD_LOGIC := '0';
	 SIGNAL	nliiiO	:	STD_LOGIC := '0';
	 SIGNAL	nliili	:	STD_LOGIC := '0';
	 SIGNAL	nliill	:	STD_LOGIC := '0';
	 SIGNAL	nliilO	:	STD_LOGIC := '0';
	 SIGNAL	nliiOi	:	STD_LOGIC := '0';
	 SIGNAL	nliiOl	:	STD_LOGIC := '0';
	 SIGNAL	nliiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlil0i	:	STD_LOGIC := '0';
	 SIGNAL	nlil0l	:	STD_LOGIC := '0';
	 SIGNAL	nlil0O	:	STD_LOGIC := '0';
	 SIGNAL	nlil1i	:	STD_LOGIC := '0';
	 SIGNAL	nlil1l	:	STD_LOGIC := '0';
	 SIGNAL	nlil1O	:	STD_LOGIC := '0';
	 SIGNAL	nlilii	:	STD_LOGIC := '0';
	 SIGNAL	nlilil	:	STD_LOGIC := '0';
	 SIGNAL	nliliO	:	STD_LOGIC := '0';
	 SIGNAL	nlilli	:	STD_LOGIC := '0';
	 SIGNAL	nlilll	:	STD_LOGIC := '0';
	 SIGNAL	nlillO	:	STD_LOGIC := '0';
	 SIGNAL	nlilOi	:	STD_LOGIC := '0';
	 SIGNAL	nlilOO	:	STD_LOGIC := '0';
	 SIGNAL	nliO0i	:	STD_LOGIC := '0';
	 SIGNAL	nliO0l	:	STD_LOGIC := '0';
	 SIGNAL	nliO0O	:	STD_LOGIC := '0';
	 SIGNAL	nliO1i	:	STD_LOGIC := '0';
	 SIGNAL	nliO1l	:	STD_LOGIC := '0';
	 SIGNAL	nliO1O	:	STD_LOGIC := '0';
	 SIGNAL	nliOii	:	STD_LOGIC := '0';
	 SIGNAL	nliOil	:	STD_LOGIC := '0';
	 SIGNAL	nliOiO	:	STD_LOGIC := '0';
	 SIGNAL	nliOli	:	STD_LOGIC := '0';
	 SIGNAL	nliOll	:	STD_LOGIC := '0';
	 SIGNAL	nliOlO	:	STD_LOGIC := '0';
	 SIGNAL	nliOOi	:	STD_LOGIC := '0';
	 SIGNAL	nliOOl	:	STD_LOGIC := '0';
	 SIGNAL	nliOOO	:	STD_LOGIC := '0';
	 SIGNAL	nll00i	:	STD_LOGIC := '0';
	 SIGNAL	nll00l	:	STD_LOGIC := '0';
	 SIGNAL	nll00O	:	STD_LOGIC := '0';
	 SIGNAL	nll01i	:	STD_LOGIC := '0';
	 SIGNAL	nll01l	:	STD_LOGIC := '0';
	 SIGNAL	nll01O	:	STD_LOGIC := '0';
	 SIGNAL	nll0ii	:	STD_LOGIC := '0';
	 SIGNAL	nll0il	:	STD_LOGIC := '0';
	 SIGNAL	nll0iO	:	STD_LOGIC := '0';
	 SIGNAL	nll0li	:	STD_LOGIC := '0';
	 SIGNAL	nll0ll	:	STD_LOGIC := '0';
	 SIGNAL	nll0lO	:	STD_LOGIC := '0';
	 SIGNAL	nll0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll0OO	:	STD_LOGIC := '0';
	 SIGNAL	nll10i	:	STD_LOGIC := '0';
	 SIGNAL	nll10l	:	STD_LOGIC := '0';
	 SIGNAL	nll10O	:	STD_LOGIC := '0';
	 SIGNAL	nll11i	:	STD_LOGIC := '0';
	 SIGNAL	nll11l	:	STD_LOGIC := '0';
	 SIGNAL	nll11O	:	STD_LOGIC := '0';
	 SIGNAL	nll1ii	:	STD_LOGIC := '0';
	 SIGNAL	nll1il	:	STD_LOGIC := '0';
	 SIGNAL	nll1iO	:	STD_LOGIC := '0';
	 SIGNAL	nll1li	:	STD_LOGIC := '0';
	 SIGNAL	nll1lO	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlli0i	:	STD_LOGIC := '0';
	 SIGNAL	nlli0l	:	STD_LOGIC := '0';
	 SIGNAL	nlli0O	:	STD_LOGIC := '0';
	 SIGNAL	nlli1i	:	STD_LOGIC := '0';
	 SIGNAL	nlli1l	:	STD_LOGIC := '0';
	 SIGNAL	nlli1O	:	STD_LOGIC := '0';
	 SIGNAL	nlliii	:	STD_LOGIC := '0';
	 SIGNAL	nlliiO	:	STD_LOGIC := '0';
	 SIGNAL	nllili	:	STD_LOGIC := '0';
	 SIGNAL	nllill	:	STD_LOGIC := '0';
	 SIGNAL	nllilO	:	STD_LOGIC := '0';
	 SIGNAL	nlliOi	:	STD_LOGIC := '0';
	 SIGNAL	nlliOl	:	STD_LOGIC := '0';
	 SIGNAL	nlliOO	:	STD_LOGIC := '0';
	 SIGNAL	nlll0i	:	STD_LOGIC := '0';
	 SIGNAL	nlll0l	:	STD_LOGIC := '0';
	 SIGNAL	nlll0O	:	STD_LOGIC := '0';
	 SIGNAL	nlll1i	:	STD_LOGIC := '0';
	 SIGNAL	nlll1l	:	STD_LOGIC := '0';
	 SIGNAL	nlll1O	:	STD_LOGIC := '0';
	 SIGNAL	nlllii	:	STD_LOGIC := '0';
	 SIGNAL	nlllil	:	STD_LOGIC := '0';
	 SIGNAL	nllliO	:	STD_LOGIC := '0';
	 SIGNAL	nlllli	:	STD_LOGIC := '0';
	 SIGNAL	nlllll	:	STD_LOGIC := '0';
	 SIGNAL	nllllO	:	STD_LOGIC := '0';
	 SIGNAL	nlllOi	:	STD_LOGIC := '0';
	 SIGNAL	nlllOl	:	STD_LOGIC := '0';
	 SIGNAL	nlllOO	:	STD_LOGIC := '0';
	 SIGNAL	nllO0i	:	STD_LOGIC := '0';
	 SIGNAL	nllO0O	:	STD_LOGIC := '0';
	 SIGNAL	nllO1i	:	STD_LOGIC := '0';
	 SIGNAL	nllO1l	:	STD_LOGIC := '0';
	 SIGNAL	nllO1O	:	STD_LOGIC := '0';
	 SIGNAL	nllOii	:	STD_LOGIC := '0';
	 SIGNAL	nllOil	:	STD_LOGIC := '0';
	 SIGNAL	nllOiO	:	STD_LOGIC := '0';
	 SIGNAL	nllOli	:	STD_LOGIC := '0';
	 SIGNAL	nllOll	:	STD_LOGIC := '0';
	 SIGNAL	nllOlO	:	STD_LOGIC := '0';
	 SIGNAL	nllOOi	:	STD_LOGIC := '0';
	 SIGNAL	nllOOl	:	STD_LOGIC := '0';
	 SIGNAL	nllOOO	:	STD_LOGIC := '0';
	 SIGNAL	nlO00i	:	STD_LOGIC := '0';
	 SIGNAL	nlO00l	:	STD_LOGIC := '0';
	 SIGNAL	nlO00O	:	STD_LOGIC := '0';
	 SIGNAL	nlO01i	:	STD_LOGIC := '0';
	 SIGNAL	nlO01O	:	STD_LOGIC := '0';
	 SIGNAL	nlO0ii	:	STD_LOGIC := '0';
	 SIGNAL	nlO0il	:	STD_LOGIC := '0';
	 SIGNAL	nlO0iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0li	:	STD_LOGIC := '0';
	 SIGNAL	nlO0ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO0OO	:	STD_LOGIC := '0';
	 SIGNAL	nlO10i	:	STD_LOGIC := '0';
	 SIGNAL	nlO10l	:	STD_LOGIC := '0';
	 SIGNAL	nlO10O	:	STD_LOGIC := '0';
	 SIGNAL	nlO11i	:	STD_LOGIC := '0';
	 SIGNAL	nlO11l	:	STD_LOGIC := '0';
	 SIGNAL	nlO11O	:	STD_LOGIC := '0';
	 SIGNAL	nlO1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlO1il	:	STD_LOGIC := '0';
	 SIGNAL	nlO1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1li	:	STD_LOGIC := '0';
	 SIGNAL	nlO1ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOiii	:	STD_LOGIC := '0';
	 SIGNAL	nlOiil	:	STD_LOGIC := '0';
	 SIGNAL	nlOiiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOili	:	STD_LOGIC := '0';
	 SIGNAL	nlOill	:	STD_LOGIC := '0';
	 SIGNAL	nlOilO	:	STD_LOGIC := '0';
	 SIGNAL	nlOiOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOlii	:	STD_LOGIC := '0';
	 SIGNAL	nlOlil	:	STD_LOGIC := '0';
	 SIGNAL	nlOliO	:	STD_LOGIC := '0';
	 SIGNAL	nlOlli	:	STD_LOGIC := '0';
	 SIGNAL	nlOlll	:	STD_LOGIC := '0';
	 SIGNAL	nlOllO	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOOii	:	STD_LOGIC := '0';
	 SIGNAL	nlOOil	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOli	:	STD_LOGIC := '0';
	 SIGNAL	nlOOll	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOO	:	STD_LOGIC := '0';
	 SIGNAL  wire_nli0l_w_lg_nl1il114w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	n100Ol	:	STD_LOGIC := '0';
	 SIGNAL	n100OO	:	STD_LOGIC := '0';
	 SIGNAL	n1010i	:	STD_LOGIC := '0';
	 SIGNAL	n1011i	:	STD_LOGIC := '0';
	 SIGNAL	n1011l	:	STD_LOGIC := '0';
	 SIGNAL	n1011O	:	STD_LOGIC := '0';
	 SIGNAL	n10i0i	:	STD_LOGIC := '0';
	 SIGNAL	n10i0l	:	STD_LOGIC := '0';
	 SIGNAL	n10i0O	:	STD_LOGIC := '0';
	 SIGNAL	n10i1i	:	STD_LOGIC := '0';
	 SIGNAL	n10i1l	:	STD_LOGIC := '0';
	 SIGNAL	n10i1O	:	STD_LOGIC := '0';
	 SIGNAL	n10iii	:	STD_LOGIC := '0';
	 SIGNAL	n10iil	:	STD_LOGIC := '0';
	 SIGNAL	n10iiO	:	STD_LOGIC := '0';
	 SIGNAL	n10ili	:	STD_LOGIC := '0';
	 SIGNAL	n10O0l	:	STD_LOGIC := '0';
	 SIGNAL	n10O0O	:	STD_LOGIC := '0';
	 SIGNAL	n10Oii	:	STD_LOGIC := '0';
	 SIGNAL	n10Oil	:	STD_LOGIC := '0';
	 SIGNAL	n10OiO	:	STD_LOGIC := '0';
	 SIGNAL	n10Oli	:	STD_LOGIC := '0';
	 SIGNAL	n10Oll	:	STD_LOGIC := '0';
	 SIGNAL	n10OlO	:	STD_LOGIC := '0';
	 SIGNAL	n10OOi	:	STD_LOGIC := '0';
	 SIGNAL	n10OOl	:	STD_LOGIC := '0';
	 SIGNAL	n10OOO	:	STD_LOGIC := '0';
	 SIGNAL	n1110i	:	STD_LOGIC := '0';
	 SIGNAL	n1110l	:	STD_LOGIC := '0';
	 SIGNAL	n1110O	:	STD_LOGIC := '0';
	 SIGNAL	n1111i	:	STD_LOGIC := '0';
	 SIGNAL	n1111l	:	STD_LOGIC := '0';
	 SIGNAL	n1111O	:	STD_LOGIC := '0';
	 SIGNAL	n111ii	:	STD_LOGIC := '0';
	 SIGNAL	n11i0i	:	STD_LOGIC := '0';
	 SIGNAL	n11i0l	:	STD_LOGIC := '0';
	 SIGNAL	n11i0O	:	STD_LOGIC := '0';
	 SIGNAL	n11i1l	:	STD_LOGIC := '0';
	 SIGNAL	n11i1O	:	STD_LOGIC := '0';
	 SIGNAL	n11iii	:	STD_LOGIC := '0';
	 SIGNAL	n11iil	:	STD_LOGIC := '0';
	 SIGNAL	n11iiO	:	STD_LOGIC := '0';
	 SIGNAL	n11ili	:	STD_LOGIC := '0';
	 SIGNAL	n11ill	:	STD_LOGIC := '0';
	 SIGNAL	n11ilO	:	STD_LOGIC := '0';
	 SIGNAL	n11iOi	:	STD_LOGIC := '0';
	 SIGNAL	n11Oil	:	STD_LOGIC := '0';
	 SIGNAL	n11OiO	:	STD_LOGIC := '0';
	 SIGNAL	n11Oli	:	STD_LOGIC := '0';
	 SIGNAL	n11Oll	:	STD_LOGIC := '0';
	 SIGNAL	n11OlO	:	STD_LOGIC := '0';
	 SIGNAL	n11OOi	:	STD_LOGIC := '0';
	 SIGNAL	n11OOl	:	STD_LOGIC := '0';
	 SIGNAL	n11OOO	:	STD_LOGIC := '0';
	 SIGNAL	n1i0ll	:	STD_LOGIC := '0';
	 SIGNAL	n1i0lO	:	STD_LOGIC := '0';
	 SIGNAL	n1i0Oi	:	STD_LOGIC := '0';
	 SIGNAL	n1i0Ol	:	STD_LOGIC := '0';
	 SIGNAL	n1i0OO	:	STD_LOGIC := '0';
	 SIGNAL	n1i11i	:	STD_LOGIC := '0';
	 SIGNAL	n1ii0i	:	STD_LOGIC := '0';
	 SIGNAL	n1ii0l	:	STD_LOGIC := '0';
	 SIGNAL	n1ii0O	:	STD_LOGIC := '0';
	 SIGNAL	n1ii1i	:	STD_LOGIC := '0';
	 SIGNAL	n1ii1l	:	STD_LOGIC := '0';
	 SIGNAL	n1ii1O	:	STD_LOGIC := '0';
	 SIGNAL	n1iiii	:	STD_LOGIC := '0';
	 SIGNAL	n1iO1l	:	STD_LOGIC := '0';
	 SIGNAL	nli010i	:	STD_LOGIC := '0';
	 SIGNAL	nli010l	:	STD_LOGIC := '0';
	 SIGNAL	nli010O	:	STD_LOGIC := '0';
	 SIGNAL	nli011l	:	STD_LOGIC := '0';
	 SIGNAL	nli011O	:	STD_LOGIC := '0';
	 SIGNAL	nli01ii	:	STD_LOGIC := '0';
	 SIGNAL	nli01il	:	STD_LOGIC := '0';
	 SIGNAL	nli01iO	:	STD_LOGIC := '0';
	 SIGNAL	nli01li	:	STD_LOGIC := '0';
	 SIGNAL	nli01ll	:	STD_LOGIC := '0';
	 SIGNAL	nli01lO	:	STD_LOGIC := '0';
	 SIGNAL	nli01Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli0iil	:	STD_LOGIC := '0';
	 SIGNAL	nli0iiO	:	STD_LOGIC := '0';
	 SIGNAL	nli0ili	:	STD_LOGIC := '0';
	 SIGNAL	nli0ill	:	STD_LOGIC := '0';
	 SIGNAL	nli0ilO	:	STD_LOGIC := '0';
	 SIGNAL	nli0iOi	:	STD_LOGIC := '0';
	 SIGNAL	nli0iOl	:	STD_LOGIC := '0';
	 SIGNAL	nli0iOO	:	STD_LOGIC := '0';
	 SIGNAL	nli0l0i	:	STD_LOGIC := '0';
	 SIGNAL	nli0l1i	:	STD_LOGIC := '0';
	 SIGNAL	nli0l1l	:	STD_LOGIC := '0';
	 SIGNAL	nli0l1O	:	STD_LOGIC := '0';
	 SIGNAL	nli0OOl	:	STD_LOGIC := '0';
	 SIGNAL	nli0OOO	:	STD_LOGIC := '0';
	 SIGNAL	nli101i	:	STD_LOGIC := '0';
	 SIGNAL	nli110O	:	STD_LOGIC := '0';
	 SIGNAL	nli11ii	:	STD_LOGIC := '0';
	 SIGNAL	nli11il	:	STD_LOGIC := '0';
	 SIGNAL	nli11iO	:	STD_LOGIC := '0';
	 SIGNAL	nli11li	:	STD_LOGIC := '0';
	 SIGNAL	nli11ll	:	STD_LOGIC := '0';
	 SIGNAL	nli11lO	:	STD_LOGIC := '0';
	 SIGNAL	nli11Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli11Ol	:	STD_LOGIC := '0';
	 SIGNAL	nli11OO	:	STD_LOGIC := '0';
	 SIGNAL	nli1ill	:	STD_LOGIC := '0';
	 SIGNAL	nli1ilO	:	STD_LOGIC := '0';
	 SIGNAL	nli1iOi	:	STD_LOGIC := '0';
	 SIGNAL	nli1iOl	:	STD_LOGIC := '0';
	 SIGNAL	nli1iOO	:	STD_LOGIC := '0';
	 SIGNAL	nli1l0i	:	STD_LOGIC := '0';
	 SIGNAL	nli1l0l	:	STD_LOGIC := '0';
	 SIGNAL	nli1l0O	:	STD_LOGIC := '0';
	 SIGNAL	nli1l1i	:	STD_LOGIC := '0';
	 SIGNAL	nli1l1l	:	STD_LOGIC := '0';
	 SIGNAL	nli1l1O	:	STD_LOGIC := '0';
	 SIGNAL	nli1lii	:	STD_LOGIC := '0';
	 SIGNAL	nlii10i	:	STD_LOGIC := '0';
	 SIGNAL	nlii10l	:	STD_LOGIC := '0';
	 SIGNAL	nlii10O	:	STD_LOGIC := '0';
	 SIGNAL	nlii11i	:	STD_LOGIC := '0';
	 SIGNAL	nlii11l	:	STD_LOGIC := '0';
	 SIGNAL	nlii11O	:	STD_LOGIC := '0';
	 SIGNAL	nlii1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlii1il	:	STD_LOGIC := '0';
	 SIGNAL	nlii1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlii1li	:	STD_LOGIC := '0';
	 SIGNAL	nliii0l	:	STD_LOGIC := '0';
	 SIGNAL	nliii0O	:	STD_LOGIC := '0';
	 SIGNAL	nliiiii	:	STD_LOGIC := '0';
	 SIGNAL	nliiiil	:	STD_LOGIC := '0';
	 SIGNAL	nliiiiO	:	STD_LOGIC := '0';
	 SIGNAL	nliiili	:	STD_LOGIC := '0';
	 SIGNAL	nliiill	:	STD_LOGIC := '0';
	 SIGNAL	nliiilO	:	STD_LOGIC := '0';
	 SIGNAL	nliiiOi	:	STD_LOGIC := '0';
	 SIGNAL	nliiiOl	:	STD_LOGIC := '0';
	 SIGNAL	nliiiOO	:	STD_LOGIC := '0';
	 SIGNAL	nliil1i	:	STD_LOGIC := '0';
	 SIGNAL	nliiOll	:	STD_LOGIC := '0';
	 SIGNAL	nliiOlO	:	STD_LOGIC := '0';
	 SIGNAL	nliiOOi	:	STD_LOGIC := '0';
	 SIGNAL	nliiOOl	:	STD_LOGIC := '0';
	 SIGNAL	nliiOOO	:	STD_LOGIC := '0';
	 SIGNAL	nlil10i	:	STD_LOGIC := '0';
	 SIGNAL	nlil10l	:	STD_LOGIC := '0';
	 SIGNAL	nlil10O	:	STD_LOGIC := '0';
	 SIGNAL	nlil11i	:	STD_LOGIC := '0';
	 SIGNAL	nlil11l	:	STD_LOGIC := '0';
	 SIGNAL	nlil11O	:	STD_LOGIC := '0';
	 SIGNAL	nlil1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlili0i	:	STD_LOGIC := '0';
	 SIGNAL	nlili0l	:	STD_LOGIC := '0';
	 SIGNAL	nlili0O	:	STD_LOGIC := '0';
	 SIGNAL	nlili1l	:	STD_LOGIC := '0';
	 SIGNAL	nlili1O	:	STD_LOGIC := '0';
	 SIGNAL	nliliii	:	STD_LOGIC := '0';
	 SIGNAL	nliliil	:	STD_LOGIC := '0';
	 SIGNAL	nliliiO	:	STD_LOGIC := '0';
	 SIGNAL	nlilili	:	STD_LOGIC := '0';
	 SIGNAL	nlilill	:	STD_LOGIC := '0';
	 SIGNAL	nlililO	:	STD_LOGIC := '0';
	 SIGNAL	nliliOi	:	STD_LOGIC := '0';
	 SIGNAL	nlilOil	:	STD_LOGIC := '0';
	 SIGNAL	nlilOiO	:	STD_LOGIC := '0';
	 SIGNAL	nlilOli	:	STD_LOGIC := '0';
	 SIGNAL	nlilOll	:	STD_LOGIC := '0';
	 SIGNAL	nlilOlO	:	STD_LOGIC := '0';
	 SIGNAL	nlilOOi	:	STD_LOGIC := '0';
	 SIGNAL	nlilOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlilOOO	:	STD_LOGIC := '0';
	 SIGNAL	nliO0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nliO0OO	:	STD_LOGIC := '0';
	 SIGNAL	nliO10i	:	STD_LOGIC := '0';
	 SIGNAL	nliO11i	:	STD_LOGIC := '0';
	 SIGNAL	nliO11l	:	STD_LOGIC := '0';
	 SIGNAL	nliO11O	:	STD_LOGIC := '0';
	 SIGNAL	nliOi0i	:	STD_LOGIC := '0';
	 SIGNAL	nliOi0l	:	STD_LOGIC := '0';
	 SIGNAL	nliOi0O	:	STD_LOGIC := '0';
	 SIGNAL	nliOi1i	:	STD_LOGIC := '0';
	 SIGNAL	nliOi1l	:	STD_LOGIC := '0';
	 SIGNAL	nliOi1O	:	STD_LOGIC := '0';
	 SIGNAL	nliOiii	:	STD_LOGIC := '0';
	 SIGNAL	nliOiil	:	STD_LOGIC := '0';
	 SIGNAL	nliOiiO	:	STD_LOGIC := '0';
	 SIGNAL	nliOili	:	STD_LOGIC := '0';
	 SIGNAL	nliOO0l	:	STD_LOGIC := '0';
	 SIGNAL	nliOO0O	:	STD_LOGIC := '0';
	 SIGNAL	nliOOii	:	STD_LOGIC := '0';
	 SIGNAL	nliOOil	:	STD_LOGIC := '0';
	 SIGNAL	nliOOiO	:	STD_LOGIC := '0';
	 SIGNAL	nliOOli	:	STD_LOGIC := '0';
	 SIGNAL	nliOOll	:	STD_LOGIC := '0';
	 SIGNAL	nliOOlO	:	STD_LOGIC := '0';
	 SIGNAL	nliOOOi	:	STD_LOGIC := '0';
	 SIGNAL	nliOOOl	:	STD_LOGIC := '0';
	 SIGNAL	nliOOOO	:	STD_LOGIC := '0';
	 SIGNAL	nll00il	:	STD_LOGIC := '0';
	 SIGNAL	nll00iO	:	STD_LOGIC := '0';
	 SIGNAL	nll00li	:	STD_LOGIC := '0';
	 SIGNAL	nll00ll	:	STD_LOGIC := '0';
	 SIGNAL	nll00lO	:	STD_LOGIC := '0';
	 SIGNAL	nll00Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll00Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll00OO	:	STD_LOGIC := '0';
	 SIGNAL	nll0i0i	:	STD_LOGIC := '0';
	 SIGNAL	nll0i1i	:	STD_LOGIC := '0';
	 SIGNAL	nll0i1l	:	STD_LOGIC := '0';
	 SIGNAL	nll0i1O	:	STD_LOGIC := '0';
	 SIGNAL	nll0l	:	STD_LOGIC := '0';
	 SIGNAL	nll0lOl	:	STD_LOGIC := '0';
	 SIGNAL	nll0lOO	:	STD_LOGIC := '0';
	 SIGNAL	nll0O	:	STD_LOGIC := '0';
	 SIGNAL	nll0O0i	:	STD_LOGIC := '0';
	 SIGNAL	nll0O0l	:	STD_LOGIC := '0';
	 SIGNAL	nll0O0O	:	STD_LOGIC := '0';
	 SIGNAL	nll0O1i	:	STD_LOGIC := '0';
	 SIGNAL	nll0O1l	:	STD_LOGIC := '0';
	 SIGNAL	nll0O1O	:	STD_LOGIC := '0';
	 SIGNAL	nll0Oii	:	STD_LOGIC := '0';
	 SIGNAL	nll0Oil	:	STD_LOGIC := '0';
	 SIGNAL	nll0OiO	:	STD_LOGIC := '0';
	 SIGNAL	nll0Oli	:	STD_LOGIC := '0';
	 SIGNAL	nll10ll	:	STD_LOGIC := '0';
	 SIGNAL	nll10lO	:	STD_LOGIC := '0';
	 SIGNAL	nll10Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll10Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll10OO	:	STD_LOGIC := '0';
	 SIGNAL	nll111i	:	STD_LOGIC := '0';
	 SIGNAL	nll1i0i	:	STD_LOGIC := '0';
	 SIGNAL	nll1i0l	:	STD_LOGIC := '0';
	 SIGNAL	nll1i0O	:	STD_LOGIC := '0';
	 SIGNAL	nll1i1i	:	STD_LOGIC := '0';
	 SIGNAL	nll1i1l	:	STD_LOGIC := '0';
	 SIGNAL	nll1i1O	:	STD_LOGIC := '0';
	 SIGNAL	nll1iii	:	STD_LOGIC := '0';
	 SIGNAL	nll1O0i	:	STD_LOGIC := '0';
	 SIGNAL	nll1O0l	:	STD_LOGIC := '0';
	 SIGNAL	nll1O0O	:	STD_LOGIC := '0';
	 SIGNAL	nll1O1l	:	STD_LOGIC := '0';
	 SIGNAL	nll1O1O	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oii	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oil	:	STD_LOGIC := '0';
	 SIGNAL	nll1OiO	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oli	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oll	:	STD_LOGIC := '0';
	 SIGNAL	nll1OlO	:	STD_LOGIC := '0';
	 SIGNAL	nll1OOi	:	STD_LOGIC := '0';
	 SIGNAL	nlli00l	:	STD_LOGIC := '0';
	 SIGNAL	nlli00O	:	STD_LOGIC := '0';
	 SIGNAL	nlli0ii	:	STD_LOGIC := '0';
	 SIGNAL	nlli0il	:	STD_LOGIC := '0';
	 SIGNAL	nlli0iO	:	STD_LOGIC := '0';
	 SIGNAL	nlli0li	:	STD_LOGIC := '0';
	 SIGNAL	nlli0ll	:	STD_LOGIC := '0';
	 SIGNAL	nlli0lO	:	STD_LOGIC := '0';
	 SIGNAL	nlli0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlli0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlli0OO	:	STD_LOGIC := '0';
	 SIGNAL	nllii	:	STD_LOGIC := '0';
	 SIGNAL	nllii1i	:	STD_LOGIC := '0';
	 SIGNAL	nllil	:	STD_LOGIC := '0';
	 SIGNAL	nllilll	:	STD_LOGIC := '0';
	 SIGNAL	nllillO	:	STD_LOGIC := '0';
	 SIGNAL	nllilOi	:	STD_LOGIC := '0';
	 SIGNAL	nllilOl	:	STD_LOGIC := '0';
	 SIGNAL	nllilOO	:	STD_LOGIC := '0';
	 SIGNAL	nlliO0i	:	STD_LOGIC := '0';
	 SIGNAL	nlliO0l	:	STD_LOGIC := '0';
	 SIGNAL	nlliO0O	:	STD_LOGIC := '0';
	 SIGNAL	nlliO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlliO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlliO1O	:	STD_LOGIC := '0';
	 SIGNAL	nlliOii	:	STD_LOGIC := '0';
	 SIGNAL	nlll00i	:	STD_LOGIC := '0';
	 SIGNAL	nlll00l	:	STD_LOGIC := '0';
	 SIGNAL	nlll00O	:	STD_LOGIC := '0';
	 SIGNAL	nlll01l	:	STD_LOGIC := '0';
	 SIGNAL	nlll01O	:	STD_LOGIC := '0';
	 SIGNAL	nlll0ii	:	STD_LOGIC := '0';
	 SIGNAL	nlll0il	:	STD_LOGIC := '0';
	 SIGNAL	nlll0iO	:	STD_LOGIC := '0';
	 SIGNAL	nlll0li	:	STD_LOGIC := '0';
	 SIGNAL	nlll0ll	:	STD_LOGIC := '0';
	 SIGNAL	nlll0lO	:	STD_LOGIC := '0';
	 SIGNAL	nlll0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nllllil	:	STD_LOGIC := '0';
	 SIGNAL	nlllliO	:	STD_LOGIC := '0';
	 SIGNAL	nllllli	:	STD_LOGIC := '0';
	 SIGNAL	nllllll	:	STD_LOGIC := '0';
	 SIGNAL	nlllllO	:	STD_LOGIC := '0';
	 SIGNAL	nllllOi	:	STD_LOGIC := '0';
	 SIGNAL	nllllOl	:	STD_LOGIC := '0';
	 SIGNAL	nllllOO	:	STD_LOGIC := '0';
	 SIGNAL	nlllO0i	:	STD_LOGIC := '0';
	 SIGNAL	nlllO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlllO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlllO1O	:	STD_LOGIC := '0';
	 SIGNAL	nllO00i	:	STD_LOGIC := '0';
	 SIGNAL	nllO00l	:	STD_LOGIC := '0';
	 SIGNAL	nllO00O	:	STD_LOGIC := '0';
	 SIGNAL	nllO01i	:	STD_LOGIC := '0';
	 SIGNAL	nllO01l	:	STD_LOGIC := '0';
	 SIGNAL	nllO01O	:	STD_LOGIC := '0';
	 SIGNAL	nllO0ii	:	STD_LOGIC := '0';
	 SIGNAL	nllO0il	:	STD_LOGIC := '0';
	 SIGNAL	nllO0iO	:	STD_LOGIC := '0';
	 SIGNAL	nllO0li	:	STD_LOGIC := '0';
	 SIGNAL	nllO1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nllO1OO	:	STD_LOGIC := '0';
	 SIGNAL	nllOi	:	STD_LOGIC := '0';
	 SIGNAL	nllOl0l	:	STD_LOGIC := '0';
	 SIGNAL	nllOl0O	:	STD_LOGIC := '0';
	 SIGNAL	nllOlii	:	STD_LOGIC := '0';
	 SIGNAL	nllOlil	:	STD_LOGIC := '0';
	 SIGNAL	nllOliO	:	STD_LOGIC := '0';
	 SIGNAL	nllOlli	:	STD_LOGIC := '0';
	 SIGNAL	nllOlll	:	STD_LOGIC := '0';
	 SIGNAL	nllOllO	:	STD_LOGIC := '0';
	 SIGNAL	nllOlOi	:	STD_LOGIC := '0';
	 SIGNAL	nllOlOl	:	STD_LOGIC := '0';
	 SIGNAL	nllOlOO	:	STD_LOGIC := '0';
	 SIGNAL	nllOO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlO000i	:	STD_LOGIC := '0';
	 SIGNAL	nlO001i	:	STD_LOGIC := '0';
	 SIGNAL	nlO001l	:	STD_LOGIC := '0';
	 SIGNAL	nlO001O	:	STD_LOGIC := '0';
	 SIGNAL	nlO01il	:	STD_LOGIC := '0';
	 SIGNAL	nlO01iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO01li	:	STD_LOGIC := '0';
	 SIGNAL	nlO01ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO01lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO01Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO01Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO01OO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0iOl	:	STD_LOGIC := '0';
	 SIGNAL	nlO0iOO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l0i	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l0l	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l0O	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l1i	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l1l	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l1O	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lii	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lil	:	STD_LOGIC := '0';
	 SIGNAL	nlO0liO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lli	:	STD_LOGIC := '0';
	 SIGNAL	nlO100i	:	STD_LOGIC := '0';
	 SIGNAL	nlO100l	:	STD_LOGIC := '0';
	 SIGNAL	nlO100O	:	STD_LOGIC := '0';
	 SIGNAL	nlO101i	:	STD_LOGIC := '0';
	 SIGNAL	nlO101l	:	STD_LOGIC := '0';
	 SIGNAL	nlO101O	:	STD_LOGIC := '0';
	 SIGNAL	nlO10ii	:	STD_LOGIC := '0';
	 SIGNAL	nlO11ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO11lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO11Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO11Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO11OO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l0i	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l0l	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l0O	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l1l	:	STD_LOGIC := '0';
	 SIGNAL	nlO1l1O	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lii	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lil	:	STD_LOGIC := '0';
	 SIGNAL	nlO1liO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lli	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lll	:	STD_LOGIC := '0';
	 SIGNAL	nlO1llO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lOi	:	STD_LOGIC := '0';
	 SIGNAL	nlO1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOi01i	:	STD_LOGIC := '0';
	 SIGNAL	nlOi10l	:	STD_LOGIC := '0';
	 SIGNAL	nlOi10O	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1il	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1li	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1ll	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1lO	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlOiill	:	STD_LOGIC := '0';
	 SIGNAL	nlOiilO	:	STD_LOGIC := '0';
	 SIGNAL	nlOiiOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOiiOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOiiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOil0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOil0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOil0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOil1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOil1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOil1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOilii	:	STD_LOGIC := '0';
	 SIGNAL	nlOl10i	:	STD_LOGIC := '0';
	 SIGNAL	nlOl10l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl10O	:	STD_LOGIC := '0';
	 SIGNAL	nlOl11l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl11O	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1il	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1li	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1ll	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1lO	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlOliil	:	STD_LOGIC := '0';
	 SIGNAL	nlOliiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOlili	:	STD_LOGIC := '0';
	 SIGNAL	nlOlill	:	STD_LOGIC := '0';
	 SIGNAL	nlOlilO	:	STD_LOGIC := '0';
	 SIGNAL	nlOliOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOliOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOliOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOll0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOll1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOll1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOll1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOO10i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO10l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO10O	:	STD_LOGIC := '0';
	 SIGNAL	nlOO11i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO11l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO11O	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1il	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1li	:	STD_LOGIC := '0';
	 SIGNAL	nlOOi0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOOi0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiii	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiil	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOili	:	STD_LOGIC := '0';
	 SIGNAL	nlOOill	:	STD_LOGIC := '0';
	 SIGNAL	nlOOilO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOl1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOll	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOlO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOOO	:	STD_LOGIC := '0';
	 SIGNAL  wire_nlO0i_w_lg_nllOi54w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_n1000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1001i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1001O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1100i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1100l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1100O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1101i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1101l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1101O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1illi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1illl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1illO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0illO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1lO_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nl0l1lO_w_lg_dataout7942w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nl0l1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0li0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0liil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0liOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ll0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOlO_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nl0lOlO_w_lg_w_lg_dataout7847w7899w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0lOlO_w_lg_dataout7847w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nl0lOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli001i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli001O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli01Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli01OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli100i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli100l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli100O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli101l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli101O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli111i_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nli111i_w_lg_dataout7961w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nli111O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliillO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlili1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliliOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliliOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll001i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll001O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll00ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll010i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll011l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll011O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll100i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll100l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll100O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll101i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll101l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll101O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll110i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll110l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll110O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll111l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll111O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllilii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllilli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllllii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO010i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO011l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO011O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO01ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO0OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO110i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO110l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO110O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO111i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO111l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO111O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOi11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOillO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOiOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOl1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOll0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOll0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOllOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOlOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOi0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOi1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOi1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOi1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOl1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOli_dataout	:	STD_LOGIC;
	 SIGNAL  wire_n001Oi_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n001Oi_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n001Oi_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0101O_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0101O_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0101O_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n010O_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n010O_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n010O_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0110i_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0110i_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0110i_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01i1l_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01i1l_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01i1l_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01l1i_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01l1i_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01l1i_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01lOO_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01lOO_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01lOO_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01OOl_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01OOl_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n01OOl_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n0i0l_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0i0l_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0i0l_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0i10i_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0i10i_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0i10i_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ii1i_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ii1i_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ii1i_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ilOi_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ilOi_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0ilOi_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0l1li_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0l1li_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0l1li_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0liii_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0liii_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0liii_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0lO0i_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0lO0i_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0lO0i_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0O01i_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0O01i_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0O01i_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_n0O0i_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0O0i_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0O0i_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_n0OiOl_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0OiOl_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0OiOl_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0OOlO_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0OOlO_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n0OOlO_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n10li_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n10li_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n10li_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n11l_a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n11l_b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n11l_o	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n1iOOO_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1iOOO_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1iOOO_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l0Oi_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l0Oi_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l0Oi_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l1Ol_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l1Ol_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1l1Ol_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lil_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n1lil_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n1lil_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n1lilO_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lilO_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lilO_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1llll_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1llll_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1llll_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lOli_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lOli_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1lOli_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O0il_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O0il_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O0il_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O1iO_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O1iO_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1O1iO_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Oiii_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Oiii_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Oiii_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Ol0O_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Ol0O_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1Ol0O_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1OO0l_a	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1OO0l_b	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_n1OO0l_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_ni00i_a	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni00i_b	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni00i_o	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni01ii_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni01ii_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni01ii_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni0i0O_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni0i0O_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni0i0O_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni0O0O_a	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni0O0O_b	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni0O0O_o	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni10li_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_ni10li_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_ni10li_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_ni1lil_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_ni1lil_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_ni1lil_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nii01O_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nii01O_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nii01O_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiiOO_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiiOO_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiiOO_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiOlO_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiOlO_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niiOlO_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nil0iO_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nil0iO_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nil0iO_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nil0l_a	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nil0l_b	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nil0l_o	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nill0O_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nill0O_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nill0O_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO0OO_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO0OO_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO0OO_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO11O_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO11O_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niO11O_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_niOlOi_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_niOlOi_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_niOlOi_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl000O_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl000O_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl000O_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl0l0l_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl0l0l_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl0l0l_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nl10O_a	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nl10O_b	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nl10O_o	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_nl11ll_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl11ll_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl11ll_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1iiO_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1iiO_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1iiO_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1Oii_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1Oii_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nl1Oii_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nli0i_a	:	STD_LOGIC_VECTOR (30 DOWNTO 0);
	 SIGNAL  wire_nli0i_b	:	STD_LOGIC_VECTOR (30 DOWNTO 0);
	 SIGNAL  wire_nli0i_o	:	STD_LOGIC_VECTOR (30 DOWNTO 0);
	 SIGNAL  wire_nli10l_a	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_nli10l_b	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_nli10l_o	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_nlii1l_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlii1l_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlii1l_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlilOl_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlilOl_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlilOl_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nll0i_a	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nll0i_b	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nll0i_o	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_nll1ll_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nll1ll_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nll1ll_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlliil_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlliil_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlliil_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nllO0l_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nllO0l_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nllO0l_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlO01l_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlO01l_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlO01l_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlOiOl_a	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlOiOl_b	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlOiOl_o	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_nlOOlO_a	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nlOOlO_b	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_nlOOlO_o	:	STD_LOGIC_VECTOR (26 DOWNTO 0);
	 SIGNAL  wire_n10i_a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n10i_b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n10i_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO1i_a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlO1i_b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlO1i_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0O10i_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nl0O10i_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0O10i_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0O11i_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nl0O11i_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0O11i_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0O11l_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nl0O11l_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0O11l_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0O11O_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nl0O11O_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0O11O_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliii_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliii_o	:	STD_LOGIC;
	 SIGNAL  wire_nliii_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliil_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliil_o	:	STD_LOGIC;
	 SIGNAL  wire_nliil_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliiO_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliiO_o	:	STD_LOGIC;
	 SIGNAL  wire_nliiO_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nlili_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlili_o	:	STD_LOGIC;
	 SIGNAL  wire_nlili_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nlill_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlill_o	:	STD_LOGIC;
	 SIGNAL  wire_nlill_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nlilO_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlilO_o	:	STD_LOGIC;
	 SIGNAL  wire_nlilO_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliOi_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliOi_o	:	STD_LOGIC;
	 SIGNAL  wire_nliOi_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliOl_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliOl_o	:	STD_LOGIC;
	 SIGNAL  wire_nliOl_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nliOO_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliOO_o	:	STD_LOGIC;
	 SIGNAL  wire_nliOO_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nll1i_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nll1i_o	:	STD_LOGIC;
	 SIGNAL  wire_nll1i_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nll1l_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nll1l_o	:	STD_LOGIC;
	 SIGNAL  wire_nll1l_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nll1O_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nll1O_o	:	STD_LOGIC;
	 SIGNAL  wire_nll1O_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0il0O_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0il0O_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0il0O_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0ilii_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0ilii_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0ilii_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0ilil_data	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0ilil_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0ilil_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nl0iliO_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0iliO_o	:	STD_LOGIC;
	 SIGNAL  wire_nl0iliO_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_nl0il0i_w_lg_almost_full7945w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl0il0i_aclr	:	STD_LOGIC;
	 SIGNAL  wire_nl0il0i_almost_full	:	STD_LOGIC;
	 SIGNAL  wire_nl0il0i_data	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_nl0il0i_empty	:	STD_LOGIC;
	 SIGNAL  wire_nl0il0i_q	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_nl0il0i_usedw	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nl0i11l7900w7915w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nl0i11l7900w7912w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nl0i11l7900w7905w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nl0i11l7900w7901w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nl0i1ii7970w7975w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_ast_sink_valid7934w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nl00O0i7964w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nl00Oil7939w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nl0i10i7852w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nl0i11l7900w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nl0i1ii7970w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset_n53w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  nl00O0i :	STD_LOGIC;
	 SIGNAL  nl00O0l :	STD_LOGIC;
	 SIGNAL  nl00O0O :	STD_LOGIC;
	 SIGNAL  nl00Oii :	STD_LOGIC;
	 SIGNAL  nl00Oil :	STD_LOGIC;
	 SIGNAL  nl00OiO :	STD_LOGIC;
	 SIGNAL  nl00Oli :	STD_LOGIC;
	 SIGNAL  nl00Oll :	STD_LOGIC;
	 SIGNAL  nl00OlO :	STD_LOGIC;
	 SIGNAL  nl00OOi :	STD_LOGIC;
	 SIGNAL  nl00OOl :	STD_LOGIC;
	 SIGNAL  nl00OOO :	STD_LOGIC;
	 SIGNAL  nl0i00i :	STD_LOGIC;
	 SIGNAL  nl0i00l :	STD_LOGIC;
	 SIGNAL  nl0i00O :	STD_LOGIC;
	 SIGNAL  nl0i01i :	STD_LOGIC;
	 SIGNAL  nl0i01l :	STD_LOGIC;
	 SIGNAL  nl0i01O :	STD_LOGIC;
	 SIGNAL  nl0i0ii :	STD_LOGIC;
	 SIGNAL  nl0i0il :	STD_LOGIC;
	 SIGNAL  nl0i0iO :	STD_LOGIC;
	 SIGNAL  nl0i0li :	STD_LOGIC;
	 SIGNAL  nl0i0ll :	STD_LOGIC;
	 SIGNAL  nl0i0lO :	STD_LOGIC;
	 SIGNAL  nl0i0Oi :	STD_LOGIC;
	 SIGNAL  nl0i0Ol :	STD_LOGIC;
	 SIGNAL  nl0i0OO :	STD_LOGIC;
	 SIGNAL  nl0i10i :	STD_LOGIC;
	 SIGNAL  nl0i10l :	STD_LOGIC;
	 SIGNAL  nl0i10O :	STD_LOGIC;
	 SIGNAL  nl0i11i :	STD_LOGIC;
	 SIGNAL  nl0i11l :	STD_LOGIC;
	 SIGNAL  nl0i11O :	STD_LOGIC;
	 SIGNAL  nl0i1ii :	STD_LOGIC;
	 SIGNAL  nl0i1il :	STD_LOGIC;
	 SIGNAL  nl0i1iO :	STD_LOGIC;
	 SIGNAL  nl0i1li :	STD_LOGIC;
	 SIGNAL  nl0i1ll :	STD_LOGIC;
	 SIGNAL  nl0i1lO :	STD_LOGIC;
	 SIGNAL  nl0i1Oi :	STD_LOGIC;
	 SIGNAL  nl0i1Ol :	STD_LOGIC;
	 SIGNAL  nl0i1OO :	STD_LOGIC;
	 SIGNAL  nl0ii0i :	STD_LOGIC;
	 SIGNAL  nl0ii0l :	STD_LOGIC;
	 SIGNAL  nl0ii0O :	STD_LOGIC;
	 SIGNAL  nl0ii1i :	STD_LOGIC;
	 SIGNAL  nl0ii1l :	STD_LOGIC;
	 SIGNAL  nl0ii1O :	STD_LOGIC;
	 SIGNAL  nl0iiii :	STD_LOGIC;
	 SIGNAL  nl0iiil :	STD_LOGIC;
	 SIGNAL  nl0iiiO :	STD_LOGIC;
	 SIGNAL  nl0iili :	STD_LOGIC;
	 SIGNAL  nl0iill :	STD_LOGIC;
	 SIGNAL  nl0iilO :	STD_LOGIC;
	 SIGNAL  nl0iiOi :	STD_LOGIC;
	 SIGNAL  nl0iiOl :	STD_LOGIC;
	 SIGNAL  nl0iiOO :	STD_LOGIC;
	 SIGNAL  nl0il1i :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_w_lg_nl0i11l7900w7915w(0) <= wire_w_lg_nl0i11l7900w(0) AND nl00OOi;
	wire_w_lg_w_lg_nl0i11l7900w7912w(0) <= wire_w_lg_nl0i11l7900w(0) AND nl00OOl;
	wire_w_lg_w_lg_nl0i11l7900w7905w(0) <= wire_w_lg_nl0i11l7900w(0) AND nl00OOO;
	wire_w_lg_w_lg_nl0i11l7900w7901w(0) <= wire_w_lg_nl0i11l7900w(0) AND nl0i11i;
	wire_w_lg_w_lg_nl0i1ii7970w7975w(0) <= wire_w_lg_nl0i1ii7970w(0) AND wire_nli111i_dataout;
	wire_w_lg_ast_sink_valid7934w(0) <= NOT ast_sink_valid;
	wire_w_lg_nl00O0i7964w(0) <= NOT nl00O0i;
	wire_w_lg_nl00Oil7939w(0) <= NOT nl00Oil;
	wire_w_lg_nl0i10i7852w(0) <= NOT nl0i10i;
	wire_w_lg_nl0i11l7900w(0) <= NOT nl0i11l;
	wire_w_lg_nl0i1ii7970w(0) <= NOT nl0i1ii;
	wire_w_lg_reset_n53w(0) <= NOT reset_n;
	ast_sink_ready <= nl0l10l;
	ast_source_data <= ( nl0OOiO & nl0OOii & nl0OO0O & nl0OO0l & nl0OO0i & nl0OO1O & nl0OO1l & nl0OO1i & nl0OlOO & nl0OlOl & nl0OlOi & nl0OllO);
	ast_source_error <= ( "0" & nl0Olil);
	ast_source_valid <= nl0Olll;
	nl00O0i <= (nl0l10i AND nl00Oii);
	nl00O0l <= (wire_nl0OOli_w_lg_nl0l10i7957w(0) AND (nl0i1ii AND wire_nli111i_dataout));
	nl00O0O <= (wire_nl0OOli_w_lg_nl0l10i7957w(0) AND nl00Oii);
	nl00Oii <= (nl0i1ii AND wire_nli111i_w_lg_dataout7961w(0));
	nl00Oil <= (nl0l10l AND ast_sink_valid);
	nl00OiO <= (nl0l10l AND wire_w_lg_ast_sink_valid7934w(0));
	nl00Oli <= (wire_nl0OOli_w_lg_nl0l10l7933w(0) AND ast_sink_valid);
	nl00Oll <= (wire_nl0OOli_w_lg_nl0l10l7933w(0) AND wire_w_lg_ast_sink_valid7934w(0));
	nl00OlO <= (nl0l1ll OR wire_nl0l1Oi_dataout);
	nl00OOi <= (wire_nl0OOli_w_lg_nl0lOOl7849w(0) AND wire_nl0O11i_o);
	nl00OOl <= (nl0lOOl AND wire_nl0O11i_o);
	nl00OOO <= (wire_nl0OOli_w_lg_nl0lOOl7849w(0) AND wire_nl0O11l_o);
	nl0i00i <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i00l <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i00O <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i01i <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i01l <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i01O <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0ii <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0il <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0iO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0li <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0ll <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0lO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0Oi <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0Ol <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i0OO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i10i <= (nl0Olll AND ast_source_ready);
	nl0i10l <= (wire_nl0OOli_w_lg_nl0lOOl7849w(0) AND wire_nli111O_dataout);
	nl0i10O <= (nl0OliO OR nl0Olli);
	nl0i11i <= (nl0lOOl AND wire_nl0O11l_o);
	nl0i11l <= (nl0OOOO OR nl0lO0i);
	nl0i11O <= (nl0OliO AND (nl0Olll AND nl0i10O));
	nl0i1ii <= (wire_nl0il0i_empty OR wire_nl0illi_w_lg_nl0illl7930w(0));
	nl0i1il <= '1';
	nl0i1iO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND wire_n10i_o);
	nl0i1li <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i1ll <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i1lO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i1Oi <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i1Ol <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0i1OO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii0i <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii0l <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii0O <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii1i <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii1l <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0ii1O <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiii <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiil <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiiO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iili <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iill <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iilO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiOi <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiOl <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0iiOO <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	nl0il1i <= (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND nlO1O);
	wire_n0000i_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0000i_address_b <= ( n1O00i & n1O10l & n1lO0O & n1llii & n1liil & n1l0iO & n1l1li & n1iOll);
	wire_n0000i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0000i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0000i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0000i_address_a,
		address_b => wire_n0000i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0000i_clocken1,
		data_a => wire_n0000i_data_a,
		q_b => wire_n0000i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n0000l_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0000l_address_b <= ( n1O01O & n1O10i & n1lO0l & n1ll0O & n1liii & n1l0il & n1l1iO & n1iOli);
	wire_n0000l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0000l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0000l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0000l_address_a,
		address_b => wire_n0000l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0000l_clocken1,
		data_a => wire_n0000l_data_a,
		q_b => wire_n0000l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n0000O_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0000O_address_b <= ( n1O01l & n1O11O & n1lO0i & n1ll0l & n1li0O & n1l0ii & n1l1il & n1iOiO);
	wire_n0000O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0000O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0000O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0000O_address_a,
		address_b => wire_n0000O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0000O_clocken1,
		data_a => wire_n0000O_data_a,
		q_b => wire_n0000O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n0001i_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0001i_address_b <= ( n1O0ii & n1O1il & n1lOiO & n1llli & n1lill & n1l0lO & n1l1Oi & n1iOOl);
	wire_n0001i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0001i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0001i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0001i_address_a,
		address_b => wire_n0001i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0001i_clocken1,
		data_a => wire_n0001i_data_a,
		q_b => wire_n0001i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n0001l_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0001l_address_b <= ( n1O00O & n1O1ii & n1lOil & n1lliO & n1lili & n1l0ll & n1l1lO & n1iOOi);
	wire_n0001l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0001l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0001l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0001l_address_a,
		address_b => wire_n0001l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0001l_clocken1,
		data_a => wire_n0001l_data_a,
		q_b => wire_n0001l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n0001O_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0001O_address_b <= ( n1O00l & n1O10O & n1lOii & n1llil & n1liiO & n1l0li & n1l1ll & n1iOlO);
	wire_n0001O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n0001O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0001O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n0001O_address_a,
		address_b => wire_n0001O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n0001O_clocken1,
		data_a => wire_n0001O_data_a,
		q_b => wire_n0001O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000ii_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000ii_address_b <= ( n1O01i & n1O11l & n1lO1O & n1ll0i & n1li0l & n1l00O & n1l1ii & n1iOil);
	wire_n000ii_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000ii_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000ii :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000ii_address_a,
		address_b => wire_n000ii_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000ii_clocken1,
		data_a => wire_n000ii_data_a,
		q_b => wire_n000ii_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000il_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000il_address_b <= ( n1O1OO & n1O11i & n1lO1l & n1ll1O & n1li0i & n1l00l & n1l10O & n1iOii);
	wire_n000il_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000il_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000il :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000il_address_a,
		address_b => wire_n000il_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000il_clocken1,
		data_a => wire_n000il_data_a,
		q_b => wire_n000il_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000iO_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000iO_address_b <= ( n1O1Ol & n1lOOO & n1lO1i & n1ll1l & n1li1O & n1l00i & n1l10l & n1iO0O);
	wire_n000iO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000iO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000iO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000iO_address_a,
		address_b => wire_n000iO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000iO_clocken1,
		data_a => wire_n000iO_data_a,
		q_b => wire_n000iO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000li_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000li_address_b <= ( n1O1Oi & n1lOOl & n1llOO & n1ll1i & n1li1l & n1l01O & n1l10i & n1iO0l);
	wire_n000li_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000li_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000li :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000li_address_a,
		address_b => wire_n000li_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000li_clocken1,
		data_a => wire_n000li_data_a,
		q_b => wire_n000li_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000ll_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000ll_address_b <= ( n1O1lO & n1lOOi & n1llOl & n1liOO & n1li1i & n1l01l & n1l11O & n1iO0i);
	wire_n000ll_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000ll_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000ll :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000ll_address_a,
		address_b => wire_n000ll_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000ll_clocken1,
		data_a => wire_n000ll_data_a,
		q_b => wire_n000ll_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000lO_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000lO_address_b <= ( n1O1ll & n1lOlO & n1llOi & n1liOl & n1l0OO & n1l01i & n1l11l & n1iO1O);
	wire_n000lO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000lO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000lO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000lO_address_a,
		address_b => wire_n000lO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000lO_clocken1,
		data_a => wire_n000lO_data_a,
		q_b => wire_n000lO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000Oi_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000Oi_address_b <= ( n01O1i & n01l1l & n01i1O & n0100i & n0110l & n1OO0O & n1Olii & n1Oiil);
	wire_n000Oi_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000Oi_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000Oi :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000Oi_address_a,
		address_b => wire_n000Oi_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000Oi_clocken1,
		data_a => wire_n000Oi_data_a,
		q_b => wire_n000Oi_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000Ol_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000Ol_address_b <= ( n01lOl & n01iOO & n01i1i & n0101l & n0111O & n1OO0i & n1Ol0l & n1Oi0O);
	wire_n000Ol_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000Ol_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000Ol :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000Ol_address_a,
		address_b => wire_n000Ol_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000Ol_clocken1,
		data_a => wire_n000Ol_data_a,
		q_b => wire_n000Ol_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n000OO_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n000OO_address_b <= ( n01lOi & n01iOl & n010OO & n0101i & n0111l & n1OO1O & n1Ol0i & n1Oi0l);
	wire_n000OO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n000OO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n000OO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n000OO_address_a,
		address_b => wire_n000OO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n000OO_clocken1,
		data_a => wire_n000OO_data_a,
		q_b => wire_n000OO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n001OO_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n001OO_address_b <= ( n1O0iO & n1O1li & n1lOll & n1lllO & n1liOi & n1l0Ol & n1l1OO & n1l11i);
	wire_n001OO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n001OO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n001OO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_0.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 9,
		WIDTH_B => 9,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n001OO_address_a,
		address_b => wire_n001OO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n001OO_clocken1,
		data_a => wire_n001OO_data_a,
		q_b => wire_n001OO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i0i_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i0i_address_b <= ( n01liO & n01ili & n010ll & n011lO & n1OOOi & n1OlOl & n1OiOO & n1Oi1i);
	wire_n00i0i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i0i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i0i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i0i_address_a,
		address_b => wire_n00i0i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i0i_clocken1,
		data_a => wire_n00i0i_data_a,
		q_b => wire_n00i0i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i0l_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i0l_address_b <= ( n01lil & n01iiO & n010li & n011ll & n1OOlO & n1OlOi & n1OiOl & n1O0OO);
	wire_n00i0l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i0l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i0l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i0l_address_a,
		address_b => wire_n00i0l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i0l_clocken1,
		data_a => wire_n00i0l_data_a,
		q_b => wire_n00i0l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i0O_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i0O_address_b <= ( n01lii & n01iil & n010iO & n011li & n1OOll & n1OllO & n1OiOi & n1O0Ol);
	wire_n00i0O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i0O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i0O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i0O_address_a,
		address_b => wire_n00i0O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i0O_clocken1,
		data_a => wire_n00i0O_data_a,
		q_b => wire_n00i0O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i1i_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i1i_address_b <= ( n01llO & n01iOi & n010Ol & n011OO & n0111i & n1OO1l & n1Ol1O & n1Oi0i);
	wire_n00i1i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i1i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i1i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i1i_address_a,
		address_b => wire_n00i1i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i1i_clocken1,
		data_a => wire_n00i1i_data_a,
		q_b => wire_n00i1i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i1l_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i1l_address_b <= ( n01lll & n01ilO & n010Oi & n011Ol & n1OOOO & n1OO1i & n1Ol1l & n1Oi1O);
	wire_n00i1l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i1l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i1l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i1l_address_a,
		address_b => wire_n00i1l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i1l_clocken1,
		data_a => wire_n00i1l_data_a,
		q_b => wire_n00i1l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00i1O_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00i1O_address_b <= ( n01lli & n01ill & n010lO & n011Oi & n1OOOl & n1OlOO & n1Ol1i & n1Oi1l);
	wire_n00i1O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00i1O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00i1O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00i1O_address_a,
		address_b => wire_n00i1O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00i1O_clocken1,
		data_a => wire_n00i1O_data_a,
		q_b => wire_n00i1O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iii_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00iii_address_b <= ( n01l0O & n01iii & n010il & n011iO & n1OOli & n1Olll & n1OilO & n1O0Oi);
	wire_n00iii_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iii_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iii :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iii_address_a,
		address_b => wire_n00iii_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iii_clocken1,
		data_a => wire_n00iii_data_a,
		q_b => wire_n00iii_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iil_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00iil_address_b <= ( n01l0l & n01i0O & n010ii & n011il & n1OOiO & n1Olli & n1Oill & n1O0lO);
	wire_n00iil_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iil_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iil :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iil_address_a,
		address_b => wire_n00iil_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iil_clocken1,
		data_a => wire_n00iil_data_a,
		q_b => wire_n00iil_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iiO_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00iiO_address_b <= ( n01l0i & n01i0l & n0100O & n011ii & n1OOil & n1OliO & n1Oili & n1O0ll);
	wire_n00iiO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iiO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iiO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iiO_address_a,
		address_b => wire_n00iiO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iiO_clocken1,
		data_a => wire_n00iiO_data_a,
		q_b => wire_n00iiO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00ili_address_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n00ili_address_b <= ( n01l1O & n01i0i & n0100l & n0110O & n1OOii & n1Olil & n1OiiO & n1O0li);
	wire_n00ili_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00ili_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00ili :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_1.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00ili_address_a,
		address_b => wire_n00ili_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00ili_clocken1,
		data_a => wire_n00ili_data_a,
		q_b => wire_n00ili_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00ill_address_a <= ( "0" & "0");
	wire_n00ill_address_b <= ( n001Ol & n01OOO);
	wire_n00ill_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00ill_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00ill :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00ill_address_a,
		address_b => wire_n00ill_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00ill_clocken1,
		data_a => wire_n00ill_data_a,
		q_b => wire_n00ill_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00ilO_address_a <= ( "0" & "0");
	wire_n00ilO_address_b <= ( n001lO & n01OOi);
	wire_n00ilO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00ilO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00ilO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00ilO_address_a,
		address_b => wire_n00ilO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00ilO_clocken1,
		data_a => wire_n00ilO_data_a,
		q_b => wire_n00ilO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iOi_address_a <= ( "0" & "0");
	wire_n00iOi_address_b <= ( n001ll & n01OlO);
	wire_n00iOi_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iOi_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iOi :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iOi_address_a,
		address_b => wire_n00iOi_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iOi_clocken1,
		data_a => wire_n00iOi_data_a,
		q_b => wire_n00iOi_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iOl_address_a <= ( "0" & "0");
	wire_n00iOl_address_b <= ( n001li & n01Oll);
	wire_n00iOl_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iOl_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iOl :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iOl_address_a,
		address_b => wire_n00iOl_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iOl_clocken1,
		data_a => wire_n00iOl_data_a,
		q_b => wire_n00iOl_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00iOO_address_a <= ( "0" & "0");
	wire_n00iOO_address_b <= ( n001iO & n01Oli);
	wire_n00iOO_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00iOO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00iOO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00iOO_address_a,
		address_b => wire_n00iOO_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00iOO_clocken1,
		data_a => wire_n00iOO_data_a,
		q_b => wire_n00iOO_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l0i_address_a <= ( "0" & "0");
	wire_n00l0i_address_b <= ( n0010l & n01O0O);
	wire_n00l0i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l0i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l0i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l0i_address_a,
		address_b => wire_n00l0i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l0i_clocken1,
		data_a => wire_n00l0i_data_a,
		q_b => wire_n00l0i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l0l_address_a <= ( "0" & "0");
	wire_n00l0l_address_b <= ( n0010i & n01O0l);
	wire_n00l0l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l0l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l0l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l0l_address_a,
		address_b => wire_n00l0l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l0l_clocken1,
		data_a => wire_n00l0l_data_a,
		q_b => wire_n00l0l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l0O_address_a <= ( "0" & "0");
	wire_n00l0O_address_b <= ( n0011O & n01O0i);
	wire_n00l0O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l0O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l0O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l0O_address_a,
		address_b => wire_n00l0O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l0O_clocken1,
		data_a => wire_n00l0O_data_a,
		q_b => wire_n00l0O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l1i_address_a <= ( "0" & "0");
	wire_n00l1i_address_b <= ( n001il & n01OiO);
	wire_n00l1i_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l1i_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l1i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l1i_address_a,
		address_b => wire_n00l1i_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l1i_clocken1,
		data_a => wire_n00l1i_data_a,
		q_b => wire_n00l1i_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l1l_address_a <= ( "0" & "0");
	wire_n00l1l_address_b <= ( n001ii & n01Oil);
	wire_n00l1l_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l1l_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l1l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l1l_address_a,
		address_b => wire_n00l1l_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l1l_clocken1,
		data_a => wire_n00l1l_data_a,
		q_b => wire_n00l1l_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00l1O_address_a <= ( "0" & "0");
	wire_n00l1O_address_b <= ( n0010O & n01Oii);
	wire_n00l1O_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00l1O_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00l1O :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00l1O_address_a,
		address_b => wire_n00l1O_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00l1O_clocken1,
		data_a => wire_n00l1O_data_a,
		q_b => wire_n00l1O_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00lii_address_a <= ( "0" & "0");
	wire_n00lii_address_b <= ( n0011l & n01O1O);
	wire_n00lii_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00lii_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00lii :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00lii_address_a,
		address_b => wire_n00lii_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00lii_clocken1,
		data_a => wire_n00lii_data_a,
		q_b => wire_n00lii_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	wire_n00lil_address_a <= ( "0" & "0");
	wire_n00lil_address_b <= ( n0011i & n01O1l);
	wire_n00lil_clocken1 <= wire_nl0OOOl_w_lg_nl0OOOO18w(0);
	wire_n00lil_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n00lil :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "filter2_coef_2.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "STRATIX",
		NUMWORDS_A => 4,
		NUMWORDS_B => 4,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "CLOCK1",
		RAM_BLOCK_TYPE => "M4K",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 13,
		WIDTH_B => 13,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTHAD_A => 2,
		WIDTHAD_B => 2,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_n00lil_address_a,
		address_b => wire_n00lil_address_b,
		clock0 => clk,
		clock1 => clk,
		clocken0 => wire_vcc,
		clocken1 => wire_n00lil_clocken1,
		data_a => wire_n00lil_data_a,
		q_b => wire_n00lil_q_b,
		rden_b => wire_vcc,
		wren_a => wire_gnd
	  );
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0illl <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_nl0il0i_usedw(0) = '1') THEN
				nl0illl <= nl0i1il;
			END IF;
		END IF;
	END PROCESS;
	wire_nl0illi_ENA <= wire_nl0il0i_usedw(0);
	wire_nl0illi_w_lg_nl0illl7930w(0) <= NOT nl0illl;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0il0l <= '0';
				nl0iOii <= '0';
				nl0iOil <= '0';
				nl0iOiO <= '0';
				nl0iOli <= '0';
				nl0iOll <= '0';
				nl0iOlO <= '0';
				nl0iOOi <= '0';
				nl0iOOl <= '0';
				nl0iOOO <= '0';
				nl0l11i <= '0';
				nl0l11O <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (nl00OlO = '1') THEN
				nl0il0l <= ast_sink_data(0);
				nl0iOii <= ast_sink_data(1);
				nl0iOil <= ast_sink_data(2);
				nl0iOiO <= ast_sink_data(3);
				nl0iOli <= ast_sink_data(4);
				nl0iOll <= ast_sink_data(5);
				nl0iOlO <= ast_sink_data(6);
				nl0iOOi <= ast_sink_data(7);
				nl0iOOl <= ast_sink_data(8);
				nl0iOOO <= ast_sink_data(9);
				nl0l11i <= ast_sink_data(10);
				nl0l11O <= ast_sink_data(11);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0l1li <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nl0l1li <= wire_nl0ilil_o;
		END IF;
		if (now = 0 ns) then
			nl0l1li <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl0l1iO_w_lg_nl0l1li7977w(0) <= NOT nl0l1li;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0lO0O <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (nl0i10i = '1') THEN
				nl0lO0O <= wire_nl0lOOO_dataout;
			END IF;
		END IF;
	END PROCESS;
	wire_nl0lO0l_w_lg_nl0lO0O7892w(0) <= NOT nl0lO0O;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0lOll <= '0';
				nl0O0Oi <= '0';
				nl0O0Ol <= '0';
				nl0O0OO <= '0';
				nl0Oi0i <= '0';
				nl0Oi0l <= '0';
				nl0Oi0O <= '0';
				nl0Oi1i <= '0';
				nl0Oi1l <= '0';
				nl0Oi1O <= '0';
				nl0Oiii <= '0';
				nl0OiiO <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_nl0O11i_o = '1') THEN
				nl0lOll <= wire_nliii_o;
				nl0O0Oi <= wire_nliil_o;
				nl0O0Ol <= wire_nliiO_o;
				nl0O0OO <= wire_nlili_o;
				nl0Oi0i <= wire_nliOl_o;
				nl0Oi0l <= wire_nliOO_o;
				nl0Oi0O <= wire_nll1i_o;
				nl0Oi1i <= wire_nlill_o;
				nl0Oi1l <= wire_nlilO_o;
				nl0Oi1O <= wire_nliOi_o;
				nl0Oiii <= wire_nll1l_o;
				nl0OiiO <= wire_nll1O_o;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0Oili <= '0';
				nl0Oill <= '0';
				nl0OilO <= '0';
				nl0OiOi <= '0';
				nl0OiOl <= '0';
				nl0OiOO <= '0';
				nl0Ol0i <= '0';
				nl0Ol0l <= '0';
				nl0Ol1i <= '0';
				nl0Ol1l <= '0';
				nl0Ol1O <= '0';
				nl0Olii <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_nl0O11l_o = '1') THEN
				nl0Oili <= wire_nliii_o;
				nl0Oill <= wire_nliil_o;
				nl0OilO <= wire_nliiO_o;
				nl0OiOi <= wire_nlili_o;
				nl0OiOl <= wire_nlill_o;
				nl0OiOO <= wire_nlilO_o;
				nl0Ol0i <= wire_nll1i_o;
				nl0Ol0l <= wire_nll1l_o;
				nl0Ol1i <= wire_nliOi_o;
				nl0Ol1l <= wire_nliOl_o;
				nl0Ol1O <= wire_nliOO_o;
				nl0Olii <= wire_nll1O_o;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0OllO <= '0';
				nl0OlOi <= '0';
				nl0OlOl <= '0';
				nl0OlOO <= '0';
				nl0OO0i <= '0';
				nl0OO0l <= '0';
				nl0OO0O <= '0';
				nl0OO1i <= '0';
				nl0OO1l <= '0';
				nl0OO1O <= '0';
				nl0OOii <= '0';
				nl0OOiO <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_nl0O11O_o = '1') THEN
				nl0OllO <= wire_nl0O01i_dataout;
				nl0OlOi <= wire_nl0O01l_dataout;
				nl0OlOl <= wire_nl0O01O_dataout;
				nl0OlOO <= wire_nl0O00i_dataout;
				nl0OO0i <= wire_nl0O0il_dataout;
				nl0OO0l <= wire_nl0O0iO_dataout;
				nl0OO0O <= wire_nl0O0li_dataout;
				nl0OO1i <= wire_nl0O00l_dataout;
				nl0OO1l <= wire_nl0O00O_dataout;
				nl0OO1O <= wire_nl0O0ii_dataout;
				nl0OOii <= wire_nl0O0ll_dataout;
				nl0OOiO <= wire_nl0O0lO_dataout;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0l10i <= '0';
				nl0l10l <= '0';
				nl0l10O <= '0';
				nl0l1ii <= '0';
				nl0l1il <= '0';
				nl0l1ll <= '0';
				nl0lO0i <= '0';
				nl0lOOl <= '0';
				nl0Olil <= '0';
				nl0OliO <= '0';
				nl0Olli <= '0';
				nl0Olll <= '0';
				nl0OOll <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nl0l10i <= nl0i1ii;
				nl0l10l <= wire_nl0il0i_w_lg_almost_full7945w(0);
				nl0l10O <= (NOT ((NOT ast_sink_error(0)) AND wire_nl0l1lO_w_lg_dataout7942w(0)));
				nl0l1ii <= wire_nl0il0O_o;
				nl0l1il <= wire_nl0ilii_o;
				nl0l1ll <= wire_nl0l1Oi_dataout;
				nl0lO0i <= wire_nl0O10i_o;
				nl0lOOl <= wire_nl0lOii_dataout;
				nl0Olil <= nl0OOll;
				nl0OliO <= wire_nl0liil_dataout;
				nl0Olli <= wire_nl0ll0l_dataout;
				nl0Olll <= wire_nl0l0Oi_dataout;
				nl0OOll <= nl0l10O;
		END IF;
	END PROCESS;
	wire_nl0OOli_w_lg_w_lg_nl0OliO7925w7926w(0) <= wire_nl0OOli_w_lg_nl0OliO7925w(0) AND wire_nl0lOlO_dataout;
	wire_nl0OOli_w_lg_nl0Olli7920w(0) <= nl0Olli AND wire_nl0lOlO_w_lg_dataout7847w(0);
	wire_nl0OOli_w_lg_nl0l10i7957w(0) <= NOT nl0l10i;
	wire_nl0OOli_w_lg_nl0l10l7933w(0) <= NOT nl0l10l;
	wire_nl0OOli_w_lg_nl0lOOl7849w(0) <= NOT nl0lOOl;
	wire_nl0OOli_w_lg_nl0OliO7925w(0) <= NOT nl0OliO;
	wire_nl0OOli_w_lg_nl0Olli7923w(0) <= NOT nl0Olli;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				nl0OOlO <= '1';
				nl0OOOi <= '1';
				nl0OOOO <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nl0OOlO <= wire_nl0O10i_o;
				nl0OOOi <= nl0i1ii;
				nl0OOOO <= (nl0i1ii OR wire_nl0O10i_o);
		END IF;
	END PROCESS;
	wire_nl0OOOl_w_lg_nl0OOlO7844w(0) <= NOT nl0OOlO;
	wire_nl0OOOl_w_lg_nl0OOOi7842w(0) <= NOT nl0OOOi;
	wire_nl0OOOl_w_lg_nl0OOOO18w(0) <= NOT nl0OOOO;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN
			IF (nl0OOOO = '0') THEN
				n000i <= wire_n0i0l_o(16);
				n000l <= wire_n0i0l_o(15);
				n000O <= wire_n0i0l_o(14);
				n0010i <= wire_n001Oi_o(9);
				n0010l <= wire_n001Oi_o(8);
				n0010O <= wire_n001Oi_o(7);
				n0011i <= wire_n001Oi_o(12);
				n0011l <= wire_n001Oi_o(11);
				n0011O <= wire_n001Oi_o(10);
				n001i <= wire_n0i0l_o(19);
				n001ii <= wire_n001Oi_o(6);
				n001il <= wire_n001Oi_o(5);
				n001iO <= wire_n001Oi_o(4);
				n001l <= wire_n0i0l_o(18);
				n001li <= wire_n001Oi_o(3);
				n001ll <= wire_n001Oi_o(2);
				n001lO <= wire_n001Oi_o(1);
				n001O <= wire_n0i0l_o(17);
				n001Ol <= wire_n001Oi_o(0);
				n00ii <= wire_n0i0l_o(13);
				n00il <= wire_n0i0l_o(12);
				n00iO <= wire_n0i0l_o(11);
				n00li <= wire_n0i0l_o(10);
				n00liO <= wire_n0i10i_o(25);
				n00ll <= wire_n0i0l_o(9);
				n00lli <= wire_n0i10i_o(24);
				n00lll <= wire_n0i10i_o(23);
				n00llO <= wire_n0i10i_o(22);
				n00lO <= wire_n0i0l_o(0);
				n00lOi <= wire_n0i10i_o(21);
				n00lOl <= wire_n0i10i_o(20);
				n00lOO <= wire_n0i10i_o(19);
				n00O0i <= wire_n0i10i_o(15);
				n00O0l <= wire_n0i10i_o(14);
				n00O0O <= wire_n0i10i_o(13);
				n00O1i <= wire_n0i10i_o(18);
				n00O1l <= wire_n0i10i_o(17);
				n00O1O <= wire_n0i10i_o(16);
				n00Oi <= wire_n0i0l_o(1);
				n00Oii <= wire_n0i10i_o(12);
				n00Oil <= wire_n0i10i_o(11);
				n00OiO <= wire_n0i10i_o(10);
				n00Ol <= wire_n0i0l_o(2);
				n00Oli <= wire_n0i10i_o(9);
				n00Oll <= wire_n0i10i_o(0);
				n00OlO <= wire_n0i10i_o(1);
				n00OO <= wire_n0i0l_o(3);
				n00OOi <= wire_n0i10i_o(2);
				n00OOl <= wire_n0i10i_o(3);
				n00OOO <= wire_n0i10i_o(4);
				n0100i <= wire_n0101O_o(0);
				n0100l <= wire_n01i1l_o(12);
				n0100O <= wire_n01i1l_o(11);
				n0101i <= wire_n0101O_o(2);
				n0101l <= wire_n0101O_o(1);
				n010i <= wire_n010O_o(6);
				n010ii <= wire_n01i1l_o(10);
				n010il <= wire_n01i1l_o(9);
				n010iO <= wire_n01i1l_o(8);
				n010l <= wire_n010O_o(7);
				n010li <= wire_n01i1l_o(7);
				n010ll <= wire_n01i1l_o(6);
				n010lO <= wire_n01i1l_o(5);
				n010Oi <= wire_n01i1l_o(4);
				n010Ol <= wire_n01i1l_o(3);
				n010OO <= wire_n01i1l_o(2);
				n0110l <= wire_n0110i_o(0);
				n0110O <= wire_n0101O_o(12);
				n0111i <= wire_n0110i_o(3);
				n0111l <= wire_n0110i_o(2);
				n0111O <= wire_n0110i_o(1);
				n011i <= wire_n010O_o(3);
				n011ii <= wire_n0101O_o(11);
				n011il <= wire_n0101O_o(10);
				n011iO <= wire_n0101O_o(9);
				n011l <= wire_n010O_o(4);
				n011li <= wire_n0101O_o(8);
				n011ll <= wire_n0101O_o(7);
				n011lO <= wire_n0101O_o(6);
				n011O <= wire_n010O_o(5);
				n011Oi <= wire_n0101O_o(5);
				n011Ol <= wire_n0101O_o(4);
				n011OO <= wire_n0101O_o(3);
				n01i0i <= wire_n01l1i_o(12);
				n01i0l <= wire_n01l1i_o(11);
				n01i0O <= wire_n01l1i_o(10);
				n01i1i <= wire_n01i1l_o(1);
				n01i1O <= wire_n01i1l_o(0);
				n01ii <= wire_n010O_o(8);
				n01iii <= wire_n01l1i_o(9);
				n01iil <= wire_n01l1i_o(8);
				n01iiO <= wire_n01l1i_o(7);
				n01il <= wire_n0i0l_o(27);
				n01ili <= wire_n01l1i_o(6);
				n01ill <= wire_n01l1i_o(5);
				n01ilO <= wire_n01l1i_o(4);
				n01iO <= wire_n0i0l_o(26);
				n01iOi <= wire_n01l1i_o(3);
				n01iOl <= wire_n01l1i_o(2);
				n01iOO <= wire_n01l1i_o(1);
				n01l0i <= wire_n01lOO_o(11);
				n01l0l <= wire_n01lOO_o(10);
				n01l0O <= wire_n01lOO_o(9);
				n01l1l <= wire_n01l1i_o(0);
				n01l1O <= wire_n01lOO_o(12);
				n01li <= wire_n0i0l_o(25);
				n01lii <= wire_n01lOO_o(8);
				n01lil <= wire_n01lOO_o(7);
				n01liO <= wire_n01lOO_o(6);
				n01ll <= wire_n0i0l_o(24);
				n01lli <= wire_n01lOO_o(5);
				n01lll <= wire_n01lOO_o(4);
				n01llO <= wire_n01lOO_o(3);
				n01lO <= wire_n0i0l_o(23);
				n01lOi <= wire_n01lOO_o(2);
				n01lOl <= wire_n01lOO_o(1);
				n01O0i <= wire_n01OOl_o(10);
				n01O0l <= wire_n01OOl_o(9);
				n01O0O <= wire_n01OOl_o(8);
				n01O1i <= wire_n01lOO_o(0);
				n01O1l <= wire_n01OOl_o(12);
				n01O1O <= wire_n01OOl_o(11);
				n01Oi <= wire_n0i0l_o(22);
				n01Oii <= wire_n01OOl_o(7);
				n01Oil <= wire_n01OOl_o(6);
				n01OiO <= wire_n01OOl_o(5);
				n01Ol <= wire_n0i0l_o(21);
				n01Oli <= wire_n01OOl_o(4);
				n01Oll <= wire_n01OOl_o(3);
				n01OlO <= wire_n01OOl_o(2);
				n01OO <= wire_n0i0l_o(20);
				n01OOi <= wire_n01OOl_o(1);
				n01OOO <= wire_n01OOl_o(0);
				n0i00i <= wire_n0ii1i_o(12);
				n0i00l <= wire_n0ii1i_o(11);
				n0i00O <= wire_n0ii1i_o(10);
				n0i01i <= wire_n0ii1i_o(15);
				n0i01l <= wire_n0ii1i_o(14);
				n0i01O <= wire_n0ii1i_o(13);
				n0i0i <= wire_n0i0l_o(7);
				n0i0ii <= wire_n0ii1i_o(9);
				n0i0il <= wire_n0ii1i_o(0);
				n0i0iO <= wire_n0ii1i_o(1);
				n0i0li <= wire_n0ii1i_o(2);
				n0i0ll <= wire_n0ii1i_o(3);
				n0i0lO <= wire_n0ii1i_o(4);
				n0i0O <= wire_n0i0l_o(8);
				n0i0Oi <= wire_n0ii1i_o(5);
				n0i0Ol <= wire_n0ii1i_o(6);
				n0i0OO <= wire_n0ii1i_o(7);
				n0i10l <= wire_n0i10i_o(8);
				n0i10O <= wire_n0ii1i_o(25);
				n0i11i <= wire_n0i10i_o(5);
				n0i11l <= wire_n0i10i_o(6);
				n0i11O <= wire_n0i10i_o(7);
				n0i1i <= wire_n0i0l_o(4);
				n0i1ii <= wire_n0ii1i_o(24);
				n0i1il <= wire_n0ii1i_o(23);
				n0i1iO <= wire_n0ii1i_o(22);
				n0i1l <= wire_n0i0l_o(5);
				n0i1li <= wire_n0ii1i_o(21);
				n0i1ll <= wire_n0ii1i_o(20);
				n0i1lO <= wire_n0ii1i_o(19);
				n0i1O <= wire_n0i0l_o(6);
				n0i1Oi <= wire_n0ii1i_o(18);
				n0i1Ol <= wire_n0ii1i_o(17);
				n0i1OO <= wire_n0ii1i_o(16);
				n0ii0i <= wire_n0ilOi_o(24);
				n0ii0l <= wire_n0ilOi_o(23);
				n0ii0O <= wire_n0ilOi_o(22);
				n0ii1l <= wire_n0ii1i_o(8);
				n0ii1O <= wire_n0ilOi_o(25);
				n0iii <= wire_n0O0i_o(27);
				n0iiii <= wire_n0ilOi_o(21);
				n0iiil <= wire_n0ilOi_o(20);
				n0iiiO <= wire_n0ilOi_o(19);
				n0iil <= wire_n0O0i_o(26);
				n0iili <= wire_n0ilOi_o(18);
				n0iill <= wire_n0ilOi_o(17);
				n0iilO <= wire_n0ilOi_o(16);
				n0iiO <= wire_n0O0i_o(25);
				n0iiOi <= wire_n0ilOi_o(15);
				n0iiOl <= wire_n0ilOi_o(14);
				n0iiOO <= wire_n0ilOi_o(13);
				n0il0i <= wire_n0ilOi_o(9);
				n0il0l <= wire_n0ilOi_o(0);
				n0il0O <= wire_n0ilOi_o(1);
				n0il1i <= wire_n0ilOi_o(12);
				n0il1l <= wire_n0ilOi_o(11);
				n0il1O <= wire_n0ilOi_o(10);
				n0ili <= wire_n0O0i_o(24);
				n0ilii <= wire_n0ilOi_o(2);
				n0ilil <= wire_n0ilOi_o(3);
				n0iliO <= wire_n0ilOi_o(4);
				n0ill <= wire_n0O0i_o(23);
				n0illi <= wire_n0ilOi_o(5);
				n0illl <= wire_n0ilOi_o(6);
				n0illO <= wire_n0ilOi_o(7);
				n0ilO <= wire_n0O0i_o(22);
				n0ilOl <= wire_n0ilOi_o(8);
				n0ilOO <= wire_n0l1li_o(25);
				n0iO0i <= wire_n0l1li_o(21);
				n0iO0l <= wire_n0l1li_o(20);
				n0iO0O <= wire_n0l1li_o(19);
				n0iO1i <= wire_n0l1li_o(24);
				n0iO1l <= wire_n0l1li_o(23);
				n0iO1O <= wire_n0l1li_o(22);
				n0iOi <= wire_n0O0i_o(21);
				n0iOii <= wire_n0l1li_o(18);
				n0iOil <= wire_n0l1li_o(17);
				n0iOiO <= wire_n0l1li_o(16);
				n0iOl <= wire_n0O0i_o(20);
				n0iOli <= wire_n0l1li_o(15);
				n0iOll <= wire_n0l1li_o(14);
				n0iOlO <= wire_n0l1li_o(13);
				n0iOO <= wire_n0O0i_o(19);
				n0iOOi <= wire_n0l1li_o(12);
				n0iOOl <= wire_n0l1li_o(11);
				n0iOOO <= wire_n0l1li_o(10);
				n0l00i <= wire_n0liii_o(18);
				n0l00l <= wire_n0liii_o(17);
				n0l00O <= wire_n0liii_o(16);
				n0l01i <= wire_n0liii_o(21);
				n0l01l <= wire_n0liii_o(20);
				n0l01O <= wire_n0liii_o(19);
				n0l0i <= wire_n0O0i_o(15);
				n0l0ii <= wire_n0liii_o(15);
				n0l0il <= wire_n0liii_o(14);
				n0l0iO <= wire_n0liii_o(13);
				n0l0l <= wire_n0O0i_o(14);
				n0l0li <= wire_n0liii_o(12);
				n0l0ll <= wire_n0liii_o(11);
				n0l0lO <= wire_n0liii_o(10);
				n0l0O <= wire_n0O0i_o(13);
				n0l0Oi <= wire_n0liii_o(9);
				n0l0Ol <= wire_n0liii_o(0);
				n0l0OO <= wire_n0liii_o(1);
				n0l10i <= wire_n0l1li_o(2);
				n0l10l <= wire_n0l1li_o(3);
				n0l10O <= wire_n0l1li_o(4);
				n0l11i <= wire_n0l1li_o(9);
				n0l11l <= wire_n0l1li_o(0);
				n0l11O <= wire_n0l1li_o(1);
				n0l1i <= wire_n0O0i_o(18);
				n0l1ii <= wire_n0l1li_o(5);
				n0l1il <= wire_n0l1li_o(6);
				n0l1iO <= wire_n0l1li_o(7);
				n0l1l <= wire_n0O0i_o(17);
				n0l1ll <= wire_n0l1li_o(8);
				n0l1lO <= wire_n0liii_o(25);
				n0l1O <= wire_n0O0i_o(16);
				n0l1Oi <= wire_n0liii_o(24);
				n0l1Ol <= wire_n0liii_o(23);
				n0l1OO <= wire_n0liii_o(22);
				n0li0i <= wire_n0liii_o(5);
				n0li0l <= wire_n0liii_o(6);
				n0li0O <= wire_n0liii_o(7);
				n0li1i <= wire_n0liii_o(2);
				n0li1l <= wire_n0liii_o(3);
				n0li1O <= wire_n0liii_o(4);
				n0lii <= wire_n0O0i_o(12);
				n0liil <= wire_n0liii_o(8);
				n0liiO <= wire_n0lO0i_o(25);
				n0lil <= wire_n0O0i_o(11);
				n0lili <= wire_n0lO0i_o(24);
				n0lill <= wire_n0lO0i_o(23);
				n0lilO <= wire_n0lO0i_o(22);
				n0liO <= wire_n0O0i_o(10);
				n0liOi <= wire_n0lO0i_o(21);
				n0liOl <= wire_n0lO0i_o(20);
				n0liOO <= wire_n0lO0i_o(19);
				n0ll0i <= wire_n0lO0i_o(15);
				n0ll0l <= wire_n0lO0i_o(14);
				n0ll0O <= wire_n0lO0i_o(13);
				n0ll1i <= wire_n0lO0i_o(18);
				n0ll1l <= wire_n0lO0i_o(17);
				n0ll1O <= wire_n0lO0i_o(16);
				n0lli <= wire_n0O0i_o(9);
				n0llii <= wire_n0lO0i_o(12);
				n0llil <= wire_n0lO0i_o(11);
				n0lliO <= wire_n0lO0i_o(10);
				n0lll <= wire_n0O0i_o(0);
				n0llli <= wire_n0lO0i_o(9);
				n0llll <= wire_n0lO0i_o(0);
				n0lllO <= wire_n0lO0i_o(1);
				n0llO <= wire_n0O0i_o(1);
				n0llOi <= wire_n0lO0i_o(2);
				n0llOl <= wire_n0lO0i_o(3);
				n0llOO <= wire_n0lO0i_o(4);
				n0lO0l <= wire_n0lO0i_o(8);
				n0lO0O <= wire_n0O01i_o(25);
				n0lO1i <= wire_n0lO0i_o(5);
				n0lO1l <= wire_n0lO0i_o(6);
				n0lO1O <= wire_n0lO0i_o(7);
				n0lOi <= wire_n0O0i_o(2);
				n0lOii <= wire_n0O01i_o(24);
				n0lOil <= wire_n0O01i_o(23);
				n0lOiO <= wire_n0O01i_o(22);
				n0lOl <= wire_n0O0i_o(3);
				n0lOli <= wire_n0O01i_o(21);
				n0lOll <= wire_n0O01i_o(20);
				n0lOlO <= wire_n0O01i_o(19);
				n0lOO <= wire_n0O0i_o(4);
				n0lOOi <= wire_n0O01i_o(18);
				n0lOOl <= wire_n0O01i_o(17);
				n0lOOO <= wire_n0O01i_o(16);
				n0O00i <= wire_n0OiOl_o(25);
				n0O00l <= wire_n0OiOl_o(24);
				n0O00O <= wire_n0OiOl_o(23);
				n0O01l <= wire_n0O01i_o(8);
				n0O01O <= wire_n0OiOl_o(26);
				n0O0ii <= wire_n0OiOl_o(22);
				n0O0il <= wire_n0OiOl_o(21);
				n0O0iO <= wire_n0OiOl_o(20);
				n0O0l <= wire_n0O0i_o(8);
				n0O0li <= wire_n0OiOl_o(19);
				n0O0ll <= wire_n0OiOl_o(18);
				n0O0lO <= wire_n0OiOl_o(17);
				n0O0O <= wire_ni00i_o(28);
				n0O0Oi <= wire_n0OiOl_o(16);
				n0O0Ol <= wire_n0OiOl_o(15);
				n0O0OO <= wire_n0OiOl_o(14);
				n0O10i <= wire_n0O01i_o(12);
				n0O10l <= wire_n0O01i_o(11);
				n0O10O <= wire_n0O01i_o(10);
				n0O11i <= wire_n0O01i_o(15);
				n0O11l <= wire_n0O01i_o(14);
				n0O11O <= wire_n0O01i_o(13);
				n0O1i <= wire_n0O0i_o(5);
				n0O1ii <= wire_n0O01i_o(9);
				n0O1il <= wire_n0O01i_o(0);
				n0O1iO <= wire_n0O01i_o(1);
				n0O1l <= wire_n0O0i_o(6);
				n0O1li <= wire_n0O01i_o(2);
				n0O1ll <= wire_n0O01i_o(3);
				n0O1lO <= wire_n0O01i_o(4);
				n0O1O <= wire_n0O0i_o(7);
				n0O1Oi <= wire_n0O01i_o(5);
				n0O1Ol <= wire_n0O01i_o(6);
				n0O1OO <= wire_n0O01i_o(7);
				n0Oi0i <= wire_n0OiOl_o(10);
				n0Oi0l <= wire_n0OiOl_o(9);
				n0Oi0O <= wire_n0OiOl_o(0);
				n0Oi1i <= wire_n0OiOl_o(13);
				n0Oi1l <= wire_n0OiOl_o(12);
				n0Oi1O <= wire_n0OiOl_o(11);
				n0Oii <= wire_ni00i_o(27);
				n0Oiii <= wire_n0OiOl_o(1);
				n0Oiil <= wire_n0OiOl_o(2);
				n0OiiO <= wire_n0OiOl_o(3);
				n0Oil <= wire_ni00i_o(26);
				n0Oili <= wire_n0OiOl_o(4);
				n0Oill <= wire_n0OiOl_o(5);
				n0OilO <= wire_n0OiOl_o(6);
				n0OiO <= wire_ni00i_o(25);
				n0OiOi <= wire_n0OiOl_o(7);
				n0OiOO <= wire_n0OiOl_o(8);
				n0Ol0i <= wire_n0OOlO_o(23);
				n0Ol0l <= wire_n0OOlO_o(22);
				n0Ol0O <= wire_n0OOlO_o(21);
				n0Ol1i <= wire_n0OOlO_o(26);
				n0Ol1l <= wire_n0OOlO_o(25);
				n0Ol1O <= wire_n0OOlO_o(24);
				n0Oli <= wire_ni00i_o(24);
				n0Olii <= wire_n0OOlO_o(20);
				n0Olil <= wire_n0OOlO_o(19);
				n0OliO <= wire_n0OOlO_o(18);
				n0Oll <= wire_ni00i_o(23);
				n0Olli <= wire_n0OOlO_o(17);
				n0Olll <= wire_n0OOlO_o(16);
				n0OllO <= wire_n0OOlO_o(15);
				n0OlO <= wire_ni00i_o(22);
				n0OlOi <= wire_n0OOlO_o(14);
				n0OlOl <= wire_n0OOlO_o(13);
				n0OlOO <= wire_n0OOlO_o(12);
				n0OO0i <= wire_n0OOlO_o(0);
				n0OO0l <= wire_n0OOlO_o(1);
				n0OO0O <= wire_n0OOlO_o(2);
				n0OO1i <= wire_n0OOlO_o(11);
				n0OO1l <= wire_n0OOlO_o(10);
				n0OO1O <= wire_n0OOlO_o(9);
				n0OOi <= wire_ni00i_o(21);
				n0OOii <= wire_n0OOlO_o(3);
				n0OOil <= wire_n0OOlO_o(4);
				n0OOiO <= wire_n0OOlO_o(5);
				n0OOl <= wire_ni00i_o(20);
				n0OOli <= wire_n0OOlO_o(6);
				n0OOll <= wire_n0OOlO_o(7);
				n0OOO <= wire_ni00i_o(19);
				n0OOOi <= wire_n0OOlO_o(8);
				n0OOOl <= wire_ni10li_o(26);
				n0OOOO <= wire_ni10li_o(25);
				n100i <= wire_n10li_o(2);
				n100l <= wire_n10li_o(3);
				n100O <= wire_n10li_o(4);
				n101i <= wire_n10li_o(9);
				n101l <= wire_n10li_o(0);
				n101O <= wire_n10li_o(1);
				n10ii <= wire_n10li_o(5);
				n10il <= wire_n10li_o(6);
				n10iO <= wire_n10li_o(7);
				n10ll <= wire_n10li_o(8);
				n10lO <= wire_n1lil_o(26);
				n10Oi <= wire_n1lil_o(25);
				n10Ol <= wire_n1lil_o(24);
				n10OO <= wire_n1lil_o(23);
				n110i <= wire_n10li_o(21);
				n110l <= wire_n10li_o(20);
				n110O <= wire_n10li_o(19);
				n111i <= wire_n10li_o(24);
				n111l <= wire_n10li_o(23);
				n111O <= wire_n10li_o(22);
				n11ii <= wire_n10li_o(18);
				n11il <= wire_n10li_o(17);
				n11iO <= wire_n10li_o(16);
				n11li <= wire_n10li_o(15);
				n11ll <= wire_n10li_o(14);
				n11lO <= wire_n10li_o(13);
				n11Oi <= wire_n10li_o(12);
				n11Ol <= wire_n10li_o(11);
				n11OO <= wire_n10li_o(10);
				n1i0i <= wire_n1lil_o(19);
				n1i0l <= wire_n1lil_o(18);
				n1i0O <= wire_n1lil_o(17);
				n1i1i <= wire_n1lil_o(22);
				n1i1l <= wire_n1lil_o(21);
				n1i1O <= wire_n1lil_o(20);
				n1iii <= wire_n1lil_o(16);
				n1iil <= wire_n1lil_o(15);
				n1iiO <= wire_n1lil_o(14);
				n1ili <= wire_n1lil_o(13);
				n1ill <= wire_n1lil_o(12);
				n1ilO <= wire_n1lil_o(11);
				n1iO0i <= wire_n1iOOO_o(11);
				n1iO0l <= wire_n1iOOO_o(10);
				n1iO0O <= wire_n1iOOO_o(9);
				n1iO1O <= wire_n1iOOO_o(12);
				n1iOi <= wire_n1lil_o(10);
				n1iOii <= wire_n1iOOO_o(8);
				n1iOil <= wire_n1iOOO_o(7);
				n1iOiO <= wire_n1iOOO_o(6);
				n1iOl <= wire_n1lil_o(9);
				n1iOli <= wire_n1iOOO_o(5);
				n1iOll <= wire_n1iOOO_o(4);
				n1iOlO <= wire_n1iOOO_o(3);
				n1iOO <= wire_n1lil_o(0);
				n1iOOi <= wire_n1iOOO_o(2);
				n1iOOl <= wire_n1iOOO_o(1);
				n1l00i <= wire_n1l0Oi_o(9);
				n1l00l <= wire_n1l0Oi_o(8);
				n1l00O <= wire_n1l0Oi_o(7);
				n1l01i <= wire_n1l0Oi_o(12);
				n1l01l <= wire_n1l0Oi_o(11);
				n1l01O <= wire_n1l0Oi_o(10);
				n1l0i <= wire_n1lil_o(4);
				n1l0ii <= wire_n1l0Oi_o(6);
				n1l0il <= wire_n1l0Oi_o(5);
				n1l0iO <= wire_n1l0Oi_o(4);
				n1l0l <= wire_n1lil_o(5);
				n1l0li <= wire_n1l0Oi_o(3);
				n1l0ll <= wire_n1l0Oi_o(2);
				n1l0lO <= wire_n1l0Oi_o(1);
				n1l0O <= wire_n1lil_o(6);
				n1l0Ol <= wire_n1l0Oi_o(0);
				n1l0OO <= wire_n1lilO_o(12);
				n1l10i <= wire_n1l1Ol_o(10);
				n1l10l <= wire_n1l1Ol_o(9);
				n1l10O <= wire_n1l1Ol_o(8);
				n1l11i <= wire_n1iOOO_o(0);
				n1l11l <= wire_n1l1Ol_o(12);
				n1l11O <= wire_n1l1Ol_o(11);
				n1l1i <= wire_n1lil_o(1);
				n1l1ii <= wire_n1l1Ol_o(7);
				n1l1il <= wire_n1l1Ol_o(6);
				n1l1iO <= wire_n1l1Ol_o(5);
				n1l1l <= wire_n1lil_o(2);
				n1l1li <= wire_n1l1Ol_o(4);
				n1l1ll <= wire_n1l1Ol_o(3);
				n1l1lO <= wire_n1l1Ol_o(2);
				n1l1O <= wire_n1lil_o(3);
				n1l1Oi <= wire_n1l1Ol_o(1);
				n1l1OO <= wire_n1l1Ol_o(0);
				n1li0i <= wire_n1lilO_o(8);
				n1li0l <= wire_n1lilO_o(7);
				n1li0O <= wire_n1lilO_o(6);
				n1li1i <= wire_n1lilO_o(11);
				n1li1l <= wire_n1lilO_o(10);
				n1li1O <= wire_n1lilO_o(9);
				n1lii <= wire_n1lil_o(7);
				n1liii <= wire_n1lilO_o(5);
				n1liil <= wire_n1lilO_o(4);
				n1liiO <= wire_n1lilO_o(3);
				n1lili <= wire_n1lilO_o(2);
				n1lill <= wire_n1lilO_o(1);
				n1liO <= wire_n1lil_o(8);
				n1liOi <= wire_n1lilO_o(0);
				n1liOl <= wire_n1llll_o(12);
				n1liOO <= wire_n1llll_o(11);
				n1ll0i <= wire_n1llll_o(7);
				n1ll0l <= wire_n1llll_o(6);
				n1ll0O <= wire_n1llll_o(5);
				n1ll1i <= wire_n1llll_o(10);
				n1ll1l <= wire_n1llll_o(9);
				n1ll1O <= wire_n1llll_o(8);
				n1lli <= wire_n010O_o(26);
				n1llii <= wire_n1llll_o(4);
				n1llil <= wire_n1llll_o(3);
				n1lliO <= wire_n1llll_o(2);
				n1lll <= wire_n010O_o(25);
				n1llli <= wire_n1llll_o(1);
				n1lllO <= wire_n1llll_o(0);
				n1llO <= wire_n010O_o(24);
				n1llOi <= wire_n1lOli_o(12);
				n1llOl <= wire_n1lOli_o(11);
				n1llOO <= wire_n1lOli_o(10);
				n1lO0i <= wire_n1lOli_o(6);
				n1lO0l <= wire_n1lOli_o(5);
				n1lO0O <= wire_n1lOli_o(4);
				n1lO1i <= wire_n1lOli_o(9);
				n1lO1l <= wire_n1lOli_o(8);
				n1lO1O <= wire_n1lOli_o(7);
				n1lOi <= wire_n010O_o(23);
				n1lOii <= wire_n1lOli_o(3);
				n1lOil <= wire_n1lOli_o(2);
				n1lOiO <= wire_n1lOli_o(1);
				n1lOl <= wire_n010O_o(22);
				n1lOll <= wire_n1lOli_o(0);
				n1lOlO <= wire_n1O1iO_o(12);
				n1lOO <= wire_n010O_o(21);
				n1lOOi <= wire_n1O1iO_o(11);
				n1lOOl <= wire_n1O1iO_o(10);
				n1lOOO <= wire_n1O1iO_o(9);
				n1O00i <= wire_n1O0il_o(4);
				n1O00l <= wire_n1O0il_o(3);
				n1O00O <= wire_n1O0il_o(2);
				n1O01i <= wire_n1O0il_o(7);
				n1O01l <= wire_n1O0il_o(6);
				n1O01O <= wire_n1O0il_o(5);
				n1O0i <= wire_n010O_o(17);
				n1O0ii <= wire_n1O0il_o(1);
				n1O0iO <= wire_n1O0il_o(0);
				n1O0l <= wire_n010O_o(16);
				n1O0li <= wire_n1Oiii_o(12);
				n1O0ll <= wire_n1Oiii_o(11);
				n1O0lO <= wire_n1Oiii_o(10);
				n1O0O <= wire_n010O_o(15);
				n1O0Oi <= wire_n1Oiii_o(9);
				n1O0Ol <= wire_n1Oiii_o(8);
				n1O0OO <= wire_n1Oiii_o(7);
				n1O10i <= wire_n1O1iO_o(5);
				n1O10l <= wire_n1O1iO_o(4);
				n1O10O <= wire_n1O1iO_o(3);
				n1O11i <= wire_n1O1iO_o(8);
				n1O11l <= wire_n1O1iO_o(7);
				n1O11O <= wire_n1O1iO_o(6);
				n1O1i <= wire_n010O_o(20);
				n1O1ii <= wire_n1O1iO_o(2);
				n1O1il <= wire_n1O1iO_o(1);
				n1O1l <= wire_n010O_o(19);
				n1O1li <= wire_n1O1iO_o(0);
				n1O1ll <= wire_n1O0il_o(12);
				n1O1lO <= wire_n1O0il_o(11);
				n1O1O <= wire_n010O_o(18);
				n1O1Oi <= wire_n1O0il_o(10);
				n1O1Ol <= wire_n1O0il_o(9);
				n1O1OO <= wire_n1O0il_o(8);
				n1Oi0i <= wire_n1Oiii_o(3);
				n1Oi0l <= wire_n1Oiii_o(2);
				n1Oi0O <= wire_n1Oiii_o(1);
				n1Oi1i <= wire_n1Oiii_o(6);
				n1Oi1l <= wire_n1Oiii_o(5);
				n1Oi1O <= wire_n1Oiii_o(4);
				n1Oii <= wire_n010O_o(14);
				n1Oiil <= wire_n1Oiii_o(0);
				n1OiiO <= wire_n1Ol0O_o(12);
				n1Oil <= wire_n010O_o(13);
				n1Oili <= wire_n1Ol0O_o(11);
				n1Oill <= wire_n1Ol0O_o(10);
				n1OilO <= wire_n1Ol0O_o(9);
				n1OiO <= wire_n010O_o(12);
				n1OiOi <= wire_n1Ol0O_o(8);
				n1OiOl <= wire_n1Ol0O_o(7);
				n1OiOO <= wire_n1Ol0O_o(6);
				n1Ol0i <= wire_n1Ol0O_o(2);
				n1Ol0l <= wire_n1Ol0O_o(1);
				n1Ol1i <= wire_n1Ol0O_o(5);
				n1Ol1l <= wire_n1Ol0O_o(4);
				n1Ol1O <= wire_n1Ol0O_o(3);
				n1Oli <= wire_n010O_o(11);
				n1Olii <= wire_n1Ol0O_o(0);
				n1Olil <= wire_n1OO0l_o(12);
				n1OliO <= wire_n1OO0l_o(11);
				n1Oll <= wire_n010O_o(10);
				n1Olli <= wire_n1OO0l_o(10);
				n1Olll <= wire_n1OO0l_o(9);
				n1OllO <= wire_n1OO0l_o(8);
				n1OlO <= wire_n010O_o(9);
				n1OlOi <= wire_n1OO0l_o(7);
				n1OlOl <= wire_n1OO0l_o(6);
				n1OlOO <= wire_n1OO0l_o(5);
				n1OO0i <= wire_n1OO0l_o(1);
				n1OO0O <= wire_n1OO0l_o(0);
				n1OO1i <= wire_n1OO0l_o(4);
				n1OO1l <= wire_n1OO0l_o(3);
				n1OO1O <= wire_n1OO0l_o(2);
				n1OOi <= wire_n010O_o(0);
				n1OOii <= wire_n0110i_o(12);
				n1OOil <= wire_n0110i_o(11);
				n1OOiO <= wire_n0110i_o(10);
				n1OOl <= wire_n010O_o(1);
				n1OOli <= wire_n0110i_o(9);
				n1OOll <= wire_n0110i_o(8);
				n1OOlO <= wire_n0110i_o(7);
				n1OOO <= wire_n010O_o(2);
				n1OOOi <= wire_n0110i_o(6);
				n1OOOl <= wire_n0110i_o(5);
				n1OOOO <= wire_n0110i_o(4);
				ni000i <= wire_ni0i0O_o(17);
				ni000l <= wire_ni0i0O_o(16);
				ni000O <= wire_ni0i0O_o(15);
				ni001i <= wire_ni0i0O_o(20);
				ni001l <= wire_ni0i0O_o(19);
				ni001O <= wire_ni0i0O_o(18);
				ni00ii <= wire_ni0i0O_o(14);
				ni00il <= wire_ni0i0O_o(13);
				ni00iO <= wire_ni0i0O_o(12);
				ni00l <= wire_ni00i_o(8);
				ni00li <= wire_ni0i0O_o(11);
				ni00ll <= wire_ni0i0O_o(10);
				ni00lO <= wire_ni0i0O_o(9);
				ni00O <= wire_nil0l_o(29);
				ni00Oi <= wire_ni0i0O_o(0);
				ni00Ol <= wire_ni0i0O_o(1);
				ni00OO <= wire_ni0i0O_o(2);
				ni010i <= wire_ni01ii_o(5);
				ni010l <= wire_ni01ii_o(6);
				ni010O <= wire_ni01ii_o(7);
				ni011i <= wire_ni01ii_o(2);
				ni011l <= wire_ni01ii_o(3);
				ni011O <= wire_ni01ii_o(4);
				ni01i <= wire_ni00i_o(5);
				ni01il <= wire_ni01ii_o(8);
				ni01iO <= wire_ni0i0O_o(27);
				ni01l <= wire_ni00i_o(6);
				ni01li <= wire_ni0i0O_o(26);
				ni01ll <= wire_ni0i0O_o(25);
				ni01lO <= wire_ni0i0O_o(24);
				ni01O <= wire_ni00i_o(7);
				ni01Oi <= wire_ni0i0O_o(23);
				ni01Ol <= wire_ni0i0O_o(22);
				ni01OO <= wire_ni0i0O_o(21);
				ni0i0i <= wire_ni0i0O_o(6);
				ni0i0l <= wire_ni0i0O_o(7);
				ni0i1i <= wire_ni0i0O_o(3);
				ni0i1l <= wire_ni0i0O_o(4);
				ni0i1O <= wire_ni0i0O_o(5);
				ni0ii <= wire_nil0l_o(28);
				ni0iii <= wire_ni0i0O_o(8);
				ni0iil <= wire_ni0O0O_o(28);
				ni0iiO <= wire_ni0O0O_o(27);
				ni0il <= wire_nil0l_o(27);
				ni0ili <= wire_ni0O0O_o(26);
				ni0ill <= wire_ni0O0O_o(25);
				ni0ilO <= wire_ni0O0O_o(24);
				ni0iO <= wire_nil0l_o(26);
				ni0iOi <= wire_ni0O0O_o(23);
				ni0iOl <= wire_ni0O0O_o(22);
				ni0iOO <= wire_ni0O0O_o(21);
				ni0l0i <= wire_ni0O0O_o(17);
				ni0l0l <= wire_ni0O0O_o(16);
				ni0l0O <= wire_ni0O0O_o(15);
				ni0l1i <= wire_ni0O0O_o(20);
				ni0l1l <= wire_ni0O0O_o(19);
				ni0l1O <= wire_ni0O0O_o(18);
				ni0li <= wire_nil0l_o(25);
				ni0lii <= wire_ni0O0O_o(14);
				ni0lil <= wire_ni0O0O_o(13);
				ni0liO <= wire_ni0O0O_o(12);
				ni0ll <= wire_nil0l_o(24);
				ni0lli <= wire_ni0O0O_o(11);
				ni0lll <= wire_ni0O0O_o(10);
				ni0llO <= wire_ni0O0O_o(9);
				ni0lO <= wire_nil0l_o(23);
				ni0lOi <= wire_ni0O0O_o(0);
				ni0lOl <= wire_ni0O0O_o(1);
				ni0lOO <= wire_ni0O0O_o(2);
				ni0O0i <= wire_ni0O0O_o(6);
				ni0O0l <= wire_ni0O0O_o(7);
				ni0O1i <= wire_ni0O0O_o(3);
				ni0O1l <= wire_ni0O0O_o(4);
				ni0O1O <= wire_ni0O0O_o(5);
				ni0Oi <= wire_nil0l_o(22);
				ni0Oii <= wire_ni0O0O_o(8);
				ni0Oil <= wire_nii01O_o(25);
				ni0OiO <= wire_nii01O_o(24);
				ni0Ol <= wire_nil0l_o(21);
				ni0Oli <= wire_nii01O_o(23);
				ni0Oll <= wire_nii01O_o(22);
				ni0OlO <= wire_nii01O_o(21);
				ni0OO <= wire_nil0l_o(20);
				ni0OOi <= wire_nii01O_o(20);
				ni0OOl <= wire_nii01O_o(19);
				ni0OOO <= wire_nii01O_o(18);
				ni100i <= wire_ni10li_o(2);
				ni100l <= wire_ni10li_o(3);
				ni100O <= wire_ni10li_o(4);
				ni101i <= wire_ni10li_o(9);
				ni101l <= wire_ni10li_o(0);
				ni101O <= wire_ni10li_o(1);
				ni10i <= wire_ni00i_o(15);
				ni10ii <= wire_ni10li_o(5);
				ni10il <= wire_ni10li_o(6);
				ni10iO <= wire_ni10li_o(7);
				ni10l <= wire_ni00i_o(14);
				ni10ll <= wire_ni10li_o(8);
				ni10lO <= wire_ni1lil_o(26);
				ni10O <= wire_ni00i_o(13);
				ni10Oi <= wire_ni1lil_o(25);
				ni10Ol <= wire_ni1lil_o(24);
				ni10OO <= wire_ni1lil_o(23);
				ni110i <= wire_ni10li_o(21);
				ni110l <= wire_ni10li_o(20);
				ni110O <= wire_ni10li_o(19);
				ni111i <= wire_ni10li_o(24);
				ni111l <= wire_ni10li_o(23);
				ni111O <= wire_ni10li_o(22);
				ni11i <= wire_ni00i_o(18);
				ni11ii <= wire_ni10li_o(18);
				ni11il <= wire_ni10li_o(17);
				ni11iO <= wire_ni10li_o(16);
				ni11l <= wire_ni00i_o(17);
				ni11li <= wire_ni10li_o(15);
				ni11ll <= wire_ni10li_o(14);
				ni11lO <= wire_ni10li_o(13);
				ni11O <= wire_ni00i_o(16);
				ni11Oi <= wire_ni10li_o(12);
				ni11Ol <= wire_ni10li_o(11);
				ni11OO <= wire_ni10li_o(10);
				ni1i0i <= wire_ni1lil_o(19);
				ni1i0l <= wire_ni1lil_o(18);
				ni1i0O <= wire_ni1lil_o(17);
				ni1i1i <= wire_ni1lil_o(22);
				ni1i1l <= wire_ni1lil_o(21);
				ni1i1O <= wire_ni1lil_o(20);
				ni1ii <= wire_ni00i_o(12);
				ni1iii <= wire_ni1lil_o(16);
				ni1iil <= wire_ni1lil_o(15);
				ni1iiO <= wire_ni1lil_o(14);
				ni1il <= wire_ni00i_o(11);
				ni1ili <= wire_ni1lil_o(13);
				ni1ill <= wire_ni1lil_o(12);
				ni1ilO <= wire_ni1lil_o(11);
				ni1iO <= wire_ni00i_o(10);
				ni1iOi <= wire_ni1lil_o(10);
				ni1iOl <= wire_ni1lil_o(9);
				ni1iOO <= wire_ni1lil_o(0);
				ni1l0i <= wire_ni1lil_o(4);
				ni1l0l <= wire_ni1lil_o(5);
				ni1l0O <= wire_ni1lil_o(6);
				ni1l1i <= wire_ni1lil_o(1);
				ni1l1l <= wire_ni1lil_o(2);
				ni1l1O <= wire_ni1lil_o(3);
				ni1li <= wire_ni00i_o(9);
				ni1lii <= wire_ni1lil_o(7);
				ni1liO <= wire_ni1lil_o(8);
				ni1ll <= wire_ni00i_o(0);
				ni1lli <= wire_ni01ii_o(27);
				ni1lll <= wire_ni01ii_o(26);
				ni1llO <= wire_ni01ii_o(25);
				ni1lO <= wire_ni00i_o(1);
				ni1lOi <= wire_ni01ii_o(24);
				ni1lOl <= wire_ni01ii_o(23);
				ni1lOO <= wire_ni01ii_o(22);
				ni1O0i <= wire_ni01ii_o(18);
				ni1O0l <= wire_ni01ii_o(17);
				ni1O0O <= wire_ni01ii_o(16);
				ni1O1i <= wire_ni01ii_o(21);
				ni1O1l <= wire_ni01ii_o(20);
				ni1O1O <= wire_ni01ii_o(19);
				ni1Oi <= wire_ni00i_o(2);
				ni1Oii <= wire_ni01ii_o(15);
				ni1Oil <= wire_ni01ii_o(14);
				ni1OiO <= wire_ni01ii_o(13);
				ni1Ol <= wire_ni00i_o(3);
				ni1Oli <= wire_ni01ii_o(12);
				ni1Oll <= wire_ni01ii_o(11);
				ni1OlO <= wire_ni01ii_o(10);
				ni1OO <= wire_ni00i_o(4);
				ni1OOi <= wire_ni01ii_o(9);
				ni1OOl <= wire_ni01ii_o(0);
				ni1OOO <= wire_ni01ii_o(1);
				nii00i <= wire_nii01O_o(8);
				nii00l <= wire_niiiOO_o(25);
				nii00O <= wire_niiiOO_o(24);
				nii01i <= wire_nii01O_o(6);
				nii01l <= wire_nii01O_o(7);
				nii0i <= wire_nil0l_o(16);
				nii0ii <= wire_niiiOO_o(23);
				nii0il <= wire_niiiOO_o(22);
				nii0iO <= wire_niiiOO_o(21);
				nii0l <= wire_nil0l_o(15);
				nii0li <= wire_niiiOO_o(20);
				nii0ll <= wire_niiiOO_o(19);
				nii0lO <= wire_niiiOO_o(18);
				nii0O <= wire_nil0l_o(14);
				nii0Oi <= wire_niiiOO_o(17);
				nii0Ol <= wire_niiiOO_o(16);
				nii0OO <= wire_niiiOO_o(15);
				nii10i <= wire_nii01O_o(14);
				nii10l <= wire_nii01O_o(13);
				nii10O <= wire_nii01O_o(12);
				nii11i <= wire_nii01O_o(17);
				nii11l <= wire_nii01O_o(16);
				nii11O <= wire_nii01O_o(15);
				nii1i <= wire_nil0l_o(19);
				nii1ii <= wire_nii01O_o(11);
				nii1il <= wire_nii01O_o(10);
				nii1iO <= wire_nii01O_o(9);
				nii1l <= wire_nil0l_o(18);
				nii1li <= wire_nii01O_o(0);
				nii1ll <= wire_nii01O_o(1);
				nii1lO <= wire_nii01O_o(2);
				nii1O <= wire_nil0l_o(17);
				nii1Oi <= wire_nii01O_o(3);
				nii1Ol <= wire_nii01O_o(4);
				nii1OO <= wire_nii01O_o(5);
				niii0i <= wire_niiiOO_o(11);
				niii0l <= wire_niiiOO_o(10);
				niii0O <= wire_niiiOO_o(9);
				niii1i <= wire_niiiOO_o(14);
				niii1l <= wire_niiiOO_o(13);
				niii1O <= wire_niiiOO_o(12);
				niiii <= wire_nil0l_o(13);
				niiiii <= wire_niiiOO_o(0);
				niiiil <= wire_niiiOO_o(1);
				niiiiO <= wire_niiiOO_o(2);
				niiil <= wire_nil0l_o(12);
				niiili <= wire_niiiOO_o(3);
				niiill <= wire_niiiOO_o(4);
				niiilO <= wire_niiiOO_o(5);
				niiiO <= wire_nil0l_o(11);
				niiiOi <= wire_niiiOO_o(6);
				niiiOl <= wire_niiiOO_o(7);
				niil0i <= wire_niiOlO_o(23);
				niil0l <= wire_niiOlO_o(22);
				niil0O <= wire_niiOlO_o(21);
				niil1i <= wire_niiiOO_o(8);
				niil1l <= wire_niiOlO_o(25);
				niil1O <= wire_niiOlO_o(24);
				niili <= wire_nil0l_o(10);
				niilii <= wire_niiOlO_o(20);
				niilil <= wire_niiOlO_o(19);
				niiliO <= wire_niiOlO_o(18);
				niill <= wire_nil0l_o(9);
				niilli <= wire_niiOlO_o(17);
				niilll <= wire_niiOlO_o(16);
				niillO <= wire_niiOlO_o(15);
				niilO <= wire_nil0l_o(0);
				niilOi <= wire_niiOlO_o(14);
				niilOl <= wire_niiOlO_o(13);
				niilOO <= wire_niiOlO_o(12);
				niiO0i <= wire_niiOlO_o(0);
				niiO0l <= wire_niiOlO_o(1);
				niiO0O <= wire_niiOlO_o(2);
				niiO1i <= wire_niiOlO_o(11);
				niiO1l <= wire_niiOlO_o(10);
				niiO1O <= wire_niiOlO_o(9);
				niiOi <= wire_nil0l_o(1);
				niiOii <= wire_niiOlO_o(3);
				niiOil <= wire_niiOlO_o(4);
				niiOiO <= wire_niiOlO_o(5);
				niiOl <= wire_nil0l_o(2);
				niiOli <= wire_niiOlO_o(6);
				niiOll <= wire_niiOlO_o(7);
				niiOO <= wire_nil0l_o(3);
				niiOOi <= wire_niiOlO_o(8);
				niiOOl <= wire_nil0iO_o(25);
				niiOOO <= wire_nil0iO_o(24);
				nil00i <= wire_nil0iO_o(3);
				nil00l <= wire_nil0iO_o(4);
				nil00O <= wire_nil0iO_o(5);
				nil01i <= wire_nil0iO_o(0);
				nil01l <= wire_nil0iO_o(1);
				nil01O <= wire_nil0iO_o(2);
				nil0i <= wire_nil0l_o(7);
				nil0ii <= wire_nil0iO_o(6);
				nil0il <= wire_nil0iO_o(7);
				nil0li <= wire_nil0iO_o(8);
				nil0ll <= wire_nill0O_o(25);
				nil0lO <= wire_nill0O_o(24);
				nil0O <= wire_nil0l_o(8);
				nil0Oi <= wire_nill0O_o(23);
				nil0Ol <= wire_nill0O_o(22);
				nil0OO <= wire_nill0O_o(21);
				nil10i <= wire_nil0iO_o(20);
				nil10l <= wire_nil0iO_o(19);
				nil10O <= wire_nil0iO_o(18);
				nil11i <= wire_nil0iO_o(23);
				nil11l <= wire_nil0iO_o(22);
				nil11O <= wire_nil0iO_o(21);
				nil1i <= wire_nil0l_o(4);
				nil1ii <= wire_nil0iO_o(17);
				nil1il <= wire_nil0iO_o(16);
				nil1iO <= wire_nil0iO_o(15);
				nil1l <= wire_nil0l_o(5);
				nil1li <= wire_nil0iO_o(14);
				nil1ll <= wire_nil0iO_o(13);
				nil1lO <= wire_nil0iO_o(12);
				nil1O <= wire_nil0l_o(6);
				nil1Oi <= wire_nil0iO_o(11);
				nil1Ol <= wire_nil0iO_o(10);
				nil1OO <= wire_nil0iO_o(9);
				nili0i <= wire_nill0O_o(17);
				nili0l <= wire_nill0O_o(16);
				nili0O <= wire_nill0O_o(15);
				nili1i <= wire_nill0O_o(20);
				nili1l <= wire_nill0O_o(19);
				nili1O <= wire_nill0O_o(18);
				nilii <= wire_nl10O_o(29);
				niliii <= wire_nill0O_o(14);
				niliil <= wire_nill0O_o(13);
				niliiO <= wire_nill0O_o(12);
				nilil <= wire_nl10O_o(28);
				nilili <= wire_nill0O_o(11);
				nilill <= wire_nill0O_o(10);
				nililO <= wire_nill0O_o(9);
				niliO <= wire_nl10O_o(27);
				niliOi <= wire_nill0O_o(0);
				niliOl <= wire_nill0O_o(1);
				niliOO <= wire_nill0O_o(2);
				nill0i <= wire_nill0O_o(6);
				nill0l <= wire_nill0O_o(7);
				nill1i <= wire_nill0O_o(3);
				nill1l <= wire_nill0O_o(4);
				nill1O <= wire_nill0O_o(5);
				nilli <= wire_nl10O_o(26);
				nillii <= wire_nill0O_o(8);
				nillil <= wire_niO11O_o(25);
				nilliO <= wire_niO11O_o(24);
				nilll <= wire_nl10O_o(25);
				nillli <= wire_niO11O_o(23);
				nillll <= wire_niO11O_o(22);
				nilllO <= wire_niO11O_o(21);
				nillO <= wire_nl10O_o(24);
				nillOi <= wire_niO11O_o(20);
				nillOl <= wire_niO11O_o(19);
				nillOO <= wire_niO11O_o(18);
				nilO0i <= wire_niO11O_o(14);
				nilO0l <= wire_niO11O_o(13);
				nilO0O <= wire_niO11O_o(12);
				nilO1i <= wire_niO11O_o(17);
				nilO1l <= wire_niO11O_o(16);
				nilO1O <= wire_niO11O_o(15);
				nilOi <= wire_nl10O_o(23);
				nilOii <= wire_niO11O_o(11);
				nilOil <= wire_niO11O_o(10);
				nilOiO <= wire_niO11O_o(9);
				nilOl <= wire_nl10O_o(22);
				nilOli <= wire_niO11O_o(0);
				nilOll <= wire_niO11O_o(1);
				nilOlO <= wire_niO11O_o(2);
				nilOO <= wire_nl10O_o(21);
				nilOOi <= wire_niO11O_o(3);
				nilOOl <= wire_niO11O_o(4);
				nilOOO <= wire_niO11O_o(5);
				niO00i <= wire_niO0OO_o(11);
				niO00l <= wire_niO0OO_o(10);
				niO00O <= wire_niO0OO_o(9);
				niO01i <= wire_niO0OO_o(14);
				niO01l <= wire_niO0OO_o(13);
				niO01O <= wire_niO0OO_o(12);
				niO0i <= wire_nl10O_o(17);
				niO0ii <= wire_niO0OO_o(0);
				niO0il <= wire_niO0OO_o(1);
				niO0iO <= wire_niO0OO_o(2);
				niO0l <= wire_nl10O_o(16);
				niO0li <= wire_niO0OO_o(3);
				niO0ll <= wire_niO0OO_o(4);
				niO0lO <= wire_niO0OO_o(5);
				niO0O <= wire_nl10O_o(15);
				niO0Oi <= wire_niO0OO_o(6);
				niO0Ol <= wire_niO0OO_o(7);
				niO10i <= wire_niO11O_o(8);
				niO10l <= wire_niO0OO_o(25);
				niO10O <= wire_niO0OO_o(24);
				niO11i <= wire_niO11O_o(6);
				niO11l <= wire_niO11O_o(7);
				niO1i <= wire_nl10O_o(20);
				niO1ii <= wire_niO0OO_o(23);
				niO1il <= wire_niO0OO_o(22);
				niO1iO <= wire_niO0OO_o(21);
				niO1l <= wire_nl10O_o(19);
				niO1li <= wire_niO0OO_o(20);
				niO1ll <= wire_niO0OO_o(19);
				niO1lO <= wire_niO0OO_o(18);
				niO1O <= wire_nl10O_o(18);
				niO1Oi <= wire_niO0OO_o(17);
				niO1Ol <= wire_niO0OO_o(16);
				niO1OO <= wire_niO0OO_o(15);
				niOi0i <= wire_niOlOi_o(24);
				niOi0l <= wire_niOlOi_o(23);
				niOi0O <= wire_niOlOi_o(22);
				niOi1i <= wire_niO0OO_o(8);
				niOi1l <= wire_niOlOi_o(26);
				niOi1O <= wire_niOlOi_o(25);
				niOii <= wire_nl10O_o(14);
				niOiii <= wire_niOlOi_o(21);
				niOiil <= wire_niOlOi_o(20);
				niOiiO <= wire_niOlOi_o(19);
				niOil <= wire_nl10O_o(13);
				niOili <= wire_niOlOi_o(18);
				niOill <= wire_niOlOi_o(17);
				niOilO <= wire_niOlOi_o(16);
				niOiO <= wire_nl10O_o(12);
				niOiOi <= wire_niOlOi_o(15);
				niOiOl <= wire_niOlOi_o(14);
				niOiOO <= wire_niOlOi_o(13);
				niOl0i <= wire_niOlOi_o(9);
				niOl0l <= wire_niOlOi_o(0);
				niOl0O <= wire_niOlOi_o(1);
				niOl1i <= wire_niOlOi_o(12);
				niOl1l <= wire_niOlOi_o(11);
				niOl1O <= wire_niOlOi_o(10);
				niOli <= wire_nl10O_o(11);
				niOlii <= wire_niOlOi_o(2);
				niOlil <= wire_niOlOi_o(3);
				niOliO <= wire_niOlOi_o(4);
				niOll <= wire_nl10O_o(10);
				niOlli <= wire_niOlOi_o(5);
				niOlll <= wire_niOlOi_o(6);
				niOllO <= wire_niOlOi_o(7);
				niOlO <= wire_nl10O_o(9);
				niOlOl <= wire_niOlOi_o(8);
				niOlOO <= wire_nl11ll_o(26);
				niOO0i <= wire_nl11ll_o(22);
				niOO0l <= wire_nl11ll_o(21);
				niOO0O <= wire_nl11ll_o(20);
				niOO1i <= wire_nl11ll_o(25);
				niOO1l <= wire_nl11ll_o(24);
				niOO1O <= wire_nl11ll_o(23);
				niOOi <= wire_nl10O_o(0);
				niOOii <= wire_nl11ll_o(19);
				niOOil <= wire_nl11ll_o(18);
				niOOiO <= wire_nl11ll_o(17);
				niOOl <= wire_nl10O_o(1);
				niOOli <= wire_nl11ll_o(16);
				niOOll <= wire_nl11ll_o(15);
				niOOlO <= wire_nl11ll_o(14);
				niOOO <= wire_nl10O_o(2);
				niOOOi <= wire_nl11ll_o(13);
				niOOOl <= wire_nl11ll_o(12);
				niOOOO <= wire_nl11ll_o(11);
				nl000i <= wire_nl000O_o(6);
				nl000l <= wire_nl000O_o(7);
				nl001i <= wire_nl000O_o(3);
				nl001l <= wire_nl000O_o(4);
				nl001O <= wire_nl000O_o(5);
				nl00i <= wire_nli0i_o(15);
				nl00ii <= wire_nl000O_o(8);
				nl00il <= wire_nl0l0l_o(27);
				nl00iO <= wire_nl0l0l_o(26);
				nl00l <= wire_nli0i_o(14);
				nl00li <= wire_nl0l0l_o(25);
				nl00ll <= wire_nl0l0l_o(24);
				nl00lO <= wire_nl0l0l_o(23);
				nl00O <= wire_nli0i_o(13);
				nl00Oi <= wire_nl0l0l_o(22);
				nl00Ol <= wire_nl0l0l_o(21);
				nl00OO <= wire_nl0l0l_o(20);
				nl010i <= wire_nl000O_o(17);
				nl010l <= wire_nl000O_o(16);
				nl010O <= wire_nl000O_o(15);
				nl011i <= wire_nl000O_o(20);
				nl011l <= wire_nl000O_o(19);
				nl011O <= wire_nl000O_o(18);
				nl01i <= wire_nli0i_o(18);
				nl01ii <= wire_nl000O_o(14);
				nl01il <= wire_nl000O_o(13);
				nl01iO <= wire_nl000O_o(12);
				nl01l <= wire_nli0i_o(17);
				nl01li <= wire_nl000O_o(11);
				nl01ll <= wire_nl000O_o(10);
				nl01lO <= wire_nl000O_o(9);
				nl01O <= wire_nli0i_o(16);
				nl01Oi <= wire_nl000O_o(0);
				nl01Ol <= wire_nl000O_o(1);
				nl01OO <= wire_nl000O_o(2);
				nl0i0i <= wire_nl0l0l_o(16);
				nl0i0l <= wire_nl0l0l_o(15);
				nl0i0O <= wire_nl0l0l_o(14);
				nl0i1i <= wire_nl0l0l_o(19);
				nl0i1l <= wire_nl0l0l_o(18);
				nl0i1O <= wire_nl0l0l_o(17);
				nl0ii <= wire_nli0i_o(12);
				nl0iii <= wire_nl0l0l_o(13);
				nl0iil <= wire_nl0l0l_o(12);
				nl0iiO <= wire_nl0l0l_o(11);
				nl0il <= wire_nli0i_o(11);
				nl0ili <= wire_nl0l0l_o(10);
				nl0ill <= wire_nl0l0l_o(9);
				nl0ilO <= wire_nl0l0l_o(0);
				nl0iO <= wire_nli0i_o(10);
				nl0iOi <= wire_nl0l0l_o(1);
				nl0iOl <= wire_nl0l0l_o(2);
				nl0iOO <= wire_nl0l0l_o(3);
				nl0l0i <= wire_nl0l0l_o(7);
				nl0l0O <= wire_nl0l0l_o(8);
				nl0l1i <= wire_nl0l0l_o(4);
				nl0l1l <= wire_nl0l0l_o(5);
				nl0l1O <= wire_nl0l0l_o(6);
				nl0li <= wire_nli0i_o(9);
				nl0lii <= wire_nli10l_o(28);
				nl0lil <= wire_nli10l_o(27);
				nl0liO <= wire_nli10l_o(26);
				nl0ll <= wire_nli0i_o(0);
				nl0lli <= wire_nli10l_o(25);
				nl0lll <= wire_nli10l_o(24);
				nl0llO <= wire_nli10l_o(23);
				nl0lO <= wire_nli0i_o(1);
				nl0lOi <= wire_nli10l_o(22);
				nl0lOl <= wire_nli10l_o(21);
				nl0lOO <= wire_nli10l_o(20);
				nl0O0i <= wire_nli10l_o(16);
				nl0O0l <= wire_nli10l_o(15);
				nl0O0O <= wire_nli10l_o(14);
				nl0O1i <= wire_nli10l_o(19);
				nl0O1l <= wire_nli10l_o(18);
				nl0O1O <= wire_nli10l_o(17);
				nl0Oi <= wire_nli0i_o(2);
				nl0Oii <= wire_nli10l_o(13);
				nl0Oil <= wire_nli10l_o(12);
				nl0OiO <= wire_nli10l_o(11);
				nl0Ol <= wire_nli0i_o(3);
				nl0Oli <= wire_nli10l_o(10);
				nl0Oll <= wire_nli10l_o(9);
				nl0OlO <= wire_nli10l_o(0);
				nl0OO <= wire_nli0i_o(4);
				nl0OOi <= wire_nli10l_o(1);
				nl0OOl <= wire_nli10l_o(2);
				nl0OOO <= wire_nli10l_o(3);
				nl100i <= wire_nl1iiO_o(20);
				nl100l <= wire_nl1iiO_o(19);
				nl100O <= wire_nl1iiO_o(18);
				nl101i <= wire_nl1iiO_o(23);
				nl101l <= wire_nl1iiO_o(22);
				nl101O <= wire_nl1iiO_o(21);
				nl10i <= wire_nl10O_o(6);
				nl10ii <= wire_nl1iiO_o(17);
				nl10il <= wire_nl1iiO_o(16);
				nl10iO <= wire_nl1iiO_o(15);
				nl10l <= wire_nl10O_o(7);
				nl10li <= wire_nl1iiO_o(14);
				nl10ll <= wire_nl1iiO_o(13);
				nl10lO <= wire_nl1iiO_o(12);
				nl10Oi <= wire_nl1iiO_o(11);
				nl10Ol <= wire_nl1iiO_o(10);
				nl10OO <= wire_nl1iiO_o(9);
				nl110i <= wire_nl11ll_o(1);
				nl110l <= wire_nl11ll_o(2);
				nl110O <= wire_nl11ll_o(3);
				nl111i <= wire_nl11ll_o(10);
				nl111l <= wire_nl11ll_o(9);
				nl111O <= wire_nl11ll_o(0);
				nl11i <= wire_nl10O_o(3);
				nl11ii <= wire_nl11ll_o(4);
				nl11il <= wire_nl11ll_o(5);
				nl11iO <= wire_nl11ll_o(6);
				nl11l <= wire_nl10O_o(4);
				nl11li <= wire_nl11ll_o(7);
				nl11lO <= wire_nl11ll_o(8);
				nl11O <= wire_nl10O_o(5);
				nl11Oi <= wire_nl1iiO_o(26);
				nl11Ol <= wire_nl1iiO_o(25);
				nl11OO <= wire_nl1iiO_o(24);
				nl1i0i <= wire_nl1iiO_o(3);
				nl1i0l <= wire_nl1iiO_o(4);
				nl1i0O <= wire_nl1iiO_o(5);
				nl1i1i <= wire_nl1iiO_o(0);
				nl1i1l <= wire_nl1iiO_o(1);
				nl1i1O <= wire_nl1iiO_o(2);
				nl1ii <= wire_nl10O_o(8);
				nl1iii <= wire_nl1iiO_o(6);
				nl1iil <= wire_nl1iiO_o(7);
				nl1il <= wire_nli0i_o(26);
				nl1ili <= wire_nl1iiO_o(8);
				nl1ill <= wire_nl1Oii_o(26);
				nl1ilO <= wire_nl1Oii_o(25);
				nl1iO <= wire_nli0i_o(25);
				nl1iOi <= wire_nl1Oii_o(24);
				nl1iOl <= wire_nl1Oii_o(23);
				nl1iOO <= wire_nl1Oii_o(22);
				nl1l0i <= wire_nl1Oii_o(18);
				nl1l0l <= wire_nl1Oii_o(17);
				nl1l0O <= wire_nl1Oii_o(16);
				nl1l1i <= wire_nl1Oii_o(21);
				nl1l1l <= wire_nl1Oii_o(20);
				nl1l1O <= wire_nl1Oii_o(19);
				nl1li <= wire_nli0i_o(24);
				nl1lii <= wire_nl1Oii_o(15);
				nl1lil <= wire_nl1Oii_o(14);
				nl1liO <= wire_nl1Oii_o(13);
				nl1ll <= wire_nli0i_o(23);
				nl1lli <= wire_nl1Oii_o(12);
				nl1lll <= wire_nl1Oii_o(11);
				nl1llO <= wire_nl1Oii_o(10);
				nl1lO <= wire_nli0i_o(22);
				nl1lOi <= wire_nl1Oii_o(9);
				nl1lOl <= wire_nl1Oii_o(0);
				nl1lOO <= wire_nl1Oii_o(1);
				nl1O0i <= wire_nl1Oii_o(5);
				nl1O0l <= wire_nl1Oii_o(6);
				nl1O0O <= wire_nl1Oii_o(7);
				nl1O1i <= wire_nl1Oii_o(2);
				nl1O1l <= wire_nl1Oii_o(3);
				nl1O1O <= wire_nl1Oii_o(4);
				nl1Oi <= wire_nli0i_o(21);
				nl1Oil <= wire_nl1Oii_o(8);
				nl1OiO <= wire_nl000O_o(27);
				nl1Ol <= wire_nli0i_o(20);
				nl1Oli <= wire_nl000O_o(26);
				nl1Oll <= wire_nl000O_o(25);
				nl1OlO <= wire_nl000O_o(24);
				nl1OO <= wire_nli0i_o(19);
				nl1OOi <= wire_nl000O_o(23);
				nl1OOl <= wire_nl000O_o(22);
				nl1OOO <= wire_nl000O_o(21);
				nli00i <= wire_nlii1l_o(13);
				nli00l <= wire_nlii1l_o(12);
				nli00O <= wire_nlii1l_o(11);
				nli01i <= wire_nlii1l_o(16);
				nli01l <= wire_nlii1l_o(15);
				nli01O <= wire_nlii1l_o(14);
				nli0ii <= wire_nlii1l_o(10);
				nli0il <= wire_nlii1l_o(9);
				nli0iO <= wire_nlii1l_o(0);
				nli0li <= wire_nlii1l_o(1);
				nli0ll <= wire_nlii1l_o(2);
				nli0lO <= wire_nlii1l_o(3);
				nli0O <= wire_nli0i_o(8);
				nli0Oi <= wire_nlii1l_o(4);
				nli0Ol <= wire_nlii1l_o(5);
				nli0OO <= wire_nlii1l_o(6);
				nli10i <= wire_nli10l_o(7);
				nli10O <= wire_nli10l_o(8);
				nli11i <= wire_nli10l_o(4);
				nli11l <= wire_nli10l_o(5);
				nli11O <= wire_nli10l_o(6);
				nli1i <= wire_nli0i_o(5);
				nli1ii <= wire_nlii1l_o(25);
				nli1il <= wire_nlii1l_o(24);
				nli1iO <= wire_nlii1l_o(23);
				nli1l <= wire_nli0i_o(6);
				nli1li <= wire_nlii1l_o(22);
				nli1ll <= wire_nlii1l_o(21);
				nli1lO <= wire_nlii1l_o(20);
				nli1O <= wire_nli0i_o(7);
				nli1Oi <= wire_nlii1l_o(19);
				nli1Ol <= wire_nlii1l_o(18);
				nli1OO <= wire_nlii1l_o(17);
				nlii0i <= wire_nlilOl_o(25);
				nlii0l <= wire_nlilOl_o(24);
				nlii0O <= wire_nlilOl_o(23);
				nlii1i <= wire_nlii1l_o(7);
				nlii1O <= wire_nlii1l_o(8);
				nliiii <= wire_nlilOl_o(22);
				nliiil <= wire_nlilOl_o(21);
				nliiiO <= wire_nlilOl_o(20);
				nliili <= wire_nlilOl_o(19);
				nliill <= wire_nlilOl_o(18);
				nliilO <= wire_nlilOl_o(17);
				nliiOi <= wire_nlilOl_o(16);
				nliiOl <= wire_nlilOl_o(15);
				nliiOO <= wire_nlilOl_o(14);
				nlil0i <= wire_nlilOl_o(10);
				nlil0l <= wire_nlilOl_o(9);
				nlil0O <= wire_nlilOl_o(0);
				nlil1i <= wire_nlilOl_o(13);
				nlil1l <= wire_nlilOl_o(12);
				nlil1O <= wire_nlilOl_o(11);
				nlilii <= wire_nlilOl_o(1);
				nlilil <= wire_nlilOl_o(2);
				nliliO <= wire_nlilOl_o(3);
				nlilli <= wire_nlilOl_o(4);
				nlilll <= wire_nlilOl_o(5);
				nlillO <= wire_nlilOl_o(6);
				nlilOi <= wire_nlilOl_o(7);
				nlilOO <= wire_nlilOl_o(8);
				nliO0i <= wire_nll1ll_o(22);
				nliO0l <= wire_nll1ll_o(21);
				nliO0O <= wire_nll1ll_o(20);
				nliO1i <= wire_nll1ll_o(25);
				nliO1l <= wire_nll1ll_o(24);
				nliO1O <= wire_nll1ll_o(23);
				nliOii <= wire_nll1ll_o(19);
				nliOil <= wire_nll1ll_o(18);
				nliOiO <= wire_nll1ll_o(17);
				nliOli <= wire_nll1ll_o(16);
				nliOll <= wire_nll1ll_o(15);
				nliOlO <= wire_nll1ll_o(14);
				nliOOi <= wire_nll1ll_o(13);
				nliOOl <= wire_nll1ll_o(12);
				nliOOO <= wire_nll1ll_o(11);
				nll00i <= wire_nlliil_o(19);
				nll00l <= wire_nlliil_o(18);
				nll00O <= wire_nlliil_o(17);
				nll01i <= wire_nlliil_o(22);
				nll01l <= wire_nlliil_o(21);
				nll01O <= wire_nlliil_o(20);
				nll0ii <= wire_nlliil_o(16);
				nll0il <= wire_nlliil_o(15);
				nll0iO <= wire_nlliil_o(14);
				nll0li <= wire_nlliil_o(13);
				nll0ll <= wire_nlliil_o(12);
				nll0lO <= wire_nlliil_o(11);
				nll0Oi <= wire_nlliil_o(10);
				nll0Ol <= wire_nlliil_o(9);
				nll0OO <= wire_nlliil_o(0);
				nll10i <= wire_nll1ll_o(1);
				nll10l <= wire_nll1ll_o(2);
				nll10O <= wire_nll1ll_o(3);
				nll11i <= wire_nll1ll_o(10);
				nll11l <= wire_nll1ll_o(9);
				nll11O <= wire_nll1ll_o(0);
				nll1ii <= wire_nll1ll_o(4);
				nll1il <= wire_nll1ll_o(5);
				nll1iO <= wire_nll1ll_o(6);
				nll1li <= wire_nll1ll_o(7);
				nll1lO <= wire_nll1ll_o(8);
				nll1Oi <= wire_nlliil_o(25);
				nll1Ol <= wire_nlliil_o(24);
				nll1OO <= wire_nlliil_o(23);
				nlli0i <= wire_nlliil_o(4);
				nlli0l <= wire_nlliil_o(5);
				nlli0O <= wire_nlliil_o(6);
				nlli1i <= wire_nlliil_o(1);
				nlli1l <= wire_nlliil_o(2);
				nlli1O <= wire_nlliil_o(3);
				nlliii <= wire_nlliil_o(7);
				nlliiO <= wire_nlliil_o(8);
				nllili <= wire_nllO0l_o(25);
				nllill <= wire_nllO0l_o(24);
				nllilO <= wire_nllO0l_o(23);
				nlliOi <= wire_nllO0l_o(22);
				nlliOl <= wire_nllO0l_o(21);
				nlliOO <= wire_nllO0l_o(20);
				nlll0i <= wire_nllO0l_o(16);
				nlll0l <= wire_nllO0l_o(15);
				nlll0O <= wire_nllO0l_o(14);
				nlll1i <= wire_nllO0l_o(19);
				nlll1l <= wire_nllO0l_o(18);
				nlll1O <= wire_nllO0l_o(17);
				nlllii <= wire_nllO0l_o(13);
				nlllil <= wire_nllO0l_o(12);
				nllliO <= wire_nllO0l_o(11);
				nlllli <= wire_nllO0l_o(10);
				nlllll <= wire_nllO0l_o(9);
				nllllO <= wire_nllO0l_o(0);
				nlllOi <= wire_nllO0l_o(1);
				nlllOl <= wire_nllO0l_o(2);
				nlllOO <= wire_nllO0l_o(3);
				nllO0i <= wire_nllO0l_o(7);
				nllO0O <= wire_nllO0l_o(8);
				nllO1i <= wire_nllO0l_o(4);
				nllO1l <= wire_nllO0l_o(5);
				nllO1O <= wire_nllO0l_o(6);
				nllOii <= wire_nlO01l_o(25);
				nllOil <= wire_nlO01l_o(24);
				nllOiO <= wire_nlO01l_o(23);
				nllOli <= wire_nlO01l_o(22);
				nllOll <= wire_nlO01l_o(21);
				nllOlO <= wire_nlO01l_o(20);
				nllOOi <= wire_nlO01l_o(19);
				nllOOl <= wire_nlO01l_o(18);
				nllOOO <= wire_nlO01l_o(17);
				nlO00i <= wire_nlOiOl_o(25);
				nlO00l <= wire_nlOiOl_o(24);
				nlO00O <= wire_nlOiOl_o(23);
				nlO01i <= wire_nlO01l_o(7);
				nlO01O <= wire_nlO01l_o(8);
				nlO0ii <= wire_nlOiOl_o(22);
				nlO0il <= wire_nlOiOl_o(21);
				nlO0iO <= wire_nlOiOl_o(20);
				nlO0li <= wire_nlOiOl_o(19);
				nlO0ll <= wire_nlOiOl_o(18);
				nlO0lO <= wire_nlOiOl_o(17);
				nlO0Oi <= wire_nlOiOl_o(16);
				nlO0Ol <= wire_nlOiOl_o(15);
				nlO0OO <= wire_nlOiOl_o(14);
				nlO10i <= wire_nlO01l_o(13);
				nlO10l <= wire_nlO01l_o(12);
				nlO10O <= wire_nlO01l_o(11);
				nlO11i <= wire_nlO01l_o(16);
				nlO11l <= wire_nlO01l_o(15);
				nlO11O <= wire_nlO01l_o(14);
				nlO1ii <= wire_nlO01l_o(10);
				nlO1il <= wire_nlO01l_o(9);
				nlO1iO <= wire_nlO01l_o(0);
				nlO1li <= wire_nlO01l_o(1);
				nlO1ll <= wire_nlO01l_o(2);
				nlO1lO <= wire_nlO01l_o(3);
				nlO1Oi <= wire_nlO01l_o(4);
				nlO1Ol <= wire_nlO01l_o(5);
				nlO1OO <= wire_nlO01l_o(6);
				nlOi0i <= wire_nlOiOl_o(10);
				nlOi0l <= wire_nlOiOl_o(9);
				nlOi0O <= wire_nlOiOl_o(0);
				nlOi1i <= wire_nlOiOl_o(13);
				nlOi1l <= wire_nlOiOl_o(12);
				nlOi1O <= wire_nlOiOl_o(11);
				nlOiii <= wire_nlOiOl_o(1);
				nlOiil <= wire_nlOiOl_o(2);
				nlOiiO <= wire_nlOiOl_o(3);
				nlOili <= wire_nlOiOl_o(4);
				nlOill <= wire_nlOiOl_o(5);
				nlOilO <= wire_nlOiOl_o(6);
				nlOiOi <= wire_nlOiOl_o(7);
				nlOiOO <= wire_nlOiOl_o(8);
				nlOl0i <= wire_nlOOlO_o(23);
				nlOl0l <= wire_nlOOlO_o(22);
				nlOl0O <= wire_nlOOlO_o(21);
				nlOl1i <= wire_nlOOlO_o(26);
				nlOl1l <= wire_nlOOlO_o(25);
				nlOl1O <= wire_nlOOlO_o(24);
				nlOlii <= wire_nlOOlO_o(20);
				nlOlil <= wire_nlOOlO_o(19);
				nlOliO <= wire_nlOOlO_o(18);
				nlOlli <= wire_nlOOlO_o(17);
				nlOlll <= wire_nlOOlO_o(16);
				nlOllO <= wire_nlOOlO_o(15);
				nlOlOi <= wire_nlOOlO_o(14);
				nlOlOl <= wire_nlOOlO_o(13);
				nlOlOO <= wire_nlOOlO_o(12);
				nlOO0i <= wire_nlOOlO_o(0);
				nlOO0l <= wire_nlOOlO_o(1);
				nlOO0O <= wire_nlOOlO_o(2);
				nlOO1i <= wire_nlOOlO_o(11);
				nlOO1l <= wire_nlOOlO_o(10);
				nlOO1O <= wire_nlOOlO_o(9);
				nlOOii <= wire_nlOOlO_o(3);
				nlOOil <= wire_nlOOlO_o(4);
				nlOOiO <= wire_nlOOlO_o(5);
				nlOOli <= wire_nlOOlO_o(6);
				nlOOll <= wire_nlOOlO_o(7);
				nlOOOi <= wire_nlOOlO_o(8);
				nlOOOl <= wire_n10li_o(26);
				nlOOOO <= wire_n10li_o(25);
			END IF;
		END IF;
	END PROCESS;
	wire_nli0l_w_lg_nl1il114w(0) <= NOT nl1il;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN
				n100Ol <= wire_n1010l_dataout;
				n100OO <= wire_n10lii_dataout;
				n1010i <= wire_n1010O_dataout;
				n1011i <= wire_n101iO_dataout;
				n1011l <= wire_n101il_dataout;
				n1011O <= wire_n101ii_dataout;
				n10i0i <= wire_n10l1O_dataout;
				n10i0l <= wire_n10l1l_dataout;
				n10i0O <= wire_n10l1i_dataout;
				n10i1i <= wire_n10l0O_dataout;
				n10i1l <= wire_n10l0l_dataout;
				n10i1O <= wire_n10l0i_dataout;
				n10iii <= wire_n10iOO_dataout;
				n10iil <= wire_n10iOl_dataout;
				n10iiO <= wire_n10iOi_dataout;
				n10ili <= wire_n10ilO_dataout;
				n10O0l <= wire_n10ill_dataout;
				n10O0O <= wire_n1i1Oi_dataout;
				n10Oii <= wire_n1i1lO_dataout;
				n10Oil <= wire_n1i1ll_dataout;
				n10OiO <= wire_n1i1li_dataout;
				n10Oli <= wire_n1i1iO_dataout;
				n10Oll <= wire_n1i1il_dataout;
				n10OlO <= wire_n1i1ii_dataout;
				n10OOi <= wire_n1i10O_dataout;
				n10OOl <= wire_n1i10l_dataout;
				n10OOO <= wire_n1i10i_dataout;
				n1110i <= wire_n111lO_dataout;
				n1110l <= wire_n111ll_dataout;
				n1110O <= wire_n111li_dataout;
				n1111i <= wire_n111OO_dataout;
				n1111l <= wire_n111Ol_dataout;
				n1111O <= wire_n111Oi_dataout;
				n111ii <= wire_n111iO_dataout;
				n11i0i <= wire_n11liO_dataout;
				n11i0l <= wire_n11lil_dataout;
				n11i0O <= wire_n11lii_dataout;
				n11i1l <= wire_n111il_dataout;
				n11i1O <= wire_n11lli_dataout;
				n11iii <= wire_n11l0O_dataout;
				n11iil <= wire_n11l0l_dataout;
				n11iiO <= wire_n11l0i_dataout;
				n11ili <= wire_n11l1O_dataout;
				n11ill <= wire_n11l1l_dataout;
				n11ilO <= wire_n11l1i_dataout;
				n11iOi <= wire_n11iOO_dataout;
				n11Oil <= wire_n11iOl_dataout;
				n11OiO <= wire_n1001i_dataout;
				n11Oli <= wire_n101OO_dataout;
				n11Oll <= wire_n101Ol_dataout;
				n11OlO <= wire_n101Oi_dataout;
				n11OOi <= wire_n101lO_dataout;
				n11OOl <= wire_n101ll_dataout;
				n11OOO <= wire_n101li_dataout;
				n1i0ll <= wire_n1i11l_dataout;
				n1i0lO <= wire_n1il0i_dataout;
				n1i0Oi <= wire_n1il1O_dataout;
				n1i0Ol <= wire_n1il1l_dataout;
				n1i0OO <= wire_n1il1i_dataout;
				n1i11i <= wire_n1i11O_dataout;
				n1ii0i <= wire_n1iilO_dataout;
				n1ii0l <= wire_n1iill_dataout;
				n1ii0O <= wire_n1iili_dataout;
				n1ii1i <= wire_n1iiOO_dataout;
				n1ii1l <= wire_n1iiOl_dataout;
				n1ii1O <= wire_n1iiOi_dataout;
				n1iiii <= wire_n1iiiO_dataout;
				n1iO1l <= wire_n1iiil_dataout;
				nli010i <= wire_nli00iO_dataout;
				nli010l <= wire_nli00il_dataout;
				nli010O <= wire_nli00ii_dataout;
				nli011l <= wire_nli1lil_dataout;
				nli011O <= wire_nli00li_dataout;
				nli01ii <= wire_nli000O_dataout;
				nli01il <= wire_nli000l_dataout;
				nli01iO <= wire_nli000i_dataout;
				nli01li <= wire_nli001O_dataout;
				nli01ll <= wire_nli001l_dataout;
				nli01lO <= wire_nli001i_dataout;
				nli01Oi <= wire_nli01OO_dataout;
				nli0iil <= wire_nli01Ol_dataout;
				nli0iiO <= wire_nli0O1i_dataout;
				nli0ili <= wire_nli0lOO_dataout;
				nli0ill <= wire_nli0lOl_dataout;
				nli0ilO <= wire_nli0lOi_dataout;
				nli0iOi <= wire_nli0llO_dataout;
				nli0iOl <= wire_nli0lll_dataout;
				nli0iOO <= wire_nli0lli_dataout;
				nli0l0i <= wire_nli0l0O_dataout;
				nli0l1i <= wire_nli0liO_dataout;
				nli0l1l <= wire_nli0lil_dataout;
				nli0l1O <= wire_nli0lii_dataout;
				nli0OOl <= wire_nli0l0l_dataout;
				nli0OOO <= wire_nlii0ii_dataout;
				nli101i <= wire_nli101O_dataout;
				nli110O <= wire_nli10Oi_dataout;
				nli11ii <= wire_nli10lO_dataout;
				nli11il <= wire_nli10ll_dataout;
				nli11iO <= wire_nli10li_dataout;
				nli11li <= wire_nli10iO_dataout;
				nli11ll <= wire_nli10il_dataout;
				nli11lO <= wire_nli10ii_dataout;
				nli11Oi <= wire_nli100O_dataout;
				nli11Ol <= wire_nli100l_dataout;
				nli11OO <= wire_nli100i_dataout;
				nli1ill <= wire_nli101l_dataout;
				nli1ilO <= wire_nli1O0i_dataout;
				nli1iOi <= wire_nli1O1O_dataout;
				nli1iOl <= wire_nli1O1l_dataout;
				nli1iOO <= wire_nli1O1i_dataout;
				nli1l0i <= wire_nli1llO_dataout;
				nli1l0l <= wire_nli1lll_dataout;
				nli1l0O <= wire_nli1lli_dataout;
				nli1l1i <= wire_nli1lOO_dataout;
				nli1l1l <= wire_nli1lOl_dataout;
				nli1l1O <= wire_nli1lOi_dataout;
				nli1lii <= wire_nli1liO_dataout;
				nlii10i <= wire_nlii01O_dataout;
				nlii10l <= wire_nlii01l_dataout;
				nlii10O <= wire_nlii01i_dataout;
				nlii11i <= wire_nlii00O_dataout;
				nlii11l <= wire_nlii00l_dataout;
				nlii11O <= wire_nlii00i_dataout;
				nlii1ii <= wire_nlii1OO_dataout;
				nlii1il <= wire_nlii1Ol_dataout;
				nlii1iO <= wire_nlii1Oi_dataout;
				nlii1li <= wire_nlii1lO_dataout;
				nliii0l <= wire_nlii1ll_dataout;
				nliii0O <= wire_nliilOi_dataout;
				nliiiii <= wire_nliillO_dataout;
				nliiiil <= wire_nliilll_dataout;
				nliiiiO <= wire_nliilli_dataout;
				nliiili <= wire_nliiliO_dataout;
				nliiill <= wire_nliilil_dataout;
				nliiilO <= wire_nliilii_dataout;
				nliiiOi <= wire_nliil0O_dataout;
				nliiiOl <= wire_nliil0l_dataout;
				nliiiOO <= wire_nliil0i_dataout;
				nliil1i <= wire_nliil1O_dataout;
				nliiOll <= wire_nliil1l_dataout;
				nliiOlO <= wire_nlil00i_dataout;
				nliiOOi <= wire_nlil01O_dataout;
				nliiOOl <= wire_nlil01l_dataout;
				nliiOOO <= wire_nlil01i_dataout;
				nlil10i <= wire_nlil1lO_dataout;
				nlil10l <= wire_nlil1ll_dataout;
				nlil10O <= wire_nlil1li_dataout;
				nlil11i <= wire_nlil1OO_dataout;
				nlil11l <= wire_nlil1Ol_dataout;
				nlil11O <= wire_nlil1Oi_dataout;
				nlil1ii <= wire_nlil1iO_dataout;
				nlili0i <= wire_nlilliO_dataout;
				nlili0l <= wire_nlillil_dataout;
				nlili0O <= wire_nlillii_dataout;
				nlili1l <= wire_nlil1il_dataout;
				nlili1O <= wire_nlillli_dataout;
				nliliii <= wire_nlill0O_dataout;
				nliliil <= wire_nlill0l_dataout;
				nliliiO <= wire_nlill0i_dataout;
				nlilili <= wire_nlill1O_dataout;
				nlilill <= wire_nlill1l_dataout;
				nlililO <= wire_nlill1i_dataout;
				nliliOi <= wire_nliliOO_dataout;
				nlilOil <= wire_nliliOl_dataout;
				nlilOiO <= wire_nliO01i_dataout;
				nlilOli <= wire_nliO1OO_dataout;
				nlilOll <= wire_nliO1Ol_dataout;
				nlilOlO <= wire_nliO1Oi_dataout;
				nlilOOi <= wire_nliO1lO_dataout;
				nlilOOl <= wire_nliO1ll_dataout;
				nlilOOO <= wire_nliO1li_dataout;
				nliO0Ol <= wire_nliO10l_dataout;
				nliO0OO <= wire_nliOlii_dataout;
				nliO10i <= wire_nliO10O_dataout;
				nliO11i <= wire_nliO1iO_dataout;
				nliO11l <= wire_nliO1il_dataout;
				nliO11O <= wire_nliO1ii_dataout;
				nliOi0i <= wire_nliOl1O_dataout;
				nliOi0l <= wire_nliOl1l_dataout;
				nliOi0O <= wire_nliOl1i_dataout;
				nliOi1i <= wire_nliOl0O_dataout;
				nliOi1l <= wire_nliOl0l_dataout;
				nliOi1O <= wire_nliOl0i_dataout;
				nliOiii <= wire_nliOiOO_dataout;
				nliOiil <= wire_nliOiOl_dataout;
				nliOiiO <= wire_nliOiOi_dataout;
				nliOili <= wire_nliOilO_dataout;
				nliOO0l <= wire_nliOill_dataout;
				nliOO0O <= wire_nll11Oi_dataout;
				nliOOii <= wire_nll11lO_dataout;
				nliOOil <= wire_nll11ll_dataout;
				nliOOiO <= wire_nll11li_dataout;
				nliOOli <= wire_nll11iO_dataout;
				nliOOll <= wire_nll11il_dataout;
				nliOOlO <= wire_nll11ii_dataout;
				nliOOOi <= wire_nll110O_dataout;
				nliOOOl <= wire_nll110l_dataout;
				nliOOOO <= wire_nll110i_dataout;
				nll00il <= wire_nll1OOl_dataout;
				nll00iO <= wire_nll0l1i_dataout;
				nll00li <= wire_nll0iOO_dataout;
				nll00ll <= wire_nll0iOl_dataout;
				nll00lO <= wire_nll0iOi_dataout;
				nll00Oi <= wire_nll0ilO_dataout;
				nll00Ol <= wire_nll0ill_dataout;
				nll00OO <= wire_nll0ili_dataout;
				nll0i0i <= wire_nll0i0O_dataout;
				nll0i1i <= wire_nll0iiO_dataout;
				nll0i1l <= wire_nll0iil_dataout;
				nll0i1O <= wire_nll0iii_dataout;
				nll0l <= wire_nlOlO_dataout;
				nll0lOl <= wire_nll0i0l_dataout;
				nll0lOO <= wire_nlli1ii_dataout;
				nll0O <= wire_nlOll_dataout;
				nll0O0i <= wire_nlli11O_dataout;
				nll0O0l <= wire_nlli11l_dataout;
				nll0O0O <= wire_nlli11i_dataout;
				nll0O1i <= wire_nlli10O_dataout;
				nll0O1l <= wire_nlli10l_dataout;
				nll0O1O <= wire_nlli10i_dataout;
				nll0Oii <= wire_nll0OOO_dataout;
				nll0Oil <= wire_nll0OOl_dataout;
				nll0OiO <= wire_nll0OOi_dataout;
				nll0Oli <= wire_nll0OlO_dataout;
				nll10ll <= wire_nll111l_dataout;
				nll10lO <= wire_nll1l0i_dataout;
				nll10Oi <= wire_nll1l1O_dataout;
				nll10Ol <= wire_nll1l1l_dataout;
				nll10OO <= wire_nll1l1i_dataout;
				nll111i <= wire_nll111O_dataout;
				nll1i0i <= wire_nll1ilO_dataout;
				nll1i0l <= wire_nll1ill_dataout;
				nll1i0O <= wire_nll1ili_dataout;
				nll1i1i <= wire_nll1iOO_dataout;
				nll1i1l <= wire_nll1iOl_dataout;
				nll1i1O <= wire_nll1iOi_dataout;
				nll1iii <= wire_nll1iiO_dataout;
				nll1O0i <= wire_nll01iO_dataout;
				nll1O0l <= wire_nll01il_dataout;
				nll1O0O <= wire_nll01ii_dataout;
				nll1O1l <= wire_nll1iil_dataout;
				nll1O1O <= wire_nll01li_dataout;
				nll1Oii <= wire_nll010O_dataout;
				nll1Oil <= wire_nll010l_dataout;
				nll1OiO <= wire_nll010i_dataout;
				nll1Oli <= wire_nll011O_dataout;
				nll1Oll <= wire_nll011l_dataout;
				nll1OlO <= wire_nll011i_dataout;
				nll1OOi <= wire_nll1OOO_dataout;
				nlli00l <= wire_nll0Oll_dataout;
				nlli00O <= wire_nlliiOi_dataout;
				nlli0ii <= wire_nlliilO_dataout;
				nlli0il <= wire_nlliill_dataout;
				nlli0iO <= wire_nlliili_dataout;
				nlli0li <= wire_nlliiiO_dataout;
				nlli0ll <= wire_nlliiil_dataout;
				nlli0lO <= wire_nlliiii_dataout;
				nlli0Oi <= wire_nllii0O_dataout;
				nlli0Ol <= wire_nllii0l_dataout;
				nlli0OO <= wire_nllii0i_dataout;
				nllii <= wire_nlOli_dataout;
				nllii1i <= wire_nllii1O_dataout;
				nllil <= wire_nllOl_dataout;
				nllilll <= wire_nllii1l_dataout;
				nllillO <= wire_nlll10i_dataout;
				nllilOi <= wire_nlll11O_dataout;
				nllilOl <= wire_nlll11l_dataout;
				nllilOO <= wire_nlll11i_dataout;
				nlliO0i <= wire_nlliOlO_dataout;
				nlliO0l <= wire_nlliOll_dataout;
				nlliO0O <= wire_nlliOli_dataout;
				nlliO1i <= wire_nlliOOO_dataout;
				nlliO1l <= wire_nlliOOl_dataout;
				nlliO1O <= wire_nlliOOi_dataout;
				nlliOii <= wire_nlliOiO_dataout;
				nlll00i <= wire_nllliiO_dataout;
				nlll00l <= wire_nllliil_dataout;
				nlll00O <= wire_nllliii_dataout;
				nlll01l <= wire_nlliOil_dataout;
				nlll01O <= wire_nlllili_dataout;
				nlll0ii <= wire_nllli0O_dataout;
				nlll0il <= wire_nllli0l_dataout;
				nlll0iO <= wire_nllli0i_dataout;
				nlll0li <= wire_nllli1O_dataout;
				nlll0ll <= wire_nllli1l_dataout;
				nlll0lO <= wire_nllli1i_dataout;
				nlll0Oi <= wire_nlll0OO_dataout;
				nllllil <= wire_nlll0Ol_dataout;
				nlllliO <= wire_nllO11i_dataout;
				nllllli <= wire_nlllOOO_dataout;
				nllllll <= wire_nlllOOl_dataout;
				nlllllO <= wire_nlllOOi_dataout;
				nllllOi <= wire_nlllOlO_dataout;
				nllllOl <= wire_nlllOll_dataout;
				nllllOO <= wire_nlllOli_dataout;
				nlllO0i <= wire_nlllO0O_dataout;
				nlllO1i <= wire_nlllOiO_dataout;
				nlllO1l <= wire_nlllOil_dataout;
				nlllO1O <= wire_nlllOii_dataout;
				nllO00i <= wire_nllOi1O_dataout;
				nllO00l <= wire_nllOi1l_dataout;
				nllO00O <= wire_nllOi1i_dataout;
				nllO01i <= wire_nllOi0O_dataout;
				nllO01l <= wire_nllOi0l_dataout;
				nllO01O <= wire_nllOi0i_dataout;
				nllO0ii <= wire_nllO0OO_dataout;
				nllO0il <= wire_nllO0Ol_dataout;
				nllO0iO <= wire_nllO0Oi_dataout;
				nllO0li <= wire_nllO0lO_dataout;
				nllO1Ol <= wire_nlllO0l_dataout;
				nllO1OO <= wire_nllOiii_dataout;
				nllOi <= wire_nlO0O_dataout;
				nllOl0l <= wire_nllO0ll_dataout;
				nllOl0O <= wire_nllOOOi_dataout;
				nllOlii <= wire_nllOOlO_dataout;
				nllOlil <= wire_nllOOll_dataout;
				nllOliO <= wire_nllOOli_dataout;
				nllOlli <= wire_nllOOiO_dataout;
				nllOlll <= wire_nllOOil_dataout;
				nllOllO <= wire_nllOOii_dataout;
				nllOlOi <= wire_nllOO0O_dataout;
				nllOlOl <= wire_nllOO0l_dataout;
				nllOlOO <= wire_nllOO0i_dataout;
				nllOO1i <= wire_nllOO1O_dataout;
				nlO000i <= wire_nlO000O_dataout;
				nlO001i <= wire_nlO00iO_dataout;
				nlO001l <= wire_nlO00il_dataout;
				nlO001O <= wire_nlO00ii_dataout;
				nlO01il <= wire_nlO1lOl_dataout;
				nlO01iO <= wire_nlO0i1i_dataout;
				nlO01li <= wire_nlO00OO_dataout;
				nlO01ll <= wire_nlO00Ol_dataout;
				nlO01lO <= wire_nlO00Oi_dataout;
				nlO01Oi <= wire_nlO00lO_dataout;
				nlO01Ol <= wire_nlO00ll_dataout;
				nlO01OO <= wire_nlO00li_dataout;
				nlO0iOl <= wire_nlO000l_dataout;
				nlO0iOO <= wire_nlO0Oii_dataout;
				nlO0l <= wire_nlOiO_dataout;
				nlO0l0i <= wire_nlO0O1O_dataout;
				nlO0l0l <= wire_nlO0O1l_dataout;
				nlO0l0O <= wire_nlO0O1i_dataout;
				nlO0l1i <= wire_nlO0O0O_dataout;
				nlO0l1l <= wire_nlO0O0l_dataout;
				nlO0l1O <= wire_nlO0O0i_dataout;
				nlO0lii <= wire_nlO0lOO_dataout;
				nlO0lil <= wire_nlO0lOl_dataout;
				nlO0liO <= wire_nlO0lOi_dataout;
				nlO0lli <= wire_nlO0llO_dataout;
				nlO100i <= wire_nlO10lO_dataout;
				nlO100l <= wire_nlO10ll_dataout;
				nlO100O <= wire_nlO10li_dataout;
				nlO101i <= wire_nlO10OO_dataout;
				nlO101l <= wire_nlO10Ol_dataout;
				nlO101O <= wire_nlO10Oi_dataout;
				nlO10ii <= wire_nlO10iO_dataout;
				nlO11ll <= wire_nllOO1l_dataout;
				nlO11lO <= wire_nlO1i0i_dataout;
				nlO11Oi <= wire_nlO1i1O_dataout;
				nlO11Ol <= wire_nlO1i1l_dataout;
				nlO11OO <= wire_nlO1i1i_dataout;
				nlO1l <= wire_nlliO_dataout;
				nlO1l0i <= wire_nlO1OiO_dataout;
				nlO1l0l <= wire_nlO1Oil_dataout;
				nlO1l0O <= wire_nlO1Oii_dataout;
				nlO1l1l <= wire_nlO10il_dataout;
				nlO1l1O <= wire_nlO1Oli_dataout;
				nlO1lii <= wire_nlO1O0O_dataout;
				nlO1lil <= wire_nlO1O0l_dataout;
				nlO1liO <= wire_nlO1O0i_dataout;
				nlO1lli <= wire_nlO1O1O_dataout;
				nlO1lll <= wire_nlO1O1l_dataout;
				nlO1llO <= wire_nlO1O1i_dataout;
				nlO1lOi <= wire_nlO1lOO_dataout;
				nlO1O <= wire_nllli_dataout;
				nlOi01i <= wire_nlOi01O_dataout;
				nlOi10l <= wire_nlO0lll_dataout;
				nlOi10O <= wire_nlOi0Oi_dataout;
				nlOi1ii <= wire_nlOi0lO_dataout;
				nlOi1il <= wire_nlOi0ll_dataout;
				nlOi1iO <= wire_nlOi0li_dataout;
				nlOi1li <= wire_nlOi0iO_dataout;
				nlOi1ll <= wire_nlOi0il_dataout;
				nlOi1lO <= wire_nlOi0ii_dataout;
				nlOi1Oi <= wire_nlOi00O_dataout;
				nlOi1Ol <= wire_nlOi00l_dataout;
				nlOi1OO <= wire_nlOi00i_dataout;
				nlOiill <= wire_nlOi01l_dataout;
				nlOiilO <= wire_nlOiO0i_dataout;
				nlOiiOi <= wire_nlOiO1O_dataout;
				nlOiiOl <= wire_nlOiO1l_dataout;
				nlOiiOO <= wire_nlOiO1i_dataout;
				nlOil0i <= wire_nlOillO_dataout;
				nlOil0l <= wire_nlOilll_dataout;
				nlOil0O <= wire_nlOilli_dataout;
				nlOil1i <= wire_nlOilOO_dataout;
				nlOil1l <= wire_nlOilOl_dataout;
				nlOil1O <= wire_nlOilOi_dataout;
				nlOilii <= wire_nlOiliO_dataout;
				nlOl10i <= wire_nlOl0iO_dataout;
				nlOl10l <= wire_nlOl0il_dataout;
				nlOl10O <= wire_nlOl0ii_dataout;
				nlOl11l <= wire_nlOilil_dataout;
				nlOl11O <= wire_nlOl0li_dataout;
				nlOl1ii <= wire_nlOl00O_dataout;
				nlOl1il <= wire_nlOl00l_dataout;
				nlOl1iO <= wire_nlOl00i_dataout;
				nlOl1li <= wire_nlOl01O_dataout;
				nlOl1ll <= wire_nlOl01l_dataout;
				nlOl1lO <= wire_nlOl01i_dataout;
				nlOl1Oi <= wire_nlOl1OO_dataout;
				nlOliil <= wire_nlOl1Ol_dataout;
				nlOliiO <= wire_nlOlO1i_dataout;
				nlOlili <= wire_nlOllOO_dataout;
				nlOlill <= wire_nlOllOl_dataout;
				nlOlilO <= wire_nlOllOi_dataout;
				nlOliOi <= wire_nlOlllO_dataout;
				nlOliOl <= wire_nlOllll_dataout;
				nlOliOO <= wire_nlOllli_dataout;
				nlOll0i <= wire_nlOll0O_dataout;
				nlOll1i <= wire_nlOlliO_dataout;
				nlOll1l <= wire_nlOllil_dataout;
				nlOll1O <= wire_nlOllii_dataout;
				nlOlOOl <= wire_nlOll0l_dataout;
				nlOlOOO <= wire_nlOO0ii_dataout;
				nlOO10i <= wire_nlOO01O_dataout;
				nlOO10l <= wire_nlOO01l_dataout;
				nlOO10O <= wire_nlOO01i_dataout;
				nlOO11i <= wire_nlOO00O_dataout;
				nlOO11l <= wire_nlOO00l_dataout;
				nlOO11O <= wire_nlOO00i_dataout;
				nlOO1ii <= wire_nlOO1OO_dataout;
				nlOO1il <= wire_nlOO1Ol_dataout;
				nlOO1iO <= wire_nlOO1Oi_dataout;
				nlOO1li <= wire_nlOO1lO_dataout;
				nlOOi0l <= wire_nlOO1ll_dataout;
				nlOOi0O <= wire_nlOOlOi_dataout;
				nlOOiii <= wire_nlOOllO_dataout;
				nlOOiil <= wire_nlOOlll_dataout;
				nlOOiiO <= wire_nlOOlli_dataout;
				nlOOili <= wire_nlOOliO_dataout;
				nlOOill <= wire_nlOOlil_dataout;
				nlOOilO <= wire_nlOOlii_dataout;
				nlOOiOi <= wire_nlOOl0O_dataout;
				nlOOiOl <= wire_nlOOl0l_dataout;
				nlOOiOO <= wire_nlOOl0i_dataout;
				nlOOl1i <= wire_nlOOl1O_dataout;
				nlOOOll <= wire_nlOOl1l_dataout;
				nlOOOlO <= wire_n1100i_dataout;
				nlOOOOi <= wire_n1101O_dataout;
				nlOOOOl <= wire_n1101l_dataout;
				nlOOOOO <= wire_n1101i_dataout;
		END IF;
	END PROCESS;
	wire_nlO0i_w_lg_nllOi54w(0) <= NOT nllOi;
	wire_n1000i_dataout <= n11ilO WHEN nl0i1Oi = '1'  ELSE n1011O;
	wire_n1000l_dataout <= n11ill WHEN nl0i1Oi = '1'  ELSE n1011l;
	wire_n1000O_dataout <= n11ili WHEN nl0i1Oi = '1'  ELSE n1011i;
	wire_n1001i_dataout <= wire_n100Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1001l_dataout <= n11Oil WHEN nl0i1Oi = '1'  ELSE n100Ol;
	wire_n1001O_dataout <= n11iOi WHEN nl0i1Oi = '1'  ELSE n1010i;
	wire_n100ii_dataout <= n11iiO WHEN nl0i1Oi = '1'  ELSE n11OOO;
	wire_n100il_dataout <= n11iil WHEN nl0i1Oi = '1'  ELSE n11OOl;
	wire_n100iO_dataout <= n11iii WHEN nl0i1Oi = '1'  ELSE n11OOi;
	wire_n100li_dataout <= n11i0O WHEN nl0i1Oi = '1'  ELSE n11OlO;
	wire_n100ll_dataout <= n11i0l WHEN nl0i1Oi = '1'  ELSE n11Oll;
	wire_n100lO_dataout <= n11i0i WHEN nl0i1Oi = '1'  ELSE n11Oli;
	wire_n100Oi_dataout <= n11i1O WHEN nl0i1Oi = '1'  ELSE n11OiO;
	wire_n1010l_dataout <= wire_n1001l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1010O_dataout <= wire_n1001O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101ii_dataout <= wire_n1000i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101il_dataout <= wire_n1000l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101iO_dataout <= wire_n1000O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101li_dataout <= wire_n100ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101ll_dataout <= wire_n100il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101lO_dataout <= wire_n100iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101Oi_dataout <= wire_n100li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101Ol_dataout <= wire_n100ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n101OO_dataout <= wire_n100lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10ill_dataout <= wire_n10lil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10ilO_dataout <= wire_n10liO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10iOi_dataout <= wire_n10lli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10iOl_dataout <= wire_n10lll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10iOO_dataout <= wire_n10llO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l0i_dataout <= wire_n10O1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l0l_dataout <= wire_n10O1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l0O_dataout <= wire_n10O1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l1i_dataout <= wire_n10lOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l1l_dataout <= wire_n10lOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10l1O_dataout <= wire_n10lOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10lii_dataout <= wire_n10O0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n10lil_dataout <= n100Ol WHEN nl0i1lO = '1'  ELSE n10O0l;
	wire_n10liO_dataout <= n1010i WHEN nl0i1lO = '1'  ELSE n10ili;
	wire_n10lli_dataout <= n1011O WHEN nl0i1lO = '1'  ELSE n10iiO;
	wire_n10lll_dataout <= n1011l WHEN nl0i1lO = '1'  ELSE n10iil;
	wire_n10llO_dataout <= n1011i WHEN nl0i1lO = '1'  ELSE n10iii;
	wire_n10lOi_dataout <= n11OOO WHEN nl0i1lO = '1'  ELSE n10i0O;
	wire_n10lOl_dataout <= n11OOl WHEN nl0i1lO = '1'  ELSE n10i0l;
	wire_n10lOO_dataout <= n11OOi WHEN nl0i1lO = '1'  ELSE n10i0i;
	wire_n10O0i_dataout <= n11OiO WHEN nl0i1lO = '1'  ELSE n100OO;
	wire_n10O1i_dataout <= n11OlO WHEN nl0i1lO = '1'  ELSE n10i1O;
	wire_n10O1l_dataout <= n11Oll WHEN nl0i1lO = '1'  ELSE n10i1l;
	wire_n10O1O_dataout <= n11Oli WHEN nl0i1lO = '1'  ELSE n10i1i;
	wire_n1100i_dataout <= wire_n11i1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1100l_dataout <= nlOOOll WHEN nl0i1OO = '1'  ELSE n11i1l;
	wire_n1100O_dataout <= nlOOl1i WHEN nl0i1OO = '1'  ELSE n111ii;
	wire_n1101i_dataout <= wire_n110Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1101l_dataout <= wire_n110Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1101O_dataout <= wire_n110OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n110ii_dataout <= nlOOiOO WHEN nl0i1OO = '1'  ELSE n1110O;
	wire_n110il_dataout <= nlOOiOl WHEN nl0i1OO = '1'  ELSE n1110l;
	wire_n110iO_dataout <= nlOOiOi WHEN nl0i1OO = '1'  ELSE n1110i;
	wire_n110li_dataout <= nlOOilO WHEN nl0i1OO = '1'  ELSE n1111O;
	wire_n110ll_dataout <= nlOOill WHEN nl0i1OO = '1'  ELSE n1111l;
	wire_n110lO_dataout <= nlOOili WHEN nl0i1OO = '1'  ELSE n1111i;
	wire_n110Oi_dataout <= nlOOiiO WHEN nl0i1OO = '1'  ELSE nlOOOOO;
	wire_n110Ol_dataout <= nlOOiil WHEN nl0i1OO = '1'  ELSE nlOOOOl;
	wire_n110OO_dataout <= nlOOiii WHEN nl0i1OO = '1'  ELSE nlOOOOi;
	wire_n111il_dataout <= wire_n1100l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111iO_dataout <= wire_n1100O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111li_dataout <= wire_n110ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111ll_dataout <= wire_n110il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111lO_dataout <= wire_n110iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111Oi_dataout <= wire_n110li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111Ol_dataout <= wire_n110ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n111OO_dataout <= wire_n110lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11i_dataout <= wire_n11l_o(3) WHEN nl0i1iO = '1'  ELSE nll0l;
	wire_n11i1i_dataout <= nlOOi0O WHEN nl0i1OO = '1'  ELSE nlOOOlO;
	wire_n11iOl_dataout <= wire_n11lll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11iOO_dataout <= wire_n11llO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l0i_dataout <= wire_n11O1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l0l_dataout <= wire_n11O1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l0O_dataout <= wire_n11O1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l1i_dataout <= wire_n11lOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l1l_dataout <= wire_n11lOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11l1O_dataout <= wire_n11lOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11lii_dataout <= wire_n11O0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11lil_dataout <= wire_n11O0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11liO_dataout <= wire_n11O0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11lli_dataout <= wire_n11Oii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n11lll_dataout <= n11i1l WHEN nl0i1Ol = '1'  ELSE n11Oil;
	wire_n11llO_dataout <= n111ii WHEN nl0i1Ol = '1'  ELSE n11iOi;
	wire_n11lOi_dataout <= n1110O WHEN nl0i1Ol = '1'  ELSE n11ilO;
	wire_n11lOl_dataout <= n1110l WHEN nl0i1Ol = '1'  ELSE n11ill;
	wire_n11lOO_dataout <= n1110i WHEN nl0i1Ol = '1'  ELSE n11ili;
	wire_n11O0i_dataout <= nlOOOOO WHEN nl0i1Ol = '1'  ELSE n11i0O;
	wire_n11O0l_dataout <= nlOOOOl WHEN nl0i1Ol = '1'  ELSE n11i0l;
	wire_n11O0O_dataout <= nlOOOOi WHEN nl0i1Ol = '1'  ELSE n11i0i;
	wire_n11O1i_dataout <= n1111O WHEN nl0i1Ol = '1'  ELSE n11iiO;
	wire_n11O1l_dataout <= n1111l WHEN nl0i1Ol = '1'  ELSE n11iil;
	wire_n11O1O_dataout <= n1111i WHEN nl0i1Ol = '1'  ELSE n11iii;
	wire_n11Oii_dataout <= nlOOOlO WHEN nl0i1Ol = '1'  ELSE n11i1O;
	wire_n1i00i_dataout <= n10i0O WHEN nl0i1ll = '1'  ELSE n10OlO;
	wire_n1i00l_dataout <= n10i0l WHEN nl0i1ll = '1'  ELSE n10Oll;
	wire_n1i00O_dataout <= n10i0i WHEN nl0i1ll = '1'  ELSE n10Oli;
	wire_n1i01i_dataout <= n10iiO WHEN nl0i1ll = '1'  ELSE n10OOO;
	wire_n1i01l_dataout <= n10iil WHEN nl0i1ll = '1'  ELSE n10OOl;
	wire_n1i01O_dataout <= n10iii WHEN nl0i1ll = '1'  ELSE n10OOi;
	wire_n1i0ii_dataout <= n10i1O WHEN nl0i1ll = '1'  ELSE n10OiO;
	wire_n1i0il_dataout <= n10i1l WHEN nl0i1ll = '1'  ELSE n10Oil;
	wire_n1i0iO_dataout <= n10i1i WHEN nl0i1ll = '1'  ELSE n10Oii;
	wire_n1i0li_dataout <= n100OO WHEN nl0i1ll = '1'  ELSE n10O0O;
	wire_n1i10i_dataout <= wire_n1i01i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i10l_dataout <= wire_n1i01l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i10O_dataout <= wire_n1i01O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i11l_dataout <= wire_n1i1Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i11O_dataout <= wire_n1i1OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1ii_dataout <= wire_n1i00i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1il_dataout <= wire_n1i00l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1iO_dataout <= wire_n1i00O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1li_dataout <= wire_n1i0ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1ll_dataout <= wire_n1i0il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1lO_dataout <= wire_n1i0iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1Oi_dataout <= wire_n1i0li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1i1Ol_dataout <= n10O0l WHEN nl0i1ll = '1'  ELSE n1i0ll;
	wire_n1i1OO_dataout <= n10ili WHEN nl0i1ll = '1'  ELSE n1i11i;
	wire_n1iiil_dataout <= wire_n1il0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iiiO_dataout <= wire_n1il0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iili_dataout <= wire_n1ilii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iill_dataout <= wire_n1ilil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iilO_dataout <= wire_n1iliO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iiOi_dataout <= wire_n1illi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iiOl_dataout <= wire_n1illl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1iiOO_dataout <= wire_n1illO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1il0i_dataout <= wire_n1iO1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1il0l_dataout <= n1i0ll WHEN nl0i1li = '1'  ELSE n1iO1l;
	wire_n1il0O_dataout <= n1i11i WHEN nl0i1li = '1'  ELSE n1iiii;
	wire_n1il1i_dataout <= wire_n1ilOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1il1l_dataout <= wire_n1ilOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1il1O_dataout <= wire_n1ilOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_n1ilii_dataout <= n10OOO WHEN nl0i1li = '1'  ELSE n1ii0O;
	wire_n1ilil_dataout <= n10OOl WHEN nl0i1li = '1'  ELSE n1ii0l;
	wire_n1iliO_dataout <= n10OOi WHEN nl0i1li = '1'  ELSE n1ii0i;
	wire_n1illi_dataout <= n10OlO WHEN nl0i1li = '1'  ELSE n1ii1O;
	wire_n1illl_dataout <= n10Oll WHEN nl0i1li = '1'  ELSE n1ii1l;
	wire_n1illO_dataout <= n10Oli WHEN nl0i1li = '1'  ELSE n1ii1i;
	wire_n1ilOi_dataout <= n10OiO WHEN nl0i1li = '1'  ELSE n1i0OO;
	wire_n1ilOl_dataout <= n10Oil WHEN nl0i1li = '1'  ELSE n1i0Ol;
	wire_n1ilOO_dataout <= n10Oii WHEN nl0i1li = '1'  ELSE n1i0Oi;
	wire_n1iO1i_dataout <= n10O0O WHEN nl0i1li = '1'  ELSE n1i0lO;
	wire_nl0illO_dataout <= wire_nl0ilOl_dataout AND NOT(nl00O0O);
	wire_nl0ilOi_dataout <= wire_nl0ilOO_dataout AND NOT(nl00O0O);
	wire_nl0ilOl_dataout <= nl00O0i OR nl00O0l;
	wire_nl0ilOO_dataout <= wire_w_lg_nl00O0i7964w(0) AND NOT(nl00O0l);
	wire_nl0l00i_dataout <= nl00Oil AND NOT(nl00OiO);
	wire_nl0l01i_dataout <= wire_nl0l01O_dataout AND NOT(nl00Oli);
	wire_nl0l01l_dataout <= wire_nl0l00i_dataout AND NOT(nl00Oli);
	wire_nl0l01O_dataout <= wire_w_lg_nl00Oil7939w(0) AND NOT(nl00OiO);
	wire_nl0l0Oi_dataout <= wire_nl0li0i_dataout AND NOT((nl0OOll OR (nl0i10i AND ((wire_nl0OOli_w_lg_nl0Olli7923w(0) AND wire_nl0lOlO_w_lg_dataout7847w(0)) OR wire_nl0OOli_w_lg_w_lg_nl0OliO7925w7926w(0)))));
	wire_nl0l1lO_dataout <= wire_nl0l1Ol_dataout OR ast_sink_error(0);
	wire_nl0l1lO_w_lg_dataout7942w(0) <= NOT wire_nl0l1lO_dataout;
	wire_nl0l1Oi_dataout <= wire_nl0l1OO_dataout AND NOT(ast_sink_error(0));
	wire_nl0l1Ol_dataout <= wire_nl0l01i_dataout AND NOT(nl00Oll);
	wire_nl0l1OO_dataout <= wire_nl0l01l_dataout AND NOT(nl00Oll);
	wire_nl0li0i_dataout <= nl0Olll OR (wire_nl0OOli_w_lg_nl0Olli7920w(0) OR (nl0OliO AND wire_nl0lOlO_dataout));
	wire_nl0liil_dataout <= wire_nl0liOO_dataout OR ((wire_w_lg_w_lg_nl0i11l7900w7915w(0) OR (nl0i11l AND nl00OOl)) OR (nl0i11l AND nl00OOi));
	wire_nl0liOO_dataout <= nl0OliO AND NOT(((wire_nl0lOlO_dataout AND wire_nl0O11O_o) OR wire_w_lg_w_lg_nl0i11l7900w7912w(0)));
	wire_nl0ll0l_dataout <= wire_nl0lllO_dataout OR ((wire_w_lg_w_lg_nl0i11l7900w7905w(0) OR (nl0i11l AND nl0i11i)) OR (nl0i11l AND nl00OOO));
	wire_nl0lllO_dataout <= nl0Olli AND NOT((nl0OOll OR (wire_nl0lOlO_w_lg_w_lg_dataout7847w7899w(0) OR wire_w_lg_w_lg_nl0i11l7900w7901w(0))));
	wire_nl0lOii_dataout <= wire_nl0lOil_dataout OR (nl0i11l AND (wire_nl0O11i_o OR wire_nl0O11l_o));
	wire_nl0lOil_dataout <= nl0lOOl AND nl0i11l;
	wire_nl0lOlO_dataout <= nl0lO0O AND nl0i11O;
	wire_nl0lOlO_w_lg_w_lg_dataout7847w7899w(0) <= wire_nl0lOlO_w_lg_dataout7847w(0) AND wire_nl0O11O_o;
	wire_nl0lOlO_w_lg_dataout7847w(0) <= NOT wire_nl0lOlO_dataout;
	wire_nl0lOOO_dataout <= wire_nl0lO0l_w_lg_nl0lO0O7892w(0) AND nl0i11O;
	wire_nl0O00i_dataout <= nl0OiOi WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0O0OO;
	wire_nl0O00l_dataout <= nl0OiOl WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi1i;
	wire_nl0O00O_dataout <= nl0OiOO WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi1l;
	wire_nl0O01i_dataout <= nl0Oili WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0lOll;
	wire_nl0O01l_dataout <= nl0Oill WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0O0Oi;
	wire_nl0O01O_dataout <= nl0OilO WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0O0Ol;
	wire_nl0O0ii_dataout <= nl0Ol1i WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi1O;
	wire_nl0O0il_dataout <= nl0Ol1l WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi0i;
	wire_nl0O0iO_dataout <= nl0Ol1O WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi0l;
	wire_nl0O0li_dataout <= nl0Ol0i WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oi0O;
	wire_nl0O0ll_dataout <= nl0Ol0l WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0Oiii;
	wire_nl0O0lO_dataout <= nl0Olii WHEN wire_nl0lOlO_w_lg_dataout7847w(0) = '1'  ELSE nl0OiiO;
	wire_nl0O10l_dataout <= wire_nl0O1il_dataout AND NOT(ast_source_ready);
	wire_nl0O10O_dataout <= wire_nl0O1iO_dataout AND ast_source_ready;
	wire_nl0O1ii_dataout <= wire_nl0O1li_dataout OR NOT(ast_source_ready);
	wire_nl0O1il_dataout <= nl0i10l AND NOT(nl0OliO);
	wire_nl0O1iO_dataout <= wire_nl0O1ll_dataout WHEN nl0OliO = '1'  ELSE nl0i10l;
	wire_nl0O1li_dataout <= wire_nl0lOlO_w_lg_dataout7847w(0) AND nl0OliO;
	wire_nl0O1ll_dataout <= nl0i10l AND NOT(wire_nl0lOlO_w_lg_dataout7847w(0));
	wire_nl0O1lO_dataout <= wire_w_lg_nl0i10i7852w(0) AND nl0i10l;
	wire_nli000i_dataout <= wire_nli0i1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli000l_dataout <= wire_nli0i1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli000O_dataout <= wire_nli0i1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli001i_dataout <= wire_nli00Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli001l_dataout <= wire_nli00Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli001O_dataout <= wire_nli00OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli00ii_dataout <= wire_nli0i0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli00il_dataout <= wire_nli0i0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli00iO_dataout <= wire_nli0i0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli00li_dataout <= wire_nli0iii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli00ll_dataout <= nli011l WHEN nl0iiOl = '1'  ELSE nli0iil;
	wire_nli00lO_dataout <= nli1lii WHEN nl0iiOl = '1'  ELSE nli01Oi;
	wire_nli00Oi_dataout <= nli1l0O WHEN nl0iiOl = '1'  ELSE nli01lO;
	wire_nli00Ol_dataout <= nli1l0l WHEN nl0iiOl = '1'  ELSE nli01ll;
	wire_nli00OO_dataout <= nli1l0i WHEN nl0iiOl = '1'  ELSE nli01li;
	wire_nli011i_dataout <= nli110O WHEN nl0iiOO = '1'  ELSE nli1ilO;
	wire_nli01Ol_dataout <= wire_nli00ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli01OO_dataout <= wire_nli00lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0i0i_dataout <= nli1iOO WHEN nl0iiOl = '1'  ELSE nli010O;
	wire_nli0i0l_dataout <= nli1iOl WHEN nl0iiOl = '1'  ELSE nli010l;
	wire_nli0i0O_dataout <= nli1iOi WHEN nl0iiOl = '1'  ELSE nli010i;
	wire_nli0i1i_dataout <= nli1l1O WHEN nl0iiOl = '1'  ELSE nli01iO;
	wire_nli0i1l_dataout <= nli1l1l WHEN nl0iiOl = '1'  ELSE nli01il;
	wire_nli0i1O_dataout <= nli1l1i WHEN nl0iiOl = '1'  ELSE nli01ii;
	wire_nli0iii_dataout <= nli1ilO WHEN nl0iiOl = '1'  ELSE nli011O;
	wire_nli0l0l_dataout <= wire_nli0O1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0l0O_dataout <= wire_nli0O1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lii_dataout <= wire_nli0O0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lil_dataout <= wire_nli0O0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0liO_dataout <= wire_nli0O0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lli_dataout <= wire_nli0Oii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lll_dataout <= wire_nli0Oil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0llO_dataout <= wire_nli0OiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lOi_dataout <= wire_nli0Oli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lOl_dataout <= wire_nli0Oll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0lOO_dataout <= wire_nli0OlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0O0i_dataout <= nli01lO WHEN nl0iiOi = '1'  ELSE nli0l1O;
	wire_nli0O0l_dataout <= nli01ll WHEN nl0iiOi = '1'  ELSE nli0l1l;
	wire_nli0O0O_dataout <= nli01li WHEN nl0iiOi = '1'  ELSE nli0l1i;
	wire_nli0O1i_dataout <= wire_nli0OOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli0O1l_dataout <= nli0iil WHEN nl0iiOi = '1'  ELSE nli0OOl;
	wire_nli0O1O_dataout <= nli01Oi WHEN nl0iiOi = '1'  ELSE nli0l0i;
	wire_nli0Oii_dataout <= nli01iO WHEN nl0iiOi = '1'  ELSE nli0iOO;
	wire_nli0Oil_dataout <= nli01il WHEN nl0iiOi = '1'  ELSE nli0iOl;
	wire_nli0OiO_dataout <= nli01ii WHEN nl0iiOi = '1'  ELSE nli0iOi;
	wire_nli0Oli_dataout <= nli010O WHEN nl0iiOi = '1'  ELSE nli0ilO;
	wire_nli0Oll_dataout <= nli010l WHEN nl0iiOi = '1'  ELSE nli0ill;
	wire_nli0OlO_dataout <= nli010i WHEN nl0iiOi = '1'  ELSE nli0ili;
	wire_nli0OOi_dataout <= nli011O WHEN nl0iiOi = '1'  ELSE nli0iiO;
	wire_nli100i_dataout <= wire_nli1i1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli100l_dataout <= wire_nli1i1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli100O_dataout <= wire_nli1i1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli101l_dataout <= wire_nli10Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli101O_dataout <= wire_nli10OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10ii_dataout <= wire_nli1i0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10il_dataout <= wire_nli1i0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10iO_dataout <= wire_nli1i0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10li_dataout <= wire_nli1iii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10ll_dataout <= wire_nli1iil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10lO_dataout <= wire_nli1iiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10Oi_dataout <= wire_nli1ili_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli10Ol_dataout <= wire_nl0il0i_q(0) WHEN nl0il1i = '1'  ELSE nli1ill;
	wire_nli10OO_dataout <= wire_nl0il0i_q(1) WHEN nl0il1i = '1'  ELSE nli101i;
	wire_nli111i_dataout <= (nllOi AND wire_nl0OOOl_w_lg_nl0OOlO7844w(0)) WHEN wire_nl0OOOl_w_lg_nl0OOOi7842w(0) = '1'  ELSE nllOi;
	wire_nli111i_w_lg_dataout7961w(0) <= NOT wire_nli111i_dataout;
	wire_nli111O_dataout <= (wire_nl0OOOl_w_lg_nl0OOOi7842w(0) AND nlO1l) WHEN wire_nl0OOOl_w_lg_nl0OOlO7844w(0) = '1'  ELSE nlO1l;
	wire_nli1i0i_dataout <= wire_nl0il0i_q(5) WHEN nl0il1i = '1'  ELSE nli11lO;
	wire_nli1i0l_dataout <= wire_nl0il0i_q(6) WHEN nl0il1i = '1'  ELSE nli11ll;
	wire_nli1i0O_dataout <= wire_nl0il0i_q(7) WHEN nl0il1i = '1'  ELSE nli11li;
	wire_nli1i1i_dataout <= wire_nl0il0i_q(2) WHEN nl0il1i = '1'  ELSE nli11OO;
	wire_nli1i1l_dataout <= wire_nl0il0i_q(3) WHEN nl0il1i = '1'  ELSE nli11Ol;
	wire_nli1i1O_dataout <= wire_nl0il0i_q(4) WHEN nl0il1i = '1'  ELSE nli11Oi;
	wire_nli1iii_dataout <= wire_nl0il0i_q(8) WHEN nl0il1i = '1'  ELSE nli11iO;
	wire_nli1iil_dataout <= wire_nl0il0i_q(9) WHEN nl0il1i = '1'  ELSE nli11il;
	wire_nli1iiO_dataout <= wire_nl0il0i_q(10) WHEN nl0il1i = '1'  ELSE nli11ii;
	wire_nli1ili_dataout <= wire_nl0il0i_q(11) WHEN nl0il1i = '1'  ELSE nli110O;
	wire_nli1lil_dataout <= wire_nli1O0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1liO_dataout <= wire_nli1O0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1lli_dataout <= wire_nli1Oii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1lll_dataout <= wire_nli1Oil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1llO_dataout <= wire_nli1OiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1lOi_dataout <= wire_nli1Oli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1lOl_dataout <= wire_nli1Oll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1lOO_dataout <= wire_nli1OlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1O0i_dataout <= wire_nli011i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1O0l_dataout <= nli1ill WHEN nl0iiOO = '1'  ELSE nli011l;
	wire_nli1O0O_dataout <= nli101i WHEN nl0iiOO = '1'  ELSE nli1lii;
	wire_nli1O1i_dataout <= wire_nli1OOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1O1l_dataout <= wire_nli1OOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1O1O_dataout <= wire_nli1OOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nli1Oii_dataout <= nli11OO WHEN nl0iiOO = '1'  ELSE nli1l0O;
	wire_nli1Oil_dataout <= nli11Ol WHEN nl0iiOO = '1'  ELSE nli1l0l;
	wire_nli1OiO_dataout <= nli11Oi WHEN nl0iiOO = '1'  ELSE nli1l0i;
	wire_nli1Oli_dataout <= nli11lO WHEN nl0iiOO = '1'  ELSE nli1l1O;
	wire_nli1Oll_dataout <= nli11ll WHEN nl0iiOO = '1'  ELSE nli1l1l;
	wire_nli1OlO_dataout <= nli11li WHEN nl0iiOO = '1'  ELSE nli1l1i;
	wire_nli1OOi_dataout <= nli11iO WHEN nl0iiOO = '1'  ELSE nli1iOO;
	wire_nli1OOl_dataout <= nli11il WHEN nl0iiOO = '1'  ELSE nli1iOl;
	wire_nli1OOO_dataout <= nli11ii WHEN nl0iiOO = '1'  ELSE nli1iOi;
	wire_nlii00i_dataout <= wire_nliii1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii00l_dataout <= wire_nliii1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii00O_dataout <= wire_nliii1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii01i_dataout <= wire_nlii0Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii01l_dataout <= wire_nlii0Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii01O_dataout <= wire_nlii0OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii0ii_dataout <= wire_nliii0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii0il_dataout <= nli0OOl WHEN nl0iilO = '1'  ELSE nliii0l;
	wire_nlii0iO_dataout <= nli0l0i WHEN nl0iilO = '1'  ELSE nlii1li;
	wire_nlii0li_dataout <= nli0l1O WHEN nl0iilO = '1'  ELSE nlii1iO;
	wire_nlii0ll_dataout <= nli0l1l WHEN nl0iilO = '1'  ELSE nlii1il;
	wire_nlii0lO_dataout <= nli0l1i WHEN nl0iilO = '1'  ELSE nlii1ii;
	wire_nlii0Oi_dataout <= nli0iOO WHEN nl0iilO = '1'  ELSE nlii10O;
	wire_nlii0Ol_dataout <= nli0iOl WHEN nl0iilO = '1'  ELSE nlii10l;
	wire_nlii0OO_dataout <= nli0iOi WHEN nl0iilO = '1'  ELSE nlii10i;
	wire_nlii1ll_dataout <= wire_nlii0il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii1lO_dataout <= wire_nlii0iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii1Oi_dataout <= wire_nlii0li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii1Ol_dataout <= wire_nlii0ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlii1OO_dataout <= wire_nlii0lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliii0i_dataout <= nli0iiO WHEN nl0iilO = '1'  ELSE nli0OOO;
	wire_nliii1i_dataout <= nli0ilO WHEN nl0iilO = '1'  ELSE nlii11O;
	wire_nliii1l_dataout <= nli0ill WHEN nl0iilO = '1'  ELSE nlii11l;
	wire_nliii1O_dataout <= nli0ili WHEN nl0iilO = '1'  ELSE nlii11i;
	wire_nliil0i_dataout <= wire_nliiO1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliil0l_dataout <= wire_nliiO1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliil0O_dataout <= wire_nliiO1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliil1l_dataout <= wire_nliilOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliil1O_dataout <= wire_nliilOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilii_dataout <= wire_nliiO0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilil_dataout <= wire_nliiO0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliiliO_dataout <= wire_nliiO0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilli_dataout <= wire_nliiOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilll_dataout <= wire_nliiOil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliillO_dataout <= wire_nliiOiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilOi_dataout <= wire_nliiOli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliilOl_dataout <= nliii0l WHEN nl0iill = '1'  ELSE nliiOll;
	wire_nliilOO_dataout <= nlii1li WHEN nl0iill = '1'  ELSE nliil1i;
	wire_nliiO0i_dataout <= nlii10O WHEN nl0iill = '1'  ELSE nliiilO;
	wire_nliiO0l_dataout <= nlii10l WHEN nl0iill = '1'  ELSE nliiill;
	wire_nliiO0O_dataout <= nlii10i WHEN nl0iill = '1'  ELSE nliiili;
	wire_nliiO1i_dataout <= nlii1iO WHEN nl0iill = '1'  ELSE nliiiOO;
	wire_nliiO1l_dataout <= nlii1il WHEN nl0iill = '1'  ELSE nliiiOl;
	wire_nliiO1O_dataout <= nlii1ii WHEN nl0iill = '1'  ELSE nliiiOi;
	wire_nliiOii_dataout <= nlii11O WHEN nl0iill = '1'  ELSE nliiiiO;
	wire_nliiOil_dataout <= nlii11l WHEN nl0iill = '1'  ELSE nliiiil;
	wire_nliiOiO_dataout <= nlii11i WHEN nl0iill = '1'  ELSE nliiiii;
	wire_nliiOli_dataout <= nli0OOO WHEN nl0iill = '1'  ELSE nliii0O;
	wire_nlil00i_dataout <= wire_nlili1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil00l_dataout <= nliiOll WHEN nl0iili = '1'  ELSE nlili1l;
	wire_nlil00O_dataout <= nliil1i WHEN nl0iili = '1'  ELSE nlil1ii;
	wire_nlil01i_dataout <= wire_nlil0Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil01l_dataout <= wire_nlil0Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil01O_dataout <= wire_nlil0OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil0ii_dataout <= nliiiOO WHEN nl0iili = '1'  ELSE nlil10O;
	wire_nlil0il_dataout <= nliiiOl WHEN nl0iili = '1'  ELSE nlil10l;
	wire_nlil0iO_dataout <= nliiiOi WHEN nl0iili = '1'  ELSE nlil10i;
	wire_nlil0li_dataout <= nliiilO WHEN nl0iili = '1'  ELSE nlil11O;
	wire_nlil0ll_dataout <= nliiill WHEN nl0iili = '1'  ELSE nlil11l;
	wire_nlil0lO_dataout <= nliiili WHEN nl0iili = '1'  ELSE nlil11i;
	wire_nlil0Oi_dataout <= nliiiiO WHEN nl0iili = '1'  ELSE nliiOOO;
	wire_nlil0Ol_dataout <= nliiiil WHEN nl0iili = '1'  ELSE nliiOOl;
	wire_nlil0OO_dataout <= nliiiii WHEN nl0iili = '1'  ELSE nliiOOi;
	wire_nlil1il_dataout <= wire_nlil00l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1iO_dataout <= wire_nlil00O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1li_dataout <= wire_nlil0ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1ll_dataout <= wire_nlil0il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1lO_dataout <= wire_nlil0iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1Oi_dataout <= wire_nlil0li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1Ol_dataout <= wire_nlil0ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlil1OO_dataout <= wire_nlil0lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlili1i_dataout <= nliii0O WHEN nl0iili = '1'  ELSE nliiOlO;
	wire_nliliOl_dataout <= wire_nlillll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliliOO_dataout <= wire_nlilllO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill0i_dataout <= wire_nlilO1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill0l_dataout <= wire_nlilO1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill0O_dataout <= wire_nlilO1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill1i_dataout <= wire_nlillOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill1l_dataout <= wire_nlillOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlill1O_dataout <= wire_nlillOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlillii_dataout <= wire_nlilO0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlillil_dataout <= wire_nlilO0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlilliO_dataout <= wire_nlilO0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlillli_dataout <= wire_nlilOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlillll_dataout <= nlili1l WHEN nl0iiiO = '1'  ELSE nlilOil;
	wire_nlilllO_dataout <= nlil1ii WHEN nl0iiiO = '1'  ELSE nliliOi;
	wire_nlillOi_dataout <= nlil10O WHEN nl0iiiO = '1'  ELSE nlililO;
	wire_nlillOl_dataout <= nlil10l WHEN nl0iiiO = '1'  ELSE nlilill;
	wire_nlillOO_dataout <= nlil10i WHEN nl0iiiO = '1'  ELSE nlilili;
	wire_nlilO0i_dataout <= nliiOOO WHEN nl0iiiO = '1'  ELSE nlili0O;
	wire_nlilO0l_dataout <= nliiOOl WHEN nl0iiiO = '1'  ELSE nlili0l;
	wire_nlilO0O_dataout <= nliiOOi WHEN nl0iiiO = '1'  ELSE nlili0i;
	wire_nlilO1i_dataout <= nlil11O WHEN nl0iiiO = '1'  ELSE nliliiO;
	wire_nlilO1l_dataout <= nlil11l WHEN nl0iiiO = '1'  ELSE nliliil;
	wire_nlilO1O_dataout <= nlil11i WHEN nl0iiiO = '1'  ELSE nliliii;
	wire_nlilOii_dataout <= nliiOlO WHEN nl0iiiO = '1'  ELSE nlili1O;
	wire_nliO00i_dataout <= nlililO WHEN nl0iiil = '1'  ELSE nliO11O;
	wire_nliO00l_dataout <= nlilill WHEN nl0iiil = '1'  ELSE nliO11l;
	wire_nliO00O_dataout <= nlilili WHEN nl0iiil = '1'  ELSE nliO11i;
	wire_nliO01i_dataout <= wire_nliO0Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO01l_dataout <= nlilOil WHEN nl0iiil = '1'  ELSE nliO0Ol;
	wire_nliO01O_dataout <= nliliOi WHEN nl0iiil = '1'  ELSE nliO10i;
	wire_nliO0ii_dataout <= nliliiO WHEN nl0iiil = '1'  ELSE nlilOOO;
	wire_nliO0il_dataout <= nliliil WHEN nl0iiil = '1'  ELSE nlilOOl;
	wire_nliO0iO_dataout <= nliliii WHEN nl0iiil = '1'  ELSE nlilOOi;
	wire_nliO0li_dataout <= nlili0O WHEN nl0iiil = '1'  ELSE nlilOlO;
	wire_nliO0ll_dataout <= nlili0l WHEN nl0iiil = '1'  ELSE nlilOll;
	wire_nliO0lO_dataout <= nlili0i WHEN nl0iiil = '1'  ELSE nlilOli;
	wire_nliO0Oi_dataout <= nlili1O WHEN nl0iiil = '1'  ELSE nlilOiO;
	wire_nliO10l_dataout <= wire_nliO01l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO10O_dataout <= wire_nliO01O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1ii_dataout <= wire_nliO00i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1il_dataout <= wire_nliO00l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1iO_dataout <= wire_nliO00O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1li_dataout <= wire_nliO0ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1ll_dataout <= wire_nliO0il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1lO_dataout <= wire_nliO0iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1Oi_dataout <= wire_nliO0li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1Ol_dataout <= wire_nliO0ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliO1OO_dataout <= wire_nliO0lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOill_dataout <= wire_nliOlil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOilO_dataout <= wire_nliOliO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOiOi_dataout <= wire_nliOlli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOiOl_dataout <= wire_nliOlll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOiOO_dataout <= wire_nliOllO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl0i_dataout <= wire_nliOO1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl0l_dataout <= wire_nliOO1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl0O_dataout <= wire_nliOO1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl1i_dataout <= wire_nliOlOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl1l_dataout <= wire_nliOlOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOl1O_dataout <= wire_nliOlOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOlii_dataout <= wire_nliOO0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nliOlil_dataout <= nliO0Ol WHEN nl0iiii = '1'  ELSE nliOO0l;
	wire_nliOliO_dataout <= nliO10i WHEN nl0iiii = '1'  ELSE nliOili;
	wire_nliOlli_dataout <= nliO11O WHEN nl0iiii = '1'  ELSE nliOiiO;
	wire_nliOlll_dataout <= nliO11l WHEN nl0iiii = '1'  ELSE nliOiil;
	wire_nliOllO_dataout <= nliO11i WHEN nl0iiii = '1'  ELSE nliOiii;
	wire_nliOlOi_dataout <= nlilOOO WHEN nl0iiii = '1'  ELSE nliOi0O;
	wire_nliOlOl_dataout <= nlilOOl WHEN nl0iiii = '1'  ELSE nliOi0l;
	wire_nliOlOO_dataout <= nlilOOi WHEN nl0iiii = '1'  ELSE nliOi0i;
	wire_nliOO0i_dataout <= nlilOiO WHEN nl0iiii = '1'  ELSE nliO0OO;
	wire_nliOO1i_dataout <= nlilOlO WHEN nl0iiii = '1'  ELSE nliOi1O;
	wire_nliOO1l_dataout <= nlilOll WHEN nl0iiii = '1'  ELSE nliOi1l;
	wire_nliOO1O_dataout <= nlilOli WHEN nl0iiii = '1'  ELSE nliOi1i;
	wire_nll000i_dataout <= nll10OO WHEN nl0ii0i = '1'  ELSE nll1O0O;
	wire_nll000l_dataout <= nll10Ol WHEN nl0ii0i = '1'  ELSE nll1O0l;
	wire_nll000O_dataout <= nll10Oi WHEN nl0ii0i = '1'  ELSE nll1O0i;
	wire_nll001i_dataout <= nll1i1O WHEN nl0ii0i = '1'  ELSE nll1OiO;
	wire_nll001l_dataout <= nll1i1l WHEN nl0ii0i = '1'  ELSE nll1Oil;
	wire_nll001O_dataout <= nll1i1i WHEN nl0ii0i = '1'  ELSE nll1Oii;
	wire_nll00ii_dataout <= nll10lO WHEN nl0ii0i = '1'  ELSE nll1O1O;
	wire_nll010i_dataout <= wire_nll001i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll010l_dataout <= wire_nll001l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll010O_dataout <= wire_nll001O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll011i_dataout <= wire_nll01Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll011l_dataout <= wire_nll01Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll011O_dataout <= wire_nll01OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll01ii_dataout <= wire_nll000i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll01il_dataout <= wire_nll000l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll01iO_dataout <= wire_nll000O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll01li_dataout <= wire_nll00ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll01ll_dataout <= nll1O1l WHEN nl0ii0i = '1'  ELSE nll00il;
	wire_nll01lO_dataout <= nll1iii WHEN nl0ii0i = '1'  ELSE nll1OOi;
	wire_nll01Oi_dataout <= nll1i0O WHEN nl0ii0i = '1'  ELSE nll1OlO;
	wire_nll01Ol_dataout <= nll1i0l WHEN nl0ii0i = '1'  ELSE nll1Oll;
	wire_nll01OO_dataout <= nll1i0i WHEN nl0ii0i = '1'  ELSE nll1Oli;
	wire_nll0i0l_dataout <= wire_nll0l1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0i0O_dataout <= wire_nll0l1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iii_dataout <= wire_nll0l0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iil_dataout <= wire_nll0l0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iiO_dataout <= wire_nll0l0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0ili_dataout <= wire_nll0lii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0ill_dataout <= wire_nll0lil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0ilO_dataout <= wire_nll0liO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iOi_dataout <= wire_nll0lli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iOl_dataout <= wire_nll0lll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0iOO_dataout <= wire_nll0llO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0l0i_dataout <= nll1OlO WHEN nl0ii1O = '1'  ELSE nll0i1O;
	wire_nll0l0l_dataout <= nll1Oll WHEN nl0ii1O = '1'  ELSE nll0i1l;
	wire_nll0l0O_dataout <= nll1Oli WHEN nl0ii1O = '1'  ELSE nll0i1i;
	wire_nll0l1i_dataout <= wire_nll0lOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0l1l_dataout <= nll00il WHEN nl0ii1O = '1'  ELSE nll0lOl;
	wire_nll0l1O_dataout <= nll1OOi WHEN nl0ii1O = '1'  ELSE nll0i0i;
	wire_nll0lii_dataout <= nll1OiO WHEN nl0ii1O = '1'  ELSE nll00OO;
	wire_nll0lil_dataout <= nll1Oil WHEN nl0ii1O = '1'  ELSE nll00Ol;
	wire_nll0liO_dataout <= nll1Oii WHEN nl0ii1O = '1'  ELSE nll00Oi;
	wire_nll0lli_dataout <= nll1O0O WHEN nl0ii1O = '1'  ELSE nll00lO;
	wire_nll0lll_dataout <= nll1O0l WHEN nl0ii1O = '1'  ELSE nll00ll;
	wire_nll0llO_dataout <= nll1O0i WHEN nl0ii1O = '1'  ELSE nll00li;
	wire_nll0lOi_dataout <= nll1O1O WHEN nl0ii1O = '1'  ELSE nll00iO;
	wire_nll0Oll_dataout <= wire_nlli1il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0OlO_dataout <= wire_nlli1iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0OOi_dataout <= wire_nlli1li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0OOl_dataout <= wire_nlli1ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll0OOO_dataout <= wire_nlli1lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll100i_dataout <= nliOi0O WHEN nl0ii0O = '1'  ELSE nliOOlO;
	wire_nll100l_dataout <= nliOi0l WHEN nl0ii0O = '1'  ELSE nliOOll;
	wire_nll100O_dataout <= nliOi0i WHEN nl0ii0O = '1'  ELSE nliOOli;
	wire_nll101i_dataout <= nliOiiO WHEN nl0ii0O = '1'  ELSE nliOOOO;
	wire_nll101l_dataout <= nliOiil WHEN nl0ii0O = '1'  ELSE nliOOOl;
	wire_nll101O_dataout <= nliOiii WHEN nl0ii0O = '1'  ELSE nliOOOi;
	wire_nll10ii_dataout <= nliOi1O WHEN nl0ii0O = '1'  ELSE nliOOiO;
	wire_nll10il_dataout <= nliOi1l WHEN nl0ii0O = '1'  ELSE nliOOil;
	wire_nll10iO_dataout <= nliOi1i WHEN nl0ii0O = '1'  ELSE nliOOii;
	wire_nll10li_dataout <= nliO0OO WHEN nl0ii0O = '1'  ELSE nliOO0O;
	wire_nll110i_dataout <= wire_nll101i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll110l_dataout <= wire_nll101l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll110O_dataout <= wire_nll101O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll111l_dataout <= wire_nll11Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll111O_dataout <= wire_nll11OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11ii_dataout <= wire_nll100i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11il_dataout <= wire_nll100l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11iO_dataout <= wire_nll100O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11li_dataout <= wire_nll10ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11ll_dataout <= wire_nll10il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11lO_dataout <= wire_nll10iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11Oi_dataout <= wire_nll10li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll11Ol_dataout <= nliOO0l WHEN nl0ii0O = '1'  ELSE nll10ll;
	wire_nll11OO_dataout <= nliOili WHEN nl0ii0O = '1'  ELSE nll111i;
	wire_nll1iil_dataout <= wire_nll1l0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1iiO_dataout <= wire_nll1l0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1ili_dataout <= wire_nll1lii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1ill_dataout <= wire_nll1lil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1ilO_dataout <= wire_nll1liO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1iOi_dataout <= wire_nll1lli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1iOl_dataout <= wire_nll1lll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1iOO_dataout <= wire_nll1llO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1l0i_dataout <= wire_nll1O1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1l0l_dataout <= nll10ll WHEN nl0ii0l = '1'  ELSE nll1O1l;
	wire_nll1l0O_dataout <= nll111i WHEN nl0ii0l = '1'  ELSE nll1iii;
	wire_nll1l1i_dataout <= wire_nll1lOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1l1l_dataout <= wire_nll1lOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1l1O_dataout <= wire_nll1lOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1lii_dataout <= nliOOOO WHEN nl0ii0l = '1'  ELSE nll1i0O;
	wire_nll1lil_dataout <= nliOOOl WHEN nl0ii0l = '1'  ELSE nll1i0l;
	wire_nll1liO_dataout <= nliOOOi WHEN nl0ii0l = '1'  ELSE nll1i0i;
	wire_nll1lli_dataout <= nliOOlO WHEN nl0ii0l = '1'  ELSE nll1i1O;
	wire_nll1lll_dataout <= nliOOll WHEN nl0ii0l = '1'  ELSE nll1i1l;
	wire_nll1llO_dataout <= nliOOli WHEN nl0ii0l = '1'  ELSE nll1i1i;
	wire_nll1lOi_dataout <= nliOOiO WHEN nl0ii0l = '1'  ELSE nll10OO;
	wire_nll1lOl_dataout <= nliOOil WHEN nl0ii0l = '1'  ELSE nll10Ol;
	wire_nll1lOO_dataout <= nliOOii WHEN nl0ii0l = '1'  ELSE nll10Oi;
	wire_nll1O1i_dataout <= nliOO0O WHEN nl0ii0l = '1'  ELSE nll10lO;
	wire_nll1OOl_dataout <= wire_nll01ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nll1OOO_dataout <= wire_nll01lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli00i_dataout <= nll00iO WHEN nl0ii1l = '1'  ELSE nll0lOO;
	wire_nlli01i_dataout <= nll00lO WHEN nl0ii1l = '1'  ELSE nll0O1O;
	wire_nlli01l_dataout <= nll00ll WHEN nl0ii1l = '1'  ELSE nll0O1l;
	wire_nlli01O_dataout <= nll00li WHEN nl0ii1l = '1'  ELSE nll0O1i;
	wire_nlli10i_dataout <= wire_nlli01i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli10l_dataout <= wire_nlli01l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli10O_dataout <= wire_nlli01O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli11i_dataout <= wire_nlli1Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli11l_dataout <= wire_nlli1Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli11O_dataout <= wire_nlli1OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli1ii_dataout <= wire_nlli00i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlli1il_dataout <= nll0lOl WHEN nl0ii1l = '1'  ELSE nlli00l;
	wire_nlli1iO_dataout <= nll0i0i WHEN nl0ii1l = '1'  ELSE nll0Oli;
	wire_nlli1li_dataout <= nll0i1O WHEN nl0ii1l = '1'  ELSE nll0OiO;
	wire_nlli1ll_dataout <= nll0i1l WHEN nl0ii1l = '1'  ELSE nll0Oil;
	wire_nlli1lO_dataout <= nll0i1i WHEN nl0ii1l = '1'  ELSE nll0Oii;
	wire_nlli1Oi_dataout <= nll00OO WHEN nl0ii1l = '1'  ELSE nll0O0O;
	wire_nlli1Ol_dataout <= nll00Ol WHEN nl0ii1l = '1'  ELSE nll0O0l;
	wire_nlli1OO_dataout <= nll00Oi WHEN nl0ii1l = '1'  ELSE nll0O0i;
	wire_nllii0i_dataout <= wire_nllil1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllii0l_dataout <= wire_nllil1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllii0O_dataout <= wire_nllil1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllii1l_dataout <= wire_nlliiOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllii1O_dataout <= wire_nlliiOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliiii_dataout <= wire_nllil0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliiil_dataout <= wire_nllil0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliiiO_dataout <= wire_nllil0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliili_dataout <= wire_nllilii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliill_dataout <= wire_nllilil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliilO_dataout <= wire_nlliliO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliiOi_dataout <= wire_nllilli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliiOl_dataout <= nlli00l WHEN nl0ii1i = '1'  ELSE nllilll;
	wire_nlliiOO_dataout <= nll0Oli WHEN nl0ii1i = '1'  ELSE nllii1i;
	wire_nllil0i_dataout <= nll0O0O WHEN nl0ii1i = '1'  ELSE nlli0lO;
	wire_nllil0l_dataout <= nll0O0l WHEN nl0ii1i = '1'  ELSE nlli0ll;
	wire_nllil0O_dataout <= nll0O0i WHEN nl0ii1i = '1'  ELSE nlli0li;
	wire_nllil1i_dataout <= nll0OiO WHEN nl0ii1i = '1'  ELSE nlli0OO;
	wire_nllil1l_dataout <= nll0Oil WHEN nl0ii1i = '1'  ELSE nlli0Ol;
	wire_nllil1O_dataout <= nll0Oii WHEN nl0ii1i = '1'  ELSE nlli0Oi;
	wire_nllilii_dataout <= nll0O1O WHEN nl0ii1i = '1'  ELSE nlli0iO;
	wire_nllilil_dataout <= nll0O1l WHEN nl0ii1i = '1'  ELSE nlli0il;
	wire_nlliliO_dataout <= nll0O1i WHEN nl0ii1i = '1'  ELSE nlli0ii;
	wire_nllilli_dataout <= nll0lOO WHEN nl0ii1i = '1'  ELSE nlli00O;
	wire_nlliO_dataout <= wire_nllll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOil_dataout <= wire_nlll10l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOiO_dataout <= wire_nlll10O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOli_dataout <= wire_nlll1ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOll_dataout <= wire_nlll1il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOlO_dataout <= wire_nlll1iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOOi_dataout <= wire_nlll1li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOOl_dataout <= wire_nlll1ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlliOOO_dataout <= wire_nlll1lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll01i_dataout <= nlli00O WHEN nl0i0OO = '1'  ELSE nllillO;
	wire_nlll0Ol_dataout <= wire_nlllill_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll0OO_dataout <= wire_nlllilO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll10i_dataout <= wire_nlll01i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll10l_dataout <= nllilll WHEN nl0i0OO = '1'  ELSE nlll01l;
	wire_nlll10O_dataout <= nllii1i WHEN nl0i0OO = '1'  ELSE nlliOii;
	wire_nlll11i_dataout <= wire_nlll1Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll11l_dataout <= wire_nlll1Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll11O_dataout <= wire_nlll1OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlll1ii_dataout <= nlli0OO WHEN nl0i0OO = '1'  ELSE nlliO0O;
	wire_nlll1il_dataout <= nlli0Ol WHEN nl0i0OO = '1'  ELSE nlliO0l;
	wire_nlll1iO_dataout <= nlli0Oi WHEN nl0i0OO = '1'  ELSE nlliO0i;
	wire_nlll1li_dataout <= nlli0lO WHEN nl0i0OO = '1'  ELSE nlliO1O;
	wire_nlll1ll_dataout <= nlli0ll WHEN nl0i0OO = '1'  ELSE nlliO1l;
	wire_nlll1lO_dataout <= nlli0li WHEN nl0i0OO = '1'  ELSE nlliO1i;
	wire_nlll1Oi_dataout <= nlli0iO WHEN nl0i0OO = '1'  ELSE nllilOO;
	wire_nlll1Ol_dataout <= nlli0il WHEN nl0i0OO = '1'  ELSE nllilOl;
	wire_nlll1OO_dataout <= nlli0ii WHEN nl0i0OO = '1'  ELSE nllilOi;
	wire_nllli_dataout <= wire_nlllO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli0i_dataout <= wire_nllll1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli0l_dataout <= wire_nllll1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli0O_dataout <= wire_nllll1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli1i_dataout <= wire_nllliOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli1l_dataout <= wire_nllliOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllli1O_dataout <= wire_nllliOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllliii_dataout <= wire_nllll0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllliil_dataout <= wire_nllll0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllliiO_dataout <= wire_nllll0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllili_dataout <= wire_nllllii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllill_dataout <= nlll01l WHEN nl0i0Ol = '1'  ELSE nllllil;
	wire_nlllilO_dataout <= nlliOii WHEN nl0i0Ol = '1'  ELSE nlll0Oi;
	wire_nllliOi_dataout <= nlliO0O WHEN nl0i0Ol = '1'  ELSE nlll0lO;
	wire_nllliOl_dataout <= nlliO0l WHEN nl0i0Ol = '1'  ELSE nlll0ll;
	wire_nllliOO_dataout <= nlliO0i WHEN nl0i0Ol = '1'  ELSE nlll0li;
	wire_nllll_dataout <= nllil WHEN wire_nl0OOOl_w_lg_nl0OOOO18w(0) = '1'  ELSE nlO1l;
	wire_nllll0i_dataout <= nllilOO WHEN nl0i0Ol = '1'  ELSE nlll00O;
	wire_nllll0l_dataout <= nllilOl WHEN nl0i0Ol = '1'  ELSE nlll00l;
	wire_nllll0O_dataout <= nllilOi WHEN nl0i0Ol = '1'  ELSE nlll00i;
	wire_nllll1i_dataout <= nlliO1O WHEN nl0i0Ol = '1'  ELSE nlll0iO;
	wire_nllll1l_dataout <= nlliO1l WHEN nl0i0Ol = '1'  ELSE nlll0il;
	wire_nllll1O_dataout <= nlliO1i WHEN nl0i0Ol = '1'  ELSE nlll0ii;
	wire_nllllii_dataout <= nllillO WHEN nl0i0Ol = '1'  ELSE nlll01O;
	wire_nlllO_dataout <= nllOi WHEN wire_nl0OOOl_w_lg_nl0OOOO18w(0) = '1'  ELSE nlO1O;
	wire_nlllO0l_dataout <= wire_nllO11l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllO0O_dataout <= wire_nllO11O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOii_dataout <= wire_nllO10i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOil_dataout <= wire_nllO10l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOiO_dataout <= wire_nllO10O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOli_dataout <= wire_nllO1ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOll_dataout <= wire_nllO1il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOlO_dataout <= wire_nllO1iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOOi_dataout <= wire_nllO1li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOOl_dataout <= wire_nllO1ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlllOOO_dataout <= wire_nllO1lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO0ll_dataout <= wire_nllOiil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO0lO_dataout <= wire_nllOiiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO0Oi_dataout <= wire_nllOili_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO0Ol_dataout <= wire_nllOill_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO0OO_dataout <= wire_nllOilO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO10i_dataout <= nlll0lO WHEN nl0i0Oi = '1'  ELSE nlllO1O;
	wire_nllO10l_dataout <= nlll0ll WHEN nl0i0Oi = '1'  ELSE nlllO1l;
	wire_nllO10O_dataout <= nlll0li WHEN nl0i0Oi = '1'  ELSE nlllO1i;
	wire_nllO11i_dataout <= wire_nllO1Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllO11l_dataout <= nllllil WHEN nl0i0Oi = '1'  ELSE nllO1Ol;
	wire_nllO11O_dataout <= nlll0Oi WHEN nl0i0Oi = '1'  ELSE nlllO0i;
	wire_nllO1ii_dataout <= nlll0iO WHEN nl0i0Oi = '1'  ELSE nllllOO;
	wire_nllO1il_dataout <= nlll0il WHEN nl0i0Oi = '1'  ELSE nllllOl;
	wire_nllO1iO_dataout <= nlll0ii WHEN nl0i0Oi = '1'  ELSE nllllOi;
	wire_nllO1li_dataout <= nlll00O WHEN nl0i0Oi = '1'  ELSE nlllllO;
	wire_nllO1ll_dataout <= nlll00l WHEN nl0i0Oi = '1'  ELSE nllllll;
	wire_nllO1lO_dataout <= nlll00i WHEN nl0i0Oi = '1'  ELSE nllllli;
	wire_nllO1Oi_dataout <= nlll01O WHEN nl0i0Oi = '1'  ELSE nlllliO;
	wire_nllOi0i_dataout <= wire_nllOl1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOi0l_dataout <= wire_nllOl1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOi0O_dataout <= wire_nllOl1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOi1i_dataout <= wire_nllOiOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOi1l_dataout <= wire_nllOiOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOi1O_dataout <= wire_nllOiOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOiii_dataout <= wire_nllOl0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOiil_dataout <= nllO1Ol WHEN nl0i0lO = '1'  ELSE nllOl0l;
	wire_nllOiiO_dataout <= nlllO0i WHEN nl0i0lO = '1'  ELSE nllO0li;
	wire_nllOili_dataout <= nlllO1O WHEN nl0i0lO = '1'  ELSE nllO0iO;
	wire_nllOill_dataout <= nlllO1l WHEN nl0i0lO = '1'  ELSE nllO0il;
	wire_nllOilO_dataout <= nlllO1i WHEN nl0i0lO = '1'  ELSE nllO0ii;
	wire_nllOiOi_dataout <= nllllOO WHEN nl0i0lO = '1'  ELSE nllO00O;
	wire_nllOiOl_dataout <= nllllOl WHEN nl0i0lO = '1'  ELSE nllO00l;
	wire_nllOiOO_dataout <= nllllOi WHEN nl0i0lO = '1'  ELSE nllO00i;
	wire_nllOl_dataout <= wire_nllOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOl0i_dataout <= nlllliO WHEN nl0i0lO = '1'  ELSE nllO1OO;
	wire_nllOl1i_dataout <= nlllllO WHEN nl0i0lO = '1'  ELSE nllO01O;
	wire_nllOl1l_dataout <= nllllll WHEN nl0i0lO = '1'  ELSE nllO01l;
	wire_nllOl1O_dataout <= nllllli WHEN nl0i0lO = '1'  ELSE nllO01i;
	wire_nllOO_dataout <= wire_nlO1i_o WHEN wire_nl0OOOl_w_lg_nl0OOOO18w(0) = '1'  ELSE nllil;
	wire_nllOO0i_dataout <= wire_nlO111i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOO0l_dataout <= wire_nlO111l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOO0O_dataout <= wire_nlO111O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOO1l_dataout <= wire_nllOOOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOO1O_dataout <= wire_nllOOOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOii_dataout <= wire_nlO110i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOil_dataout <= wire_nlO110l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOiO_dataout <= wire_nlO110O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOli_dataout <= wire_nlO11ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOll_dataout <= wire_nlO11il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOlO_dataout <= wire_nlO11iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOOi_dataout <= wire_nlO11li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nllOOOl_dataout <= nllOl0l WHEN nl0i0ll = '1'  ELSE nlO11ll;
	wire_nllOOOO_dataout <= nllO0li WHEN nl0i0ll = '1'  ELSE nllOO1i;
	wire_nlO000l_dataout <= wire_nlO0i1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO000O_dataout <= wire_nlO0i1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00ii_dataout <= wire_nlO0i0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00il_dataout <= wire_nlO0i0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00iO_dataout <= wire_nlO0i0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00li_dataout <= wire_nlO0iii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00ll_dataout <= wire_nlO0iil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00lO_dataout <= wire_nlO0iiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00Oi_dataout <= wire_nlO0ili_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00Ol_dataout <= wire_nlO0ill_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO00OO_dataout <= wire_nlO0ilO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO010i_dataout <= nlO11OO WHEN nl0i0iO = '1'  ELSE nlO1l0O;
	wire_nlO010l_dataout <= nlO11Ol WHEN nl0i0iO = '1'  ELSE nlO1l0l;
	wire_nlO010O_dataout <= nlO11Oi WHEN nl0i0iO = '1'  ELSE nlO1l0i;
	wire_nlO011i_dataout <= nlO101O WHEN nl0i0iO = '1'  ELSE nlO1liO;
	wire_nlO011l_dataout <= nlO101l WHEN nl0i0iO = '1'  ELSE nlO1lil;
	wire_nlO011O_dataout <= nlO101i WHEN nl0i0iO = '1'  ELSE nlO1lii;
	wire_nlO01ii_dataout <= nlO11lO WHEN nl0i0iO = '1'  ELSE nlO1l1O;
	wire_nlO0i0i_dataout <= nlO1llO WHEN nl0i0il = '1'  ELSE nlO001O;
	wire_nlO0i0l_dataout <= nlO1lll WHEN nl0i0il = '1'  ELSE nlO001l;
	wire_nlO0i0O_dataout <= nlO1lli WHEN nl0i0il = '1'  ELSE nlO001i;
	wire_nlO0i1i_dataout <= wire_nlO0iOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0i1l_dataout <= nlO01il WHEN nl0i0il = '1'  ELSE nlO0iOl;
	wire_nlO0i1O_dataout <= nlO1lOi WHEN nl0i0il = '1'  ELSE nlO000i;
	wire_nlO0iii_dataout <= nlO1liO WHEN nl0i0il = '1'  ELSE nlO01OO;
	wire_nlO0iil_dataout <= nlO1lil WHEN nl0i0il = '1'  ELSE nlO01Ol;
	wire_nlO0iiO_dataout <= nlO1lii WHEN nl0i0il = '1'  ELSE nlO01Oi;
	wire_nlO0ili_dataout <= nlO1l0O WHEN nl0i0il = '1'  ELSE nlO01lO;
	wire_nlO0ill_dataout <= nlO1l0l WHEN nl0i0il = '1'  ELSE nlO01ll;
	wire_nlO0ilO_dataout <= nlO1l0i WHEN nl0i0il = '1'  ELSE nlO01li;
	wire_nlO0iOi_dataout <= nlO1l1O WHEN nl0i0il = '1'  ELSE nlO01iO;
	wire_nlO0lll_dataout <= wire_nlO0Oil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0llO_dataout <= wire_nlO0OiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0lOi_dataout <= wire_nlO0Oli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0lOl_dataout <= wire_nlO0Oll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0lOO_dataout <= wire_nlO0OlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O_dataout <= wire_nlOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O0i_dataout <= wire_nlOi11i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O0l_dataout <= wire_nlOi11l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O0O_dataout <= wire_nlOi11O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O1i_dataout <= wire_nlO0OOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O1l_dataout <= wire_nlO0OOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0O1O_dataout <= wire_nlO0OOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0Oii_dataout <= wire_nlOi10i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO0Oil_dataout <= nlO0iOl WHEN nl0i0ii = '1'  ELSE nlOi10l;
	wire_nlO0OiO_dataout <= nlO000i WHEN nl0i0ii = '1'  ELSE nlO0lli;
	wire_nlO0Oli_dataout <= nlO001O WHEN nl0i0ii = '1'  ELSE nlO0liO;
	wire_nlO0Oll_dataout <= nlO001l WHEN nl0i0ii = '1'  ELSE nlO0lil;
	wire_nlO0OlO_dataout <= nlO001i WHEN nl0i0ii = '1'  ELSE nlO0lii;
	wire_nlO0OOi_dataout <= nlO01OO WHEN nl0i0ii = '1'  ELSE nlO0l0O;
	wire_nlO0OOl_dataout <= nlO01Ol WHEN nl0i0ii = '1'  ELSE nlO0l0l;
	wire_nlO0OOO_dataout <= nlO01Oi WHEN nl0i0ii = '1'  ELSE nlO0l0i;
	wire_nlO10il_dataout <= wire_nlO1i0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10iO_dataout <= wire_nlO1i0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10li_dataout <= wire_nlO1iii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10ll_dataout <= wire_nlO1iil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10lO_dataout <= wire_nlO1iiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10Oi_dataout <= wire_nlO1ili_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10Ol_dataout <= wire_nlO1ill_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO10OO_dataout <= wire_nlO1ilO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO110i_dataout <= nllO00O WHEN nl0i0ll = '1'  ELSE nllOllO;
	wire_nlO110l_dataout <= nllO00l WHEN nl0i0ll = '1'  ELSE nllOlll;
	wire_nlO110O_dataout <= nllO00i WHEN nl0i0ll = '1'  ELSE nllOlli;
	wire_nlO111i_dataout <= nllO0iO WHEN nl0i0ll = '1'  ELSE nllOlOO;
	wire_nlO111l_dataout <= nllO0il WHEN nl0i0ll = '1'  ELSE nllOlOl;
	wire_nlO111O_dataout <= nllO0ii WHEN nl0i0ll = '1'  ELSE nllOlOi;
	wire_nlO11ii_dataout <= nllO01O WHEN nl0i0ll = '1'  ELSE nllOliO;
	wire_nlO11il_dataout <= nllO01l WHEN nl0i0ll = '1'  ELSE nllOlil;
	wire_nlO11iO_dataout <= nllO01i WHEN nl0i0ll = '1'  ELSE nllOlii;
	wire_nlO11li_dataout <= nllO1OO WHEN nl0i0ll = '1'  ELSE nllOl0O;
	wire_nlO1i0i_dataout <= wire_nlO1l1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1i0l_dataout <= nlO11ll WHEN nl0i0li = '1'  ELSE nlO1l1l;
	wire_nlO1i0O_dataout <= nllOO1i WHEN nl0i0li = '1'  ELSE nlO10ii;
	wire_nlO1i1i_dataout <= wire_nlO1iOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1i1l_dataout <= wire_nlO1iOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1i1O_dataout <= wire_nlO1iOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1iii_dataout <= nllOlOO WHEN nl0i0li = '1'  ELSE nlO100O;
	wire_nlO1iil_dataout <= nllOlOl WHEN nl0i0li = '1'  ELSE nlO100l;
	wire_nlO1iiO_dataout <= nllOlOi WHEN nl0i0li = '1'  ELSE nlO100i;
	wire_nlO1ili_dataout <= nllOllO WHEN nl0i0li = '1'  ELSE nlO101O;
	wire_nlO1ill_dataout <= nllOlll WHEN nl0i0li = '1'  ELSE nlO101l;
	wire_nlO1ilO_dataout <= nllOlli WHEN nl0i0li = '1'  ELSE nlO101i;
	wire_nlO1iOi_dataout <= nllOliO WHEN nl0i0li = '1'  ELSE nlO11OO;
	wire_nlO1iOl_dataout <= nllOlil WHEN nl0i0li = '1'  ELSE nlO11Ol;
	wire_nlO1iOO_dataout <= nllOlii WHEN nl0i0li = '1'  ELSE nlO11Oi;
	wire_nlO1l1i_dataout <= nllOl0O WHEN nl0i0li = '1'  ELSE nlO11lO;
	wire_nlO1lOl_dataout <= wire_nlO1Oll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1lOO_dataout <= wire_nlO1OlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O0i_dataout <= wire_nlO011i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O0l_dataout <= wire_nlO011l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O0O_dataout <= wire_nlO011O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O1i_dataout <= wire_nlO1OOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O1l_dataout <= wire_nlO1OOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1O1O_dataout <= wire_nlO1OOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1Oii_dataout <= wire_nlO010i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1Oil_dataout <= wire_nlO010l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1OiO_dataout <= wire_nlO010O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1Oli_dataout <= wire_nlO01ii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlO1Oll_dataout <= nlO1l1l WHEN nl0i0iO = '1'  ELSE nlO01il;
	wire_nlO1OlO_dataout <= nlO10ii WHEN nl0i0iO = '1'  ELSE nlO1lOi;
	wire_nlO1OOi_dataout <= nlO100O WHEN nl0i0iO = '1'  ELSE nlO1llO;
	wire_nlO1OOl_dataout <= nlO100l WHEN nl0i0iO = '1'  ELSE nlO1lll;
	wire_nlO1OOO_dataout <= nlO100i WHEN nl0i0iO = '1'  ELSE nlO1lli;
	wire_nlOi00i_dataout <= wire_nlOii1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi00l_dataout <= wire_nlOii1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi00O_dataout <= wire_nlOii1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi01l_dataout <= wire_nlOi0Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi01O_dataout <= wire_nlOi0OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0ii_dataout <= wire_nlOii0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0il_dataout <= wire_nlOii0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0iO_dataout <= wire_nlOii0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0li_dataout <= wire_nlOiiii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0ll_dataout <= wire_nlOiiil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0lO_dataout <= wire_nlOiiiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0Oi_dataout <= wire_nlOiili_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOi0Ol_dataout <= nlOi10l WHEN nl0i00O = '1'  ELSE nlOiill;
	wire_nlOi0OO_dataout <= nlO0lli WHEN nl0i00O = '1'  ELSE nlOi01i;
	wire_nlOi10i_dataout <= nlO01iO WHEN nl0i0ii = '1'  ELSE nlO0iOO;
	wire_nlOi11i_dataout <= nlO01lO WHEN nl0i0ii = '1'  ELSE nlO0l1O;
	wire_nlOi11l_dataout <= nlO01ll WHEN nl0i0ii = '1'  ELSE nlO0l1l;
	wire_nlOi11O_dataout <= nlO01li WHEN nl0i0ii = '1'  ELSE nlO0l1i;
	wire_nlOii_dataout <= nllOi OR (wire_nl0OOOl_w_lg_nl0OOOO18w(0) AND wire_nlO0i_w_lg_nllOi54w(0));
	wire_nlOii0i_dataout <= nlO0l0O WHEN nl0i00O = '1'  ELSE nlOi1lO;
	wire_nlOii0l_dataout <= nlO0l0l WHEN nl0i00O = '1'  ELSE nlOi1ll;
	wire_nlOii0O_dataout <= nlO0l0i WHEN nl0i00O = '1'  ELSE nlOi1li;
	wire_nlOii1i_dataout <= nlO0liO WHEN nl0i00O = '1'  ELSE nlOi1OO;
	wire_nlOii1l_dataout <= nlO0lil WHEN nl0i00O = '1'  ELSE nlOi1Ol;
	wire_nlOii1O_dataout <= nlO0lii WHEN nl0i00O = '1'  ELSE nlOi1Oi;
	wire_nlOiiii_dataout <= nlO0l1O WHEN nl0i00O = '1'  ELSE nlOi1iO;
	wire_nlOiiil_dataout <= nlO0l1l WHEN nl0i00O = '1'  ELSE nlOi1il;
	wire_nlOiiiO_dataout <= nlO0l1i WHEN nl0i00O = '1'  ELSE nlOi1ii;
	wire_nlOiili_dataout <= nlO0iOO WHEN nl0i00O = '1'  ELSE nlOi10O;
	wire_nlOilil_dataout <= wire_nlOiO0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiliO_dataout <= wire_nlOiO0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOilli_dataout <= wire_nlOiOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOilll_dataout <= wire_nlOiOil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOillO_dataout <= wire_nlOiOiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOilOi_dataout <= wire_nlOiOli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOilOl_dataout <= wire_nlOiOll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOilOO_dataout <= wire_nlOiOlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiO_dataout <= wire_nlOOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiO0i_dataout <= wire_nlOl11i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiO0l_dataout <= nlOiill WHEN nl0i00l = '1'  ELSE nlOl11l;
	wire_nlOiO0O_dataout <= nlOi01i WHEN nl0i00l = '1'  ELSE nlOilii;
	wire_nlOiO1i_dataout <= wire_nlOiOOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiO1l_dataout <= wire_nlOiOOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiO1O_dataout <= wire_nlOiOOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOiOii_dataout <= nlOi1OO WHEN nl0i00l = '1'  ELSE nlOil0O;
	wire_nlOiOil_dataout <= nlOi1Ol WHEN nl0i00l = '1'  ELSE nlOil0l;
	wire_nlOiOiO_dataout <= nlOi1Oi WHEN nl0i00l = '1'  ELSE nlOil0i;
	wire_nlOiOli_dataout <= nlOi1lO WHEN nl0i00l = '1'  ELSE nlOil1O;
	wire_nlOiOll_dataout <= nlOi1ll WHEN nl0i00l = '1'  ELSE nlOil1l;
	wire_nlOiOlO_dataout <= nlOi1li WHEN nl0i00l = '1'  ELSE nlOil1i;
	wire_nlOiOOi_dataout <= nlOi1iO WHEN nl0i00l = '1'  ELSE nlOiiOO;
	wire_nlOiOOl_dataout <= nlOi1il WHEN nl0i00l = '1'  ELSE nlOiiOl;
	wire_nlOiOOO_dataout <= nlOi1ii WHEN nl0i00l = '1'  ELSE nlOiiOi;
	wire_nlOl00i_dataout <= wire_nlOli1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl00l_dataout <= wire_nlOli1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl00O_dataout <= wire_nlOli1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl01i_dataout <= wire_nlOl0Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl01l_dataout <= wire_nlOl0Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl01O_dataout <= wire_nlOl0OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl0ii_dataout <= wire_nlOli0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl0il_dataout <= wire_nlOli0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl0iO_dataout <= wire_nlOli0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl0li_dataout <= wire_nlOliii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl0ll_dataout <= nlOl11l WHEN nl0i00i = '1'  ELSE nlOliil;
	wire_nlOl0lO_dataout <= nlOilii WHEN nl0i00i = '1'  ELSE nlOl1Oi;
	wire_nlOl0Oi_dataout <= nlOil0O WHEN nl0i00i = '1'  ELSE nlOl1lO;
	wire_nlOl0Ol_dataout <= nlOil0l WHEN nl0i00i = '1'  ELSE nlOl1ll;
	wire_nlOl0OO_dataout <= nlOil0i WHEN nl0i00i = '1'  ELSE nlOl1li;
	wire_nlOl11i_dataout <= nlOi10O WHEN nl0i00l = '1'  ELSE nlOiilO;
	wire_nlOl1Ol_dataout <= wire_nlOl0ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOl1OO_dataout <= wire_nlOl0lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOli_dataout <= wire_nlOOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOli0i_dataout <= nlOiiOO WHEN nl0i00i = '1'  ELSE nlOl10O;
	wire_nlOli0l_dataout <= nlOiiOl WHEN nl0i00i = '1'  ELSE nlOl10l;
	wire_nlOli0O_dataout <= nlOiiOi WHEN nl0i00i = '1'  ELSE nlOl10i;
	wire_nlOli1i_dataout <= nlOil1O WHEN nl0i00i = '1'  ELSE nlOl1iO;
	wire_nlOli1l_dataout <= nlOil1l WHEN nl0i00i = '1'  ELSE nlOl1il;
	wire_nlOli1O_dataout <= nlOil1i WHEN nl0i00i = '1'  ELSE nlOl1ii;
	wire_nlOliii_dataout <= nlOiilO WHEN nl0i00i = '1'  ELSE nlOl11O;
	wire_nlOll_dataout <= wire_nlOOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOll0l_dataout <= wire_nlOlO1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOll0O_dataout <= wire_nlOlO1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllii_dataout <= wire_nlOlO0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllil_dataout <= wire_nlOlO0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOlliO_dataout <= wire_nlOlO0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllli_dataout <= wire_nlOlOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllll_dataout <= wire_nlOlOil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOlllO_dataout <= wire_nlOlOiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllOi_dataout <= wire_nlOlOli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllOl_dataout <= wire_nlOlOll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOllOO_dataout <= wire_nlOlOlO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOlO_dataout <= wire_n11i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOlO0i_dataout <= nlOl1lO WHEN nl0i01O = '1'  ELSE nlOll1O;
	wire_nlOlO0l_dataout <= nlOl1ll WHEN nl0i01O = '1'  ELSE nlOll1l;
	wire_nlOlO0O_dataout <= nlOl1li WHEN nl0i01O = '1'  ELSE nlOll1i;
	wire_nlOlO1i_dataout <= wire_nlOlOOi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOlO1l_dataout <= nlOliil WHEN nl0i01O = '1'  ELSE nlOlOOl;
	wire_nlOlO1O_dataout <= nlOl1Oi WHEN nl0i01O = '1'  ELSE nlOll0i;
	wire_nlOlOii_dataout <= nlOl1iO WHEN nl0i01O = '1'  ELSE nlOliOO;
	wire_nlOlOil_dataout <= nlOl1il WHEN nl0i01O = '1'  ELSE nlOliOl;
	wire_nlOlOiO_dataout <= nlOl1ii WHEN nl0i01O = '1'  ELSE nlOliOi;
	wire_nlOlOli_dataout <= nlOl10O WHEN nl0i01O = '1'  ELSE nlOlilO;
	wire_nlOlOll_dataout <= nlOl10l WHEN nl0i01O = '1'  ELSE nlOlill;
	wire_nlOlOlO_dataout <= nlOl10i WHEN nl0i01O = '1'  ELSE nlOlili;
	wire_nlOlOOi_dataout <= nlOl11O WHEN nl0i01O = '1'  ELSE nlOliiO;
	wire_nlOO00i_dataout <= wire_nlOOi1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO00l_dataout <= wire_nlOOi1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO00O_dataout <= wire_nlOOi1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO01i_dataout <= wire_nlOO0Oi_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO01l_dataout <= wire_nlOO0Ol_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO01O_dataout <= wire_nlOO0OO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO0ii_dataout <= wire_nlOOi0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO0il_dataout <= nlOlOOl WHEN nl0i01l = '1'  ELSE nlOOi0l;
	wire_nlOO0iO_dataout <= nlOll0i WHEN nl0i01l = '1'  ELSE nlOO1li;
	wire_nlOO0li_dataout <= nlOll1O WHEN nl0i01l = '1'  ELSE nlOO1iO;
	wire_nlOO0ll_dataout <= nlOll1l WHEN nl0i01l = '1'  ELSE nlOO1il;
	wire_nlOO0lO_dataout <= nlOll1i WHEN nl0i01l = '1'  ELSE nlOO1ii;
	wire_nlOO0Oi_dataout <= nlOliOO WHEN nl0i01l = '1'  ELSE nlOO10O;
	wire_nlOO0Ol_dataout <= nlOliOl WHEN nl0i01l = '1'  ELSE nlOO10l;
	wire_nlOO0OO_dataout <= nlOliOi WHEN nl0i01l = '1'  ELSE nlOO10i;
	wire_nlOO1ll_dataout <= wire_nlOO0il_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO1lO_dataout <= wire_nlOO0iO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO1Oi_dataout <= wire_nlOO0li_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO1Ol_dataout <= wire_nlOO0ll_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOO1OO_dataout <= wire_nlOO0lO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOi_dataout <= wire_n11l_o(0) WHEN nl0i1iO = '1'  ELSE nlO0l;
	wire_nlOOi0i_dataout <= nlOliiO WHEN nl0i01l = '1'  ELSE nlOlOOO;
	wire_nlOOi1i_dataout <= nlOlilO WHEN nl0i01l = '1'  ELSE nlOO11O;
	wire_nlOOi1l_dataout <= nlOlill WHEN nl0i01l = '1'  ELSE nlOO11l;
	wire_nlOOi1O_dataout <= nlOlili WHEN nl0i01l = '1'  ELSE nlOO11i;
	wire_nlOOl_dataout <= wire_n11l_o(1) WHEN nl0i1iO = '1'  ELSE nllii;
	wire_nlOOl0i_dataout <= wire_nlOOO1i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOl0l_dataout <= wire_nlOOO1l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOl0O_dataout <= wire_nlOOO1O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOl1l_dataout <= wire_nlOOlOl_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOl1O_dataout <= wire_nlOOlOO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlii_dataout <= wire_nlOOO0i_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlil_dataout <= wire_nlOOO0l_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOliO_dataout <= wire_nlOOO0O_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlli_dataout <= wire_nlOOOii_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlll_dataout <= wire_nlOOOil_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOllO_dataout <= wire_nlOOOiO_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlOi_dataout <= wire_nlOOOli_dataout AND NOT(wire_w_lg_reset_n53w(0));
	wire_nlOOlOl_dataout <= nlOOi0l WHEN nl0i01i = '1'  ELSE nlOOOll;
	wire_nlOOlOO_dataout <= nlOO1li WHEN nl0i01i = '1'  ELSE nlOOl1i;
	wire_nlOOO_dataout <= wire_n11l_o(2) WHEN nl0i1iO = '1'  ELSE nll0O;
	wire_nlOOO0i_dataout <= nlOO10O WHEN nl0i01i = '1'  ELSE nlOOilO;
	wire_nlOOO0l_dataout <= nlOO10l WHEN nl0i01i = '1'  ELSE nlOOill;
	wire_nlOOO0O_dataout <= nlOO10i WHEN nl0i01i = '1'  ELSE nlOOili;
	wire_nlOOO1i_dataout <= nlOO1iO WHEN nl0i01i = '1'  ELSE nlOOiOO;
	wire_nlOOO1l_dataout <= nlOO1il WHEN nl0i01i = '1'  ELSE nlOOiOl;
	wire_nlOOO1O_dataout <= nlOO1ii WHEN nl0i01i = '1'  ELSE nlOOiOi;
	wire_nlOOOii_dataout <= nlOO11O WHEN nl0i01i = '1'  ELSE nlOOiiO;
	wire_nlOOOil_dataout <= nlOO11l WHEN nl0i01i = '1'  ELSE nlOOiil;
	wire_nlOOOiO_dataout <= nlOO11i WHEN nl0i01i = '1'  ELSE nlOOiii;
	wire_nlOOOli_dataout <= nlOlOOO WHEN nl0i01i = '1'  ELSE nlOOi0O;
	wire_n001Oi_a <= ( "0" & nlllliO & nllllli & nllllll & nlllllO & nllllOi & nllllOl & nllllOO & nlllO1i & nlllO1l & nlllO1O & nlllO0i & nllO1Ol);
	wire_n001Oi_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n001Oi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n001Oi_a,
		b => wire_n001Oi_b,
		cin => wire_gnd,
		o => wire_n001Oi_o
	  );
	wire_n0101O_a <= ( "0" & nll00iO & nll00li & nll00ll & nll00lO & nll00Oi & nll00Ol & nll00OO & nll0i1i & nll0i1l & nll0i1O & nll0i0i & nll0lOl);
	wire_n0101O_b <= ( "0" & nlO01iO & nlO01li & nlO01ll & nlO01lO & nlO01Oi & nlO01Ol & nlO01OO & nlO001i & nlO001l & nlO001O & nlO000i & nlO0iOl);
	n0101O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n0101O_a,
		b => wire_n0101O_b,
		cin => wire_gnd,
		o => wire_n0101O_o
	  );
	wire_n010O_a <= ( nlO00i & nlO00i & nlO00l & nlO00O & nlO0ii & nlO0il & nlO0iO & nlO0li & nlO0ll & nlO0lO & nlO0Oi & nlO0Ol & nlO0OO & nlOi1i & nlOi1l & nlOi1O & nlOi0i & nlOi0l & nlOiOO & nlOiOi & nlOilO & nlOill & nlOili & nlOiiO & nlOiil & nlOiii & nlOi0O);
	wire_n010O_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n010O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_n010O_a,
		b => wire_n010O_b,
		cin => wire_gnd,
		o => wire_n010O_o
	  );
	wire_n0110i_a <= ( "0" & nll1O1O & nll1O0i & nll1O0l & nll1O0O & nll1Oii & nll1Oil & nll1OiO & nll1Oli & nll1Oll & nll1OlO & nll1OOi & nll00il);
	wire_n0110i_b <= ( "0" & nlO0iOO & nlO0l1i & nlO0l1l & nlO0l1O & nlO0l0i & nlO0l0l & nlO0l0O & nlO0lii & nlO0lil & nlO0liO & nlO0lli & nlOi10l);
	n0110i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n0110i_a,
		b => wire_n0110i_b,
		cin => wire_gnd,
		o => wire_n0110i_o
	  );
	wire_n01i1l_a <= ( "0" & nll0lOO & nll0O1i & nll0O1l & nll0O1O & nll0O0i & nll0O0l & nll0O0O & nll0Oii & nll0Oil & nll0OiO & nll0Oli & nlli00l);
	wire_n01i1l_b <= ( "0" & nlO1l1O & nlO1l0i & nlO1l0l & nlO1l0O & nlO1lii & nlO1lil & nlO1liO & nlO1lli & nlO1lll & nlO1llO & nlO1lOi & nlO01il);
	n01i1l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n01i1l_a,
		b => wire_n01i1l_b,
		cin => wire_gnd,
		o => wire_n01i1l_o
	  );
	wire_n01l1i_a <= ( "0" & nlli00O & nlli0ii & nlli0il & nlli0iO & nlli0li & nlli0ll & nlli0lO & nlli0Oi & nlli0Ol & nlli0OO & nllii1i & nllilll);
	wire_n01l1i_b <= ( "0" & nlO11lO & nlO11Oi & nlO11Ol & nlO11OO & nlO101i & nlO101l & nlO101O & nlO100i & nlO100l & nlO100O & nlO10ii & nlO1l1l);
	n01l1i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n01l1i_a,
		b => wire_n01l1i_b,
		cin => wire_gnd,
		o => wire_n01l1i_o
	  );
	wire_n01lOO_a <= ( "0" & nllillO & nllilOi & nllilOl & nllilOO & nlliO1i & nlliO1l & nlliO1O & nlliO0i & nlliO0l & nlliO0O & nlliOii & nlll01l);
	wire_n01lOO_b <= ( "0" & nllOl0O & nllOlii & nllOlil & nllOliO & nllOlli & nllOlll & nllOllO & nllOlOi & nllOlOl & nllOlOO & nllOO1i & nlO11ll);
	n01lOO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n01lOO_a,
		b => wire_n01lOO_b,
		cin => wire_gnd,
		o => wire_n01lOO_o
	  );
	wire_n01OOl_a <= ( "0" & nlll01O & nlll00i & nlll00l & nlll00O & nlll0ii & nlll0il & nlll0iO & nlll0li & nlll0ll & nlll0lO & nlll0Oi & nllllil);
	wire_n01OOl_b <= ( "0" & nllO1OO & nllO01i & nllO01l & nllO01O & nllO00i & nllO00l & nllO00O & nllO0ii & nllO0il & nllO0iO & nllO0li & nllOl0l);
	n01OOl :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n01OOl_a,
		b => wire_n01OOl_b,
		cin => wire_gnd,
		o => wire_n01OOl_o
	  );
	wire_n0i0l_a <= ( nlOl1i & nlOl1i & nlOl1l & nlOl1O & nlOl0i & nlOl0l & nlOl0O & nlOlii & nlOlil & nlOliO & nlOlli & nlOlll & nlOllO & nlOlOi & nlOlOl & nlOlOO & nlOO1i & nlOO1l & nlOO1O & nlOOOi & nlOOll & nlOOli & nlOOiO & nlOOil & nlOOii & nlOO0O & nlOO0l & nlOO0i);
	wire_n0i0l_b <= ( nlOOOl & nlOOOl & nlOOOO & n111i & n111l & n111O & n110i & n110l & n110O & n11ii & n11il & n11iO & n11li & n11ll & n11lO & n11Oi & n11Ol & n11OO & n101i & n10ll & n10iO & n10il & n10ii & n100O & n100l & n100i & n101O & n101l);
	n0i0l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_n0i0l_a,
		b => wire_n0i0l_b,
		cin => wire_gnd,
		o => wire_n0i0l_o
	  );
	wire_n0i10i_a <= ( wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8) & wire_n001OO_q_b(8 DOWNTO 0));
	wire_n0i10i_b <= ( wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8) & wire_n0001i_q_b(8 DOWNTO 0) & "0");
	n0i10i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0i10i_a,
		b => wire_n0i10i_b,
		cin => wire_gnd,
		o => wire_n0i10i_o
	  );
	wire_n0ii1i_a <= ( wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8) & wire_n0001l_q_b(8 DOWNTO 0) & "0" & "0");
	wire_n0ii1i_b <= ( wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8) & wire_n0001O_q_b(8 DOWNTO 0) & "0" & "0" & "0");
	n0ii1i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0ii1i_a,
		b => wire_n0ii1i_b,
		cin => wire_gnd,
		o => wire_n0ii1i_o
	  );
	wire_n0ilOi_a <= ( wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8) & wire_n0000i_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0");
	wire_n0ilOi_b <= ( wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8) & wire_n0000l_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0");
	n0ilOi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0ilOi_a,
		b => wire_n0ilOi_b,
		cin => wire_gnd,
		o => wire_n0ilOi_o
	  );
	wire_n0l1li_a <= ( wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8) & wire_n0000O_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0l1li_b <= ( wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8) & wire_n000ii_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0l1li :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0l1li_a,
		b => wire_n0l1li_b,
		cin => wire_gnd,
		o => wire_n0l1li_o
	  );
	wire_n0liii_a <= ( wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8) & wire_n000il_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0liii_b <= ( wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8) & wire_n000iO_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0liii :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0liii_a,
		b => wire_n0liii_b,
		cin => wire_gnd,
		o => wire_n0liii_o
	  );
	wire_n0lO0i_a <= ( wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8) & wire_n000li_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0lO0i_b <= ( wire_n000ll_q_b(8) & wire_n000ll_q_b(8) & wire_n000ll_q_b(8) & wire_n000ll_q_b(8) & wire_n000ll_q_b(8) & wire_n000ll_q_b(8) & wire_n000ll_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0lO0i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0lO0i_a,
		b => wire_n0lO0i_b,
		cin => wire_gnd,
		o => wire_n0lO0i_o
	  );
	wire_n0O01i_a <= ( wire_n000lO_q_b(8) & wire_n000lO_q_b(8) & wire_n000lO_q_b(8) & wire_n000lO_q_b(8) & wire_n000lO_q_b(8) & wire_n000lO_q_b(8 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_n0O01i_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	n0O01i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_n0O01i_a,
		b => wire_n0O01i_b,
		cin => wire_gnd,
		o => wire_n0O01i_o
	  );
	wire_n0O0i_a <= ( n10lO & n10lO & n10Oi & n10Ol & n10OO & n1i1i & n1i1l & n1i1O & n1i0i & n1i0l & n1i0O & n1iii & n1iil & n1iiO & n1ili & n1ill & n1ilO & n1iOi & n1iOl & n1liO & n1lii & n1l0O & n1l0l & n1l0i & n1l1O & n1l1l & n1l1i & n1iOO);
	wire_n0O0i_b <= ( n1lli & n1lli & n1lll & n1llO & n1lOi & n1lOl & n1lOO & n1O1i & n1O1l & n1O1O & n1O0i & n1O0l & n1O0O & n1Oii & n1Oil & n1OiO & n1Oli & n1Oll & n1OlO & n01ii & n010l & n010i & n011O & n011l & n011i & n1OOO & n1OOl & n1OOi);
	n0O0i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_n0O0i_a,
		b => wire_n0O0i_b,
		cin => wire_gnd,
		o => wire_n0O0i_o
	  );
	wire_n0OiOl_a <= ( n00liO & n00liO & n00lli & n00lll & n00llO & n00lOi & n00lOl & n00lOO & n00O1i & n00O1l & n00O1O & n00O0i & n00O0l & n00O0O & n00Oii & n00Oil & n00OiO & n00Oli & n0i10l & n0i11O & n0i11l & n0i11i & n00OOO & n00OOl & n00OOi & n00OlO & n00Oll);
	wire_n0OiOl_b <= ( n0i10O & n0i10O & n0i1ii & n0i1il & n0i1iO & n0i1li & n0i1ll & n0i1lO & n0i1Oi & n0i1Ol & n0i1OO & n0i01i & n0i01l & n0i01O & n0i00i & n0i00l & n0i00O & n0i0ii & n0ii1l & n0i0OO & n0i0Ol & n0i0Oi & n0i0lO & n0i0ll & n0i0li & n0i0iO & n0i0il);
	n0OiOl :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_n0OiOl_a,
		b => wire_n0OiOl_b,
		cin => wire_gnd,
		o => wire_n0OiOl_o
	  );
	wire_n0OOlO_a <= ( n0ii1O & n0ii1O & n0ii0i & n0ii0l & n0ii0O & n0iiii & n0iiil & n0iiiO & n0iili & n0iill & n0iilO & n0iiOi & n0iiOl & n0iiOO & n0il1i & n0il1l & n0il1O & n0il0i & n0ilOl & n0illO & n0illl & n0illi & n0iliO & n0ilil & n0ilii & n0il0O & n0il0l);
	wire_n0OOlO_b <= ( n0ilOO & n0ilOO & n0iO1i & n0iO1l & n0iO1O & n0iO0i & n0iO0l & n0iO0O & n0iOii & n0iOil & n0iOiO & n0iOli & n0iOll & n0iOlO & n0iOOi & n0iOOl & n0iOOO & n0l11i & n0l1ll & n0l1iO & n0l1il & n0l1ii & n0l10O & n0l10l & n0l10i & n0l11O & n0l11l);
	n0OOlO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_n0OOlO_a,
		b => wire_n0OOlO_b,
		cin => wire_gnd,
		o => wire_n0OOlO_o
	  );
	wire_n10li_a <= ( nliO1i & nliO1i & nliO1l & nliO1O & nliO0i & nliO0l & nliO0O & nliOii & nliOil & nliOiO & nliOli & nliOll & nliOlO & nliOOi & nliOOl & nliOOO & nll11i & nll11l & nll1lO & nll1li & nll1iO & nll1il & nll1ii & nll10O & nll10l & nll10i & nll11O);
	wire_n10li_b <= ( nll1Oi & nll1Oi & nll1Ol & nll1OO & nll01i & nll01l & nll01O & nll00i & nll00l & nll00O & nll0ii & nll0il & nll0iO & nll0li & nll0ll & nll0lO & nll0Oi & nll0Ol & nlliiO & nlliii & nlli0O & nlli0l & nlli0i & nlli1O & nlli1l & nlli1i & nll0OO);
	n10li :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_n10li_a,
		b => wire_n10li_b,
		cin => wire_gnd,
		o => wire_n10li_o
	  );
	wire_n11l_a <= ( nll0l & nll0O & nllii & nlO0l);
	wire_n11l_b <= ( "0" & "0" & "0" & "1");
	n11l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 4,
		width_b => 4,
		width_o => 4
	  )
	  PORT MAP ( 
		a => wire_n11l_a,
		b => wire_n11l_b,
		cin => wire_gnd,
		o => wire_n11l_o
	  );
	wire_n1iOOO_a <= ( "0" & nli110O & nli11ii & nli11il & nli11iO & nli11li & nli11ll & nli11lO & nli11Oi & nli11Ol & nli11OO & nli101i & nli1ill);
	wire_n1iOOO_b <= ( "0" & n1i0lO & n1i0Oi & n1i0Ol & n1i0OO & n1ii1i & n1ii1l & n1ii1O & n1ii0i & n1ii0l & n1ii0O & n1iiii & n1iO1l);
	n1iOOO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1iOOO_a,
		b => wire_n1iOOO_b,
		cin => wire_gnd,
		o => wire_n1iOOO_o
	  );
	wire_n1l0Oi_a <= ( "0" & nli011O & nli010i & nli010l & nli010O & nli01ii & nli01il & nli01iO & nli01li & nli01ll & nli01lO & nli01Oi & nli0iil);
	wire_n1l0Oi_b <= ( "0" & n100OO & n10i1i & n10i1l & n10i1O & n10i0i & n10i0l & n10i0O & n10iii & n10iil & n10iiO & n10ili & n10O0l);
	n1l0Oi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1l0Oi_a,
		b => wire_n1l0Oi_b,
		cin => wire_gnd,
		o => wire_n1l0Oi_o
	  );
	wire_n1l1Ol_a <= ( "0" & nli1ilO & nli1iOi & nli1iOl & nli1iOO & nli1l1i & nli1l1l & nli1l1O & nli1l0i & nli1l0l & nli1l0O & nli1lii & nli011l);
	wire_n1l1Ol_b <= ( "0" & n10O0O & n10Oii & n10Oil & n10OiO & n10Oli & n10Oll & n10OlO & n10OOi & n10OOl & n10OOO & n1i11i & n1i0ll);
	n1l1Ol :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1l1Ol_a,
		b => wire_n1l1Ol_b,
		cin => wire_gnd,
		o => wire_n1l1Ol_o
	  );
	wire_n1lil_a <= ( nllili & nllili & nllill & nllilO & nlliOi & nlliOl & nlliOO & nlll1i & nlll1l & nlll1O & nlll0i & nlll0l & nlll0O & nlllii & nlllil & nllliO & nlllli & nlllll & nllO0O & nllO0i & nllO1O & nllO1l & nllO1i & nlllOO & nlllOl & nlllOi & nllllO);
	wire_n1lil_b <= ( nllOii & nllOii & nllOil & nllOiO & nllOli & nllOll & nllOlO & nllOOi & nllOOl & nllOOO & nlO11i & nlO11l & nlO11O & nlO10i & nlO10l & nlO10O & nlO1ii & nlO1il & nlO01O & nlO01i & nlO1OO & nlO1Ol & nlO1Oi & nlO1lO & nlO1ll & nlO1li & nlO1iO);
	n1lil :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_n1lil_a,
		b => wire_n1lil_b,
		cin => wire_gnd,
		o => wire_n1lil_o
	  );
	wire_n1lilO_a <= ( "0" & nli0iiO & nli0ili & nli0ill & nli0ilO & nli0iOi & nli0iOl & nli0iOO & nli0l1i & nli0l1l & nli0l1O & nli0l0i & nli0OOl);
	wire_n1lilO_b <= ( "0" & n11OiO & n11Oli & n11Oll & n11OlO & n11OOi & n11OOl & n11OOO & n1011i & n1011l & n1011O & n1010i & n100Ol);
	n1lilO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1lilO_a,
		b => wire_n1lilO_b,
		cin => wire_gnd,
		o => wire_n1lilO_o
	  );
	wire_n1llll_a <= ( "0" & nli0OOO & nlii11i & nlii11l & nlii11O & nlii10i & nlii10l & nlii10O & nlii1ii & nlii1il & nlii1iO & nlii1li & nliii0l);
	wire_n1llll_b <= ( "0" & n11i1O & n11i0i & n11i0l & n11i0O & n11iii & n11iil & n11iiO & n11ili & n11ill & n11ilO & n11iOi & n11Oil);
	n1llll :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1llll_a,
		b => wire_n1llll_b,
		cin => wire_gnd,
		o => wire_n1llll_o
	  );
	wire_n1lOli_a <= ( "0" & nliii0O & nliiiii & nliiiil & nliiiiO & nliiili & nliiill & nliiilO & nliiiOi & nliiiOl & nliiiOO & nliil1i & nliiOll);
	wire_n1lOli_b <= ( "0" & nlOOOlO & nlOOOOi & nlOOOOl & nlOOOOO & n1111i & n1111l & n1111O & n1110i & n1110l & n1110O & n111ii & n11i1l);
	n1lOli :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1lOli_a,
		b => wire_n1lOli_b,
		cin => wire_gnd,
		o => wire_n1lOli_o
	  );
	wire_n1O0il_a <= ( "0" & nlili1O & nlili0i & nlili0l & nlili0O & nliliii & nliliil & nliliiO & nlilili & nlilill & nlililO & nliliOi & nlilOil);
	wire_n1O0il_b <= ( "0" & nlOlOOO & nlOO11i & nlOO11l & nlOO11O & nlOO10i & nlOO10l & nlOO10O & nlOO1ii & nlOO1il & nlOO1iO & nlOO1li & nlOOi0l);
	n1O0il :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1O0il_a,
		b => wire_n1O0il_b,
		cin => wire_gnd,
		o => wire_n1O0il_o
	  );
	wire_n1O1iO_a <= ( "0" & nliiOlO & nliiOOi & nliiOOl & nliiOOO & nlil11i & nlil11l & nlil11O & nlil10i & nlil10l & nlil10O & nlil1ii & nlili1l);
	wire_n1O1iO_b <= ( "0" & nlOOi0O & nlOOiii & nlOOiil & nlOOiiO & nlOOili & nlOOill & nlOOilO & nlOOiOi & nlOOiOl & nlOOiOO & nlOOl1i & nlOOOll);
	n1O1iO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1O1iO_a,
		b => wire_n1O1iO_b,
		cin => wire_gnd,
		o => wire_n1O1iO_o
	  );
	wire_n1Oiii_a <= ( "0" & nliO0OO & nliOi1i & nliOi1l & nliOi1O & nliOi0i & nliOi0l & nliOi0O & nliOiii & nliOiil & nliOiiO & nliOili & nliOO0l);
	wire_n1Oiii_b <= ( "0" & nlOl11O & nlOl10i & nlOl10l & nlOl10O & nlOl1ii & nlOl1il & nlOl1iO & nlOl1li & nlOl1ll & nlOl1lO & nlOl1Oi & nlOliil);
	n1Oiii :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1Oiii_a,
		b => wire_n1Oiii_b,
		cin => wire_gnd,
		o => wire_n1Oiii_o
	  );
	wire_n1Ol0O_a <= ( "0" & nliOO0O & nliOOii & nliOOil & nliOOiO & nliOOli & nliOOll & nliOOlO & nliOOOi & nliOOOl & nliOOOO & nll111i & nll10ll);
	wire_n1Ol0O_b <= ( "0" & nlOiilO & nlOiiOi & nlOiiOl & nlOiiOO & nlOil1i & nlOil1l & nlOil1O & nlOil0i & nlOil0l & nlOil0O & nlOilii & nlOl11l);
	n1Ol0O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1Ol0O_a,
		b => wire_n1Ol0O_b,
		cin => wire_gnd,
		o => wire_n1Ol0O_o
	  );
	wire_n1OO0l_a <= ( "0" & nll10lO & nll10Oi & nll10Ol & nll10OO & nll1i1i & nll1i1l & nll1i1O & nll1i0i & nll1i0l & nll1i0O & nll1iii & nll1O1l);
	wire_n1OO0l_b <= ( "0" & nlOi10O & nlOi1ii & nlOi1il & nlOi1iO & nlOi1li & nlOi1ll & nlOi1lO & nlOi1Oi & nlOi1Ol & nlOi1OO & nlOi01i & nlOiill);
	n1OO0l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 13,
		width_b => 13,
		width_o => 13
	  )
	  PORT MAP ( 
		a => wire_n1OO0l_a,
		b => wire_n1OO0l_b,
		cin => wire_gnd,
		o => wire_n1OO0l_o
	  );
	wire_ni00i_a <= ( n01il & n01il & n01iO & n01li & n01ll & n01lO & n01Oi & n01Ol & n01OO & n001i & n001l & n001O & n000i & n000l & n000O & n00ii & n00il & n00iO & n00li & n00ll & n0i0O & n0i0i & n0i1O & n0i1l & n0i1i & n00OO & n00Ol & n00Oi & n00lO);
	wire_ni00i_b <= ( n0iii & n0iii & n0iil & n0iiO & n0ili & n0ill & n0ilO & n0iOi & n0iOl & n0iOO & n0l1i & n0l1l & n0l1O & n0l0i & n0l0l & n0l0O & n0lii & n0lil & n0liO & n0lli & n0O0l & n0O1O & n0O1l & n0O1i & n0lOO & n0lOl & n0lOi & n0llO & n0lll);
	ni00i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 29,
		width_b => 29,
		width_o => 29
	  )
	  PORT MAP ( 
		a => wire_ni00i_a,
		b => wire_ni00i_b,
		cin => wire_gnd,
		o => wire_ni00i_o
	  );
	wire_ni01ii_a <= ( n0O01O & n0O01O & n0O00i & n0O00l & n0O00O & n0O0ii & n0O0il & n0O0iO & n0O0li & n0O0ll & n0O0lO & n0O0Oi & n0O0Ol & n0O0OO & n0Oi1i & n0Oi1l & n0Oi1O & n0Oi0i & n0Oi0l & n0OiOO & n0OiOi & n0OilO & n0Oill & n0Oili & n0OiiO & n0Oiil & n0Oiii & n0Oi0O);
	wire_ni01ii_b <= ( n0Ol1i & n0Ol1i & n0Ol1l & n0Ol1O & n0Ol0i & n0Ol0l & n0Ol0O & n0Olii & n0Olil & n0OliO & n0Olli & n0Olll & n0OllO & n0OlOi & n0OlOl & n0OlOO & n0OO1i & n0OO1l & n0OO1O & n0OOOi & n0OOll & n0OOli & n0OOiO & n0OOil & n0OOii & n0OO0O & n0OO0l & n0OO0i);
	ni01ii :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_ni01ii_a,
		b => wire_ni01ii_b,
		cin => wire_gnd,
		o => wire_ni01ii_o
	  );
	wire_ni0i0O_a <= ( n0OOOl & n0OOOl & n0OOOO & ni111i & ni111l & ni111O & ni110i & ni110l & ni110O & ni11ii & ni11il & ni11iO & ni11li & ni11ll & ni11lO & ni11Oi & ni11Ol & ni11OO & ni101i & ni10ll & ni10iO & ni10il & ni10ii & ni100O & ni100l & ni100i & ni101O & ni101l);
	wire_ni0i0O_b <= ( ni10lO & ni10lO & ni10Oi & ni10Ol & ni10OO & ni1i1i & ni1i1l & ni1i1O & ni1i0i & ni1i0l & ni1i0O & ni1iii & ni1iil & ni1iiO & ni1ili & ni1ill & ni1ilO & ni1iOi & ni1iOl & ni1liO & ni1lii & ni1l0O & ni1l0l & ni1l0i & ni1l1O & ni1l1l & ni1l1i & ni1iOO);
	ni0i0O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_ni0i0O_a,
		b => wire_ni0i0O_b,
		cin => wire_gnd,
		o => wire_ni0i0O_o
	  );
	wire_ni0O0O_a <= ( ni1lli & ni1lli & ni1lll & ni1llO & ni1lOi & ni1lOl & ni1lOO & ni1O1i & ni1O1l & ni1O1O & ni1O0i & ni1O0l & ni1O0O & ni1Oii & ni1Oil & ni1OiO & ni1Oli & ni1Oll & ni1OlO & ni1OOi & ni01il & ni010O & ni010l & ni010i & ni011O & ni011l & ni011i & ni1OOO & ni1OOl);
	wire_ni0O0O_b <= ( ni01iO & ni01iO & ni01li & ni01ll & ni01lO & ni01Oi & ni01Ol & ni01OO & ni001i & ni001l & ni001O & ni000i & ni000l & ni000O & ni00ii & ni00il & ni00iO & ni00li & ni00ll & ni00lO & ni0iii & ni0i0l & ni0i0i & ni0i1O & ni0i1l & ni0i1i & ni00OO & ni00Ol & ni00Oi);
	ni0O0O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 29,
		width_b => 29,
		width_o => 29
	  )
	  PORT MAP ( 
		a => wire_ni0O0O_a,
		b => wire_ni0O0O_b,
		cin => wire_gnd,
		o => wire_ni0O0O_o
	  );
	wire_ni10li_a <= ( n0l1lO & n0l1lO & n0l1Oi & n0l1Ol & n0l1OO & n0l01i & n0l01l & n0l01O & n0l00i & n0l00l & n0l00O & n0l0ii & n0l0il & n0l0iO & n0l0li & n0l0ll & n0l0lO & n0l0Oi & n0liil & n0li0O & n0li0l & n0li0i & n0li1O & n0li1l & n0li1i & n0l0OO & n0l0Ol);
	wire_ni10li_b <= ( n0liiO & n0liiO & n0lili & n0lill & n0lilO & n0liOi & n0liOl & n0liOO & n0ll1i & n0ll1l & n0ll1O & n0ll0i & n0ll0l & n0ll0O & n0llii & n0llil & n0lliO & n0llli & n0lO0l & n0lO1O & n0lO1l & n0lO1i & n0llOO & n0llOl & n0llOi & n0lllO & n0llll);
	ni10li :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_ni10li_a,
		b => wire_ni10li_b,
		cin => wire_gnd,
		o => wire_ni10li_o
	  );
	wire_ni1lil_a <= ( n0lO0O & n0lO0O & n0lOii & n0lOil & n0lOiO & n0lOli & n0lOll & n0lOlO & n0lOOi & n0lOOl & n0lOOO & n0O11i & n0O11l & n0O11O & n0O10i & n0O10l & n0O10O & n0O1ii & n0O01l & n0O1OO & n0O1Ol & n0O1Oi & n0O1lO & n0O1ll & n0O1li & n0O1iO & n0O1il);
	wire_ni1lil_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	ni1lil :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_ni1lil_a,
		b => wire_ni1lil_b,
		cin => wire_gnd,
		o => wire_ni1lil_o
	  );
	wire_nii01O_a <= ( wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12) & wire_n000Oi_q_b(12 DOWNTO 0));
	wire_nii01O_b <= ( wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12) & wire_n000Ol_q_b(12 DOWNTO 0) & "0");
	nii01O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nii01O_a,
		b => wire_nii01O_b,
		cin => wire_gnd,
		o => wire_nii01O_o
	  );
	wire_niiiOO_a <= ( wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12) & wire_n000OO_q_b(12 DOWNTO 0) & "0" & "0");
	wire_niiiOO_b <= ( wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12) & wire_n00i1i_q_b(12 DOWNTO 0) & "0" & "0" & "0");
	niiiOO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_niiiOO_a,
		b => wire_niiiOO_b,
		cin => wire_gnd,
		o => wire_niiiOO_o
	  );
	wire_niiOlO_a <= ( wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12) & wire_n00i1l_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0");
	wire_niiOlO_b <= ( wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12) & wire_n00i1O_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0");
	niiOlO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_niiOlO_a,
		b => wire_niiOlO_b,
		cin => wire_gnd,
		o => wire_niiOlO_o
	  );
	wire_nil0iO_a <= ( wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12) & wire_n00i0i_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nil0iO_b <= ( wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12) & wire_n00i0l_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nil0iO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nil0iO_a,
		b => wire_nil0iO_b,
		cin => wire_gnd,
		o => wire_nil0iO_o
	  );
	wire_nil0l_a <= ( ni0iil & ni0iil & ni0iiO & ni0ili & ni0ill & ni0ilO & ni0iOi & ni0iOl & ni0iOO & ni0l1i & ni0l1l & ni0l1O & ni0l0i & ni0l0l & ni0l0O & ni0lii & ni0lil & ni0liO & ni0lli & ni0lll & ni0llO & ni0Oii & ni0O0l & ni0O0i & ni0O1O & ni0O1l & ni0O1i & ni0lOO & ni0lOl & ni0lOi);
	wire_nil0l_b <= ( nl0lii & nl0lii & nl0lil & nl0liO & nl0lli & nl0lll & nl0llO & nl0lOi & nl0lOl & nl0lOO & nl0O1i & nl0O1l & nl0O1O & nl0O0i & nl0O0l & nl0O0O & nl0Oii & nl0Oil & nl0OiO & nl0Oli & nl0Oll & nli10O & nli10i & nli11O & nli11l & nli11i & nl0OOO & nl0OOl & nl0OOi & nl0OlO);
	nil0l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 30,
		width_b => 30,
		width_o => 30
	  )
	  PORT MAP ( 
		a => wire_nil0l_a,
		b => wire_nil0l_b,
		cin => wire_gnd,
		o => wire_nil0l_o
	  );
	wire_nill0O_a <= ( wire_n00i0O_q_b(12) & wire_n00i0O_q_b(12) & wire_n00i0O_q_b(12) & wire_n00i0O_q_b(12) & wire_n00i0O_q_b(12) & wire_n00i0O_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nill0O_b <= ( wire_n00iii_q_b(12) & wire_n00iii_q_b(12) & wire_n00iii_q_b(12) & wire_n00iii_q_b(12) & wire_n00iii_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nill0O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nill0O_a,
		b => wire_nill0O_b,
		cin => wire_gnd,
		o => wire_nill0O_o
	  );
	wire_niO0OO_a <= ( wire_n00ili_q_b(12) & wire_n00ili_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_niO0OO_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	niO0OO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_niO0OO_a,
		b => wire_niO0OO_b,
		cin => wire_gnd,
		o => wire_niO0OO_o
	  );
	wire_niO11O_a <= ( wire_n00iil_q_b(12) & wire_n00iil_q_b(12) & wire_n00iil_q_b(12) & wire_n00iil_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_niO11O_b <= ( wire_n00iiO_q_b(12) & wire_n00iiO_q_b(12) & wire_n00iiO_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	niO11O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_niO11O_a,
		b => wire_niO11O_b,
		cin => wire_gnd,
		o => wire_niO11O_o
	  );
	wire_niOlOi_a <= ( ni0Oil & ni0Oil & ni0OiO & ni0Oli & ni0Oll & ni0OlO & ni0OOi & ni0OOl & ni0OOO & nii11i & nii11l & nii11O & nii10i & nii10l & nii10O & nii1ii & nii1il & nii1iO & nii00i & nii01l & nii01i & nii1OO & nii1Ol & nii1Oi & nii1lO & nii1ll & nii1li);
	wire_niOlOi_b <= ( nii00l & nii00l & nii00O & nii0ii & nii0il & nii0iO & nii0li & nii0ll & nii0lO & nii0Oi & nii0Ol & nii0OO & niii1i & niii1l & niii1O & niii0i & niii0l & niii0O & niil1i & niiiOl & niiiOi & niiilO & niiill & niiili & niiiiO & niiiil & niiiii);
	niOlOi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_niOlOi_a,
		b => wire_niOlOi_b,
		cin => wire_gnd,
		o => wire_niOlOi_o
	  );
	wire_nl000O_a <= ( niOi1l & niOi1l & niOi1O & niOi0i & niOi0l & niOi0O & niOiii & niOiil & niOiiO & niOili & niOill & niOilO & niOiOi & niOiOl & niOiOO & niOl1i & niOl1l & niOl1O & niOl0i & niOlOl & niOllO & niOlll & niOlli & niOliO & niOlil & niOlii & niOl0O & niOl0l);
	wire_nl000O_b <= ( niOlOO & niOlOO & niOO1i & niOO1l & niOO1O & niOO0i & niOO0l & niOO0O & niOOii & niOOil & niOOiO & niOOli & niOOll & niOOlO & niOOOi & niOOOl & niOOOO & nl111i & nl111l & nl11lO & nl11li & nl11iO & nl11il & nl11ii & nl110O & nl110l & nl110i & nl111O);
	nl000O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_nl000O_a,
		b => wire_nl000O_b,
		cin => wire_gnd,
		o => wire_nl000O_o
	  );
	wire_nl0l0l_a <= ( nl11Oi & nl11Oi & nl11Ol & nl11OO & nl101i & nl101l & nl101O & nl100i & nl100l & nl100O & nl10ii & nl10il & nl10iO & nl10li & nl10ll & nl10lO & nl10Oi & nl10Ol & nl10OO & nl1ili & nl1iil & nl1iii & nl1i0O & nl1i0l & nl1i0i & nl1i1O & nl1i1l & nl1i1i);
	wire_nl0l0l_b <= ( nl1ill & nl1ill & nl1ilO & nl1iOi & nl1iOl & nl1iOO & nl1l1i & nl1l1l & nl1l1O & nl1l0i & nl1l0l & nl1l0O & nl1lii & nl1lil & nl1liO & nl1lli & nl1lll & nl1llO & nl1lOi & nl1Oil & nl1O0O & nl1O0l & nl1O0i & nl1O1O & nl1O1l & nl1O1i & nl1lOO & nl1lOl);
	nl0l0l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_nl0l0l_a,
		b => wire_nl0l0l_b,
		cin => wire_gnd,
		o => wire_nl0l0l_o
	  );
	wire_nl10O_a <= ( n0O0O & n0O0O & n0Oii & n0Oil & n0OiO & n0Oli & n0Oll & n0OlO & n0OOi & n0OOl & n0OOO & ni11i & ni11l & ni11O & ni10i & ni10l & ni10O & ni1ii & ni1il & ni1iO & ni1li & ni00l & ni01O & ni01l & ni01i & ni1OO & ni1Ol & ni1Oi & ni1lO & ni1ll);
	wire_nl10O_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nl10O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 30,
		width_b => 30,
		width_o => 30
	  )
	  PORT MAP ( 
		a => wire_nl10O_a,
		b => wire_nl10O_b,
		cin => wire_gnd,
		o => wire_nl10O_o
	  );
	wire_nl11ll_a <= ( niil1l & niil1l & niil1O & niil0i & niil0l & niil0O & niilii & niilil & niiliO & niilli & niilll & niillO & niilOi & niilOl & niilOO & niiO1i & niiO1l & niiO1O & niiOOi & niiOll & niiOli & niiOiO & niiOil & niiOii & niiO0O & niiO0l & niiO0i);
	wire_nl11ll_b <= ( niiOOl & niiOOl & niiOOO & nil11i & nil11l & nil11O & nil10i & nil10l & nil10O & nil1ii & nil1il & nil1iO & nil1li & nil1ll & nil1lO & nil1Oi & nil1Ol & nil1OO & nil0li & nil0il & nil0ii & nil00O & nil00l & nil00i & nil01O & nil01l & nil01i);
	nl11ll :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_nl11ll_a,
		b => wire_nl11ll_b,
		cin => wire_gnd,
		o => wire_nl11ll_o
	  );
	wire_nl1iiO_a <= ( nil0ll & nil0ll & nil0lO & nil0Oi & nil0Ol & nil0OO & nili1i & nili1l & nili1O & nili0i & nili0l & nili0O & niliii & niliil & niliiO & nilili & nilill & nililO & nillii & nill0l & nill0i & nill1O & nill1l & nill1i & niliOO & niliOl & niliOi);
	wire_nl1iiO_b <= ( nillil & nillil & nilliO & nillli & nillll & nilllO & nillOi & nillOl & nillOO & nilO1i & nilO1l & nilO1O & nilO0i & nilO0l & nilO0O & nilOii & nilOil & nilOiO & niO10i & niO11l & niO11i & nilOOO & nilOOl & nilOOi & nilOlO & nilOll & nilOli);
	nl1iiO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_nl1iiO_a,
		b => wire_nl1iiO_b,
		cin => wire_gnd,
		o => wire_nl1iiO_o
	  );
	wire_nl1Oii_a <= ( niO10l & niO10l & niO10O & niO1ii & niO1il & niO1iO & niO1li & niO1ll & niO1lO & niO1Oi & niO1Ol & niO1OO & niO01i & niO01l & niO01O & niO00i & niO00l & niO00O & niOi1i & niO0Ol & niO0Oi & niO0lO & niO0ll & niO0li & niO0iO & niO0il & niO0ii);
	wire_nl1Oii_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nl1Oii :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_nl1Oii_a,
		b => wire_nl1Oii_b,
		cin => wire_gnd,
		o => wire_nl1Oii_o
	  );
	wire_nli0i_a <= ( ni00O & ni00O & ni0ii & ni0il & ni0iO & ni0li & ni0ll & ni0lO & ni0Oi & ni0Ol & ni0OO & nii1i & nii1l & nii1O & nii0i & nii0l & nii0O & niiii & niiil & niiiO & niili & niill & nil0O & nil0i & nil1O & nil1l & nil1i & niiOO & niiOl & niiOi & niilO);
	wire_nli0i_b <= ( nilii & nilii & nilil & niliO & nilli & nilll & nillO & nilOi & nilOl & nilOO & niO1i & niO1l & niO1O & niO0i & niO0l & niO0O & niOii & niOil & niOiO & niOli & niOll & niOlO & nl1ii & nl10l & nl10i & nl11O & nl11l & nl11i & niOOO & niOOl & niOOi);
	nli0i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 31,
		width_b => 31,
		width_o => 31
	  )
	  PORT MAP ( 
		a => wire_nli0i_a,
		b => wire_nli0i_b,
		cin => wire_gnd,
		o => wire_nli0i_o
	  );
	wire_nli10l_a <= ( nl1OiO & nl1OiO & nl1Oli & nl1Oll & nl1OlO & nl1OOi & nl1OOl & nl1OOO & nl011i & nl011l & nl011O & nl010i & nl010l & nl010O & nl01ii & nl01il & nl01iO & nl01li & nl01ll & nl01lO & nl00ii & nl000l & nl000i & nl001O & nl001l & nl001i & nl01OO & nl01Ol & nl01Oi);
	wire_nli10l_b <= ( nl00il & nl00il & nl00iO & nl00li & nl00ll & nl00lO & nl00Oi & nl00Ol & nl00OO & nl0i1i & nl0i1l & nl0i1O & nl0i0i & nl0i0l & nl0i0O & nl0iii & nl0iil & nl0iiO & nl0ili & nl0ill & nl0l0O & nl0l0i & nl0l1O & nl0l1l & nl0l1i & nl0iOO & nl0iOl & nl0iOi & nl0ilO);
	nli10l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 29,
		width_b => 29,
		width_o => 29
	  )
	  PORT MAP ( 
		a => wire_nli10l_a,
		b => wire_nli10l_b,
		cin => wire_gnd,
		o => wire_nli10l_o
	  );
	wire_nlii1l_a <= ( wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12) & wire_n00ill_q_b(12 DOWNTO 0));
	wire_nlii1l_b <= ( wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12) & wire_n00ilO_q_b(12 DOWNTO 0) & "0");
	nlii1l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nlii1l_a,
		b => wire_nlii1l_b,
		cin => wire_gnd,
		o => wire_nlii1l_o
	  );
	wire_nlilOl_a <= ( wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12) & wire_n00iOi_q_b(12 DOWNTO 0) & "0" & "0");
	wire_nlilOl_b <= ( wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12) & wire_n00iOl_q_b(12 DOWNTO 0) & "0" & "0" & "0");
	nlilOl :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nlilOl_a,
		b => wire_nlilOl_b,
		cin => wire_gnd,
		o => wire_nlilOl_o
	  );
	wire_nll0i_a <= ( nl1il & nl1il & nl1iO & nl1li & nl1ll & nl1lO & nl1Oi & nl1Ol & nl1OO & nl01i & nl01l & nl01O & nl00i & nl00l & nl00O & nl0ii & nl0il & nl0iO & nl0li & nli0O & nli1O & nli1l & nli1i & nl0OO & nl0Ol & nl0Oi & nl0lO & nl0ll);
	wire_nll0i_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & wire_nli0l_w_lg_nl1il114w & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il & nl1il);
	nll0i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 28,
		width_b => 28,
		width_o => 28
	  )
	  PORT MAP ( 
		a => wire_nll0i_a,
		b => wire_nll0i_b,
		cin => wire_gnd,
		o => wire_nll0i_o
	  );
	wire_nll1ll_a <= ( wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12) & wire_n00iOO_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0");
	wire_nll1ll_b <= ( wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12) & wire_n00l1i_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0");
	nll1ll :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nll1ll_a,
		b => wire_nll1ll_b,
		cin => wire_gnd,
		o => wire_nll1ll_o
	  );
	wire_nlliil_a <= ( wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12) & wire_n00l1l_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nlliil_b <= ( wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12) & wire_n00l1O_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nlliil :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nlliil_a,
		b => wire_nlliil_b,
		cin => wire_gnd,
		o => wire_nlliil_o
	  );
	wire_nllO0l_a <= ( wire_n00l0i_q_b(12) & wire_n00l0i_q_b(12) & wire_n00l0i_q_b(12) & wire_n00l0i_q_b(12) & wire_n00l0i_q_b(12) & wire_n00l0i_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nllO0l_b <= ( wire_n00l0l_q_b(12) & wire_n00l0l_q_b(12) & wire_n00l0l_q_b(12) & wire_n00l0l_q_b(12) & wire_n00l0l_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nllO0l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nllO0l_a,
		b => wire_nllO0l_b,
		cin => wire_gnd,
		o => wire_nllO0l_o
	  );
	wire_nlO01l_a <= ( wire_n00l0O_q_b(12) & wire_n00l0O_q_b(12) & wire_n00l0O_q_b(12) & wire_n00l0O_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nlO01l_b <= ( wire_n00lii_q_b(12) & wire_n00lii_q_b(12) & wire_n00lii_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nlO01l :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nlO01l_a,
		b => wire_nlO01l_b,
		cin => wire_gnd,
		o => wire_nlO01l_o
	  );
	wire_nlOiOl_a <= ( wire_n00lil_q_b(12) & wire_n00lil_q_b(12 DOWNTO 0) & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nlOiOl_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nlOiOl :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 26,
		width_b => 26,
		width_o => 26
	  )
	  PORT MAP ( 
		a => wire_nlOiOl_a,
		b => wire_nlOiOl_b,
		cin => wire_gnd,
		o => wire_nlOiOl_o
	  );
	wire_nlOOlO_a <= ( nli1ii & nli1ii & nli1il & nli1iO & nli1li & nli1ll & nli1lO & nli1Oi & nli1Ol & nli1OO & nli01i & nli01l & nli01O & nli00i & nli00l & nli00O & nli0ii & nli0il & nlii1O & nlii1i & nli0OO & nli0Ol & nli0Oi & nli0lO & nli0ll & nli0li & nli0iO);
	wire_nlOOlO_b <= ( nlii0i & nlii0i & nlii0l & nlii0O & nliiii & nliiil & nliiiO & nliili & nliill & nliilO & nliiOi & nliiOl & nliiOO & nlil1i & nlil1l & nlil1O & nlil0i & nlil0l & nlilOO & nlilOi & nlillO & nlilll & nlilli & nliliO & nlilil & nlilii & nlil0O);
	nlOOlO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 27,
		width_b => 27,
		width_o => 27
	  )
	  PORT MAP ( 
		a => wire_nlOOlO_a,
		b => wire_nlOOlO_b,
		cin => wire_gnd,
		o => wire_nlOOlO_o
	  );
	wire_n10i_a <= ( nll0l & nll0O & nllii & nlO0l);
	wire_n10i_b <= ( "1" & "0" & "1" & "0");
	n10i :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 4,
		width_b => 4
	  )
	  PORT MAP ( 
		a => wire_n10i_a,
		b => wire_n10i_b,
		cin => wire_gnd,
		o => wire_n10i_o
	  );
	wire_nlO1i_a <= ( "1" & "0" & "1" & "0");
	wire_nlO1i_b <= ( nll0l & nll0O & nllii & nlO0l);
	nlO1i :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 4,
		width_b => 4
	  )
	  PORT MAP ( 
		a => wire_nlO1i_a,
		b => wire_nlO1i_b,
		cin => wire_vcc,
		o => wire_nlO1i_o
	  );
	wire_nl0O10i_data <= ( wire_nl0O1ii_dataout & "0" & wire_nl0O1lO_dataout & "0");
	wire_nl0O10i_sel <= ( nl0i10O & nl0Olll);
	nl0O10i :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nl0O10i_data,
		o => wire_nl0O10i_o,
		sel => wire_nl0O10i_sel
	  );
	wire_nl0O11i_data <= ( wire_nl0O10l_dataout & "0" & "0" & "0");
	wire_nl0O11i_sel <= ( nl0i10O & nl0Olll);
	nl0O11i :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nl0O11i_data,
		o => wire_nl0O11i_o,
		sel => wire_nl0O11i_sel
	  );
	wire_nl0O11l_data <= ( wire_nl0O10O_dataout & nl0i10l & nl0i10l & nl0i10l);
	wire_nl0O11l_sel <= ( nl0i10O & nl0Olll);
	nl0O11l :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nl0O11l_data,
		o => wire_nl0O11l_o,
		sel => wire_nl0O11l_sel
	  );
	wire_nl0O11O_data <= ( ast_source_ready & "1" & ast_source_ready & "0");
	wire_nl0O11O_sel <= ( nl0i10O & nl0Olll);
	nl0O11O :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nl0O11O_data,
		o => wire_nl0O11O_o,
		sel => wire_nl0O11O_sel
	  );
	wire_nliii_data <= ( wire_nll0i_o(15) & "1" & "1" & wire_nll0i_o(15));
	wire_nliii_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliii :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliii_data,
		o => wire_nliii_o,
		sel => wire_nliii_sel
	  );
	wire_nliil_data <= ( wire_nll0i_o(16) & "1" & "1" & wire_nll0i_o(16));
	wire_nliil_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliil :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliil_data,
		o => wire_nliil_o,
		sel => wire_nliil_sel
	  );
	wire_nliiO_data <= ( wire_nll0i_o(17) & "1" & "1" & wire_nll0i_o(17));
	wire_nliiO_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliiO :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliiO_data,
		o => wire_nliiO_o,
		sel => wire_nliiO_sel
	  );
	wire_nlili_data <= ( wire_nll0i_o(18) & "1" & "1" & wire_nll0i_o(18));
	wire_nlili_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nlili :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nlili_data,
		o => wire_nlili_o,
		sel => wire_nlili_sel
	  );
	wire_nlill_data <= ( wire_nll0i_o(19) & "1" & "1" & wire_nll0i_o(19));
	wire_nlill_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nlill :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nlill_data,
		o => wire_nlill_o,
		sel => wire_nlill_sel
	  );
	wire_nlilO_data <= ( wire_nll0i_o(20) & "1" & "1" & wire_nll0i_o(20));
	wire_nlilO_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nlilO :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nlilO_data,
		o => wire_nlilO_o,
		sel => wire_nlilO_sel
	  );
	wire_nliOi_data <= ( wire_nll0i_o(21) & "1" & "1" & wire_nll0i_o(21));
	wire_nliOi_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliOi :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliOi_data,
		o => wire_nliOi_o,
		sel => wire_nliOi_sel
	  );
	wire_nliOl_data <= ( wire_nll0i_o(22) & "1" & "1" & wire_nll0i_o(22));
	wire_nliOl_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliOl :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliOl_data,
		o => wire_nliOl_o,
		sel => wire_nliOl_sel
	  );
	wire_nliOO_data <= ( wire_nll0i_o(23) & "1" & "1" & wire_nll0i_o(23));
	wire_nliOO_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nliOO :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nliOO_data,
		o => wire_nliOO_o,
		sel => wire_nliOO_sel
	  );
	wire_nll1i_data <= ( wire_nll0i_o(24) & "1" & "1" & wire_nll0i_o(24));
	wire_nll1i_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nll1i :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nll1i_data,
		o => wire_nll1i_o,
		sel => wire_nll1i_sel
	  );
	wire_nll1l_data <= ( wire_nll0i_o(25) & "1" & "1" & wire_nll0i_o(25));
	wire_nll1l_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nll1l :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nll1l_data,
		o => wire_nll1l_o,
		sel => wire_nll1l_sel
	  );
	wire_nll1O_data <= ( wire_nll0i_o(26) & "1" & "0" & wire_nll0i_o(26));
	wire_nll1O_sel <= ( wire_nll0i_o(27 DOWNTO 26));
	nll1O :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nll1O_data,
		o => wire_nll1O_o,
		sel => wire_nll1O_sel
	  );
	wire_nl0il0O_data <= ( wire_nl0illO_dataout & "0" & nl0i1ii);
	wire_nl0il0O_sel <= ( nl0l1li & nl0l1il & nl0l1ii);
	nl0il0O :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_nl0il0O_data,
		o => wire_nl0il0O_o,
		sel => wire_nl0il0O_sel
	  );
	wire_nl0ilii_data <= ( nl00O0O & nl0i1ii & "0");
	wire_nl0ilii_sel <= ( nl0l1li & nl0l1il & nl0l1ii);
	nl0ilii :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_nl0ilii_data,
		o => wire_nl0ilii_o,
		sel => wire_nl0ilii_sel
	  );
	wire_nl0ilil_data <= ( wire_nl0ilOi_dataout & wire_w_lg_nl0i1ii7970w);
	wire_nl0ilil_sel <= ( nl0l1li & wire_nl0l1iO_w_lg_nl0l1li7977w);
	nl0ilil :  oper_selector
	  GENERIC MAP (
		width_data => 2,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_nl0ilil_data,
		o => wire_nl0ilil_o,
		sel => wire_nl0ilil_sel
	  );
	wire_nl0iliO_data <= ( wire_w_lg_w_lg_nl0i1ii7970w7975w & "0" & wire_w_lg_nl0i1ii7970w);
	wire_nl0iliO_sel <= ( nl0l1li & nl0l1il & nl0l1ii);
	nl0iliO :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_nl0iliO_data,
		o => wire_nl0iliO_o,
		sel => wire_nl0iliO_sel
	  );
	wire_nl0il0i_w_lg_almost_full7945w(0) <= NOT wire_nl0il0i_almost_full;
	wire_nl0il0i_aclr <= wire_w_lg_reset_n53w(0);
	wire_nl0il0i_data <= ( "0" & "0" & nl0l11O & nl0l11i & nl0iOOO & nl0iOOl & nl0iOOi & nl0iOlO & nl0iOll & nl0iOli & nl0iOiO & nl0iOil & nl0iOii & nl0il0l);
	nl0il0i :  scfifo
	  GENERIC MAP (
		ADD_RAM_OUTPUT_REGISTER => "ON",
		ALLOW_RWCYCLE_WHEN_FULL => "OFF",
		ALMOST_EMPTY_VALUE => 1,
		ALMOST_FULL_VALUE => 5,
		INTENDED_DEVICE_FAMILY => "Cyclone II",
		LPM_NUMWORDS => 7,
		LPM_SHOWAHEAD => "OFF",
		lpm_width => 14,
		LPM_WIDTHU => 3,
		OVERFLOW_CHECKING => "OFF",
		UNDERFLOW_CHECKING => "OFF",
		USE_EAB => "OFF"
	  )
	  PORT MAP ( 
		aclr => wire_nl0il0i_aclr,
		almost_full => wire_nl0il0i_almost_full,
		clock => clk,
		data => wire_nl0il0i_data,
		empty => wire_nl0il0i_empty,
		q => wire_nl0il0i_q,
		rdreq => wire_nl0iliO_o,
		sclr => wire_gnd,
		usedw => wire_nl0il0i_usedw,
		wrreq => nl0l1ll
	  );

 END RTL; --filter2
--synopsys translate_on
--VALID FILE
