`include "uvm_macros.svh"
import uvm_pkg::*;

`include "Component_A.sv"							// including the file name of component A class

class component_B extends uvm_component ;

	int variable = 10;

	`uvm_component_utils(component_B)
	component_A comp_a;											//creating the instance of the class component A

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);			// in uvm build phase is Top Down
		super.build_phase(phase);						// first it calls Top funciton build phase then instance function phases 
		comp_a = component_A::type_id::create("comp_a", this);	// to allocate memory to object of a class A
	
		uvm_config_db #(int) ::set(this, "comp_a", "My_KEY", variable);


		$display("This is the Build Phase of component B");
	endfunction

	function void connect_phase (uvm_phase phase);		//all other functions are bottom up
		super.connect_phase(phase);
							// first instance class phase then top class phases are called
		$display("This is the Connect Phase component B");
	endfunction 

	function void end_of_elaboration_phase (uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		$display("This is the End of Elaboration Phase component B");		
	endfunction 

	function void start_of_simulation_phase (uvm_phase phase);
		super.start_of_simulation_phase(phase);
		$display("This is the Start of Simulaiton Phase component B");		
	endfunction 


	task run_phase (uvm_phase phase);					// only Run phase is having task function
		super.run_phase(phase);						// task phase is parallel
		$display("This is the Run Phase component B");		
	endtask 

	function void extract_phase (uvm_phase phase);
		super.extract_phase(phase);
		$display("This is the Extract of Elaboration Phase component B");		
	endfunction 
	
	function void check_phase (uvm_phase phase);
		super.check_phase(phase);
		$display("This is the Check Phase component B");		
	endfunction

	function void report_phase (uvm_phase phase);
		super.report_phase(phase);
		$display("This is the Report Phase component B");		
	endfunction 

	function void final_phase (uvm_phase phase);
		super.final_phase(phase);
		$display("This is the Final Phase component B");		
	endfunction 

endclass



/*
module test ();
	initial begin									// run test is inbuilt function of uvm
		run_test("component_B");						// run_test(<"class_name">);
	end
endmodule

*/