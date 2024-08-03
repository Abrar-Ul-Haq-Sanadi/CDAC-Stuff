// Virtual_sequencer Class
class adder_virtual_sequencer extends uvm_sequencer;
	`uvm_component_utils(adder_virtual_sequencer)

	adder_sequencer addr_seqr;									// handle of the adder_sequencer 

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

endclass