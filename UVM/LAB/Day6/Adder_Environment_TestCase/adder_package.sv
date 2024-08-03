//Package Class
// this package class include all the files of the environment and are imported in the top file.
// note:-> the Dut File and Interface are not included

package adder_package;
import uvm_pkg::*;


`uvm_analysis_imp_decl(_drv_analysis_export);					//analysis export of the driver 
`uvm_analysis_imp_decl(_mon_analysis_export);					//analysis export of the monitor


	typedef adder_virtual_sequencer;
	typedef adder_sequencer;

	`include "adder_virtual_sequencer.sv"
	//`include "dut.sv"
	`include "transaction.sv"
	//`include "interface.sv"
	`include "adder_sequencer.sv"
	`include "adder_driver.sv"
	`include "adder_monitor.sv"
	`include "adder_agent.sv"
	`include "adder_subscriber.sv"
	`include "adder_scoreboard.sv"
	`include "adder_environment.sv"
	`include "sequence.sv"
	`include "adder_sequence_incr.sv"
	`include "adder_sequence_decr.sv"
	`include "adder_test.sv"
	`include "adder_test_incr.sv"
	`include "adder_test_decr.sv"


endpackage