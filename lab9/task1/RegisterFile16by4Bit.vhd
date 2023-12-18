----------------------------------------------------------------------------------
-- Name:		Daleela
-- Date:		10/31/2023
-- Course:	CSCE 230
-- File:		RegisterFile16by4Bit.vhd
-- HW:		Lab 9
-- Purp:		Implements a register file that is 16 by 4 bits
--
-- Doc:		Lecture Slides
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity RegisterFile16by4Bit is
	port(
		clock, reset, RF_write 			:in std_logic;
		
		AddressA, AddressB, AddressC 	:in std_logic_vector(3 downto 0);
		InputC 								:in std_logic_vector(3 downto 0);
		OutputA, OutputB 					:out std_logic_vector(3 downto 0) 
		);
end RegisterFile16by4Bit;

architecture implementation of RegisterFile16by4Bit is
--component declaration	
	component Reg4Bit is
		port(
			clock   : in std_logic;
			reset   : in std_logic;
			enable  : in std_logic;
			
			D		  : in std_logic_vector(3 downto 0);
			Q		  : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component Mux16Input4Bit is
		port (
			s : in  std_logic_vector(3 downto 0);
			
			input0, input1, input2, input3, input4, 
			input5, input6, input7, input8, input9, 
			input10, input11, input12, input13, input14, input15 	: in  std_logic_vector(3 downto 0);

			output 	: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component Decoder4bit is
		port(
			x : in  std_logic_vector(3 downto 0);
			y : out std_logic_vector(15 downto 0)
		);
	end component;
-- wires for decoder output
signal out_DE_0,out_DE_1, out_DE_2, out_DE_3, out_DE_4, out_DE_5,
			out_DE_6, out_DE_7, out_DE_8, out_DE_9, out_DE_10,
			out_DE_11, out_DE_12, out_DE_13, out_DE_14, out_DE_15	: std_logic;

-- wires to connect decoder output and RF_Write to connect to register enabler
signal in_ENB_0, in_ENB_1, in_ENB_2, in_ENB_3, in_ENB_4, in_ENB_5,			
			 in_ENB_6, in_ENB_7, in_ENB_8, in_ENB_9, in_ENB_10,		
			 in_ENB_11, in_ENB_12, in_ENB_13, in_ENB_14, in_ENB_15 : std_logic;

--wires betwen register output and mux input
signal regOut_muxIn_0, regOut_muxIn_1, regOut_muxIn_2, regOut_muxIn_3, regOut_muxIn_4, regOut_muxIn_5,
					 regOut_muxIn_6, regOut_muxIn_7, regOut_muxIn_8, regOut_muxIn_9, regOut_muxIn_10,
					 regOut_muxIn_11, regOut_muxIn_12, regOut_muxIn_13, regOut_muxIn_14, regOut_muxIn_15	: std_logic_vector(3 downto 0);	
begin
-- Initiate components
	Decoder: Decoder4bit
		port map(
			x => AddressC, 
			y(0) => out_DE_0,
			y(1) => out_DE_1,
			y(2) => out_DE_2,
			y(3) => out_DE_3,
			y(4) => out_DE_4,
			y(5) => out_DE_5,
			y(6) => out_DE_6,
			y(7) => out_DE_7,
			y(8) => out_DE_8,
			y(9) => out_DE_9,
			y(10) => out_DE_10,
			y(11) => out_DE_11,
			y(12) => out_DE_12,
			y(13) => out_DE_13,
			y(14) => out_DE_14,
			y(15) => out_DE_15	
		);

--concurrent statements for enabler wires 
	
	in_ENB_0 <= RF_write and out_DE_0;
	in_ENB_1 <= RF_write and out_DE_1;
	in_ENB_2 <= RF_write and out_DE_2;
	in_ENB_3 <= RF_write and out_DE_3;
	in_ENB_4 <= RF_write and out_DE_4;
	in_ENB_5 <= RF_write and out_DE_5;
	in_ENB_6 <= RF_write and out_DE_6;
	in_ENB_7 <= RF_write and out_DE_7;
	in_ENB_8 <= RF_write and out_DE_8;
	in_ENB_9 <= RF_write and out_DE_9;
	in_ENB_10 <= RF_write and out_DE_10;
	in_ENB_11 <= RF_write and out_DE_11;
	in_ENB_12 <= RF_write and out_DE_12;
	in_ENB_13 <= RF_write and out_DE_13;
	in_ENB_14 <= RF_write and out_DE_14;
	in_ENB_15 <= RF_write and out_DE_15;

--  16, 4 bit Registers	
	reg0: Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_0, D=>InputC, Q=>regOut_muxIn_0);
	reg1:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_1, D=>InputC, Q=>regOut_muxIn_1);
	reg2:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_2, D=>InputC, Q=>regOut_muxIn_2);
	reg3:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_3, D=>InputC, Q=>regOut_muxIn_3);
	reg4:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_4, D=>InputC, Q=>regOut_muxIn_4);
	reg5:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_5, D=>InputC, Q=>regOut_muxIn_5);
	
	reg6:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_6, D=>InputC, Q=>regOut_muxIn_6);
	reg7:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_7, D=>InputC, Q=>regOut_muxIn_7);
	reg8:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_8, D=>InputC, Q=>regOut_muxIn_8);
	reg9:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_9, D=>InputC, Q=>regOut_muxIn_9);
	
	reg10:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_10, D=>InputC, Q=>regOut_muxIn_10);
	reg11:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_11, D=>InputC, Q=>regOut_muxIn_11);
	reg12:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_12, D=>InputC, Q=>regOut_muxIn_12);
	reg13:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_13, D=>InputC, Q=>regOut_muxIn_13);
	reg14:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_14, D=>InputC, Q=>regOut_muxIn_14);
	reg15:	Reg4bit port map(clock=>clock, reset=>reset, enable=>in_ENB_15, D=>InputC, Q=>regOut_muxIn_15);
	
	mux1: mux16input4bit 
		port map (
		s => AddressA,
		input0 => regOut_muxIn_0,
		input1 => regOut_muxIn_1,
		input2 => regOut_muxIn_2,
		input3 => regOut_muxIn_3,
		input4 => regOut_muxIn_4,
		input5 => regOut_muxIn_5,
		input6 => regOut_muxIn_6,
		input7 => regOut_muxIn_7,
		input8 => regOut_muxIn_8,
		input9 => regOut_muxIn_9,
		input10 => regOut_muxIn_10,
		input11 => regOut_muxIn_11,
		input12 => regOut_muxIn_12,
		input13 => regOut_muxIn_13,
		input14 => regOut_muxIn_14,
		input15 => regOut_muxIn_15,
		
		output => OutputA
		);
	
	
	mux2: mux16input4bit 
		port map (
		s => AddressB,
		input0 => regOut_muxIn_0,
		input1 => regOut_muxIn_1,
		input2 => regOut_muxIn_2,
		input3 => regOut_muxIn_3,
		input4 => regOut_muxIn_4,
		input5 => regOut_muxIn_5,
		input6 => regOut_muxIn_6,
		input7 => regOut_muxIn_7,
		input8 => regOut_muxIn_8,
		input9 => regOut_muxIn_9,
		input10 => regOut_muxIn_10,
		input11 => regOut_muxIn_11,
		input12 => regOut_muxIn_12,
		input13 => regOut_muxIn_13,
		input14 => regOut_muxIn_14,
		input15 => regOut_muxIn_15,
		
		output => OutputB
		);
	

	
end implementation;