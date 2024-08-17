`include "uvm_macros.svh";
import uvm_pkg::*;


`include "transaction.sv"
`include "Q1_Producer.sv"
`include "Q1_consumer.sv"
`include "test.sv"

module top();
	initial begin
		run_test("test");
	end
endmodule 