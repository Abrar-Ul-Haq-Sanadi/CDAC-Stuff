`include "uvm_macros.svh"
import uvm_pkg::*;

`include "transaction.sv"
`include "monitor.sv"
`include "coverage.sv"
`include "scoreboard.sv"
`include "test.sv"

module top();
	initial begin
		run_test("test");
	end

endmodule