
class txn extends uvm_sequence_item;
	rand int a;
	rand int b;

	`uvm_object_utils_begin(txn)
		`uvm_field_int(a, UVM_DEC)
		`uvm_field_int(b, UVM_DEC)
	`uvm_object_utils_end

	//default constructor
	function new (string name="");
		super.new(name);		
	endfunction

	//adding the constraints
	constraint c_a{ a>100;	
				    b<50;
				  }

endclass