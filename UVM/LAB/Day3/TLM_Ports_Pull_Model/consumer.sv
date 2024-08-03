class consumer extends uvm_component;
	`uvm_component_utils(consumer)

	txn t;
	uvm_blocking_get_port #(txn) get_port;		//defining the get port

	//default constructor
	function new(string name = "", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build phase
	function void build_phase (uvm_phase phase);
		get_port = new("get_port", this);
	endfunction

	//run phase
	task run_phase(uvm_phase phase);
		repeat(5) begin
			get_port.get(t);
			`uvm_info (get_full_name(), "***********Consumer**********", UVM_NONE);
			t.print();
			#10 ;			
		end
	endtask

endclass