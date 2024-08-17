class Producer extends uvm_component;

	`uvm_component_utils(Producer)
	
	transaction t;
	uvm_blocking_get_imp #(transaction, Producer) get_imp ;

	//constructor 
	function new (string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build phase
	function void build_phase(uvm_phase phase);
			get_imp = new("get_export", this);
	endfunction


	task get(output transaction t);
		transaction temp;					//creating the handle temp of the txn class
		repeat(10) begin
			temp = new();							//allcating the memory to temp
			temp.randomize();						//randomizing it
			t = temp;								// and assiginig it to the t
		`uvm_info (get_full_name(), "***********PRODUCER**********", UVM_NONE);
		t.print();
	end
	endtask

endclass