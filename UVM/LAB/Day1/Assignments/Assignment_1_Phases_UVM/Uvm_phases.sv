// these are the Phases of UVM
`include "uvm_macros.svh"
import uvm_pkg::*;

class component extends uvm_component;													// this is the component class

	`uvm_component_utils(component)

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		$display("this is build phases_uvm");
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		$display("this is connect phases_uvm");
	endfunction : connect_phase

	function void end_of_elaboration_phase(uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		$display("this is end of elaboration phases_uvm");
	endfunction : end_of_elaboration_phase


	function void start_of_simulation_phase(uvm_phase phase);
		super.start_of_simulation_phase(phase);
		$display("this is start_of_simulation phases_uvm");
	endfunction : start_of_simulation_phase


	task run_phase(uvm_phase phase);
		super.run_phase(phase);																	// note: run phase and extract phase are made as tasks
		$display("this is run phases_uvm");
	endtask


	task pre_reset(uvm_phase phase);
		super.pre_reset(phase);																	
		$display("this is pre reset phase");
	endtask

	task reset(uvm_phase phase);
		super.reset(phase);																	
		$display("this is reset phase");
	endtask

	task post_reset(uvm_phase phase);
		super.post_reset(phase);																	
		$display("this is post reset phase");
	endtask

	task pre_configure(uvm_phase phase);	
		super.pre_configure(phase);																															
		$display("this is pre configure phase");
	endtask

	task configure(uvm_phase phase);
		super.configure(phase);																																															
		$display("this is configure phase");
	endtask

	task post_configure(uvm_phase phase);
		super.post_configure(phase);																	
		$display("this is post configure phase");
	endtask

	task pre_main(uvm_phase phase);	
		super.pre_main(phase);																																	
		$display("this is pre main phase");
	endtask

	task main(uvm_phase phase);	
		super.main(phase);																
		$display("this is main phase");
	endtask

	task post_main(uvm_phase phase);
		super.post_main(phase);																	
		$display("this is post main phase");
	endtask

	task pre_shutdown(uvm_phase phase);	
		super.pre_shutdown(phase);																
		$display("this is pre shutdown phase");
	endtask

	task shutdown(uvm_phase phase);
		super.shutdown(phase);																	
		$display("this is shutdown phase");
	endtask

	task post_shutdown(uvm_phase phase);																	
		super.post_shutdown(phase);
		$display("this is post shutdown phase");
	endtask


	task extract_phase(uvm_phase phase);
		super.extract_phase(phase);
		$display("this is extract phases_uvm");
	endtask

	function void check_phase(uvm_phase phase);
		super.check_phase(phase);
		$display("this is check phases_uvm");
	endfunction : check_phase

	function void report_phase(uvm_phase phase);
		super.report_phase(phase);
		$display("this is report phases_uvm");
	endfunction : report_phase

endclass


module test;
	//component C;
`include "uvm_macros.svh"
import uvm_pkg::*;
	initial begin
	//	C = new();
		// C.build_phase();
		// C.connect_phase();
		// C.end_of_elaboration_phase();
		// C.start_of_simulation_phase();
		// C.run_phase();
		// C.pre_reset();
		// C.reset();
		// C.post_reset();
		// C.pre_configure();
		// C.configure();
		// C.post_configure();
		// C.pre_main();
		// C.main();
		// C.post_main();
		// C.pre_shutdown();
		// C.shutdown();
		// C.post_shutdown();
		// C.extract_phase();
		// C.check_phase();
		// C.report_phase();

		run_test("component");
	end
endmodule
