class dvlsi_seq extends uvm_sequence;
		`uvm_object_utils(dvlsi_seq)

	function new (string name="");
		super.new(name);	
	endfunction

	task body;
		super.body();
		$display("This is my Sequence");
	endtask

endclass