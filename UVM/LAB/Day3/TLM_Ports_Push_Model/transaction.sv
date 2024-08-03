

class txn extends uvm_sequence_item;
	rand int a;							// prtoperties of the transaction class
	rand int b;

	//factory registry
	
	`uvm_object_utils_begin(txn)
	//syntax: 'uvm_field_int(<class_property>, UVM_BIN);
	//syntax: 'uvm_field_int(<class_property>, UVM_DEC);
	//syntax: 'uvm_field_int(<class_property>, UVM_HEX);
											// the uvm_<__> we can change the NUmber format of the output

		`uvm_field_int(a, UVM_HEX)
		`uvm_field_int(b, UVM_HEX)

	`uvm_object_utils_end

	constraint c_a {
		a>1000;
		b<128;
	}

	//default constructor
	function new(string name = "txn");
		super.new(name);	
	endfunction

endclass





