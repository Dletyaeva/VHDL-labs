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

-- DATE "11/06/2023 21:00:26"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegisterFile16by4Bit IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	RF_write : IN std_logic;
	AddressA : IN std_logic_vector(3 DOWNTO 0);
	AddressB : IN std_logic_vector(3 DOWNTO 0);
	AddressC : IN std_logic_vector(3 DOWNTO 0);
	InputC : IN std_logic_vector(3 DOWNTO 0);
	OutputA : BUFFER std_logic_vector(3 DOWNTO 0);
	OutputB : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END RegisterFile16by4Bit;

-- Design Ports Information
-- OutputA[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputA[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputA[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputA[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputB[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputB[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputB[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputB[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressA[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressA[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressA[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressA[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressB[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressB[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressB[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressB[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InputC[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressC[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressC[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressC[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_write	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressC[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InputC[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InputC[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InputC[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegisterFile16by4Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_RF_write : std_logic;
SIGNAL ww_AddressA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AddressB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AddressC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_InputC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OutputA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OutputB : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OutputA[0]~output_o\ : std_logic;
SIGNAL \OutputA[1]~output_o\ : std_logic;
SIGNAL \OutputA[2]~output_o\ : std_logic;
SIGNAL \OutputA[3]~output_o\ : std_logic;
SIGNAL \OutputB[0]~output_o\ : std_logic;
SIGNAL \OutputB[1]~output_o\ : std_logic;
SIGNAL \OutputB[2]~output_o\ : std_logic;
SIGNAL \OutputB[3]~output_o\ : std_logic;
SIGNAL \AddressA[3]~input_o\ : std_logic;
SIGNAL \AddressA[0]~input_o\ : std_logic;
SIGNAL \AddressA[1]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \InputC[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \AddressC[3]~input_o\ : std_logic;
SIGNAL \RF_write~input_o\ : std_logic;
SIGNAL \AddressC[0]~input_o\ : std_logic;
SIGNAL \AddressC[1]~input_o\ : std_logic;
SIGNAL \AddressC[2]~input_o\ : std_logic;
SIGNAL \in_ENB_5~0_combout\ : std_logic;
SIGNAL \in_ENB_4~0_combout\ : std_logic;
SIGNAL \reg4|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_7~0_combout\ : std_logic;
SIGNAL \in_ENB_6~0_combout\ : std_logic;
SIGNAL \reg6|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~2_combout\ : std_logic;
SIGNAL \in_ENB_5~1_combout\ : std_logic;
SIGNAL \reg5|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_7~1_combout\ : std_logic;
SIGNAL \reg7|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~3_combout\ : std_logic;
SIGNAL \in_ENB_11~0_combout\ : std_logic;
SIGNAL \in_ENB_3~0_combout\ : std_logic;
SIGNAL \reg3|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_2~0_combout\ : std_logic;
SIGNAL \reg2|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_1~0_combout\ : std_logic;
SIGNAL \in_ENB_1~1_combout\ : std_logic;
SIGNAL \reg1|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_0~0_combout\ : std_logic;
SIGNAL \reg0|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~4_combout\ : std_logic;
SIGNAL \mux1|Mux3~5_combout\ : std_logic;
SIGNAL \AddressA[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux3~6_combout\ : std_logic;
SIGNAL \in_ENB_11~1_combout\ : std_logic;
SIGNAL \reg11|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_10~0_combout\ : std_logic;
SIGNAL \reg10|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_8~0_combout\ : std_logic;
SIGNAL \reg8|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_9~0_combout\ : std_logic;
SIGNAL \reg9|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~0_combout\ : std_logic;
SIGNAL \mux1|Mux3~1_combout\ : std_logic;
SIGNAL \in_ENB_15~0_combout\ : std_logic;
SIGNAL \reg15|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_12~0_combout\ : std_logic;
SIGNAL \reg12|bit0|Q~q\ : std_logic;
SIGNAL \in_ENB_14~0_combout\ : std_logic;
SIGNAL \reg14|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~7_combout\ : std_logic;
SIGNAL \in_ENB_13~0_combout\ : std_logic;
SIGNAL \reg13|bit0|Q~q\ : std_logic;
SIGNAL \mux1|Mux3~8_combout\ : std_logic;
SIGNAL \mux1|Mux3~9_combout\ : std_logic;
SIGNAL \InputC[1]~input_o\ : std_logic;
SIGNAL \reg7|bit1|Q~q\ : std_logic;
SIGNAL \reg3|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~7_combout\ : std_logic;
SIGNAL \reg15|bit1|Q~q\ : std_logic;
SIGNAL \reg11|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~8_combout\ : std_logic;
SIGNAL \reg14|bit1|Q~q\ : std_logic;
SIGNAL \reg6|bit1|Q~q\ : std_logic;
SIGNAL \reg2|bit1|Q~q\ : std_logic;
SIGNAL \reg10|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~0_combout\ : std_logic;
SIGNAL \mux1|Mux2~1_combout\ : std_logic;
SIGNAL \reg0|bit1|Q~q\ : std_logic;
SIGNAL \reg8|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~4_combout\ : std_logic;
SIGNAL \reg12|bit1|Q~q\ : std_logic;
SIGNAL \reg4|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~5_combout\ : std_logic;
SIGNAL \reg13|bit1|Q~q\ : std_logic;
SIGNAL \reg1|bit1|Q~q\ : std_logic;
SIGNAL \reg5|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~2_combout\ : std_logic;
SIGNAL \reg9|bit1|Q~q\ : std_logic;
SIGNAL \mux1|Mux2~3_combout\ : std_logic;
SIGNAL \mux1|Mux2~6_combout\ : std_logic;
SIGNAL \mux1|Mux2~9_combout\ : std_logic;
SIGNAL \InputC[2]~input_o\ : std_logic;
SIGNAL \reg8|bit2|Q~q\ : std_logic;
SIGNAL \reg10|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~2_combout\ : std_logic;
SIGNAL \reg11|bit2|Q~q\ : std_logic;
SIGNAL \reg9|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~3_combout\ : std_logic;
SIGNAL \reg0|bit2|Q~q\ : std_logic;
SIGNAL \reg2|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~4_combout\ : std_logic;
SIGNAL \reg3|bit2|Q~q\ : std_logic;
SIGNAL \reg1|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~5_combout\ : std_logic;
SIGNAL \mux1|Mux1~6_combout\ : std_logic;
SIGNAL \reg7|bit2|Q~q\ : std_logic;
SIGNAL \reg6|bit2|Q~q\ : std_logic;
SIGNAL \reg4|bit2|Q~q\ : std_logic;
SIGNAL \reg5|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~0_combout\ : std_logic;
SIGNAL \mux1|Mux1~1_combout\ : std_logic;
SIGNAL \reg13|bit2|Q~q\ : std_logic;
SIGNAL \reg12|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~7_combout\ : std_logic;
SIGNAL \reg14|bit2|Q~q\ : std_logic;
SIGNAL \reg15|bit2|Q~q\ : std_logic;
SIGNAL \mux1|Mux1~8_combout\ : std_logic;
SIGNAL \mux1|Mux1~9_combout\ : std_logic;
SIGNAL \InputC[3]~input_o\ : std_logic;
SIGNAL \reg13|bit3|Q~q\ : std_logic;
SIGNAL \reg5|bit3|Q~q\ : std_logic;
SIGNAL \reg1|bit3|Q~q\ : std_logic;
SIGNAL \reg9|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \reg12|bit3|Q~q\ : std_logic;
SIGNAL \reg4|bit3|Q~q\ : std_logic;
SIGNAL \reg0|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~4_combout\ : std_logic;
SIGNAL \reg8|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~5_combout\ : std_logic;
SIGNAL \reg2|bit3|Q~q\ : std_logic;
SIGNAL \reg6|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~2_combout\ : std_logic;
SIGNAL \reg14|bit3|Q~q\ : std_logic;
SIGNAL \reg10|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~3_combout\ : std_logic;
SIGNAL \mux1|Mux0~6_combout\ : std_logic;
SIGNAL \reg3|bit3|Q~q\ : std_logic;
SIGNAL \reg11|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~7_combout\ : std_logic;
SIGNAL \reg15|bit3|Q~q\ : std_logic;
SIGNAL \reg7|bit3|Q~q\ : std_logic;
SIGNAL \mux1|Mux0~8_combout\ : std_logic;
SIGNAL \mux1|Mux0~9_combout\ : std_logic;
SIGNAL \AddressB[1]~input_o\ : std_logic;
SIGNAL \AddressB[0]~input_o\ : std_logic;
SIGNAL \mux2|Mux3~7_combout\ : std_logic;
SIGNAL \mux2|Mux3~8_combout\ : std_logic;
SIGNAL \mux2|Mux3~4_combout\ : std_logic;
SIGNAL \mux2|Mux3~5_combout\ : std_logic;
SIGNAL \mux2|Mux3~2_combout\ : std_logic;
SIGNAL \mux2|Mux3~3_combout\ : std_logic;
SIGNAL \AddressB[2]~input_o\ : std_logic;
SIGNAL \AddressB[3]~input_o\ : std_logic;
SIGNAL \mux2|Mux3~6_combout\ : std_logic;
SIGNAL \mux2|Mux3~0_combout\ : std_logic;
SIGNAL \mux2|Mux3~1_combout\ : std_logic;
SIGNAL \mux2|Mux3~9_combout\ : std_logic;
SIGNAL \mux2|Mux2~0_combout\ : std_logic;
SIGNAL \mux2|Mux2~1_combout\ : std_logic;
SIGNAL \mux2|Mux2~2_combout\ : std_logic;
SIGNAL \mux2|Mux2~3_combout\ : std_logic;
SIGNAL \mux2|Mux2~4_combout\ : std_logic;
SIGNAL \mux2|Mux2~5_combout\ : std_logic;
SIGNAL \mux2|Mux2~6_combout\ : std_logic;
SIGNAL \mux2|Mux2~7_combout\ : std_logic;
SIGNAL \mux2|Mux2~8_combout\ : std_logic;
SIGNAL \mux2|Mux2~9_combout\ : std_logic;
SIGNAL \mux2|Mux1~7_combout\ : std_logic;
SIGNAL \mux2|Mux1~8_combout\ : std_logic;
SIGNAL \mux2|Mux1~0_combout\ : std_logic;
SIGNAL \mux2|Mux1~1_combout\ : std_logic;
SIGNAL \mux2|Mux1~2_combout\ : std_logic;
SIGNAL \mux2|Mux1~3_combout\ : std_logic;
SIGNAL \mux2|Mux1~4_combout\ : std_logic;
SIGNAL \mux2|Mux1~5_combout\ : std_logic;
SIGNAL \mux2|Mux1~6_combout\ : std_logic;
SIGNAL \mux2|Mux1~9_combout\ : std_logic;
SIGNAL \mux2|Mux0~2_combout\ : std_logic;
SIGNAL \mux2|Mux0~3_combout\ : std_logic;
SIGNAL \mux2|Mux0~4_combout\ : std_logic;
SIGNAL \mux2|Mux0~5_combout\ : std_logic;
SIGNAL \mux2|Mux0~6_combout\ : std_logic;
SIGNAL \mux2|Mux0~0_combout\ : std_logic;
SIGNAL \mux2|Mux0~1_combout\ : std_logic;
SIGNAL \mux2|Mux0~7_combout\ : std_logic;
SIGNAL \mux2|Mux0~8_combout\ : std_logic;
SIGNAL \mux2|Mux0~9_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_RF_write <= RF_write;
ww_AddressA <= AddressA;
ww_AddressB <= AddressB;
ww_AddressC <= AddressC;
ww_InputC <= InputC;
OutputA <= ww_OutputA;
OutputB <= ww_OutputB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X60_Y54_N23
\OutputA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux3~9_combout\,
	devoe => ww_devoe,
	o => \OutputA[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\OutputA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \OutputA[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\OutputA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \OutputA[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\OutputA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \OutputA[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\OutputB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2|Mux3~9_combout\,
	devoe => ww_devoe,
	o => \OutputB[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\OutputB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \OutputB[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\OutputB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \OutputB[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\OutputB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \OutputB[3]~output_o\);

-- Location: IOIBUF_X58_Y54_N8
\AddressA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressA(3),
	o => \AddressA[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\AddressA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressA(0),
	o => \AddressA[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\AddressA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressA(1),
	o => \AddressA[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N1
\InputC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InputC(0),
	o => \InputC[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\AddressC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressC(3),
	o => \AddressC[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\RF_write~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_write,
	o => \RF_write~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\AddressC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressC(0),
	o => \AddressC[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\AddressC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressC(1),
	o => \AddressC[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\AddressC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressC(2),
	o => \AddressC[2]~input_o\);

-- Location: LCCOMB_X52_Y51_N16
\in_ENB_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_5~0_combout\ = (!\AddressC[1]~input_o\ & \AddressC[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddressC[1]~input_o\,
	datac => \AddressC[2]~input_o\,
	combout => \in_ENB_5~0_combout\);

-- Location: LCCOMB_X52_Y51_N0
\in_ENB_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_4~0_combout\ = (!\AddressC[3]~input_o\ & (\RF_write~input_o\ & (!\AddressC[0]~input_o\ & \in_ENB_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_5~0_combout\,
	combout => \in_ENB_4~0_combout\);

-- Location: FF_X54_Y51_N19
\reg4|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N12
\in_ENB_7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_7~0_combout\ = (\AddressC[1]~input_o\ & \AddressC[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddressC[1]~input_o\,
	datac => \AddressC[2]~input_o\,
	combout => \in_ENB_7~0_combout\);

-- Location: LCCOMB_X52_Y51_N22
\in_ENB_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_6~0_combout\ = (\in_ENB_7~0_combout\ & (!\AddressC[3]~input_o\ & (!\AddressC[0]~input_o\ & \RF_write~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_ENB_7~0_combout\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \RF_write~input_o\,
	combout => \in_ENB_6~0_combout\);

-- Location: FF_X54_Y51_N17
\reg6|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|bit0|Q~q\);

-- Location: LCCOMB_X54_Y51_N16
\mux1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~2_combout\ = (\AddressA[1]~input_o\ & (((\reg6|bit0|Q~q\) # (\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & (\reg4|bit0|Q~q\ & ((!\AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[1]~input_o\,
	datab => \reg4|bit0|Q~q\,
	datac => \reg6|bit0|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux3~2_combout\);

-- Location: LCCOMB_X52_Y51_N18
\in_ENB_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_5~1_combout\ = (!\AddressC[3]~input_o\ & (\RF_write~input_o\ & (\AddressC[0]~input_o\ & \in_ENB_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_5~0_combout\,
	combout => \in_ENB_5~1_combout\);

-- Location: FF_X57_Y51_N11
\reg5|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N10
\in_ENB_7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_7~1_combout\ = (\in_ENB_7~0_combout\ & (!\AddressC[3]~input_o\ & (\AddressC[0]~input_o\ & \RF_write~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_ENB_7~0_combout\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \RF_write~input_o\,
	combout => \in_ENB_7~1_combout\);

-- Location: FF_X57_Y50_N25
\reg7|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|bit0|Q~q\);

-- Location: LCCOMB_X57_Y51_N10
\mux1|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~3_combout\ = (\AddressA[0]~input_o\ & ((\mux1|Mux3~2_combout\ & ((\reg7|bit0|Q~q\))) # (!\mux1|Mux3~2_combout\ & (\reg5|bit0|Q~q\)))) # (!\AddressA[0]~input_o\ & (\mux1|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[0]~input_o\,
	datab => \mux1|Mux3~2_combout\,
	datac => \reg5|bit0|Q~q\,
	datad => \reg7|bit0|Q~q\,
	combout => \mux1|Mux3~3_combout\);

-- Location: LCCOMB_X52_Y51_N24
\in_ENB_11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_11~0_combout\ = (\AddressC[1]~input_o\ & !\AddressC[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddressC[1]~input_o\,
	datac => \AddressC[2]~input_o\,
	combout => \in_ENB_11~0_combout\);

-- Location: LCCOMB_X52_Y51_N6
\in_ENB_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_3~0_combout\ = (!\AddressC[3]~input_o\ & (\RF_write~input_o\ & (\AddressC[0]~input_o\ & \in_ENB_11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_11~0_combout\,
	combout => \in_ENB_3~0_combout\);

-- Location: FF_X56_Y50_N11
\reg3|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N4
\in_ENB_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_2~0_combout\ = (!\AddressC[3]~input_o\ & (\RF_write~input_o\ & (!\AddressC[0]~input_o\ & \in_ENB_11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_11~0_combout\,
	combout => \in_ENB_2~0_combout\);

-- Location: FF_X54_Y50_N25
\reg2|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N20
\in_ENB_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_1~0_combout\ = (!\AddressC[1]~input_o\ & !\AddressC[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddressC[1]~input_o\,
	datac => \AddressC[2]~input_o\,
	combout => \in_ENB_1~0_combout\);

-- Location: LCCOMB_X55_Y50_N10
\in_ENB_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_1~1_combout\ = (\RF_write~input_o\ & (!\AddressC[3]~input_o\ & (\AddressC[0]~input_o\ & \in_ENB_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_write~input_o\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_1~0_combout\,
	combout => \in_ENB_1~1_combout\);

-- Location: FF_X55_Y50_N17
\reg1|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|bit0|Q~q\);

-- Location: LCCOMB_X55_Y50_N12
\in_ENB_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_0~0_combout\ = (\RF_write~input_o\ & (!\AddressC[3]~input_o\ & (!\AddressC[0]~input_o\ & \in_ENB_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_write~input_o\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_1~0_combout\,
	combout => \in_ENB_0~0_combout\);

-- Location: FF_X55_Y50_N19
\reg0|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|bit0|Q~q\);

-- Location: LCCOMB_X55_Y50_N16
\mux1|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~4_combout\ = (\AddressA[1]~input_o\ & (\AddressA[0]~input_o\)) # (!\AddressA[1]~input_o\ & ((\AddressA[0]~input_o\ & (\reg1|bit0|Q~q\)) # (!\AddressA[0]~input_o\ & ((\reg0|bit0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[1]~input_o\,
	datab => \AddressA[0]~input_o\,
	datac => \reg1|bit0|Q~q\,
	datad => \reg0|bit0|Q~q\,
	combout => \mux1|Mux3~4_combout\);

-- Location: LCCOMB_X54_Y50_N24
\mux1|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~5_combout\ = (\AddressA[1]~input_o\ & ((\mux1|Mux3~4_combout\ & (\reg3|bit0|Q~q\)) # (!\mux1|Mux3~4_combout\ & ((\reg2|bit0|Q~q\))))) # (!\AddressA[1]~input_o\ & (((\mux1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|bit0|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg2|bit0|Q~q\,
	datad => \mux1|Mux3~4_combout\,
	combout => \mux1|Mux3~5_combout\);

-- Location: IOIBUF_X58_Y54_N15
\AddressA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressA(2),
	o => \AddressA[2]~input_o\);

-- Location: LCCOMB_X57_Y50_N10
\mux1|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~6_combout\ = (\AddressA[3]~input_o\ & (((\AddressA[2]~input_o\)))) # (!\AddressA[3]~input_o\ & ((\AddressA[2]~input_o\ & (\mux1|Mux3~3_combout\)) # (!\AddressA[2]~input_o\ & ((\mux1|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[3]~input_o\,
	datab => \mux1|Mux3~3_combout\,
	datac => \mux1|Mux3~5_combout\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux3~6_combout\);

-- Location: LCCOMB_X52_Y51_N30
\in_ENB_11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_11~1_combout\ = (\AddressC[3]~input_o\ & (\RF_write~input_o\ & (\AddressC[0]~input_o\ & \in_ENB_11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_11~0_combout\,
	combout => \in_ENB_11~1_combout\);

-- Location: FF_X56_Y50_N9
\reg11|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg11|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N2
\in_ENB_10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_10~0_combout\ = (\AddressC[3]~input_o\ & (\RF_write~input_o\ & (!\AddressC[0]~input_o\ & \in_ENB_11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_11~0_combout\,
	combout => \in_ENB_10~0_combout\);

-- Location: FF_X57_Y51_N17
\reg10|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg10|bit0|Q~q\);

-- Location: LCCOMB_X56_Y51_N10
\in_ENB_8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_8~0_combout\ = (\AddressC[3]~input_o\ & (!\AddressC[0]~input_o\ & (\RF_write~input_o\ & \in_ENB_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \AddressC[0]~input_o\,
	datac => \RF_write~input_o\,
	datad => \in_ENB_1~0_combout\,
	combout => \in_ENB_8~0_combout\);

-- Location: FF_X56_Y51_N27
\reg8|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8|bit0|Q~q\);

-- Location: LCCOMB_X56_Y51_N0
\in_ENB_9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_9~0_combout\ = (\AddressC[3]~input_o\ & (\AddressC[0]~input_o\ & (\RF_write~input_o\ & \in_ENB_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \AddressC[0]~input_o\,
	datac => \RF_write~input_o\,
	datad => \in_ENB_1~0_combout\,
	combout => \in_ENB_9~0_combout\);

-- Location: FF_X56_Y51_N25
\reg9|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg9|bit0|Q~q\);

-- Location: LCCOMB_X56_Y51_N24
\mux1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~0_combout\ = (\AddressA[1]~input_o\ & (((\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & ((\AddressA[0]~input_o\ & ((\reg9|bit0|Q~q\))) # (!\AddressA[0]~input_o\ & (\reg8|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8|bit0|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg9|bit0|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y51_N16
\mux1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~1_combout\ = (\AddressA[1]~input_o\ & ((\mux1|Mux3~0_combout\ & (\reg11|bit0|Q~q\)) # (!\mux1|Mux3~0_combout\ & ((\reg10|bit0|Q~q\))))) # (!\AddressA[1]~input_o\ & (((\mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg11|bit0|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg10|bit0|Q~q\,
	datad => \mux1|Mux3~0_combout\,
	combout => \mux1|Mux3~1_combout\);

-- Location: LCCOMB_X52_Y51_N14
\in_ENB_15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_15~0_combout\ = (\in_ENB_7~0_combout\ & (\AddressC[3]~input_o\ & (\AddressC[0]~input_o\ & \RF_write~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_ENB_7~0_combout\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \RF_write~input_o\,
	combout => \in_ENB_15~0_combout\);

-- Location: FF_X57_Y50_N21
\reg15|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N28
\in_ENB_12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_12~0_combout\ = (\AddressC[3]~input_o\ & (\RF_write~input_o\ & (!\AddressC[0]~input_o\ & \in_ENB_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_5~0_combout\,
	combout => \in_ENB_12~0_combout\);

-- Location: FF_X55_Y51_N3
\reg12|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|bit0|Q~q\);

-- Location: LCCOMB_X52_Y51_N26
\in_ENB_14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_14~0_combout\ = (\in_ENB_7~0_combout\ & (\AddressC[3]~input_o\ & (!\AddressC[0]~input_o\ & \RF_write~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_ENB_7~0_combout\,
	datab => \AddressC[3]~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \RF_write~input_o\,
	combout => \in_ENB_14~0_combout\);

-- Location: FF_X54_Y50_N11
\reg14|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|bit0|Q~q\);

-- Location: LCCOMB_X54_Y50_N10
\mux1|Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~7_combout\ = (\AddressA[1]~input_o\ & (((\reg14|bit0|Q~q\) # (\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & (\reg12|bit0|Q~q\ & ((!\AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|bit0|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg14|bit0|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux3~7_combout\);

-- Location: LCCOMB_X52_Y51_N8
\in_ENB_13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_ENB_13~0_combout\ = (\AddressC[3]~input_o\ & (\RF_write~input_o\ & (\AddressC[0]~input_o\ & \in_ENB_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressC[3]~input_o\,
	datab => \RF_write~input_o\,
	datac => \AddressC[0]~input_o\,
	datad => \in_ENB_5~0_combout\,
	combout => \in_ENB_13~0_combout\);

-- Location: FF_X55_Y51_N25
\reg13|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg13|bit0|Q~q\);

-- Location: LCCOMB_X55_Y51_N24
\mux1|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~8_combout\ = (\mux1|Mux3~7_combout\ & ((\reg15|bit0|Q~q\) # ((!\AddressA[0]~input_o\)))) # (!\mux1|Mux3~7_combout\ & (((\reg13|bit0|Q~q\ & \AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg15|bit0|Q~q\,
	datab => \mux1|Mux3~7_combout\,
	datac => \reg13|bit0|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux3~8_combout\);

-- Location: LCCOMB_X57_Y51_N28
\mux1|Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~9_combout\ = (\mux1|Mux3~6_combout\ & (((\mux1|Mux3~8_combout\) # (!\AddressA[3]~input_o\)))) # (!\mux1|Mux3~6_combout\ & (\mux1|Mux3~1_combout\ & ((\AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux3~6_combout\,
	datab => \mux1|Mux3~1_combout\,
	datac => \mux1|Mux3~8_combout\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux3~9_combout\);

-- Location: IOIBUF_X56_Y54_N15
\InputC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InputC(1),
	o => \InputC[1]~input_o\);

-- Location: FF_X57_Y50_N23
\reg7|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|bit1|Q~q\);

-- Location: FF_X56_Y50_N15
\reg3|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|bit1|Q~q\);

-- Location: LCCOMB_X57_Y50_N22
\mux1|Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~7_combout\ = (\AddressA[3]~input_o\ & (\AddressA[2]~input_o\)) # (!\AddressA[3]~input_o\ & ((\AddressA[2]~input_o\ & (\reg7|bit1|Q~q\)) # (!\AddressA[2]~input_o\ & ((\reg3|bit1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[3]~input_o\,
	datab => \AddressA[2]~input_o\,
	datac => \reg7|bit1|Q~q\,
	datad => \reg3|bit1|Q~q\,
	combout => \mux1|Mux2~7_combout\);

-- Location: FF_X57_Y50_N17
\reg15|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|bit1|Q~q\);

-- Location: FF_X56_Y50_N13
\reg11|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg11|bit1|Q~q\);

-- Location: LCCOMB_X56_Y50_N12
\mux1|Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~8_combout\ = (\mux1|Mux2~7_combout\ & ((\reg15|bit1|Q~q\) # ((!\AddressA[3]~input_o\)))) # (!\mux1|Mux2~7_combout\ & (((\reg11|bit1|Q~q\ & \AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux2~7_combout\,
	datab => \reg15|bit1|Q~q\,
	datac => \reg11|bit1|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux2~8_combout\);

-- Location: FF_X54_Y50_N31
\reg14|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|bit1|Q~q\);

-- Location: FF_X54_Y51_N21
\reg6|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|bit1|Q~q\);

-- Location: FF_X54_Y50_N5
\reg2|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|bit1|Q~q\);

-- Location: FF_X57_Y51_N23
\reg10|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg10|bit1|Q~q\);

-- Location: LCCOMB_X57_Y51_N22
\mux1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~0_combout\ = (\AddressA[2]~input_o\ & (((\AddressA[3]~input_o\)))) # (!\AddressA[2]~input_o\ & ((\AddressA[3]~input_o\ & ((\reg10|bit1|Q~q\))) # (!\AddressA[3]~input_o\ & (\reg2|bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[2]~input_o\,
	datab => \reg2|bit1|Q~q\,
	datac => \reg10|bit1|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y51_N20
\mux1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~1_combout\ = (\AddressA[2]~input_o\ & ((\mux1|Mux2~0_combout\ & (\reg14|bit1|Q~q\)) # (!\mux1|Mux2~0_combout\ & ((\reg6|bit1|Q~q\))))) # (!\AddressA[2]~input_o\ & (((\mux1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg14|bit1|Q~q\,
	datab => \AddressA[2]~input_o\,
	datac => \reg6|bit1|Q~q\,
	datad => \mux1|Mux2~0_combout\,
	combout => \mux1|Mux2~1_combout\);

-- Location: FF_X55_Y50_N23
\reg0|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|bit1|Q~q\);

-- Location: FF_X56_Y51_N23
\reg8|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8|bit1|Q~q\);

-- Location: LCCOMB_X56_Y51_N22
\mux1|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~4_combout\ = (\AddressA[3]~input_o\ & (((\reg8|bit1|Q~q\) # (\AddressA[2]~input_o\)))) # (!\AddressA[3]~input_o\ & (\reg0|bit1|Q~q\ & ((!\AddressA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|bit1|Q~q\,
	datab => \AddressA[3]~input_o\,
	datac => \reg8|bit1|Q~q\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux2~4_combout\);

-- Location: FF_X55_Y51_N23
\reg12|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|bit1|Q~q\);

-- Location: FF_X54_Y51_N23
\reg4|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|bit1|Q~q\);

-- Location: LCCOMB_X54_Y51_N22
\mux1|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~5_combout\ = (\mux1|Mux2~4_combout\ & ((\reg12|bit1|Q~q\) # ((!\AddressA[2]~input_o\)))) # (!\mux1|Mux2~4_combout\ & (((\reg4|bit1|Q~q\ & \AddressA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux2~4_combout\,
	datab => \reg12|bit1|Q~q\,
	datac => \reg4|bit1|Q~q\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux2~5_combout\);

-- Location: FF_X55_Y51_N5
\reg13|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg13|bit1|Q~q\);

-- Location: FF_X55_Y50_N21
\reg1|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|bit1|Q~q\);

-- Location: FF_X57_Y51_N25
\reg5|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|bit1|Q~q\);

-- Location: LCCOMB_X57_Y51_N24
\mux1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~2_combout\ = (\AddressA[2]~input_o\ & (((\reg5|bit1|Q~q\) # (\AddressA[3]~input_o\)))) # (!\AddressA[2]~input_o\ & (\reg1|bit1|Q~q\ & ((!\AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[2]~input_o\,
	datab => \reg1|bit1|Q~q\,
	datac => \reg5|bit1|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux2~2_combout\);

-- Location: FF_X56_Y51_N29
\reg9|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg9|bit1|Q~q\);

-- Location: LCCOMB_X56_Y51_N28
\mux1|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~3_combout\ = (\mux1|Mux2~2_combout\ & ((\reg13|bit1|Q~q\) # ((!\AddressA[3]~input_o\)))) # (!\mux1|Mux2~2_combout\ & (((\reg9|bit1|Q~q\ & \AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg13|bit1|Q~q\,
	datab => \mux1|Mux2~2_combout\,
	datac => \reg9|bit1|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux2~3_combout\);

-- Location: LCCOMB_X56_Y51_N16
\mux1|Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~6_combout\ = (\AddressA[1]~input_o\ & (((\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & ((\AddressA[0]~input_o\ & ((\mux1|Mux2~3_combout\))) # (!\AddressA[0]~input_o\ & (\mux1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux2~5_combout\,
	datab => \mux1|Mux2~3_combout\,
	datac => \AddressA[1]~input_o\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux2~6_combout\);

-- Location: LCCOMB_X56_Y51_N2
\mux1|Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~9_combout\ = (\AddressA[1]~input_o\ & ((\mux1|Mux2~6_combout\ & (\mux1|Mux2~8_combout\)) # (!\mux1|Mux2~6_combout\ & ((\mux1|Mux2~1_combout\))))) # (!\AddressA[1]~input_o\ & (((\mux1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[1]~input_o\,
	datab => \mux1|Mux2~8_combout\,
	datac => \mux1|Mux2~1_combout\,
	datad => \mux1|Mux2~6_combout\,
	combout => \mux1|Mux2~9_combout\);

-- Location: IOIBUF_X54_Y54_N8
\InputC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InputC(2),
	o => \InputC[2]~input_o\);

-- Location: FF_X56_Y51_N31
\reg8|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8|bit2|Q~q\);

-- Location: FF_X57_Y51_N5
\reg10|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg10|bit2|Q~q\);

-- Location: LCCOMB_X57_Y51_N4
\mux1|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~2_combout\ = (\AddressA[1]~input_o\ & (((\reg10|bit2|Q~q\) # (\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & (\reg8|bit2|Q~q\ & ((!\AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8|bit2|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg10|bit2|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux1~2_combout\);

-- Location: FF_X56_Y50_N1
\reg11|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg11|bit2|Q~q\);

-- Location: FF_X56_Y51_N13
\reg9|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg9|bit2|Q~q\);

-- Location: LCCOMB_X56_Y51_N12
\mux1|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~3_combout\ = (\mux1|Mux1~2_combout\ & ((\reg11|bit2|Q~q\) # ((!\AddressA[0]~input_o\)))) # (!\mux1|Mux1~2_combout\ & (((\reg9|bit2|Q~q\ & \AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~2_combout\,
	datab => \reg11|bit2|Q~q\,
	datac => \reg9|bit2|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux1~3_combout\);

-- Location: FF_X55_Y50_N27
\reg0|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|bit2|Q~q\);

-- Location: FF_X54_Y50_N17
\reg2|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|bit2|Q~q\);

-- Location: LCCOMB_X54_Y50_N16
\mux1|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~4_combout\ = (\AddressA[1]~input_o\ & (((\reg2|bit2|Q~q\) # (\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & (\reg0|bit2|Q~q\ & ((!\AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|bit2|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg2|bit2|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux1~4_combout\);

-- Location: FF_X56_Y50_N19
\reg3|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|bit2|Q~q\);

-- Location: FF_X55_Y50_N25
\reg1|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|bit2|Q~q\);

-- Location: LCCOMB_X55_Y50_N24
\mux1|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~5_combout\ = (\mux1|Mux1~4_combout\ & ((\reg3|bit2|Q~q\) # ((!\AddressA[0]~input_o\)))) # (!\mux1|Mux1~4_combout\ & (((\reg1|bit2|Q~q\ & \AddressA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~4_combout\,
	datab => \reg3|bit2|Q~q\,
	datac => \reg1|bit2|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux1~5_combout\);

-- Location: LCCOMB_X54_Y51_N12
\mux1|Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~6_combout\ = (\AddressA[3]~input_o\ & ((\mux1|Mux1~3_combout\) # ((\AddressA[2]~input_o\)))) # (!\AddressA[3]~input_o\ & (((\mux1|Mux1~5_combout\ & !\AddressA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~3_combout\,
	datab => \AddressA[3]~input_o\,
	datac => \mux1|Mux1~5_combout\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux1~6_combout\);

-- Location: FF_X57_Y50_N19
\reg7|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|bit2|Q~q\);

-- Location: FF_X54_Y51_N9
\reg6|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|bit2|Q~q\);

-- Location: FF_X54_Y51_N27
\reg4|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|bit2|Q~q\);

-- Location: FF_X57_Y51_N19
\reg5|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|bit2|Q~q\);

-- Location: LCCOMB_X57_Y51_N18
\mux1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~0_combout\ = (\AddressA[1]~input_o\ & (((\AddressA[0]~input_o\)))) # (!\AddressA[1]~input_o\ & ((\AddressA[0]~input_o\ & ((\reg5|bit2|Q~q\))) # (!\AddressA[0]~input_o\ & (\reg4|bit2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|bit2|Q~q\,
	datab => \AddressA[1]~input_o\,
	datac => \reg5|bit2|Q~q\,
	datad => \AddressA[0]~input_o\,
	combout => \mux1|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y51_N8
\mux1|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~1_combout\ = (\AddressA[1]~input_o\ & ((\mux1|Mux1~0_combout\ & (\reg7|bit2|Q~q\)) # (!\mux1|Mux1~0_combout\ & ((\reg6|bit2|Q~q\))))) # (!\AddressA[1]~input_o\ & (((\mux1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[1]~input_o\,
	datab => \reg7|bit2|Q~q\,
	datac => \reg6|bit2|Q~q\,
	datad => \mux1|Mux1~0_combout\,
	combout => \mux1|Mux1~1_combout\);

-- Location: FF_X55_Y51_N9
\reg13|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg13|bit2|Q~q\);

-- Location: FF_X55_Y51_N19
\reg12|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|bit2|Q~q\);

-- Location: LCCOMB_X55_Y51_N8
\mux1|Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~7_combout\ = (\AddressA[1]~input_o\ & (\AddressA[0]~input_o\)) # (!\AddressA[1]~input_o\ & ((\AddressA[0]~input_o\ & (\reg13|bit2|Q~q\)) # (!\AddressA[0]~input_o\ & ((\reg12|bit2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[1]~input_o\,
	datab => \AddressA[0]~input_o\,
	datac => \reg13|bit2|Q~q\,
	datad => \reg12|bit2|Q~q\,
	combout => \mux1|Mux1~7_combout\);

-- Location: FF_X54_Y50_N27
\reg14|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|bit2|Q~q\);

-- Location: FF_X57_Y50_N29
\reg15|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|bit2|Q~q\);

-- Location: LCCOMB_X54_Y50_N26
\mux1|Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~8_combout\ = (\mux1|Mux1~7_combout\ & (((\reg15|bit2|Q~q\)) # (!\AddressA[1]~input_o\))) # (!\mux1|Mux1~7_combout\ & (\AddressA[1]~input_o\ & (\reg14|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~7_combout\,
	datab => \AddressA[1]~input_o\,
	datac => \reg14|bit2|Q~q\,
	datad => \reg15|bit2|Q~q\,
	combout => \mux1|Mux1~8_combout\);

-- Location: LCCOMB_X54_Y51_N6
\mux1|Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~9_combout\ = (\mux1|Mux1~6_combout\ & (((\mux1|Mux1~8_combout\)) # (!\AddressA[2]~input_o\))) # (!\mux1|Mux1~6_combout\ & (\AddressA[2]~input_o\ & (\mux1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~6_combout\,
	datab => \AddressA[2]~input_o\,
	datac => \mux1|Mux1~1_combout\,
	datad => \mux1|Mux1~8_combout\,
	combout => \mux1|Mux1~9_combout\);

-- Location: IOIBUF_X56_Y54_N1
\InputC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InputC(3),
	o => \InputC[3]~input_o\);

-- Location: FF_X55_Y51_N13
\reg13|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg13|bit3|Q~q\);

-- Location: FF_X57_Y51_N31
\reg5|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|bit3|Q~q\);

-- Location: FF_X55_Y50_N29
\reg1|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|bit3|Q~q\);

-- Location: FF_X56_Y51_N9
\reg9|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg9|bit3|Q~q\);

-- Location: LCCOMB_X56_Y51_N8
\mux1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (\AddressA[3]~input_o\ & (((\reg9|bit3|Q~q\) # (\AddressA[2]~input_o\)))) # (!\AddressA[3]~input_o\ & (\reg1|bit3|Q~q\ & ((!\AddressA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|bit3|Q~q\,
	datab => \AddressA[3]~input_o\,
	datac => \reg9|bit3|Q~q\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y51_N30
\mux1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\AddressA[2]~input_o\ & ((\mux1|Mux0~0_combout\ & (\reg13|bit3|Q~q\)) # (!\mux1|Mux0~0_combout\ & ((\reg5|bit3|Q~q\))))) # (!\AddressA[2]~input_o\ & (((\mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[2]~input_o\,
	datab => \reg13|bit3|Q~q\,
	datac => \reg5|bit3|Q~q\,
	datad => \mux1|Mux0~0_combout\,
	combout => \mux1|Mux0~1_combout\);

-- Location: FF_X55_Y51_N15
\reg12|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|bit3|Q~q\);

-- Location: FF_X54_Y51_N11
\reg4|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|bit3|Q~q\);

-- Location: FF_X55_Y50_N31
\reg0|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|bit3|Q~q\);

-- Location: LCCOMB_X54_Y51_N10
\mux1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~4_combout\ = (\AddressA[2]~input_o\ & ((\AddressA[3]~input_o\) # ((\reg4|bit3|Q~q\)))) # (!\AddressA[2]~input_o\ & (!\AddressA[3]~input_o\ & ((\reg0|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[2]~input_o\,
	datab => \AddressA[3]~input_o\,
	datac => \reg4|bit3|Q~q\,
	datad => \reg0|bit3|Q~q\,
	combout => \mux1|Mux0~4_combout\);

-- Location: FF_X56_Y51_N19
\reg8|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8|bit3|Q~q\);

-- Location: LCCOMB_X56_Y51_N18
\mux1|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~5_combout\ = (\mux1|Mux0~4_combout\ & ((\reg12|bit3|Q~q\) # ((!\AddressA[3]~input_o\)))) # (!\mux1|Mux0~4_combout\ & (((\reg8|bit3|Q~q\ & \AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|bit3|Q~q\,
	datab => \mux1|Mux0~4_combout\,
	datac => \reg8|bit3|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux0~5_combout\);

-- Location: FF_X54_Y50_N13
\reg2|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|bit3|Q~q\);

-- Location: FF_X54_Y51_N25
\reg6|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|bit3|Q~q\);

-- Location: LCCOMB_X54_Y51_N24
\mux1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~2_combout\ = (\AddressA[3]~input_o\ & (((\AddressA[2]~input_o\)))) # (!\AddressA[3]~input_o\ & ((\AddressA[2]~input_o\ & ((\reg6|bit3|Q~q\))) # (!\AddressA[2]~input_o\ & (\reg2|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|bit3|Q~q\,
	datab => \AddressA[3]~input_o\,
	datac => \reg6|bit3|Q~q\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux0~2_combout\);

-- Location: FF_X54_Y50_N23
\reg14|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|bit3|Q~q\);

-- Location: FF_X57_Y51_N9
\reg10|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg10|bit3|Q~q\);

-- Location: LCCOMB_X57_Y51_N8
\mux1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~3_combout\ = (\mux1|Mux0~2_combout\ & ((\reg14|bit3|Q~q\) # ((!\AddressA[3]~input_o\)))) # (!\mux1|Mux0~2_combout\ & (((\reg10|bit3|Q~q\ & \AddressA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~2_combout\,
	datab => \reg14|bit3|Q~q\,
	datac => \reg10|bit3|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux0~3_combout\);

-- Location: LCCOMB_X57_Y51_N26
\mux1|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~6_combout\ = (\AddressA[0]~input_o\ & (((\AddressA[1]~input_o\)))) # (!\AddressA[0]~input_o\ & ((\AddressA[1]~input_o\ & ((\mux1|Mux0~3_combout\))) # (!\AddressA[1]~input_o\ & (\mux1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressA[0]~input_o\,
	datab => \mux1|Mux0~5_combout\,
	datac => \mux1|Mux0~3_combout\,
	datad => \AddressA[1]~input_o\,
	combout => \mux1|Mux0~6_combout\);

-- Location: FF_X56_Y50_N31
\reg3|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|bit3|Q~q\);

-- Location: FF_X56_Y50_N21
\reg11|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg11|bit3|Q~q\);

-- Location: LCCOMB_X56_Y50_N20
\mux1|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~7_combout\ = (\AddressA[2]~input_o\ & (((\AddressA[3]~input_o\)))) # (!\AddressA[2]~input_o\ & ((\AddressA[3]~input_o\ & ((\reg11|bit3|Q~q\))) # (!\AddressA[3]~input_o\ & (\reg3|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|bit3|Q~q\,
	datab => \AddressA[2]~input_o\,
	datac => \reg11|bit3|Q~q\,
	datad => \AddressA[3]~input_o\,
	combout => \mux1|Mux0~7_combout\);

-- Location: FF_X57_Y50_N9
\reg15|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|bit3|Q~q\);

-- Location: FF_X57_Y50_N15
\reg7|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InputC[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \in_ENB_7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|bit3|Q~q\);

-- Location: LCCOMB_X57_Y50_N14
\mux1|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~8_combout\ = (\mux1|Mux0~7_combout\ & ((\reg15|bit3|Q~q\) # ((!\AddressA[2]~input_o\)))) # (!\mux1|Mux0~7_combout\ & (((\reg7|bit3|Q~q\ & \AddressA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~7_combout\,
	datab => \reg15|bit3|Q~q\,
	datac => \reg7|bit3|Q~q\,
	datad => \AddressA[2]~input_o\,
	combout => \mux1|Mux0~8_combout\);

-- Location: LCCOMB_X57_Y51_N20
\mux1|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~9_combout\ = (\AddressA[0]~input_o\ & ((\mux1|Mux0~6_combout\ & ((\mux1|Mux0~8_combout\))) # (!\mux1|Mux0~6_combout\ & (\mux1|Mux0~1_combout\)))) # (!\AddressA[0]~input_o\ & (((\mux1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~1_combout\,
	datab => \AddressA[0]~input_o\,
	datac => \mux1|Mux0~6_combout\,
	datad => \mux1|Mux0~8_combout\,
	combout => \mux1|Mux0~9_combout\);

-- Location: IOIBUF_X54_Y54_N29
\AddressB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressB(1),
	o => \AddressB[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\AddressB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressB(0),
	o => \AddressB[0]~input_o\);

-- Location: LCCOMB_X55_Y51_N2
\mux2|Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~7_combout\ = (\AddressB[1]~input_o\ & ((\reg14|bit0|Q~q\) # ((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & (((\reg12|bit0|Q~q\ & !\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg14|bit0|Q~q\,
	datab => \AddressB[1]~input_o\,
	datac => \reg12|bit0|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux3~7_combout\);

-- Location: LCCOMB_X57_Y50_N20
\mux2|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~8_combout\ = (\mux2|Mux3~7_combout\ & (((\reg15|bit0|Q~q\) # (!\AddressB[0]~input_o\)))) # (!\mux2|Mux3~7_combout\ & (\reg13|bit0|Q~q\ & ((\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~7_combout\,
	datab => \reg13|bit0|Q~q\,
	datac => \reg15|bit0|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux3~8_combout\);

-- Location: LCCOMB_X55_Y50_N18
\mux2|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~4_combout\ = (\AddressB[1]~input_o\ & (\AddressB[0]~input_o\)) # (!\AddressB[1]~input_o\ & ((\AddressB[0]~input_o\ & ((\reg1|bit0|Q~q\))) # (!\AddressB[0]~input_o\ & (\reg0|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \AddressB[0]~input_o\,
	datac => \reg0|bit0|Q~q\,
	datad => \reg1|bit0|Q~q\,
	combout => \mux2|Mux3~4_combout\);

-- Location: LCCOMB_X56_Y50_N10
\mux2|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~5_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux3~4_combout\ & ((\reg3|bit0|Q~q\))) # (!\mux2|Mux3~4_combout\ & (\reg2|bit0|Q~q\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg2|bit0|Q~q\,
	datac => \reg3|bit0|Q~q\,
	datad => \mux2|Mux3~4_combout\,
	combout => \mux2|Mux3~5_combout\);

-- Location: LCCOMB_X54_Y51_N18
\mux2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~2_combout\ = (\AddressB[1]~input_o\ & ((\reg6|bit0|Q~q\) # ((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & (((\reg4|bit0|Q~q\ & !\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg6|bit0|Q~q\,
	datac => \reg4|bit0|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux3~2_combout\);

-- Location: LCCOMB_X57_Y50_N24
\mux2|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~3_combout\ = (\mux2|Mux3~2_combout\ & (((\reg7|bit0|Q~q\) # (!\AddressB[0]~input_o\)))) # (!\mux2|Mux3~2_combout\ & (\reg5|bit0|Q~q\ & ((\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|bit0|Q~q\,
	datab => \mux2|Mux3~2_combout\,
	datac => \reg7|bit0|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux3~3_combout\);

-- Location: IOIBUF_X58_Y54_N29
\AddressB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressB(2),
	o => \AddressB[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\AddressB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressB(3),
	o => \AddressB[3]~input_o\);

-- Location: LCCOMB_X56_Y50_N24
\mux2|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~6_combout\ = (\AddressB[2]~input_o\ & (((\mux2|Mux3~3_combout\) # (\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & (\mux2|Mux3~5_combout\ & ((!\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~5_combout\,
	datab => \mux2|Mux3~3_combout\,
	datac => \AddressB[2]~input_o\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux3~6_combout\);

-- Location: LCCOMB_X56_Y51_N26
\mux2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~0_combout\ = (\AddressB[1]~input_o\ & (((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & ((\AddressB[0]~input_o\ & (\reg9|bit0|Q~q\)) # (!\AddressB[0]~input_o\ & ((\reg8|bit0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg9|bit0|Q~q\,
	datac => \reg8|bit0|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y50_N8
\mux2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~1_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux3~0_combout\ & ((\reg11|bit0|Q~q\))) # (!\mux2|Mux3~0_combout\ & (\reg10|bit0|Q~q\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg10|bit0|Q~q\,
	datac => \reg11|bit0|Q~q\,
	datad => \mux2|Mux3~0_combout\,
	combout => \mux2|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y50_N26
\mux2|Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~9_combout\ = (\mux2|Mux3~6_combout\ & ((\mux2|Mux3~8_combout\) # ((!\AddressB[3]~input_o\)))) # (!\mux2|Mux3~6_combout\ & (((\mux2|Mux3~1_combout\ & \AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~8_combout\,
	datab => \mux2|Mux3~6_combout\,
	datac => \mux2|Mux3~1_combout\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux3~9_combout\);

-- Location: LCCOMB_X54_Y50_N4
\mux2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~0_combout\ = (\AddressB[3]~input_o\ & ((\reg10|bit1|Q~q\) # ((\AddressB[2]~input_o\)))) # (!\AddressB[3]~input_o\ & (((\reg2|bit1|Q~q\ & !\AddressB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg10|bit1|Q~q\,
	datab => \AddressB[3]~input_o\,
	datac => \reg2|bit1|Q~q\,
	datad => \AddressB[2]~input_o\,
	combout => \mux2|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\mux2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~1_combout\ = (\mux2|Mux2~0_combout\ & (((\reg14|bit1|Q~q\) # (!\AddressB[2]~input_o\)))) # (!\mux2|Mux2~0_combout\ & (\reg6|bit1|Q~q\ & ((\AddressB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|bit1|Q~q\,
	datab => \mux2|Mux2~0_combout\,
	datac => \reg14|bit1|Q~q\,
	datad => \AddressB[2]~input_o\,
	combout => \mux2|Mux2~1_combout\);

-- Location: LCCOMB_X55_Y50_N20
\mux2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~2_combout\ = (\AddressB[2]~input_o\ & ((\reg5|bit1|Q~q\) # ((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & (((\reg1|bit1|Q~q\ & !\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg5|bit1|Q~q\,
	datac => \reg1|bit1|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux2~2_combout\);

-- Location: LCCOMB_X55_Y51_N4
\mux2|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~3_combout\ = (\mux2|Mux2~2_combout\ & (((\reg13|bit1|Q~q\) # (!\AddressB[3]~input_o\)))) # (!\mux2|Mux2~2_combout\ & (\reg9|bit1|Q~q\ & ((\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux2~2_combout\,
	datab => \reg9|bit1|Q~q\,
	datac => \reg13|bit1|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux2~3_combout\);

-- Location: LCCOMB_X55_Y50_N22
\mux2|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~4_combout\ = (\AddressB[2]~input_o\ & (((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & ((\AddressB[3]~input_o\ & (\reg8|bit1|Q~q\)) # (!\AddressB[3]~input_o\ & ((\reg0|bit1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg8|bit1|Q~q\,
	datac => \reg0|bit1|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux2~4_combout\);

-- Location: LCCOMB_X55_Y51_N22
\mux2|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~5_combout\ = (\AddressB[2]~input_o\ & ((\mux2|Mux2~4_combout\ & (\reg12|bit1|Q~q\)) # (!\mux2|Mux2~4_combout\ & ((\reg4|bit1|Q~q\))))) # (!\AddressB[2]~input_o\ & (\mux2|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \mux2|Mux2~4_combout\,
	datac => \reg12|bit1|Q~q\,
	datad => \reg4|bit1|Q~q\,
	combout => \mux2|Mux2~5_combout\);

-- Location: LCCOMB_X56_Y51_N20
\mux2|Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~6_combout\ = (\AddressB[0]~input_o\ & ((\mux2|Mux2~3_combout\) # ((\AddressB[1]~input_o\)))) # (!\AddressB[0]~input_o\ & (((!\AddressB[1]~input_o\ & \mux2|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[0]~input_o\,
	datab => \mux2|Mux2~3_combout\,
	datac => \AddressB[1]~input_o\,
	datad => \mux2|Mux2~5_combout\,
	combout => \mux2|Mux2~6_combout\);

-- Location: LCCOMB_X56_Y50_N14
\mux2|Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~7_combout\ = (\AddressB[2]~input_o\ & ((\reg7|bit1|Q~q\) # ((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & (((\reg3|bit1|Q~q\ & !\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg7|bit1|Q~q\,
	datac => \reg3|bit1|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux2~7_combout\);

-- Location: LCCOMB_X57_Y50_N16
\mux2|Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~8_combout\ = (\mux2|Mux2~7_combout\ & (((\reg15|bit1|Q~q\) # (!\AddressB[3]~input_o\)))) # (!\mux2|Mux2~7_combout\ & (\reg11|bit1|Q~q\ & ((\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg11|bit1|Q~q\,
	datab => \mux2|Mux2~7_combout\,
	datac => \reg15|bit1|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux2~8_combout\);

-- Location: LCCOMB_X57_Y50_N26
\mux2|Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~9_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux2~6_combout\ & ((\mux2|Mux2~8_combout\))) # (!\mux2|Mux2~6_combout\ & (\mux2|Mux2~1_combout\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \mux2|Mux2~1_combout\,
	datac => \mux2|Mux2~6_combout\,
	datad => \mux2|Mux2~8_combout\,
	combout => \mux2|Mux2~9_combout\);

-- Location: LCCOMB_X55_Y51_N18
\mux2|Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~7_combout\ = (\AddressB[0]~input_o\ & ((\AddressB[1]~input_o\) # ((\reg13|bit2|Q~q\)))) # (!\AddressB[0]~input_o\ & (!\AddressB[1]~input_o\ & (\reg12|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[0]~input_o\,
	datab => \AddressB[1]~input_o\,
	datac => \reg12|bit2|Q~q\,
	datad => \reg13|bit2|Q~q\,
	combout => \mux2|Mux1~7_combout\);

-- Location: LCCOMB_X57_Y50_N28
\mux2|Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~8_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux1~7_combout\ & ((\reg15|bit2|Q~q\))) # (!\mux2|Mux1~7_combout\ & (\reg14|bit2|Q~q\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg14|bit2|Q~q\,
	datac => \reg15|bit2|Q~q\,
	datad => \mux2|Mux1~7_combout\,
	combout => \mux2|Mux1~8_combout\);

-- Location: LCCOMB_X54_Y51_N26
\mux2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~0_combout\ = (\AddressB[1]~input_o\ & (((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & ((\AddressB[0]~input_o\ & (\reg5|bit2|Q~q\)) # (!\AddressB[0]~input_o\ & ((\reg4|bit2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg5|bit2|Q~q\,
	datac => \reg4|bit2|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y50_N18
\mux2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~1_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux1~0_combout\ & ((\reg7|bit2|Q~q\))) # (!\mux2|Mux1~0_combout\ & (\reg6|bit2|Q~q\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg6|bit2|Q~q\,
	datac => \reg7|bit2|Q~q\,
	datad => \mux2|Mux1~0_combout\,
	combout => \mux2|Mux1~1_combout\);

-- Location: LCCOMB_X56_Y51_N30
\mux2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~2_combout\ = (\AddressB[1]~input_o\ & ((\reg10|bit2|Q~q\) # ((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & (((\reg8|bit2|Q~q\ & !\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[1]~input_o\,
	datab => \reg10|bit2|Q~q\,
	datac => \reg8|bit2|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux1~2_combout\);

-- Location: LCCOMB_X56_Y50_N0
\mux2|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~3_combout\ = (\mux2|Mux1~2_combout\ & (((\reg11|bit2|Q~q\) # (!\AddressB[0]~input_o\)))) # (!\mux2|Mux1~2_combout\ & (\reg9|bit2|Q~q\ & ((\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux1~2_combout\,
	datab => \reg9|bit2|Q~q\,
	datac => \reg11|bit2|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux1~3_combout\);

-- Location: LCCOMB_X55_Y50_N26
\mux2|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~4_combout\ = (\AddressB[0]~input_o\ & (((\AddressB[1]~input_o\)))) # (!\AddressB[0]~input_o\ & ((\AddressB[1]~input_o\ & (\reg2|bit2|Q~q\)) # (!\AddressB[1]~input_o\ & ((\reg0|bit2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|bit2|Q~q\,
	datab => \AddressB[0]~input_o\,
	datac => \reg0|bit2|Q~q\,
	datad => \AddressB[1]~input_o\,
	combout => \mux2|Mux1~4_combout\);

-- Location: LCCOMB_X56_Y50_N18
\mux2|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~5_combout\ = (\mux2|Mux1~4_combout\ & (((\reg3|bit2|Q~q\) # (!\AddressB[0]~input_o\)))) # (!\mux2|Mux1~4_combout\ & (\reg1|bit2|Q~q\ & ((\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|bit2|Q~q\,
	datab => \mux2|Mux1~4_combout\,
	datac => \reg3|bit2|Q~q\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux1~5_combout\);

-- Location: LCCOMB_X55_Y50_N8
\mux2|Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~6_combout\ = (\AddressB[2]~input_o\ & (((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & ((\AddressB[3]~input_o\ & (\mux2|Mux1~3_combout\)) # (!\AddressB[3]~input_o\ & ((\mux2|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux1~3_combout\,
	datab => \mux2|Mux1~5_combout\,
	datac => \AddressB[2]~input_o\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux1~6_combout\);

-- Location: LCCOMB_X56_Y50_N28
\mux2|Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~9_combout\ = (\AddressB[2]~input_o\ & ((\mux2|Mux1~6_combout\ & (\mux2|Mux1~8_combout\)) # (!\mux2|Mux1~6_combout\ & ((\mux2|Mux1~1_combout\))))) # (!\AddressB[2]~input_o\ & (((\mux2|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \mux2|Mux1~8_combout\,
	datac => \mux2|Mux1~1_combout\,
	datad => \mux2|Mux1~6_combout\,
	combout => \mux2|Mux1~9_combout\);

-- Location: LCCOMB_X54_Y50_N12
\mux2|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~2_combout\ = (\AddressB[3]~input_o\ & (((\AddressB[2]~input_o\)))) # (!\AddressB[3]~input_o\ & ((\AddressB[2]~input_o\ & (\reg6|bit3|Q~q\)) # (!\AddressB[2]~input_o\ & ((\reg2|bit3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|bit3|Q~q\,
	datab => \AddressB[3]~input_o\,
	datac => \reg2|bit3|Q~q\,
	datad => \AddressB[2]~input_o\,
	combout => \mux2|Mux0~2_combout\);

-- Location: LCCOMB_X54_Y50_N22
\mux2|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~3_combout\ = (\mux2|Mux0~2_combout\ & (((\reg14|bit3|Q~q\)) # (!\AddressB[3]~input_o\))) # (!\mux2|Mux0~2_combout\ & (\AddressB[3]~input_o\ & ((\reg10|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux0~2_combout\,
	datab => \AddressB[3]~input_o\,
	datac => \reg14|bit3|Q~q\,
	datad => \reg10|bit3|Q~q\,
	combout => \mux2|Mux0~3_combout\);

-- Location: LCCOMB_X55_Y50_N30
\mux2|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~4_combout\ = (\AddressB[2]~input_o\ & ((\reg4|bit3|Q~q\) # ((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & (((\reg0|bit3|Q~q\ & !\AddressB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg4|bit3|Q~q\,
	datac => \reg0|bit3|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux0~4_combout\);

-- Location: LCCOMB_X55_Y51_N14
\mux2|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~5_combout\ = (\AddressB[3]~input_o\ & ((\mux2|Mux0~4_combout\ & (\reg12|bit3|Q~q\)) # (!\mux2|Mux0~4_combout\ & ((\reg8|bit3|Q~q\))))) # (!\AddressB[3]~input_o\ & (\mux2|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[3]~input_o\,
	datab => \mux2|Mux0~4_combout\,
	datac => \reg12|bit3|Q~q\,
	datad => \reg8|bit3|Q~q\,
	combout => \mux2|Mux0~5_combout\);

-- Location: LCCOMB_X55_Y51_N16
\mux2|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~6_combout\ = (\AddressB[1]~input_o\ & ((\mux2|Mux0~3_combout\) # ((\AddressB[0]~input_o\)))) # (!\AddressB[1]~input_o\ & (((\mux2|Mux0~5_combout\ & !\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux0~3_combout\,
	datab => \mux2|Mux0~5_combout\,
	datac => \AddressB[1]~input_o\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux0~6_combout\);

-- Location: LCCOMB_X55_Y50_N28
\mux2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~0_combout\ = (\AddressB[2]~input_o\ & (((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & ((\AddressB[3]~input_o\ & (\reg9|bit3|Q~q\)) # (!\AddressB[3]~input_o\ & ((\reg1|bit3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg9|bit3|Q~q\,
	datac => \reg1|bit3|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y51_N12
\mux2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~1_combout\ = (\AddressB[2]~input_o\ & ((\mux2|Mux0~0_combout\ & ((\reg13|bit3|Q~q\))) # (!\mux2|Mux0~0_combout\ & (\reg5|bit3|Q~q\)))) # (!\AddressB[2]~input_o\ & (((\mux2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg5|bit3|Q~q\,
	datac => \reg13|bit3|Q~q\,
	datad => \mux2|Mux0~0_combout\,
	combout => \mux2|Mux0~1_combout\);

-- Location: LCCOMB_X56_Y50_N30
\mux2|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~7_combout\ = (\AddressB[2]~input_o\ & (((\AddressB[3]~input_o\)))) # (!\AddressB[2]~input_o\ & ((\AddressB[3]~input_o\ & (\reg11|bit3|Q~q\)) # (!\AddressB[3]~input_o\ & ((\reg3|bit3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressB[2]~input_o\,
	datab => \reg11|bit3|Q~q\,
	datac => \reg3|bit3|Q~q\,
	datad => \AddressB[3]~input_o\,
	combout => \mux2|Mux0~7_combout\);

-- Location: LCCOMB_X57_Y50_N8
\mux2|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~8_combout\ = (\mux2|Mux0~7_combout\ & (((\reg15|bit3|Q~q\) # (!\AddressB[2]~input_o\)))) # (!\mux2|Mux0~7_combout\ & (\reg7|bit3|Q~q\ & ((\AddressB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|bit3|Q~q\,
	datab => \mux2|Mux0~7_combout\,
	datac => \reg15|bit3|Q~q\,
	datad => \AddressB[2]~input_o\,
	combout => \mux2|Mux0~8_combout\);

-- Location: LCCOMB_X56_Y51_N14
\mux2|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~9_combout\ = (\mux2|Mux0~6_combout\ & (((\mux2|Mux0~8_combout\) # (!\AddressB[0]~input_o\)))) # (!\mux2|Mux0~6_combout\ & (\mux2|Mux0~1_combout\ & ((\AddressB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux0~6_combout\,
	datab => \mux2|Mux0~1_combout\,
	datac => \mux2|Mux0~8_combout\,
	datad => \AddressB[0]~input_o\,
	combout => \mux2|Mux0~9_combout\);

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

ww_OutputA(0) <= \OutputA[0]~output_o\;

ww_OutputA(1) <= \OutputA[1]~output_o\;

ww_OutputA(2) <= \OutputA[2]~output_o\;

ww_OutputA(3) <= \OutputA[3]~output_o\;

ww_OutputB(0) <= \OutputB[0]~output_o\;

ww_OutputB(1) <= \OutputB[1]~output_o\;

ww_OutputB(2) <= \OutputB[2]~output_o\;

ww_OutputB(3) <= \OutputB[3]~output_o\;
END structure;


