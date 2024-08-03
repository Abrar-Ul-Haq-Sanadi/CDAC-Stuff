
`include "uvm_macros.svh"
import uvm_pkg::*;

typedef chk_config_db_1;
typedef chk_config_db_2;

`include "Config_db_class_1.sv"
`include "Config_db_class_2.sv"


module top ();
	initial begin
		run_test("chk_config_db_1");	
	end
endmodule