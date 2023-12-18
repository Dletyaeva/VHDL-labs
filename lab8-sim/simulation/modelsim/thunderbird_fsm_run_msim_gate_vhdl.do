transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {thunderbird_fsm.vho}

do "C:/Users/letya/Documents/Classes/230/projects/lab8-sim/Tbird.do"
