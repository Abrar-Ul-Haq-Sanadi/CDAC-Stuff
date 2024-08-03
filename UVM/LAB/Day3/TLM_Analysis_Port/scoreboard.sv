

class scoreboard extends uvm_scoreboard;
	`uvm_component_utils(scoreboard);

	txn t;
	uvm_analysis_imp #(txn, scoreboard)ap_imp_scb;

	//Default constructor
	function new(string name = "", uvm_component parent);
		super.new(name, parent);
		ap_imp_scb = new("ap_imp_scb", this);
	endfunction

	//write function
	function void write(txn t);
		`uvm_info(get_type_name(), $sformatf("Time: %0t",$time), UVM_LOW);
		`uvm_info(get_type_name(), $sformatf("------Scoreboard recieved the txn--------"), UVM_LOW);
		t.print();
	endfunction

endclass