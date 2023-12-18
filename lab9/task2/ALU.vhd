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

entity ALU is
	port(
		A, B 				: in std_logic_vector(3 downto 0);
		ALU_op 			: in std_logic_vector(1 downto 0);
		A_inv, B_inv 	: in std_logic;
		C_in 				: in std_logic;
		
		ALU_out 			: out std_logic_vector(3 downto 0);
		N, C, V, Z 		: out std_logic
		);
end ALU;

architecture implementation of ALU is
--declare components/signals
	--signal first encounters a 2input mux
	component Mux2input4bit is
		port(
		 	S 					: in  std_logic;
			input0, input1 : in  std_logic_vector(3 downto 0);
			output 			: out std_logic_vector(3 downto 0)
		);
	end component;
		
	-- then it is detained by 4 different gates of hell
	-- the boss is the 4 bit adder
	component Adder4bit is
		port (
		C_in 		: in std_logic;
		X, Y 		: in std_logic_vector(3 downto 0);
		
		S 			: out std_logic_vector(3 downto 0);
		C_out_2, C_out_3 : out std_logic
		);
	end component;
	
	
	-- after many trials it finally makes it to the finish line
	component Mux4Input4bit is
		port(
		S	: in  std_logic_vector(1 downto 0);	
		input0, input1, input2, input3 : in  std_logic_vector(3 downto 0);
		output 								 : out std_logic_vector(3 downto 0)
		);
	end component;
--signals: 2 input mux
signal notA: std_logic_vector(3 downto 0);
signal notB: std_logic_vector(3 downto 0);
signal outA: std_logic_vector(3 downto 0);
signal outB: std_logic_vector(3 downto 0);

--signals: 4 roadsways to hell
signal road_OR_A, road_OR_B :		std_logic_vector(3 downto 0);
signal road_AND_A, road_AND_B:	std_logic_vector(3 downto 0);
signal road_XOR_A, road_XOR_B:	std_logic_vector(3 downto 0);
signal road_ADD_A, road_ADD_B:	std_logic_vector(3 downto 0);

--Outputs from 3 hells
signal outAND:		std_logic_vector(3 downto 0);
signal outOR:		std_logic_vector(3 downto 0);
signal outXOR:		std_logic_vector(3 downto 0);

-- Outputs from 4th hell
signal C2_out: std_logic; -- goes to flag circuit
signal C3_out:	std_logic; -- goes to flag circuit
signal ADD_out: std_logic_vector(3 downto 0); --labeled as output S, goes to flag circuit and 4 input mux

begin
--the map has been declared, now for the actual game plan...
-- step .5: invert the A and B signals for second input
notA<= not A;
notB<= not B;

--step one: the 2 input mux
muxA: Mux2input4bit port map(s=>A_inv, input0=>A, input1=>notA, output=>outA);
muxB: Mux2input4bit port map(s=>B_inv, input0=>B, input1=>notB, output=>outB);

--step 1.5: fork the wire
road_OR_A	<= outA;
road_AND_A 	<= outA;
road_XOR_A 	<= outA;
road_ADD_A 	<= outA;

road_OR_B	<= outB;
road_AND_B	<= outB;
road_XOR_B	<= outB;
road_ADD_B	<= outB;

--step 2: combine signals
outOR		<= road_OR_A or road_OR_B;
outAND	<= road_AND_A and road_AND_B;
outXOR	<= road_XOR_A xor road_XOR_B;

-- the adder is wee bit more complicated
ADD: Adder4bit port map(X=>road_ADD_A, Y=>road_ADD_B, C_in=>C_in, S=>ADD_out, C_out_2=>C2_out, C_out_3=>C3_out);

-- now our outs from 4 hells go to 4 gates of mux
MUX4IN: Mux4Input4bit port map (S=>ALU_op, input0=>outAND, input1=>outOR, input2=>outXOR, input3=>ADD_out, output=>ALU_out);

-- also pass through flag circuit - the 4 judges
Z <= '1' when (ADD_out = "0000") else '0';
N <= '1' when (ADD_out(3) = '1') else '0';
V <= '1' when ((C3_out xor C2_out) = '1') else '0';
-- based on the carry in for bit 0 (if u do add or sub) changes the meaning of C=0 or C=1 
C <= '1' when (C3_out = '1') else '0';
		

end implementation;