class addr_agent extends uvm_agent;
		`uvm_component_utils(addr_agent)
// in this we need to create handle of sequencer, driver and monitor

addr_sequencer seq;
addr_driver drv;
addr_monitor mon;


		function new(string name="addr_agent", uvm_component parent);
			super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			
			$display("this is adder Agent build phase");
			seq = addr_sequencer::type_id::create("seq",this);
			drv = addr_driver::type_id::create("drv",this);
			mon = addr_monitor::type_id::create("mon",this);

		endfunction

		

endclass