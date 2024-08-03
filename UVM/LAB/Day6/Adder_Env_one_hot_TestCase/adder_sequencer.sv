//Agent class

class adder_sequencer extends uvm_sequencer #(txn);
	`uvm_component_utils(adder_sequencer);

	int i=5 ;

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction


	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info (get_type_name(), $sformatf("This is the Sequencer class"), UVM_NONE)
	endfunction

	//Extract phase to chk the p_sequencer
	function void extract_phase(uvm_phase phase);
		`uvm_info (get_type_name(), $sformatf("The value of Integer i is %0d",i), UVM_NONE)
	endfunction

endclass