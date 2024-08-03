// this is the test class

class adder_test extends uvm_test;
	`uvm_component_utils(adder_test)

	adder_environment env;										// this (env) is the handle of the nested environment class
	adder_sequence seq;							//nested class adder_sequence with handle seq

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		env=adder_environment::type_id::create("env", this);								// creating the object for env handle in build phase
		`uvm_info (get_type_name(), $sformatf("This is the Test class"), UVM_NONE)
	endfunction

	//Run phase
	task run_phase(uvm_phase phase);	
		phase.raise_objection(this);
			seq = adder_sequence::type_id::create("seq");								 // creating the object for seq handle in run phase
			#100;
			//seq.start(env.agnt.seqr);
			seq.start(env.vseqr.addr_seqr);
		phase.drop_objection(this);
	endtask



endclass