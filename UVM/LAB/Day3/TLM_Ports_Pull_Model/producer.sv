//PRODUCER CLASS

class producer extends uvm_component;

	`uvm_component_utils(producer)
	
	txn t;
	uvm_blocking_get_imp #(txn, producer) get_imp ;

	//syntax: uvm_blocking_get_imp #(<class_name>, <this_class_name>) port_variable

	//constructor 
	function new (string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build phase
	function void build_phase(uvm_phase phase);
			get_imp = new("get_export", this);
	endfunction


	task get(output txn t);
		txn temp;					//creating the handle temp of the txn class
		temp = new();				//allcating the memory to temp
		temp.randomize();			//randomizing it
		t = temp;					// and assiginig it to the t

		`uvm_info (get_full_name(), "***********PRODUCER**********", UVM_NONE);
		t.print();
	endtask

endclass