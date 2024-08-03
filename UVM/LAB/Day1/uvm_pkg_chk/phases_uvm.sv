// these are the Phases of UVM

class component;													// this is the component class

	function void build_phase();
		$display("this is build phases_uvm");
	endfunction : build_phase

	function void connect_phase();
		$display("this is connect phases_uvm");
	endfunction : connect_phase

	function void end_of_elaboration_phase();
		$display("this is end of elaboration phases_uvm");
	endfunction : end_of_elaboration_phase

	function void start_of_simulation_phase();
		$display("this is start_of_simulation phases_uvm");
	endfunction : start_of_simulation_phase

	task run_phase();																	// note: run phase and extract phase are made as tasks
		$display("this is run phases_uvm");
	endtask

	task extract_phase();
		$display("this is extract phases_uvm");
	endtask

	function void check_phase();
		$display("this is check phases_uvm");
	endfunction : check_phase

	function void report_phase();
		$display("this is report phases_uvm");
	endfunction : report_phase

endclass


module test;
	component C;

	initial begin
		C = new();
		C.build_phase();
		C.connect_phase();
		C.end_of_elaboration_phase();
		C.start_of_simulation_phase();
		C.run_phase();
		C.extract_phase();
		C.check_phase();
		C.report_phase();
	end
endmodule
