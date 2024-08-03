// send the integer data from the class comp_B to class comp_A

`include "uvm_macros.svh"
import uvm_pkg::*;

`include "Component_B.sv";			// including the file name


module test_config_db();
	initial begin
		run_test("component_B");
	end
endmodule