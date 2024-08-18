



class coverage extends uvm_subscriber #(txn);
	`uvm_component_utils(coverage)

	txn t;
	uvm_analysis_imp #(txn, coverage)ap_imp_cov;

	//Default constructor
	function new(string name="", uvm_component parent);
		super.new(name , parent);
		ap_imp_cov=new("ap_imp_cov", this);
	endfunction

	//write function
	function void write(txn t);	
		`uvm_info(get_type_name(), $sformatf("Time: %0t",$time), UVM_LOW);
		`uvm_info(get_type_name(), $sformatf("Subscriber->(coverage) Recieved the txn"), UVM_LOW);
		t.print();

	endfunction 
endclass