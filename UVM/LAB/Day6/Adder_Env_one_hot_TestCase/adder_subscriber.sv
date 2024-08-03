//Subscriber class
//`uvm_analysis_imp_decl(_drv_analysis_export);
//`uvm_analysis_imp_decl(_mon_analysis_export);

class adder_subscriber extends uvm_subscriber#(txn);
		`uvm_component_utils(adder_subscriber)

	//	uvm_analysis_port #(txn) analysis_export_sbr;									// TLM analysis port for Subscriber
		uvm_analysis_imp_drv_analysis_export #(txn, adder_subscriber)drv_ana_export_sbr;
		uvm_analysis_imp_mon_analysis_export #(txn, adder_subscriber)mon_ana_export_sbr;

	
	//default constructor
	function new(string name = "", uvm_component parent);
		super.new(name, parent);
	//	analysis_export_sbr = new("analysis_export_sbr", this);   //creating the object for the ap analysis port 
		drv_ana_export_sbr 	= new("drv_ana_export_sbr", this);
		mon_ana_export_sbr	= new("mon_ana_export_sbr", this);
	endfunction

	
	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info (get_type_name(), $sformatf("This is the Subscriber class"), UVM_NONE)
	endfunction

	
	//write function
	function void write(txn t);
	endfunction


	//write function for both the ports
	function void write_drv_analysis_export(txn t);
		`uvm_info (get_type_name(), $sformatf("This is the Write method from Driver to Subscriber class"), UVM_NONE)
	endfunction

	//write function
	function void write_mon_analysis_export(txn t);
		`uvm_info (get_type_name(), $sformatf("This is the Write method from Monitor to Subscriber class"), UVM_NONE)
	endfunction

endclass