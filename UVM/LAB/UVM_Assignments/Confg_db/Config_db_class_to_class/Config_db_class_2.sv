
class chk_config_db_2 extends uvm_component;
	`uvm_component_utils(chk_config_db_2)

	string str2;
	int x;

//New constructor
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build Phase
	function  void build_phase (uvm_phase phase);
		super.build_phase(phase);
		
		this.set_report_verbosity_level(UVM_HIGH);			// by this command we are setting the verbosity of all phases as UVM_HIGH = 300

		void' (uvm_config_db #(string)::get(this, "", "My_key1", str2));
	//	uvm_config_db #(int)::set(null, "*", "My_integer_key", x);
		
		`uvm_info(get_type_name(), "This is the Build Phase", UVM_DEBUG);	//debug has verbosity = 500	 (so this print line is skipped) as it verbosity is more than uvm_high
	
		`uvm_info(get_type_name(), $sformatf("Recieved string is -> %0s at line = %0d",str2, `__LINE__), UVM_MEDIUM);
	//	$display("The Recieved string is %0s revieved at line=%0d", str1 ,`__LINE__);	// To show the line number
	endfunction 


	//connect phase
	function void connect_phase (uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_type_name(), "This is the Connect Phase", UVM_LOW);
	endfunction

	//Run phase
	task run_phase (uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_type_name(), "This is the Run Phase", UVM_LOW);
	endtask

	//end of elaboration phase
	function void end_of_elaboration_phase (uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		`uvm_info(get_type_name(), "This is the end_of_elaboration Phase", UVM_LOW);
	endfunction	

endclass

