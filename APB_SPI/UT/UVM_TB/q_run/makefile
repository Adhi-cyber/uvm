VLOG=/tool/mentor/questa-10.7c/questasim/bin/vlog
VSIM=/tool/mentor/questa-10.7c/questasim/bin/vsim
VCOVER=/tool/mentor/questa-10.7c/questasim/bin/vcover
VOPT=/tool/mentor/questa-10.7c/questasim/bin/vopt

TEST = apb_test

QUESTA_SIM_PATH  = /tool/mentor/questa-10.7c/questasim/bin

compile:        
	$(VLOG) /home/adithiya/Documents/uvm_project/rtl/apb_slave.sv  /home/adithiya/Documents/uvm_project/ut/uvm_tb/src/top.sv -l compile.log

RUN: compile
	$(VSIM) top "+UVM_TESTNAME=apb_test" +UVM_VERBOSITY=UVM_HIGH -do "log -r /*" -do "run -all" -c

RUN_WAVE: RUN
	$(VSIM) waveform.wlf

####################################################################################################################


