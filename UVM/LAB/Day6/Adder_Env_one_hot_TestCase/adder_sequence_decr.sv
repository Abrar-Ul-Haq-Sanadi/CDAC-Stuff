

//We are generating the sequence in the Decremental order
class adder_sequence_decr extends adder_sequence;
	`uvm_object_utils(adder_sequence_decr);

	txn t_req;
	txn t_rsp;

	//default constructor
	function new(string name="");
		super.new(name);
	endfunction	

	//Run Phase
	task body();
		
		`uvm_info(get_type_name(), $sformatf("This is the Decremental Sequence Class-----> "),UVM_NONE)
		t_req = txn::type_id::create("t");
		start_item(t_req);
			t_req.i_data1 = 4'b1111;
			t_req.i_data2 = 4'b1111;
		finish_item(t_req);
		get_response(t_rsp);

		for(int i=0; i<15; i++) begin
			start_item(t_req);
				t_req.i_data1--;
				t_req.i_data2--;
			finish_item(t_req);
			get_response(t_rsp);
		end
		`uvm_info("", $sformatf("---------- Decrement Sequence---------"), UVM_NONE)
		t_rsp.print();
	endtask

endclass