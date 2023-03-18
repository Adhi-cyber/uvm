`include "transaction.sv"

class sco extends uvm_scoreboard;
`uvm_component_utils(sco)



  transaction tr, trref;

  
  uvm_tlm_analysis_fifo#(transaction) sco_data;
  uvm_tlm_analysis_fifo#(transaction) sco_data_ref;
  
  


    function new(input string inst = "sco", uvm_component parent = null);
    super.new(inst,parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    tr    = transaction::type_id::create("tr");
    trref = transaction::type_id::create("tr_ref");
    sco_data = new("sco_data", this);
    sco_data_ref = new("sco_data_ref", this);  
      
    endfunction
    

  
  
     virtual task run_phase(uvm_phase phase); 
       forever begin
         sco_data.get(tr);
         sco_data_ref.get(trref);
 
         
         if(tr.compare(trref))
         `uvm_info("SCO", "Test Passed", UVM_NONE)
         else
         `uvm_info("SCO", "Test Failed", UVM_NONE)
     
      end
     endtask
     

endclass
