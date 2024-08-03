
// this is the adder class which has the items(in1, in2, and en and out)

class txn_item extends uvm_sequence_item ;
	rand bit en;
	rand bit [3:0] in1;
	rand bit [3:0] in2;
		 bit [4:0] out;

		//factory registry

		`uvm_object_utils_begin(txn_item)
			`uvm_field_int(en, UVM_DEFAULT)
			`uvm_field_int(in1, UVM_DEFAULT)
			`uvm_field_int(in2, UVM_DEFAULT)
			`uvm_field_int(out, UVM_DEFAULT)
		`uvm_object_utils_end


endclass