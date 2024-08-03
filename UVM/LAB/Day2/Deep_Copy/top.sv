`include "uvm_macros.svh"
import uvm_pkg::*;

`include "txn_item.sv"
`include "Adder_sequence.sv"
`include "Adder_sequencer.sv"


module top();
	initial begin
			//syntax: run_test(<"uvm_component_type">);
			run_test("adder_sequencer");
	end
endmodule
