`include "uvm_macros.svh"
import uvm_pkg::*;

`include "Component_B.sv"
// `include "Component_A.sv"


module test_top();

	initial begin
		uvm_config_db #(string)::set(null,"*", "My_String", "Abrar_printed");				// 1st configuring
		run_test("component_B");															// then running the test
	end
endmodule

