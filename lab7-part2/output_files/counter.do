#the name must be the same as your vhdl filename
	vsim counter
	
#view waveform
	view wave
	
#view input signals
	add wave clock
	add wave reset
	add wave increment
	
#view output signals
	add wave debug_current_state
	add wave output
	
#set input signal values
	force clock 1 0, 0 5 -repeat 10
	force reset 1 0, 0 5, 1 80, 0 85, 1 140
	force increment 0 0, 1 90
	
#run simulation
	run 150