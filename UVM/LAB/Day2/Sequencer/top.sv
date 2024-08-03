`include "uvm_macros.svh"
import uvm_pkg::*;

`include "dvlsi_sequence.sv"
`include "dvlsi_sequencer.sv"


module top ();
	initial begin
			run_test("dvlsi_sequencer");
	end
endmodule
