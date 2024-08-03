class txn extends uvm_sequence_item;
	rand bit [3:0] data1;
	rand bit [3:0] data2;
	rand bit       i_valid;
	rand bit [4:0] o_sum;

	//factory registation
	`uvm_object_utils_begin(txn)
		`uvm_field_int(data1, UVM_DEC)
		`uvm_field_int(data2, UVM_DEC)
		`uvm_field_int(i_valid, UVM_DEC)
		`uvm_field_int(o_sum, UVM_DEC)
	`uvm_object_utils_end

	//default constructor
	function new(string name="txn");
		super.new(name);		
	endfunction


	// function void build_phase(uvm_phase phase);
	// 	super.build_phase(phase);
	// 	$display("Build phase of transaction:txn ");
	// endfunction
	
	constraint data{ data1>100;	
				     data2<50;
				  }

endclass
