class consumer extends uvm_component;

	`uvm_component_utils(consumer)

	txn t;
	uvm_blocking_put_imp #(txn, consumer) imp_port;


	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
		imp_port = new("imp_port", this);
	endfunction


	task put(txn t);
		`uvm_info(get_full_name(), "****************Consumer*********", UVM_NONE)
		t.print();
	endtask


endclass