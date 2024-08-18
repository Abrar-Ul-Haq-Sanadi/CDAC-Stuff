//Top Module


`include "uvm_macros.svh"
import uvm_pkg::*;

`include "transaction.sv"
`include "producer.sv"
`include "consumer.sv"
`include "test.sv"


module top();
	initial begin
		run_test("test");
	end
endmodule