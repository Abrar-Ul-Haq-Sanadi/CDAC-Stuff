//THis is the 4th test_case with sequences being 
// for data1 -> one -hot type
//for data2 -> 2bit high at a time

class adder_test_one_hot extends adder_test;;
	`uvm_component_utils(adder_test_one_hot)

	//adder_environment env;
	adder_sequence_one_hot seq_one_hot;

	//default constructor
		function new (string name="", uvm_component parent);
			super.new(name, parent);
		endfunction


	//Build Phase
			function void build_phase (uvm_phase phase);
				super.build_phase(phase);
		//		env = adder_environment::type_id::create("env");
				`uvm_info(get_type_name(), $sformatf("This is the adder_test_one_hot class"), UVM_NONE)
			endfunction

	//Run Phase
			task run_phase (uvm_phase phase);
				phase.raise_objection(this);
					seq_one_hot = adder_sequence_one_hot::type_id::create("seq_one_hot");
				//	seq_incr.start(env.agnt.seqr);
					seq_one_hot.start(env.vseqr.addr_seqr);
				#100;	
				phase.drop_objection(this);
			endtask 
endclass