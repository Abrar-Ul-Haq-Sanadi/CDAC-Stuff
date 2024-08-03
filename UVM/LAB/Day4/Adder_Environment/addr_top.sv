`include "uvm_macros.svh"
import uvm_pkg::*;

`include "interface.sv"
`include "dut.sv"
`include "txn.sv"
`include "addr_sequencer.sv"
`include "addr_driver.sv"
`include "addr_monitor.sv"
`include "addr_agent.sv"
`include "addr_subscriber.sv"
`include "addr_scoreboard.sv"
`include "addr_env.sv"
`include "sequence.sv"
`include "test.sv"


module top;
	logic clk;
	logic reset_n;


	always #25 clk = ~clk;
	initial begin
		 reset_n = 1'b0;
	#175 reset_n = 1'b1;
    end

    // callin the interface to the dut
    adder_intf vif(.i_clk(clk),
    			   .i_reset_n(reset_n));



    four_bit_adder dut_i(.i_clk(clk),
    				.i_reset_n(reset_n),
    				.i_valid(vif.i_valid),
    				.i_data1(vif.i_data1),
    				.i_data2(vif.i_data2),
    				.o_sum(vif.o_sum)

    				);

// setting the config db
    initial begin
    	uvm_config_db#(virtual adder_intf)::set(null, "*", "hi", vif);
      	uvm_config_db#(virtual adder_intf)::set(null, "uvm_test_top.env.agnt.mon", "HELLO", vif);

    end



	initial begin
	run_test("addr_test");
	end
endmodule