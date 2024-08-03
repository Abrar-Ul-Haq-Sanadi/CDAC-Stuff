`include "uvm_macros.svh"
import uvm_pkg::*;

	`include "Component_Base_class.sv";


module Top();
initial begin
	run_test("component_B");
end
endmodule