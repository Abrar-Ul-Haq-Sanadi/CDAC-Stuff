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
		phase.raise_objection(this);

			repeat(10) begin
				t=txn::type_id::create("t");
			#10	get_port.get(t);
				`uvm_info (get_full_name(), $sformatf("Time : %0t",$time), UVM_LOW);
				`uvm_info (get_full_name(), "***********Consumer**********", UVM_LOW);

				t.print();		
			end

		phase.drop_objection(this);
	endtask

endclass