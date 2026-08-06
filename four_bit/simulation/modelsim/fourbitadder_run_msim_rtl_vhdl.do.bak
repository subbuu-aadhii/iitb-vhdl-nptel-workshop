transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/four_bit/Gates.vhdl}
vcom -93 -work work {D:/four_bit/DUT.vhdl}
vcom -93 -work work {D:/four_bit/ADDER_SUBTRACTOR_4BIT.vhd}

vcom -93 -work work {D:/four_bit/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
