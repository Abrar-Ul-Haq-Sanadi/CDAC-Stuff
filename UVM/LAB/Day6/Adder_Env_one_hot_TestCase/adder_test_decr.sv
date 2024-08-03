
//This is the Third test_case for calling the decremental sequence generation

class adder_test_decr extends adder_test;
	`uvm_component_utils(adder_test_decr)

	//adder_environment env;
	adder_sequence_decr seq_decr;
//default constructor

		function new (string name="", uvm_component parent);
			super.new(name, parent);
		endfunction


	//Build Phase
			function void build_phase (uvm_phase phase);
				super.build_phase(phase);
		//		env = adder_environment::type_id::create("env");
				`uvm_info(get_type_name(), $sformatf("This is the Test Class for Decremental Sequence"), UVM_NONE)
			endfunction

	//Run Phase
			task run_phase (uvm_phase phase);
				phase.raise_objection(this);
					seq_decr = adder_sequence_decr::type_id::create("seq_decr");
				//	seq_incr.start(env.agnt.seqr);
					seq_decr.start(env.vseqr.addr_seqr);
				#100;	
				phase.drop_objection(this);
			endtask 
endclass
