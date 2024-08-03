//Top FILE


`include "uvm_macros.svh"
import uvm_pkg::*;
 `include "dut.sv"
 `include "interface.sv"
`include "adder_package.sv"
import adder_package::*;





module adder_top();
	bit clk;
	bit reset_n;

	initial begin 
	 	 reset_n = 1'b0;
	#200 reset_n = 1'b1;
	#220 reset_n = 1'b0;
	#5 	 reset_n = 1'b1;
	end

	always #25 clk = ~clk;

	
	//instating the interface to the DUT
	adder_intf vif(	.i_clk(clk),
					.i_reset_n(reset_n)
		   		);

	// making the connection between dut and virtual-interface
	adder dut(
				.i_clk(clk),
				.i_reset_n(reset_n),

				.i_valid(vif.i_valid),
				.i_data1(vif.i_data1),
				.i_data2(vif.i_data2),

				.o_sum(vif.o_sum)
		);

	initial begin
		if(uvm_config_db #(virtual adder_intf)::get(null, "", "Hello_Module", vif)) begin
				`uvm_info (get_type_name(), $sformatf("Monitor Data sent to the Top Module"), UVM_NONE)
		end
		else begin
			`uvm_info (get_type_name(), $sformatf("Monitor data NOT recieved at the Top Module"), UVM_NONE)
		end
	end

	// initial begin
	// 	uvm_config_db #(virtual adder_intf)::set(null, "uvm_test_top.*", "Hello_Driver", vif);		//to set the value of virtual interfact to driver
	// end

	// initial begin
	// 	uvm_config_db #(virtual adder_intf)::set(null, "uvm_test_top.*", "Hello_Monitor", vif);	//to set the value of virtual interfact to driver
	// end

	initial begin
		run_test("adder_test_one_hot");
	end

endmodule