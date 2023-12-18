----------------------------------------------------------------------------------
-- Name:	Prof Jeff Falkinburg
-- Date:	Fall 2020
-- Course:	CSCE 230
-- File:	Mux16Input4Bit.vhd
-- HW:		Lab 9
-- Purp:	Implements a 2 Input by 4-Bit Multiplexer 
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

entity Mux2Input4Bit is
	port(
		s : in  std_logic;
		input0, input1 : in  std_logic_vector(3 downto 0);
		output : out std_logic_vector(3 downto 0));
end Mux2Input4Bit;

architecture implementation of mux2Input4Bit is
begin
	with s select
		output <=   input0 when '0',
						input1 when others;
end implementation;
