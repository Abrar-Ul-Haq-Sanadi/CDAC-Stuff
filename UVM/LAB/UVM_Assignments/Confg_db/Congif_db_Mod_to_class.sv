// In this example we are learnig how to use the uvm_congif_db
//to pass the objects across the components of the uvm

//we are setting the value from module
// and getting the value from the class

// module---> class
// (null)      (this)



`include "uvm_macros.svh"
import uvm_pkg::*;


class chk_config_db extends uvm_component;
	`uvm_component_utils(chk_config_db)

	string strn;

//New constructor
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build Phase
	function  void build_phase (uvm_phase phase);
		super.build_phase(phase);
		
		this.set_report_verbosity_level(UVM_HIGH);						// by this command we are setting the verbosity of all phases as UVM_HIGH = 300

		void'(uvm_config_db #(string)::get(this, "", "My_key", strn));
		`uvm_info(get_type_name(), "This is the Build Phase", UVM_DEBUG);	//debug has verbosity = 500	 (so this print line is skipped) as it verbosity is more than uvm_high
	
		`uvm_info(get_type_name(), $sformatf("Recieved string is -> %0s at line = %0d",strn, `__LINE__), UVM_MEDIUM);
	//	$display("The Recieved string is %0s revieved at line=%0d", strn ,`__LINE__);	// To show the line number

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


module mymodule();
	string str = "Hi Abrar";
	initial begin
		uvm_config_db #(string)::set(null, "*", "My_key", str);
		run_test("chk_config_db");

	end
endmodule