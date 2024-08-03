
`include "uvm_macros.svh"
import uvm_pkg::*;


class component extends uvm_component ;
	`uvm_component_utils(component);

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		$display("This is the Build Phase");
	endfunction

	function void connect_phase (uvm_phase phase);
		super.connect_phase(phase);
		$display("This is the Connect Phase");
	endfunction 

	function void end_of_elaboration_phase (uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		$display("This is the End of Elaboration Phase");		
	endfunction 

	function void start_of_simulation_phase (uvm_phase phase);
		super.start_of_simulation_phase(phase);
		$display("This is the Start of Simulaiton Phase");		
	endfunction 


	task run_phase (uvm_phase phase);					// only Run phase is having task function
		super.run_phase(phase);
		$display("This is the Run Phase");		
	endtask 

	function void extract_phase (uvm_phase phase);
		super.extract_phase(phase);
		$display("This is the Extract of Elaboration Phase");		
	endfunction 
	
	function void check_phase (uvm_phase phase);
		super.check_phase(phase);
		$display("This is the Check Phase");		
	endfunction

	function void report_phase (uvm_phase phase);
		super.report_phase(phase);
		$display("This is the Report Phase");		
	endfunction 


endclass



module test ();
	initial begin									// run test is inbuilt function of uvm
		run_test("component");						// run_test(<"class_name">);
	end
endmodule