library ieee;
use ieee.std_logic_1164.all;

entity mux2input1bit is -- circuit interface
	port(
		s,a,b : in std_logic;
		output : out std_logic);
end mux2input1bit;

architecture implementation1 of mux2input1bit is -- circuit implementation
begin
	output <= (not s and a and not b) or (not s and a and b) or (s and not a and b) or (s and a and b);
end implementation1;