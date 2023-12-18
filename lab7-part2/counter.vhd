library ieee;
use ieee.std_logic_1164.all;

 entity counter is
	port(
		clock 					: in std_logic;
		reset 					: in std_logic;
		increment 				: in std_logic;
		output 					: out std_logic_vector(6 downto 0);
		debug_current_state 	: out std_logic_vector(2 downto 0));
 end counter;

 architecture implementation of counter is
	signal current_state	: std_logic_vector(2 downto 0);
	signal next_state 	: std_logic_vector(2 downto 0);
begin
 debug_current_state <= current_state;
 
	-- current state logic defined below
	process(clock, reset)
		begin
			if (reset = '1') then current_state <= "000";
			elsif rising_edge(clock) then current_state <= next_state;
			end if;
	end process;
	
	
	-- next state logic defined below
	process(current_state, increment)
	begin
		
		case current_state is
			when "000" => if(increment = '0') then next_state <= "001";  -- if SW0 is 0 increment by 1 (go 0->1)
							  else next_state <= "010";							-- else increment by 2 (0->2)
							  end if;
							  
			when "001" => if(increment = '0') then next_state <= "010";  -- if SW0 is 0 increment by 1 (go 1->2)
							  else next_state <= "011";							-- else increment by 2 (1->3)
							  end if;
							  
			when "010" => if(increment = '0') then next_state <= "011";  -- if SW0 is 0 increment by 1 (go 2->3)
							  else next_state <= "010";							-- else increment by 2 (2->4)
							  end if;
							  
			when "011" => if(increment = '0') then next_state <= "100";  -- if SW0 is 0 increment by 1 (go 3->4)
							  else next_state <= "101";							-- else increment by 2 (3->5)
							  end if;
							  
			when "100" => if(increment = '0') then next_state <= "101";  -- if SW0 is 0 increment by 1 (go 4->5)
							  else next_state <= "110";							-- else increment by 2 (4->6)
							  end if;
							  
			when "101" => if(increment = '0') then next_state <= "110";  -- if SW0 is 0 increment by 1 (go 5->6)
							  else next_state <= "111";							-- else increment by 2 (5->7)
							  end if;
							  
			when "110" => if(increment = '0') then next_state <= "111";  -- if SW0 is 0 increment by 1 (go 6->7)
							  else next_state <= "000";							-- else increment by 2 (6->0)
							  end if;
							  
			when "111" => if(increment = '0') then next_state <= "000";  -- if SW0 is 0 increment by 1 (go 7->0)
							  else next_state <= "001";							-- else increment by 2 (7->0)
							  end if;
			when others =>
		end case;	
	end process;
	
	
	-- Output logic defined below
	process(current_state)
	begin
		case current_state is
			when "000"	=> output <= "1000000"; --0 in hex display
			when "001"	=> output <= "1111001"; --1
			when "010"	=> output <= "0100100"; --2
			when "011"	=> output <= "0110000"; --3
			when "100"	=> output <= "0011001"; --4
			when "101"	=> output <= "0010010"; --5
			when "110"	=> output <= "0000010"; --6
			when "111"	=> output <= "1111000"; --7
			when others => output <= "1000000"; --0
		end case;
	end process;
	
end implementation;