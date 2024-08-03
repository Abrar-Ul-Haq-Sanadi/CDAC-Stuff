// ----------------------PRODUCER CLASS-----------------------------

// this is the producer class extending the UVM_Component class

class producer extends uvm_component;
	`uvm_component_utils(producer)

	txn t;													// nested class txn with handle t
	uvm_blocking_put_port #(txn) put_port;					// The producer has the put_port

	//Default constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	
	//Build Phase 
	function void build_phase(uvm_phase phase);				// in build phase we are allocating the memory to put_port handle
		put_port = new("put_port", this);
	//	t=txn::type_id::create("t");						// if we create the object (allocate the memory) in build phase
	endfunction   			 								// we will get the same id (n-times)->10 in our case with randomize values for a and b

	//Run phase
	task run_phase(uvm_phase phase);
		phase.raise_objection(this);
		                                                        
		//t=txn::type_id::create("t");				// we will get the same id (n-times)->10 in our case with randomize values for a and b
			repeat(10) begin
			t=txn::type_id::create("t");				//allocating the memory to handle t

				assert(t.randomize());
				#2	put_port.put(t);					// in the put_port we are putting the t
					`uvm_info(get_full_name(),$sformatf("Time: %0t",$time), UVM_LOW);
					`uvm_info(get_full_name(), "******************producer************", UVM_LOW);
				//	$display("%0p",t);
					t.print();
				end
		phase.drop_objection(this);
	endtask

endclass