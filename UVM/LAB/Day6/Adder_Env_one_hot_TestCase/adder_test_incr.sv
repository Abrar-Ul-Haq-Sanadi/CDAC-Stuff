//THis is the Second test_case

class adder_test_incr extends adder_test;;
	`uvm_component_utils(adder_test_incr)

	//adder_environment env;
	adder_sequence_incr seq_incr;
//default constructor

		function new (string name="", uvm_component parent);
			super.new(name, parent);
		endfunction


	//Build Phase
			function void build_phase (uvm_phase phase);
				super.build_phase(phase);
		//		env = adder_environment::type_id::create("env");
				`uvm_info(get_type_name(), $sformatf("This is the adder_test2 class"), UVM_NONE)
			endfunction

	//Run Phase
			task run_phase (uvm_phase phase);
				phase.raise_objection(this);
					seq_incr = adder_sequence_incr::type_id::create("seq_incr");
				//	seq_incr.start(env.agnt.seqr);
					seq_incr.start(env.vseqr.addr_seqr);
				#100;	
				phase.drop_objection(this);
			endtask 
endclass

