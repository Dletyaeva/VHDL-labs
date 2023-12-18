-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/29/2023 18:35:51"

-- 
-- Device: Altera 10M50DCF484I7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	thunderbird_fsm IS
    PORT (
	i_clk : IN std_logic;
	i_reset : IN std_logic;
	i_left : IN std_logic;
	i_right : IN std_logic;
	o_lights_L : BUFFER std_logic_vector(2 DOWNTO 0);
	o_lights_R : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END thunderbird_fsm;

-- Design Ports Information
-- o_lights_L[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lights_L[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lights_L[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lights_R[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lights_R[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lights_R[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_right	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_left	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF thunderbird_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_left : std_logic;
SIGNAL ww_i_right : std_logic;
SIGNAL ww_o_lights_L : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_lights_R : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_lights_L[0]~output_o\ : std_logic;
SIGNAL \o_lights_L[1]~output_o\ : std_logic;
SIGNAL \o_lights_L[2]~output_o\ : std_logic;
SIGNAL \o_lights_R[0]~output_o\ : std_logic;
SIGNAL \o_lights_R[1]~output_o\ : std_logic;
SIGNAL \o_lights_R[2]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_left~input_o\ : std_logic;
SIGNAL \i_right~input_o\ : std_logic;
SIGNAL \next_state.Flash~0_combout\ : std_logic;
SIGNAL \i_reset~input_o\ : std_logic;
SIGNAL \i_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.Flash~q\ : std_logic;
SIGNAL \next_state.R1~0_combout\ : std_logic;
SIGNAL \current_state.R1~q\ : std_logic;
SIGNAL \current_state.R2~q\ : std_logic;
SIGNAL \current_state.R3~q\ : std_logic;
SIGNAL \current_state.L3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \current_state.OFF~q\ : std_logic;
SIGNAL \next_state.L1~0_combout\ : std_logic;
SIGNAL \current_state.L1~q\ : std_logic;
SIGNAL \current_state.L2~q\ : std_logic;
SIGNAL \o_lights_L~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \o_lights_L[2]~1_combout\ : std_logic;
SIGNAL \o_lights_L[0]$latch~combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \o_lights_L[1]$latch~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \o_lights_L[2]$latch~combout\ : std_logic;
SIGNAL \o_lights_R~0_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \o_lights_R[0]$latch~combout\ : std_logic;
SIGNAL \o_lights_R[2]~1_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \o_lights_R[1]$latch~combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \o_lights_R[2]~2_combout\ : std_logic;
SIGNAL \o_lights_R[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_i_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_reset <= i_reset;
ww_i_left <= i_left;
ww_i_right <= i_right;
o_lights_L <= ww_o_lights_L;
o_lights_R <= ww_o_lights_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_reset~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_reset~inputclkctrl_outclk\ <= NOT \i_reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y0_N30
\o_lights_L[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_L[0]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_L[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\o_lights_L[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_L[1]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_L[1]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\o_lights_L[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_L[2]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_L[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\o_lights_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_R[0]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_R[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\o_lights_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_R[1]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_R[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\o_lights_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_lights_R[2]$latch~combout\,
	devoe => ww_devoe,
	o => \o_lights_R[2]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G3
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y0_N8
\i_left~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_left,
	o => \i_left~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\i_right~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_right,
	o => \i_right~input_o\);

-- Location: LCCOMB_X51_Y1_N22
\next_state.Flash~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.Flash~0_combout\ = (\i_left~input_o\ & (\i_right~input_o\ & !\current_state.OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_left~input_o\,
	datab => \i_right~input_o\,
	datac => \current_state.OFF~q\,
	combout => \next_state.Flash~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\i_reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset,
	o => \i_reset~input_o\);

-- Location: CLKCTRL_G4
\i_reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_reset~inputclkctrl_outclk\);

-- Location: FF_X51_Y1_N23
\current_state.Flash\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \next_state.Flash~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Flash~q\);

-- Location: LCCOMB_X51_Y1_N26
\next_state.R1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.R1~0_combout\ = (!\i_left~input_o\ & (\i_right~input_o\ & !\current_state.OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_left~input_o\,
	datab => \i_right~input_o\,
	datac => \current_state.OFF~q\,
	combout => \next_state.R1~0_combout\);

-- Location: FF_X51_Y1_N27
\current_state.R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \next_state.R1~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.R1~q\);

-- Location: FF_X51_Y1_N9
\current_state.R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \current_state.R1~q\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.R2~q\);

-- Location: FF_X51_Y1_N17
\current_state.R3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \current_state.R2~q\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.R3~q\);

-- Location: FF_X51_Y1_N5
\current_state.L3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \current_state.L2~q\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.L3~q\);

-- Location: LCCOMB_X51_Y1_N6
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\i_left~input_o\ & (!\i_right~input_o\ & !\current_state.OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_left~input_o\,
	datac => \i_right~input_o\,
	datad => \current_state.OFF~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X51_Y1_N2
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\current_state.Flash~q\ & (!\current_state.R3~q\ & (!\current_state.L3~q\ & !\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Flash~q\,
	datab => \current_state.R3~q\,
	datac => \current_state.L3~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X51_Y1_N3
\current_state.OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.OFF~q\);

-- Location: LCCOMB_X51_Y1_N14
\next_state.L1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.L1~0_combout\ = (\i_left~input_o\ & (!\i_right~input_o\ & !\current_state.OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_left~input_o\,
	datab => \i_right~input_o\,
	datac => \current_state.OFF~q\,
	combout => \next_state.L1~0_combout\);

-- Location: FF_X51_Y1_N15
\current_state.L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \next_state.L1~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.L1~q\);

-- Location: FF_X51_Y1_N31
\current_state.L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \current_state.L1~q\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.L2~q\);

-- Location: LCCOMB_X51_Y1_N4
\o_lights_L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_L~0_combout\ = (!\current_state.Flash~q\ & !\current_state.L3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Flash~q\,
	datac => \current_state.L3~q\,
	combout => \o_lights_L~0_combout\);

-- Location: LCCOMB_X51_Y1_N18
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\current_state.L2~q\ & (\o_lights_L~0_combout\ & (!\current_state.OFF~q\ & !\current_state.L1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.L2~q\,
	datab => \o_lights_L~0_combout\,
	datac => \current_state.OFF~q\,
	datad => \current_state.L1~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X51_Y1_N24
\o_lights_L[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_L[2]~1_combout\ = (!\current_state.Flash~q\ & (!\current_state.L3~q\ & (!\current_state.L1~q\ & !\current_state.L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Flash~q\,
	datab => \current_state.L3~q\,
	datac => \current_state.L1~q\,
	datad => \current_state.L2~q\,
	combout => \o_lights_L[2]~1_combout\);

-- Location: LCCOMB_X51_Y1_N28
\o_lights_L[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_L[0]$latch~combout\ = (!\comb~0_combout\ & ((\o_lights_L[0]$latch~combout\) # (!\o_lights_L[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \o_lights_L[2]~1_combout\,
	datad => \o_lights_L[0]$latch~combout\,
	combout => \o_lights_L[0]$latch~combout\);

-- Location: LCCOMB_X51_Y1_N10
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\current_state.L2~q\ & (\o_lights_L~0_combout\ & ((\current_state.L1~q\) # (!\current_state.OFF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.L2~q\,
	datab => \o_lights_L~0_combout\,
	datac => \current_state.OFF~q\,
	datad => \current_state.L1~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X51_Y1_N0
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\current_state.Flash~q\ & (!\current_state.L3~q\ & !\current_state.L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Flash~q\,
	datab => \current_state.L3~q\,
	datac => \current_state.L2~q\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X52_Y1_N28
\o_lights_L[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_L[1]$latch~combout\ = (!\comb~1_combout\ & ((\o_lights_L[1]$latch~combout\) # (!\comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \o_lights_L[1]$latch~combout\,
	combout => \o_lights_L[1]$latch~combout\);

-- Location: LCCOMB_X51_Y1_N30
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\o_lights_L~0_combout\ & (((\current_state.L1~q\) # (\current_state.L2~q\)) # (!\current_state.OFF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.OFF~q\,
	datab => \current_state.L1~q\,
	datac => \current_state.L2~q\,
	datad => \o_lights_L~0_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X51_Y1_N20
\o_lights_L[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_L[2]$latch~combout\ = (!\comb~3_combout\ & ((\o_lights_L[2]$latch~combout\) # (!\o_lights_L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~3_combout\,
	datac => \o_lights_L~0_combout\,
	datad => \o_lights_L[2]$latch~combout\,
	combout => \o_lights_L[2]$latch~combout\);

-- Location: LCCOMB_X51_Y1_N12
\o_lights_R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R~0_combout\ = (!\current_state.Flash~q\ & !\current_state.R3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.Flash~q\,
	datad => \current_state.R3~q\,
	combout => \o_lights_R~0_combout\);

-- Location: LCCOMB_X50_Y1_N8
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\o_lights_R~0_combout\ & (((\current_state.R2~q\) # (\current_state.R1~q\)) # (!\current_state.OFF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_lights_R~0_combout\,
	datab => \current_state.OFF~q\,
	datac => \current_state.R2~q\,
	datad => \current_state.R1~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X50_Y1_N10
\o_lights_R[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R[0]$latch~combout\ = (!\comb~4_combout\ & ((\o_lights_R[0]$latch~combout\) # (!\o_lights_R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_lights_R~0_combout\,
	datac => \comb~4_combout\,
	datad => \o_lights_R[0]$latch~combout\,
	combout => \o_lights_R[0]$latch~combout\);

-- Location: LCCOMB_X51_Y1_N16
\o_lights_R[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R[2]~1_combout\ = (!\current_state.Flash~q\ & (!\current_state.R2~q\ & !\current_state.R3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Flash~q\,
	datab => \current_state.R2~q\,
	datac => \current_state.R3~q\,
	combout => \o_lights_R[2]~1_combout\);

-- Location: LCCOMB_X50_Y1_N22
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\o_lights_R~0_combout\ & (!\current_state.R2~q\ & ((\current_state.R1~q\) # (!\current_state.OFF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_lights_R~0_combout\,
	datab => \current_state.OFF~q\,
	datac => \current_state.R2~q\,
	datad => \current_state.R1~q\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X50_Y1_N16
\o_lights_R[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R[1]$latch~combout\ = (!\comb~5_combout\ & ((\o_lights_R[1]$latch~combout\) # (!\o_lights_R[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_lights_R[2]~1_combout\,
	datac => \comb~5_combout\,
	datad => \o_lights_R[1]$latch~combout\,
	combout => \o_lights_R[1]$latch~combout\);

-- Location: LCCOMB_X50_Y1_N28
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\o_lights_R~0_combout\ & (!\current_state.OFF~q\ & (!\current_state.R2~q\ & !\current_state.R1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_lights_R~0_combout\,
	datab => \current_state.OFF~q\,
	datac => \current_state.R2~q\,
	datad => \current_state.R1~q\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X51_Y1_N8
\o_lights_R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R[2]~2_combout\ = (!\current_state.R1~q\ & (!\current_state.Flash~q\ & (!\current_state.R2~q\ & !\current_state.R3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.R1~q\,
	datab => \current_state.Flash~q\,
	datac => \current_state.R2~q\,
	datad => \current_state.R3~q\,
	combout => \o_lights_R[2]~2_combout\);

-- Location: LCCOMB_X50_Y1_N6
\o_lights_R[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_lights_R[2]$latch~combout\ = (!\comb~6_combout\ & ((\o_lights_R[2]$latch~combout\) # (!\o_lights_R[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datac => \o_lights_R[2]~2_combout\,
	datad => \o_lights_R[2]$latch~combout\,
	combout => \o_lights_R[2]$latch~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_lights_L(0) <= \o_lights_L[0]~output_o\;

ww_o_lights_L(1) <= \o_lights_L[1]~output_o\;

ww_o_lights_L(2) <= \o_lights_L[2]~output_o\;

ww_o_lights_R(0) <= \o_lights_R[0]~output_o\;

ww_o_lights_R(1) <= \o_lights_R[1]~output_o\;

ww_o_lights_R(2) <= \o_lights_R[2]~output_o\;
END structure;


