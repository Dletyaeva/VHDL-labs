transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/letya/Documents/Classes/230/projects/lab7-part2/counter.vhd}

do "C:/Users/letya/Documents/Classes/230/projects/lab7-part2/output_files/counter.do"
