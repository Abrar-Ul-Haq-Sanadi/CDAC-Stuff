class Consumer extends uvm_component;

	`uvm_component_utils(Consumer)
	transaction t;

	uvm_blocking_get_port #(transaction)get_port;

	//constructor 
	function new (string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build phase
	function void build_phase (uvm_phase phase);
		get_port = new("get_port", this);
	endfunction

	//run phase
	task run_phase(uvm_phase phase);
		repeat(10) begin
			get_port.get(t);
			`uvm_info (get_full_name(), "***********CONSUMER**********", UVM_NONE);
			t.print();			
		end
	endtask

endclass