//This is the Seuqnce class with fixed Test cases


class adder_sequence_incr extends adder_sequence;
	`uvm_object_utils(adder_sequence_incr)

	txn t_req;
	txn t_rsp;

	//default constructor
	function new(string name = "");
		super.new(name);
	endfunction

	//Body Phase
	task body ();
		`uvm_info(get_type_name(), $sformatf("This is the Increment Sequence Class"), UVM_NONE)
		t_req= txn::type_id::create("t_req");

		start_item(t_req);
		t_req.i_data1 = 4'b0000;
		t_req.i_data2 = 4'b0000;
		t_req.i_valid = 1'b1;
		finish_item(t_req);
		get_response(t_rsp);

		for(int i=0; i<16;i++) begin
		start_item(t_req);
		t_req.i_data1++;
		t_req.i_data2++;
		
		finish_item(t_req);
		get_response(t_rsp); 
		end


		`uvm_info("", $sformatf("---------- Increment Sequence---------"), UVM_NONE)
		t_rsp.print();

	endtask
endclass