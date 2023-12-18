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

-- DATE "11/06/2023 22:02:29"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	ALU_op : IN std_logic_vector(1 DOWNTO 0);
	A_inv : IN std_logic;
	B_inv : IN std_logic;
	C_in : IN std_logic;
	ALU_out : OUT std_logic_vector(3 DOWNTO 0);
	N : OUT std_logic;
	C : OUT std_logic;
	V : OUT std_logic;
	Z : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- ALU_out[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ALU_out[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ALU_out[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ALU_out[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- N	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- C	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- V	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Z	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- C_in	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_inv	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_inv	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_op[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_op[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALU_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A_inv : std_logic;
SIGNAL ww_B_inv : std_logic;
SIGNAL ww_C_in : std_logic;
SIGNAL ww_ALU_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_N : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ALU_out[0]~output_o\ : std_logic;
SIGNAL \ALU_out[1]~output_o\ : std_logic;
SIGNAL \ALU_out[2]~output_o\ : std_logic;
SIGNAL \ALU_out[3]~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B_inv~input_o\ : std_logic;
SIGNAL \A_inv~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \outXOR[0]~0_combout\ : std_logic;
SIGNAL \ALU_op[0]~input_o\ : std_logic;
SIGNAL \muxA|output[0]~0_combout\ : std_logic;
SIGNAL \ALU_op[1]~input_o\ : std_logic;
SIGNAL \muxB|output[0]~0_combout\ : std_logic;
SIGNAL \MUX4IN|Mux3~0_combout\ : std_logic;
SIGNAL \C_in~input_o\ : std_logic;
SIGNAL \MUX4IN|Mux3~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \muxA|output[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \muxB|output[1]~1_combout\ : std_logic;
SIGNAL \MUX4IN|Mux2~0_combout\ : std_logic;
SIGNAL \ADD|adder0|C_out~0_combout\ : std_logic;
SIGNAL \ADD|adder1|S~combout\ : std_logic;
SIGNAL \MUX4IN|Mux2~1_combout\ : std_logic;
SIGNAL \ADD|adder1|C_out~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \muxA|output[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \muxB|output[2]~2_combout\ : std_logic;
SIGNAL \MUX4IN|Mux1~0_combout\ : std_logic;
SIGNAL \outXOR[2]~1_combout\ : std_logic;
SIGNAL \MUX4IN|Mux1~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \muxA|output[3]~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \muxB|output[3]~3_combout\ : std_logic;
SIGNAL \MUX4IN|Mux0~0_combout\ : std_logic;
SIGNAL \ADD|adder2|C_out~0_combout\ : std_logic;
SIGNAL \ADD|adder3|S~combout\ : std_logic;
SIGNAL \MUX4IN|Mux0~1_combout\ : std_logic;
SIGNAL \ADD|adder3|C_out~0_combout\ : std_logic;
SIGNAL \V~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL outOR : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_op <= ALU_op;
ww_A_inv <= A_inv;
ww_B_inv <= B_inv;
ww_C_in <= C_in;
ALU_out <= ww_ALU_out;
N <= ww_N;
C <= ww_C;
V <= ww_V;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X46_Y54_N2
\ALU_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4IN|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALU_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\ALU_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4IN|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALU_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\ALU_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4IN|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALU_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\ALU_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4IN|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALU_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD|adder3|S~combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD|adder3|C_out~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\V~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V~2_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X54_Y54_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\B_inv~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_inv,
	o => \B_inv~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\A_inv~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_inv,
	o => \A_inv~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N22
\outXOR[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outXOR[0]~0_combout\ = \A[0]~input_o\ $ (\B_inv~input_o\ $ (\A_inv~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B_inv~input_o\,
	datac => \A_inv~input_o\,
	datad => \B[0]~input_o\,
	combout => \outXOR[0]~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\ALU_op[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_op(0),
	o => \ALU_op[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N18
\muxA|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxA|output[0]~0_combout\ = \A_inv~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_inv~input_o\,
	datad => \A[0]~input_o\,
	combout => \muxA|output[0]~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\ALU_op[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_op(1),
	o => \ALU_op[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N24
\muxB|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxB|output[0]~0_combout\ = \B_inv~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_inv~input_o\,
	datad => \B[0]~input_o\,
	combout => \muxB|output[0]~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\MUX4IN|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux3~0_combout\ = (\ALU_op[0]~input_o\ & ((\muxA|output[0]~0_combout\) # ((\ALU_op[1]~input_o\) # (\muxB|output[0]~0_combout\)))) # (!\ALU_op[0]~input_o\ & (\muxA|output[0]~0_combout\ & (!\ALU_op[1]~input_o\ & \muxB|output[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~input_o\,
	datab => \muxA|output[0]~0_combout\,
	datac => \ALU_op[1]~input_o\,
	datad => \muxB|output[0]~0_combout\,
	combout => \MUX4IN|Mux3~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\C_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_in,
	o => \C_in~input_o\);

-- Location: LCCOMB_X50_Y53_N0
\MUX4IN|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux3~1_combout\ = (\ALU_op[1]~input_o\ & (\outXOR[0]~0_combout\ $ (((\MUX4IN|Mux3~0_combout\ & \C_in~input_o\))))) # (!\ALU_op[1]~input_o\ & (((\MUX4IN|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outXOR[0]~0_combout\,
	datab => \MUX4IN|Mux3~0_combout\,
	datac => \C_in~input_o\,
	datad => \ALU_op[1]~input_o\,
	combout => \MUX4IN|Mux3~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N30
\muxA|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxA|output[1]~1_combout\ = \A_inv~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_inv~input_o\,
	datac => \A[1]~input_o\,
	combout => \muxA|output[1]~1_combout\);

-- Location: IOIBUF_X51_Y54_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N12
\muxB|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxB|output[1]~1_combout\ = \B_inv~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_inv~input_o\,
	datad => \B[1]~input_o\,
	combout => \muxB|output[1]~1_combout\);

-- Location: LCCOMB_X50_Y53_N16
\MUX4IN|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux2~0_combout\ = (\ALU_op[0]~input_o\ & (((\ALU_op[1]~input_o\)))) # (!\ALU_op[0]~input_o\ & ((\muxA|output[1]~1_combout\ & (\ALU_op[1]~input_o\ $ (\muxB|output[1]~1_combout\))) # (!\muxA|output[1]~1_combout\ & (\ALU_op[1]~input_o\ & 
-- \muxB|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~input_o\,
	datab => \muxA|output[1]~1_combout\,
	datac => \ALU_op[1]~input_o\,
	datad => \muxB|output[1]~1_combout\,
	combout => \MUX4IN|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y53_N26
\outOR[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- outOR(1) = (\A[1]~input_o\ & ((\B_inv~input_o\ $ (\B[1]~input_o\)) # (!\A_inv~input_o\))) # (!\A[1]~input_o\ & ((\A_inv~input_o\) # (\B_inv~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B_inv~input_o\,
	datac => \A_inv~input_o\,
	datad => \B[1]~input_o\,
	combout => outOR(1));

-- Location: LCCOMB_X50_Y53_N10
\ADD|adder0|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder0|C_out~0_combout\ = (\C_in~input_o\ & ((\muxB|output[0]~0_combout\) # (\A_inv~input_o\ $ (\A[0]~input_o\)))) # (!\C_in~input_o\ & (\muxB|output[0]~0_combout\ & (\A_inv~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_in~input_o\,
	datab => \muxB|output[0]~0_combout\,
	datac => \A_inv~input_o\,
	datad => \A[0]~input_o\,
	combout => \ADD|adder0|C_out~0_combout\);

-- Location: LCCOMB_X50_Y53_N2
\ADD|adder1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder1|S~combout\ = \muxB|output[1]~1_combout\ $ (\A_inv~input_o\ $ (\A[1]~input_o\ $ (\ADD|adder0|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxB|output[1]~1_combout\,
	datab => \A_inv~input_o\,
	datac => \A[1]~input_o\,
	datad => \ADD|adder0|C_out~0_combout\,
	combout => \ADD|adder1|S~combout\);

-- Location: LCCOMB_X50_Y53_N4
\MUX4IN|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux2~1_combout\ = (\ALU_op[0]~input_o\ & ((\MUX4IN|Mux2~0_combout\ & ((\ADD|adder1|S~combout\))) # (!\MUX4IN|Mux2~0_combout\ & (outOR(1))))) # (!\ALU_op[0]~input_o\ & (\MUX4IN|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~input_o\,
	datab => \MUX4IN|Mux2~0_combout\,
	datac => outOR(1),
	datad => \ADD|adder1|S~combout\,
	combout => \MUX4IN|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y53_N14
\ADD|adder1|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder1|C_out~0_combout\ = (\muxB|output[1]~1_combout\ & ((\ADD|adder0|C_out~0_combout\) # (\A_inv~input_o\ $ (\A[1]~input_o\)))) # (!\muxB|output[1]~1_combout\ & (\ADD|adder0|C_out~0_combout\ & (\A_inv~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxB|output[1]~1_combout\,
	datab => \A_inv~input_o\,
	datac => \A[1]~input_o\,
	datad => \ADD|adder0|C_out~0_combout\,
	combout => \ADD|adder1|C_out~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X51_Y53_N18
\muxA|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxA|output[2]~2_combout\ = \A_inv~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~input_o\,
	datad => \A[2]~input_o\,
	combout => \muxA|output[2]~2_combout\);

-- Location: IOIBUF_X51_Y54_N1
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X51_Y53_N8
\muxB|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxB|output[2]~2_combout\ = \B[2]~input_o\ $ (\B_inv~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B_inv~input_o\,
	combout => \muxB|output[2]~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\MUX4IN|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux1~0_combout\ = (\ALU_op[0]~input_o\ & ((\muxA|output[2]~2_combout\) # ((\muxB|output[2]~2_combout\) # (\ALU_op[1]~input_o\)))) # (!\ALU_op[0]~input_o\ & (\muxA|output[2]~2_combout\ & (\muxB|output[2]~2_combout\ & !\ALU_op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~input_o\,
	datab => \muxA|output[2]~2_combout\,
	datac => \muxB|output[2]~2_combout\,
	datad => \ALU_op[1]~input_o\,
	combout => \MUX4IN|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\outXOR[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outXOR[2]~1_combout\ = \A_inv~input_o\ $ (\B[2]~input_o\ $ (\B_inv~input_o\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~input_o\,
	datab => \B[2]~input_o\,
	datac => \B_inv~input_o\,
	datad => \A[2]~input_o\,
	combout => \outXOR[2]~1_combout\);

-- Location: LCCOMB_X51_Y53_N16
\MUX4IN|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux1~1_combout\ = (\ALU_op[1]~input_o\ & (\outXOR[2]~1_combout\ $ (((\ADD|adder1|C_out~0_combout\ & \MUX4IN|Mux1~0_combout\))))) # (!\ALU_op[1]~input_o\ & (((\MUX4IN|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder1|C_out~0_combout\,
	datab => \MUX4IN|Mux1~0_combout\,
	datac => \outXOR[2]~1_combout\,
	datad => \ALU_op[1]~input_o\,
	combout => \MUX4IN|Mux1~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X51_Y53_N22
\muxA|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxA|output[3]~3_combout\ = \A_inv~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~input_o\,
	datad => \A[3]~input_o\,
	combout => \muxA|output[3]~3_combout\);

-- Location: IOIBUF_X54_Y54_N29
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X51_Y53_N12
\muxB|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxB|output[3]~3_combout\ = \B_inv~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~input_o\,
	datad => \B[3]~input_o\,
	combout => \muxB|output[3]~3_combout\);

-- Location: LCCOMB_X51_Y53_N0
\MUX4IN|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux0~0_combout\ = (\muxA|output[3]~3_combout\ & (\ALU_op[1]~input_o\ $ (((\muxB|output[3]~3_combout\ & !\ALU_op[0]~input_o\))))) # (!\muxA|output[3]~3_combout\ & (\ALU_op[1]~input_o\ & ((\muxB|output[3]~3_combout\) # (\ALU_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxA|output[3]~3_combout\,
	datab => \muxB|output[3]~3_combout\,
	datac => \ALU_op[0]~input_o\,
	datad => \ALU_op[1]~input_o\,
	combout => \MUX4IN|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\outOR[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- outOR(3) = (\A_inv~input_o\ & ((\B[3]~input_o\ $ (\B_inv~input_o\)) # (!\A[3]~input_o\))) # (!\A_inv~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\B_inv~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~input_o\,
	datab => \B[3]~input_o\,
	datac => \B_inv~input_o\,
	datad => \A[3]~input_o\,
	combout => outOR(3));

-- Location: LCCOMB_X51_Y53_N10
\ADD|adder2|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder2|C_out~0_combout\ = (\ADD|adder1|C_out~0_combout\ & ((\muxB|output[2]~2_combout\) # (\A[2]~input_o\ $ (\A_inv~input_o\)))) # (!\ADD|adder1|C_out~0_combout\ & (\muxB|output[2]~2_combout\ & (\A[2]~input_o\ $ (\A_inv~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder1|C_out~0_combout\,
	datab => \A[2]~input_o\,
	datac => \muxB|output[2]~2_combout\,
	datad => \A_inv~input_o\,
	combout => \ADD|adder2|C_out~0_combout\);

-- Location: LCCOMB_X51_Y53_N2
\ADD|adder3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder3|S~combout\ = \ADD|adder2|C_out~0_combout\ $ (\A[3]~input_o\ $ (\muxB|output[3]~3_combout\ $ (\A_inv~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder2|C_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \muxB|output[3]~3_combout\,
	datad => \A_inv~input_o\,
	combout => \ADD|adder3|S~combout\);

-- Location: LCCOMB_X51_Y53_N4
\MUX4IN|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX4IN|Mux0~1_combout\ = (\ALU_op[0]~input_o\ & ((\MUX4IN|Mux0~0_combout\ & ((\ADD|adder3|S~combout\))) # (!\MUX4IN|Mux0~0_combout\ & (outOR(3))))) # (!\ALU_op[0]~input_o\ & (\MUX4IN|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~input_o\,
	datab => \MUX4IN|Mux0~0_combout\,
	datac => outOR(3),
	datad => \ADD|adder3|S~combout\,
	combout => \MUX4IN|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y53_N14
\ADD|adder3|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD|adder3|C_out~0_combout\ = (\ADD|adder2|C_out~0_combout\ & ((\muxB|output[3]~3_combout\) # (\A[3]~input_o\ $ (\A_inv~input_o\)))) # (!\ADD|adder2|C_out~0_combout\ & (\muxB|output[3]~3_combout\ & (\A[3]~input_o\ $ (\A_inv~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder2|C_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \muxB|output[3]~3_combout\,
	datad => \A_inv~input_o\,
	combout => \ADD|adder3|C_out~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\V~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V~2_combout\ = (\ADD|adder2|C_out~0_combout\ & (!\muxB|output[3]~3_combout\ & (\A[3]~input_o\ $ (!\A_inv~input_o\)))) # (!\ADD|adder2|C_out~0_combout\ & (\muxB|output[3]~3_combout\ & (\A[3]~input_o\ $ (\A_inv~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder2|C_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \muxB|output[3]~3_combout\,
	datad => \A_inv~input_o\,
	combout => \V~2_combout\);

-- Location: LCCOMB_X50_Y53_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\outXOR[0]~0_combout\ & (\C_in~input_o\ & (\ADD|adder1|C_out~0_combout\ $ (!\outXOR[2]~1_combout\)))) # (!\outXOR[0]~0_combout\ & (!\C_in~input_o\ & (\ADD|adder1|C_out~0_combout\ $ (!\outXOR[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outXOR[0]~0_combout\,
	datab => \ADD|adder1|C_out~0_combout\,
	datac => \C_in~input_o\,
	datad => \outXOR[2]~1_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y53_N24
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ADD|adder1|S~combout\ & (!\ADD|adder3|S~combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|adder1|S~combout\,
	datab => \ADD|adder3|S~combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

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

ww_ALU_out(0) <= \ALU_out[0]~output_o\;

ww_ALU_out(1) <= \ALU_out[1]~output_o\;

ww_ALU_out(2) <= \ALU_out[2]~output_o\;

ww_ALU_out(3) <= \ALU_out[3]~output_o\;

ww_N <= \N~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;

ww_Z <= \Z~output_o\;
END structure;


