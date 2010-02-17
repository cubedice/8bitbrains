-- megafunction wizard: %FIR Compiler v9.0%
-- GENERATION: XML

-- ============================================================
-- Megafunction Name(s):
-- 			filter2_ast
-- ============================================================
-- Generated by FIR Compiler 9.0 [Altera, IP Toolbench 1.3.0 Build 235]
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
-- ************************************************************
-- Copyright (C) 1991-2010 Altera Corporation
-- Any megafunction design, and related net list (encrypted or decrypted),
-- support information, device programming or simulation file, and any other
-- associated documentation or information provided by Altera or a partner
-- under Altera's Megafunction Partnership Program may be used only to
-- program PLD devices (but not masked PLD devices) from Altera.  Any other
-- use of such megafunction design, net list, support information, device
-- programming or simulation file, or any other related documentation or
-- information is prohibited for any other purpose, including, but not
-- limited to modification, reverse engineering, de-compiling, or use with
-- any other silicon devices, unless such use is explicitly licensed under
-- a separate agreement with Altera or a megafunction partner.  Title to
-- the intellectual property, including patents, copyrights, trademarks,
-- trade secrets, or maskworks, embodied in any such megafunction design,
-- net list, support information, device programming or simulation file, or
-- any other related documentation or information provided by Altera or a
-- megafunction partner, remains with Altera, the megafunction partner, or
-- their respective licensors.  No other licenses, including any licenses
-- needed under any third party's intellectual property, are provided herein.

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY filter2 IS
	PORT (
		clk	: IN STD_LOGIC;
		reset_n	: IN STD_LOGIC;
		ast_sink_data	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		ast_sink_valid	: IN STD_LOGIC;
		ast_source_ready	: IN STD_LOGIC;
		ast_sink_error	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		ast_source_data	: OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
		ast_sink_ready	: OUT STD_LOGIC;
		ast_source_valid	: OUT STD_LOGIC;
		ast_source_error	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
END filter2;

ARCHITECTURE SYN OF filter2 IS


	COMPONENT filter2_ast
	PORT (
		clk	: IN STD_LOGIC;
		reset_n	: IN STD_LOGIC;
		ast_sink_data	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		ast_sink_valid	: IN STD_LOGIC;
		ast_source_ready	: IN STD_LOGIC;
		ast_sink_error	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		ast_source_data	: OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
		ast_sink_ready	: OUT STD_LOGIC;
		ast_source_valid	: OUT STD_LOGIC;
		ast_source_error	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);

	END COMPONENT;

BEGIN

	filter2_ast_inst : filter2_ast
	PORT MAP (
		clk  =>  clk,
		reset_n  =>  reset_n,
		ast_sink_data  =>  ast_sink_data,
		ast_source_data  =>  ast_source_data,
		ast_sink_valid  =>  ast_sink_valid,
		ast_sink_ready  =>  ast_sink_ready,
		ast_source_valid  =>  ast_source_valid,
		ast_source_ready  =>  ast_source_ready,
		ast_sink_error  =>  ast_sink_error,
		ast_source_error  =>  ast_source_error
	);


END SYN;


-- =========================================================
-- FIR Compiler Wizard Data
-- ===============================
-- DO NOT EDIT FOLLOWING DATA
-- @Altera, IP Toolbench@
-- Warning: If you modify this section, FIR Compiler Wizard may not be able to reproduce your chosen configuration.
-- 
-- Retrieval info: <?xml version="1.0"?>
-- Retrieval info: <MEGACORE title="FIR Compiler"  version="9.0"  build="235"  iptb_version="1.3.0 Build 235"  format_version="120" >
-- Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.FIRModelClass"  active_core="filter2_ast" >
-- Retrieval info:   <STATIC_SECTION>
-- Retrieval info:    <PRIVATES>
-- Retrieval info:     <NAMESPACE name = "parameterization">
-- Retrieval info:      <PRIVATE name = "use_mem" value="1"  type="BOOLEAN"  enable="1" />
-- Retrieval info:      <PRIVATE name = "mem_type" value="M512"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "filter_rate" value="Single Rate"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "filter_factor" value="2"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "coefficient_scaling_type" value="Auto"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "coefficient_scaling_factor" value="6822.264280351417"  type="STRING"  enable="0" />
-- Retrieval info:      <PRIVATE name = "coefficient_bit_width" value="12"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "coefficient_binary_point_position" value="0"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "number_of_input_channels" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "input_number_system" value="Unsigned Binary"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "input_bit_width" value="12"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "input_binary_point_position" value="0"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "output_bit_width_method" value="Actual Coefficients"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_number_system" value="Custom Resolution"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_bit_width" value="12"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_bits_right_of_binary_point" value="12"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "output_bits_removed_from_lsb" value="15"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_lsb_remove_type" value="Round"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_msb_remove_type" value="Truncate"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "flow_control" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "flow_control_input" value="Slave Sink"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "flow_control_output" value="Master Source"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "device_family" value="Cyclone II"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "structure" value="Distributed Arithmetic : Fully Parallel Filter"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "pipeline_level" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "clocks_to_compute" value="2"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "number_of_serial_units" value="2"  type="INTEGER"  enable="0" />
-- Retrieval info:      <PRIVATE name = "data_storage" value="Logic Cells"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "coefficient_storage" value="M4K"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "multiplier_storage" value="Logic Cells"  type="STRING"  enable="0" />
-- Retrieval info:      <PRIVATE name = "force_non_symmetric_structure" value="0"  type="BOOLEAN"  enable="0" />
-- Retrieval info:      <PRIVATE name = "coefficients_reload" value="0"  type="BOOLEAN"  enable="1" />
-- Retrieval info:      <PRIVATE name = "coefficients_reload_sgl_clock" value="0"  type="BOOLEAN"  enable="1" />
-- Retrieval info:      <PRIVATE name = "max_clocks_to_compute" value="4"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "set_1" value="Low Pass Set, Floating, Band Pass, Hamming, 37, 4000.0, 400.0, 1000.0, 0, 0.00134666, 0.0031765, 0.00125562, -0.00301233, -0.00251476, 2.89101E-4, -0.0078158, -0.017567, 2.24669E-5, 0.0303455, 0.0234662, -0.00156248, 0.0239803, 0.05316, -0.0417755, -0.194268, -0.14715, 0.130333, 0.300047, 0.130333, -0.14715, -0.194268, -0.0417755, 0.05316, 0.0239803, -0.00156248, 0.0234662, 0.0303455, 2.24669E-5, -0.017567, -0.0078158, 2.89101E-4, -0.00251476, -0.00301233, 0.00125562, 0.0031765, 0.00134666"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "number_of_sets" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_full_bit_width" value="27"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_full_bits_right_of_binary_point" value="22"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "coefficient_reload_bit_width" value="11"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "logic_cell" value="1201"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "m512" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "m4k" value="39"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "m144k" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "m9k" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "mlab" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "megaram" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "dsp_block" value="0"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "input_clock_period" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "output_clock_period" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "throughput" value="1"  type="INTEGER"  enable="1" />
-- Retrieval info:      <PRIVATE name = "memory_units" value="3"  type="INTEGER"  enable="1" />
-- Retrieval info:     </NAMESPACE>
-- Retrieval info:     <NAMESPACE name = "simgen_enable">
-- Retrieval info:      <PRIVATE name = "matlab_enable" value="1"  type="BOOLEAN"  enable="1" />
-- Retrieval info:      <PRIVATE name = "testbench_enable" value="1"  type="BOOLEAN"  enable="1" />
-- Retrieval info:      <PRIVATE name = "testbench_simulation_clock_period" value="39.72"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "language" value="VHDL"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "enabled" value="1"  type="BOOLEAN"  enable="1" />
-- Retrieval info:     </NAMESPACE>
-- Retrieval info:     <NAMESPACE name = "simgen">
-- Retrieval info:      <PRIVATE name = "filename" value="filter2.vho"  type="STRING"  enable="1" />
-- Retrieval info:     </NAMESPACE>
-- Retrieval info:     <NAMESPACE name = "quartus_settings">
-- Retrieval info:      <PRIVATE name = "DEVICE" value="EP2C8T144C8"  type="STRING"  enable="1" />
-- Retrieval info:      <PRIVATE name = "FAMILY" value="Cyclone II"  type="STRING"  enable="1" />
-- Retrieval info:     </NAMESPACE>
-- Retrieval info:     <NAMESPACE name = "serializer"/>
-- Retrieval info:    </PRIVATES>
-- Retrieval info:    <FILES/>
-- Retrieval info:    <PORTS/>
-- Retrieval info:    <LIBRARIES/>
-- Retrieval info:   </STATIC_SECTION>
-- Retrieval info:  </NETLIST_SECTION>
-- Retrieval info: </MEGACORE>
-- =========================================================
-- RELATED_FILES: filter2_st.v, filter2_constraints.tcl, filter2_ast.vhd, filter2.vhd, filter2_ast.vhd, filter2.vhd;
-- IPFS_FILES: filter2.vho;
-- =========================================================
