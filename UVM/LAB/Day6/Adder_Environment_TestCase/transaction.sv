class txn extends uvm_sequence_item;
	rand bit [3:0] i_data1;
	rand bit [3:0] i_data2;

	rand bit 	   i_valid;
		 bit 	   o_sum;

	//Factory Regisrty utility macros with field macros
	`uvm_object_utils_begin(txn)
		`uvm_field_int(i_data1, UVM_BIN)
		`uvm_field_int(i_data2, UVM_BIN)
		`uvm_field_int(i_valid, UVM_BIN)
		`uvm_field_int(o_sum,   UVM_BIN)
	`uvm_object_utils_end
	
	//default constructor
	function new(string name = "txn");
		super.new(name);
		`uvm_info (get_type_name(), $sformatf("This is the Transaction class"), UVM_NONE)
	endfunction

endclass