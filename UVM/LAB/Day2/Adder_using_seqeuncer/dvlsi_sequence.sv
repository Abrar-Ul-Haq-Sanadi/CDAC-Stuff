
// sequence ---(sequence_item)----> sequencer ---------> driver

// this is the sequence class which has sequence item (of adder like in1 , in2 and en) and 
//generates the randomize sequence of (in1 , in2 and en) and sends to the sequencer



class dvlsi_seq extends uvm_sequence;
		`uvm_object_utils(dvlsi_seq)

		txn_item item;				//creating an handle (item) of the class (txn_item)					

	function new (string name="");
		super.new(name);	
	endfunction

	
	//This is the user-defined task where the main sequence code resides
	// here we are randomizing the sequence items and sending to Sequencer
	task body;
		super.body();
		`uvm_info(get_full_name(),$sformatf("This is my Body Sequence"),UVM_LOW);		// just a display stmt

		item = txn_item::type_id::create("item");
			assert(item.randomize())
			else 
				`uvm_error(get_full_name(), "asser failed!!!")
			item.print();
	endtask

	//This task is a user-definable callback that is called before the execution of body 
	// only when the sequence is started with start.

/*	task pre_body;
		super.pre_body();
		$display("This is the Pre body Task");
	endtask

	//This task is a user-definable callback task that is called after the execution of body 
	//only when the sequence is started with start.
	task post_body;
		super.post_body();
		$display("This is the Post body Task");
	endtask
*/
endclass