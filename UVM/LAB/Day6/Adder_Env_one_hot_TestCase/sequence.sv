//Sequence Class = It genertes of sequence items


class adder_sequence extends uvm_sequence #(txn) ;
	`uvm_object_utils(adder_sequence)
	
	`uvm_declare_p_sequencer(adder_sequencer)			// if we want access the value of sequencer variable in sequence we use p_sequencer

//	`uvm_declare_p_sequencer(adder_virtual_sequencer)

	txn t_req;
	txn t_rsp;


	//default constructor
	function new(string name = "");
		super.new(name);
	endfunction


	//body task
	task body();
		`uvm_info(get_type_name(), $sformatf("This is the Sequence class at time = %0t", $time), UVM_NONE)
		
		repeat(10) begin
		//t_req=txn::type_id::create("t_req");
			// start_item(t_req);						//start item will initiaite tlm of sequencer
			// //	assert(t_req.randomize());
			//     assert(t_req.randomize() with{i_data1 == 15;});		// we can add the inline constraint and randomize the value too as per out requirement 
			// finish_item(t_req);						// finish tlm port of sequencer
	
	//--------------------------------------------------------------------------------------------------------------------		
			`uvm_do(t_req);				// MACRO--> we can use the macro `uvm_do() to create object , start item, randomize it, and stop item
			
		//	`uvm_do_with(t_req, {i_data1 == 15;});  // MACRO--> we can use the macro `uvm_do_with() 
												//to create object , start item, randomize it, and stop item with the inline constraints

	//---------------------------------------------------------------------------------------------------------------------

			get_response(t_rsp);
			`uvm_info("", "****Sequence******", UVM_NONE)
			t_rsp.print();
			
			if((t_req.i_data1 != t_rsp.i_data1) && (t_req.i_data2 != t_rsp.i_data2)) begin
				`uvm_error(get_name(), "Data sequence not matched")
			end else begin
				`uvm_info(get_full_name(), $sformatf("Data sequence matched"), UVM_LOW)			
			end
		end
		p_sequencer.i = 10 ; 				// if we want access the value of sequencer variable in sequence we use p_sequencer
	//	p_sequencer.addr_seqr.i=20;
	endtask

endclass