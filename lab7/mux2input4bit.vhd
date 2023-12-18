library ieee;
use ieee.std_logic_1164.all;
entity mux2input4bit is
	port(
			s 			: in std_logic;
			a,b 		: in std_logic_vector(3 downto 0);
			output 	: out std_logic_vector(3 downto 0));
end mux2input4bit;

architecture implementation of mux2input4bit is
	component mux2input1bit is
		port(
				s 			: in std_logic;
				a,b 		: in std_logic;
				output 	: out std_logic);
 end component;
begin
 -- Exactly four concurrent component statements below

m0:mux2input1bit 
	port map(s=> s,
				a=> a(0),
				b=> b(0),
				output=> output(0));
								
m1:mux2input1bit
	port map(s=> s,
				a=> a(1),
				b=> b(1),
				output=> output(1));
m2:mux2input1bit
	port map(s=> s,
				a=> a(2),
				b=> b(2),
				output=> output(2));
m3:mux2input1bit
	port map(s=> s,
				a=> a(3),
				b=> b(3),
				output=> output(3));
 
end implementation;