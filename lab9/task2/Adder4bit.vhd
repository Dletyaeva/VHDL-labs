----------------------------------------------------------------------------------
-- Name:	Daleela
-- Date:	11/01/2023
-- Course:	CSCE 230
-- File:		ALU.vhd
-- HW:		Lab 9 task 2
-- Purp:		Implements 4-bit ALU that performs arithmetic and logic operations on 4-bit binary numbers
--
-- Doc:		Lecture Notes
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

entity Adder4Bit is
	port(
		C_in 		: in std_logic;
		X, Y 		: in std_logic_vector(3 downto 0);
		
		S 			: out std_logic_vector(3 downto 0);
		C_out_2, C_out_3 : out std_logic
		);
end Adder4Bit;

architecture implementation of Adder4bit is
	--declare component
	component Adder1bit is
		port(
			X, Y, C_in 	: in std_logic;
			S, C_out 	: out std_logic
		);
	end component;
	
signal betwn0_1: std_logic;
signal betwn1_2: std_logic;
signal betwn2_3: std_logic;

signal C2: std_logic;
	
begin
	adder0: Adder1bit port map (X=>X(0), Y=>Y(0), C_in=>C_in, S=>S(0), C_out=>betwn0_1);
	adder1: Adder1bit port map (X=>X(1), Y=>Y(1), C_in=>betwn0_1, S=>S(1), C_out=>betwn1_2);
	adder2: Adder1bit port map (X=>X(2), Y=>Y(2), C_in=>betwn1_2, S=>S(2), C_out=>C2);
	adder3: Adder1bit port map (X=>X(3), Y=>Y(3), C_in=>betwn2_3, S=>S(3), C_out=> C_out_3);
	
	betwn2_3 <= C2;
	C_out_2 <= C2;
	

end implementation;