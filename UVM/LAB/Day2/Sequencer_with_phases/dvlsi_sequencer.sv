class dvlsi_sequencer extends uvm_component;
		`uvm_component_utils(dvlsi_sequencer)

	dvlsi_seq txn;
// Standard component constructor that creates an instance of this class
// using the given ~name~ and ~parent~, if any.

	function new (string name = "", uvm_component parent);
		super.new(name, parent);
		txn = dvlsi_seq :: type_id :: create("txn");
	endfunction


	task run_phase(uvm_phase phase);
		phase.raise_objection(this);
			txn.start(this);
		phase.drop_objection(this);

	endtask

endclass