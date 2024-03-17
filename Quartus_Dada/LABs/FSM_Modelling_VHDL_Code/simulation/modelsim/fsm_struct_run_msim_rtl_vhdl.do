transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {R:/3rd_SEM/EE_214/FSM_Structural_modelling/DUT.vhdl}
vcom -93 -work work {R:/3rd_SEM/EE_214/FSM_Structural_modelling/fsm_behav.vhd}

vcom -93 -work work {R:/3rd_SEM/EE_214/FSM_Structural_modelling/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
