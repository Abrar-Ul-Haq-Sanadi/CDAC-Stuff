
// this is uvm component type

class adder_sequencer extends uvm_sequencer;
		`uvm_component_utils(adder_sequencer)

	adder_sequence seq;
// Standard component constructor that creates an instance of this class
// using the given ~name~ and ~parent~, if any.

	function new (string name = "", uvm_component parent);
		super.new(name, parent);
		seq = adder_sequence :: type_id :: create("seq");
	endfunction


	task run_phase(uvm_phase phase);
		phase.raise_objection(this);
			seq.start(this);			// uvm_object ->(sequence)is getting triggered when start is is called and it points to body of the uvm_object(sequence)
		phase.drop_objection(this);

	endtask

endclass