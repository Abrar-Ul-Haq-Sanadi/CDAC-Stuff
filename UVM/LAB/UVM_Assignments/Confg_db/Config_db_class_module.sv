// In this example we are learnig how to use the uvm_congif_db
//to pass the objects across the components of the uvm

//we are setting the value from Class
// and getting the value from the Module

//  class   ->     module
//  (null)			(null)





`include "uvm_macros.svh"
import uvm_pkg::*;


class chk_config_db extends uvm_component;
	`uvm_component_utils(chk_config_db)

	string strn = "Hi Abrar Bro";
	int x=20;

//New constructor
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build Phase
	function  void build_phase (uvm_phase phase);
		super.build_phase(phase);
		
		this.set_report_verbosity_level(UVM_MEDIUM);			// by this command we are setting the verbosity of all phases as UVM_HIGH = 300

		uvm_config_db #(string)::set(null, "*", "My_key", strn);
	//	uvm_config_db #(int)::set(null, "*", "My_integer_key", x);
		
		`uvm_info(get_type_name(), "This is the Build Phase", UVM_MEDIUM);	//debug has verbosity = 500	 (so this print line is skipped) as it verbosity is more than uvm_high
	
	//	`uvm_info(get_type_name(), $sformatf("Recieved string is -> %0s at line = %0d",strn, `__LINE__), UVM_MEDIUM);
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
	string str;
	int y;

	initial begin
				run_test("chk_config_db");
	end

	initial begin
		connect_ph.wait_for_state(UVM_PHASE_STARTED);
		if(!uvm_config_db #(string)::get(null, "", "My_key", str)) begin
			`uvm_info("","error",UVM_NONE);
		end
		else begin
			`uvm_info("", $sformatf("Recieved string is -> %0s at line = %0d in file=%0s ",str, `__LINE__, `__FILE__), UVM_MEDIUM);
		end
	//	void' (uvm_config_db #(int)::get(null, "", "My_integer_key", y));

	//	$display("Recieved Integer is -> %0d, %0s at line = %0d", y, `__FILE__, `__LINE__);
	end

endmodule

