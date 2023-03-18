VLOG=/tool/mentor/questa-10.7c/questasim/bin/vlog
VSIM=/tool/mentor/questa-10.7c/questasim/bin/vsim
VCOVER=/tool/mentor/questa-10.7c/questasim/bin/vcover
VOPT=/tool/mentor/questa-10.7c/questasim/bin/vopt


QUESTA_SIM_PATH  = '/tool/mentor/questa-10.7c/questasim/bin'

compile:        
	$(VLOG)  /home/kathiravan/tlm_uvm_project/rtl/mux.sv /home/kathiravan/tlm_uvm_project/ut/uvm_tb/src/top.sv -l compile.log

RUN: compile
	$(VSIM) tb +UVM_TESTNAME=test +UVM_VERBOSITY=UVM_HIGH -do "log -r /*" -do "run -all" -c

RUN_WAVE: RUN
	$(VSIM) waveform.wlf

####################################################################################################################

