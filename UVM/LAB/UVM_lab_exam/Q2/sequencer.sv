class sequencer extends uvm_sequencer #(transaction);
    `uvm_component_utils(sequence)

    transaction t;

    function new(string name = "", uvm_component parent);
        super.new(name, parent);
    endfunction

    // build phase
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info (get_type_name(), $sformatf("This is the Sequencer class"), UVM_NONE)
    endfunction
   
endclass


