//This sequence class -> we are generating 10 random values for data1 and data2
// in data1-> only 1 bit should be high
// in data2> only 2 bit should be high


class adder_sequence_one_hot extends uvm_sequence #(txn);
	`uvm_object_utils(adder_sequence_one_hot)

	txn t_req;
	txn t_rsp;


	//default constructor
	function new(string name="");
		super.new(name);		
	endfunction 

	//body task
	task body();
		`uvm_info(get_type_name(), $sformatf("This is the adder_sequence_one_hot Sequence Class-----> "),UVM_NONE)
		t_req = txn::type_id::create("t_req");

		start_item(t_req);
			t_req.i_data1 = 4'b0001;
			t_req.i_data2 = 4'b0001;
		finish_item(t_req);
		//get_response(t_rsp);

		repeat(10)begin
		

		//only one bit is high for the data1
		// start_item(t_req);
		// 	t_req.i_data1 = {t_req.i_data1[2:0], t_req.i_data1[3]};
		// finish_item(t_req);
		
		//Exactly two bits are high for the data2 using $counones inbuilt function

		// start_item(t_req);
		// 	// t_req.i_data1 = {t_req.i_data1[2:0], t_req.i_data1[3]};
		// 	assert(t_req.randomize(i_data2) with {$countones(t_req.i_data2)==2;}); 
		
		// finish_item(t_req);

		
		`uvm_do_with(t_req, 
							{
								$countones(t_req.i_data1)==1;						//exacltly counts 1 no of 1's (1 high bit)
							 	$countones(t_req.i_data2)==2;						//exactly counts 2 no of 1's (2high bits)
							  										 });
	end

	    `uvm_info("", $sformatf("---------- One hot sequence Sequence---------"), UVM_NONE)
	//	t_rsp.print();
	endtask

endclass