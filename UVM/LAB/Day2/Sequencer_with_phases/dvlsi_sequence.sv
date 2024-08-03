class dvlsi_seq extends uvm_sequence;
		`uvm_object_utils(dvlsi_seq)


	function new (string name="");
		super.new(name);	
	endfunction

	//This is the user-defined task where the main sequence code resides
	task body;
		super.body();
		$display("This is my Body Sequence");
	endtask

	//This task is a user-definable callback that is called before the execution of body 
	// only when the sequence is started with start.
	task pre_body;
		super.pre_body();
		$display("This is the Pre body Task");
	endtask

	//This task is a user-definable callback task that is called after the execution of body 
	//only when the sequence is started with start.
	task post_body;
		super.post_body();
		$display("This is the Post body Task");
	endtask




endclass