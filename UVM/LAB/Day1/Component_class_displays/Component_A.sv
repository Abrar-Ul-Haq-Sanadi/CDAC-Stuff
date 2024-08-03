
//Here we are learnig about the UVM Reporting macros
//we are checking by replacing the $display by the `uvm_info, `uvm_warning, `uvm_error, `uvm_fatality
//----------------syntax-------------
//`uvm_info(id, msg, verbosity)
//`uvm_warning(id, msg)
//`uvm_error(id, msg)
//`uvm_fatal(id, msg)

//id-> can be get_name, get_type_name, get_full_name
// msg -> this is the output msg to be printed
//verbosity-> by default- UVM_MEDIUM = 200


`include "uvm_macros.svh"
import uvm_pkg::*;


class component_A extends uvm_component ;
	int received_data;
	string received_string;

	`uvm_component_utils(component_A);					
//---------------------------------------------------------------------------
//----------------------------Functions--------------------------------------
//----------------------------------------------------------------------------

//constructor
	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	//build phase 
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		void' (uvm_config_db #(int)::get(this, "","My_KEY", received_data));	
		
		void' (uvm_config_db #(string)::get(this, "","My_String", received_string));

		`uvm_info(get_name(),$sformatf("The received_data is %0d", received_data),UVM_MEDIUM);				
		`uvm_info(get_type_name() ,$sformatf("The received_string is %0s", received_string),UVM_MEDIUM);
		//$display("The received_string is %0s", received_string);
		

		`uvm_info(get_type_name(),$sformatf("This is the Build Phase of component A"),UVM_MEDIUM);
//		$display("This is the Build Phase component A ");		
	endfunction

 		
	//Connect Phase
	function void connect_phase (uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_name() ,$sformatf("This is the Connect Phase component A"),UVM_MEDIUM);
		// get_name will print test top and handle name only 

//		$display("The received_Data is %0d", received_data);
		endfunction 


	//end_of_elaboration_phase
	function void end_of_elaboration_phase (uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		`uvm_info(get_type_name() ,$sformatf("This is the end Elaboration Phase component A"),UVM_MEDIUM);
		uvm_top.print_topology();						// this will give you the topology
		// get_type_name will print test top, handle name and the class name (all three) 

		//$display("This is the End of Elaboration Phase component A ");		
	endfunction 

	
	//start_of_simulation_phase
	function void start_of_simulation_phase (uvm_phase phase);
		super.start_of_simulation_phase(phase);
		`uvm_info(get_full_name() ,$sformatf("This is the Start Of Simulaiton Phase component A"),UVM_MEDIUM);
		// get_name will print the complete path of the handle

		//$display("This is the Start of Simulaiton Phase component A");		
	endfunction 


	//run phase
	task run_phase (uvm_phase phase);					// only Run phase is having task function
		super.run_phase(phase);
		`uvm_info(get_type_name() ,$sformatf("This is the Run Phase component A"),UVM_MEDIUM);
		//$display("This is the Run Phase component A");		
	endtask 

	//------------------------------------------------------------------------------------------------
	//checking 'uvm_warning(ID, msg); // note it has only 2 arguemnemts
	//Extract phase
	function void extract_phase (uvm_phase phase);
		super.extract_phase(phase);
		`uvm_warning(get_name() ,$sformatf("This is the Extract Phase component A"));
//		$display("This is the Extract Phase component A");		
	endfunction 
			
	
	// check phase
	function void check_phase (uvm_phase phase);
		super.check_phase(phase);
		`uvm_warning(get_full_name() ,$sformatf("This is the Check Phase component A"));
//		$display("This is the Check Phase component A");		
	endfunction

	//-------------------------------------------------------------------------------------------------	
	//checking 'uvm_error(ID, "msg"); // note it has only 2 arguemnemts	
	//Report Phase
	function void report_phase (uvm_phase phase);
		super.report_phase(phase);
		`uvm_error(get_type_name() ,$sformatf("This is the Report Phase component A"));
		//$display("This is the Report Phase component A");		
	endfunction 

	//------------------------------------------------------------------------------------------------
	//checking 'uvm_fatal(ID, msg); // note it has only 2 arguemnemts
	// once fatal is encountered it exits the executions at that point and further statements are not executed	
	//Final Phase
	function void final_phase (uvm_phase phase);
		super.final_phase(phase);
		`uvm_fatal(get_type_name() ,$sformatf("This is the Final Phase component A"));
//		$display("This is the Final Phase component A");		
	endfunction 
endclass


/*
module test ();
	initial begin									// run test is inbuilt function of uvm
		run_test("component_A");						// run_test(<"class_name">);
	end
endmodule
*/