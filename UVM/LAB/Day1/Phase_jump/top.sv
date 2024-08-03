

`include "uvm_macros.svh"
import uvm_pkg::*;

`include "comp.sv"

module  ();
		initial begin
				run_test("component");
		end
endmodule