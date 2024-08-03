// In this example we are learnig how to use the uvm_congif_db
//to pass the objects across the components of the uvm

//we are setting the value from Class
// and getting the value from the other Class

//  class   ->     class
//  (null)			(this)


`include "uvm_macros.svh"
import uvm_pkg::*;

class chk_config_db_1 extends uvm_component;
	`uvm_component_utils(chk_config_db_1)
	chk_config_db_2 a;

	string str1 = "Hi Abrar Bro";
//	int x=20;

	//New constructor
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//Build Phase
	function  void build_phase (uvm_phase phase);
		super.build_phase(phase);
		a=chk_config_db_2::type_id::create("a",this);
		this.set_report_verbosity_level(UVM_MEDIUM);			// by this command we are setting the verbosity of all phases as UVM_HIGH = 300

		uvm_config_db #(string)::set(this, "a", "My_key1", str1);
	//	uvm_config_db #(int)::set(null, "*", "My_integer_key", x);
		
		`uvm_info(get_type_name(), "This is the Build Phase", UVM_MEDIUM);	//debug has verbosity = 500	 (so this print line is skipped) as it verbosity is more than uvm_high
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

