#the name must be the same as your vhdl filename
vsim thunderbird_fsm

#view waveform
view wave

#view input signals
add wave i_clk 
add wave i_reset
add wave -color Violet i_left
add wave -color Yellow i_right

#view internal signals
#add wave next_state
#add wave current_state 

#view output signal
add wave -color Coral o_lights_L
add wave -color Cyan o_lights_R

#set input signal values
force i_clk 0 0 ns, 1 10 ns -repeat 20 ns
force i_reset 1 0 ns,0 20 ns, 1 190 ns, 0 195 ns, 1 270 ns, 0 275 ns, 1 460 ns, 0 470 ns, 1 540 ns, 0 560 ns
force i_left 0 0 ns, 1 30 ns, 0 80 ns, 1 190 ns, 0 195 ns, 1 350 ns, 0 400 ns, 1 430 ns, 0 480 ns
force i_right 0 0 ns, 1 110 ns, 0 160 ns, 1 270 ns, 0 275 ns, 1 350 ns, 0 400 ns, 1 510 ns, 0 560 ns





#run simulation
run 600 ns