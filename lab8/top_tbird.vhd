--+----------------------------------------------------------------------------
--|
--| FILENAME      : top_tbird.vhd
--| AUTHOR(S)     : Prof Jeffrey Falkinburg
--| CREATED       : 10/15/2018
--| Edited 			: Daleela Letyeava 10/27/2023
--| DESCRIPTION   : This file implements the top level module for a NEXYS2 in 
--|					order to drive a Thunderbird taillight controller.
--|
--|					Inputs:  sw(3:0)  --> clk reset, FSM reset, left, and right turn signals
--|							 clk 	  --> 50 MHz clock from FPGA
--|					Output:  led(5:0) --> left and right turn signal lights (three per side)
--|
--| DOCUMENTATION : None
--|
--+----------------------------------------------------------------------------
--|
--| REQUIRED FILES :
--|
--|    Libraries : ieee
--|    Packages  : std_logic_1164, numeric_std, unisim
--|    Files     : thunderbird_fsm.vhd, clock_divider.vhd
--|
--+----------------------------------------------------------------------------
--|
--| NAMING CONVENSIONS :
--|
--|    xb_<port name>           = off-chip bidirectional port ( _pads file )
--|    xi_<port name>           = off-chip input port         ( _pads file )
--|    xo_<port name>           = off-chip output port        ( _pads file )
--|    b_<port name>            = on-chip bidirectional port
--|    i_<port name>            = on-chip input port
--|    o_<port name>            = on-chip output port
--|    c_<signal name>          = combinatorial signal
--|    f_<signal name>          = synchronous signal
--|    ff_<signal name>         = pipeline stage (ff_, fff_, etc.)
--|    <signal name>_n          = active low signal
--|    w_<signal name>          = top level wiring signal
--|    g_<generic name>         = generic
--|    k_<constant name>        = constant
--|    v_<variable name>        = variable
--|    sm_<state machine type>  = state machine type definition
--|    s_<signal name>          = state name
--|
--+----------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
entity top_tbird is
	port(
		i_clk_50MHz : in std_logic; -- native 50MHz FPGA clock
		i_sw  		: in std_logic_vector(3 downto 0); -- clk_reset, fsm_reset, 
													   -- left, right
		o_led 		: out std_logic_vector(5 downto 0) -- taillights 
													   -- (LC, LB, LA, RA, RB, RC)
	);
end top_tbird;

architecture top_tbird_arch of top_tbird is 
	
  -- declare components
  component clock_divider is
		port(
			i_clk_fast	: in std_logic;
			i_reset		: in std_logic;
			o_clk_slow	: out std_logic);
	end component;
  
  component thunderbird_fsm
  	port(
		i_clk, i_reset 	: in std_logic;  
		i_left, i_right 	: in std_logic; 
		o_lights_L 			: out std_logic_vector(2 downto 0);
		o_lights_R 			: out std_logic_vector(2 downto 0) 
		);
	end component;

  -- create wires to connect components
	--inputs
	signal clk_reset		: std_logic; 		--goes into divider
	signal sp50_clk		: std_logic;			--goes into divider
	
	
	signal fsm_reset		: std_logic;			-- goes into thunderbird
	signal isplit_left	: std_logic;		-- goes into thunderbird	
	signal isplit_right 	: std_logic;		-- goes into thunderbird
	
	--outputs
	signal slow_clk	: std_logic;			-- from divider to thunderbird
	signal l_light		: std_logic_vector(2 downto 0);
	signal r_light		: std_logic_vector(2 downto 0);			-- from tbird to o_led output
  

  
begin
	-- PORT MAPS / COMPONENT INSTANTIATION --------------
	divider: clock_divider
		port map(
			i_clk_fast	=> sp50_clk,
			i_reset		=> clk_reset,
			o_clk_slow	=>	slow_clk
		);
		
	FSM : thunderbird_fsm
		port map(
			i_clk			=> slow_clk,
			i_reset 		=>	fsm_reset,
			i_left		=>	isplit_left,
			i_right		=>	isplit_right,
			
		   o_lights_L => l_light,
			o_lights_R => r_light
			);
		
	-- CONCURRENT STATEMENTS ----------------------------
	--div
	sp50_clk		<= i_clk_50MHz;
	clk_reset	<= i_sw(0);
	
	--FSM
	fsm_reset	<= i_sw(1);
	isplit_left	<= i_sw(2);
	isplit_right<= i_sw(3);
	
	--Output
	o_led <= r_light(0) & r_light(1) & r_light(2) & l_light(2) & l_light(1) & l_light(0);
	
	
	
	
end top_tbird_arch;
