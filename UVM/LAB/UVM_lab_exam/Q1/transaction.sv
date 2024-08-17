class transaction extends uvm_sequence_item ;
	rand int a;

	`uvm_object_utils_begin(transaction)
		`uvm_field_int(a, UVM_DEC);
	`uvm_object_utils_end


	function new(string name="");
		super.new(name);
	endfunction


endclass : transaction