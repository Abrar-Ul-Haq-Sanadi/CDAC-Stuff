`include "uvm_macros.svh"
import uvm_pkg::*;


class component_A extends uvm_component ;

	int received_data;


	`uvm_component_utils(component_A);

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		void' (uvm_config_db #(int)::get(this, "","My_KEY", received_data));
		$display("The received_data is %0d", received_data);
		$display("This is the Build Phase of component A");
	endfunction

	function void connect_phase (uvm_phase phase);
		super.connect_phase(phase);
		$display("This is the Connect Phase component A");
	endfunction 

	function void end_of_elaboration_phase (uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		$display("This is the End of Elaboration Phase component A ");		
	endfunction 

	function void start_of_simulation_phase (uvm_phase phase);
		super.start_of_simulation_phase(phase);
		$display("This is the Start of Simulaiton Phase component A");		
	endfunction 


	task run_phase (uvm_phase phase);					// only Run phase is having task function
		super.run_phase(phase);
		$display("This is the Run Phase component A");		
	endtask 

	function void extract_phase (uvm_phase phase);
		super.extract_phase(phase);
		$display("This is the Extract of Elaboration Phase component A");		
	endfunction 
	
	function void check_phase (uvm_phase phase);
		super.check_phase(phase);
		$display("This is the Check Phase component A");		
	endfunction

	function void report_phase (uvm_phase phase);
		super.report_phase(phase);
		$display("This is the Report Phase component A");		
	endfunction 

	function void final_phase (uvm_phase phase);
		super.final_phase(phase);
		$display("This is the Final Phase component A");		
	endfunction 
endclass


/*
module test ();
	initial begin									// run test is inbuilt function of uvm
		run_test("component_A");						// run_test(<"class_name">);
	end
endmodule
*/