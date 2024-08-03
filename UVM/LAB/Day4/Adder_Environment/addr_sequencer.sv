class addr_sequencer extends uvm_sequencer;
		`uvm_component_utils(addr_sequencer)

		function new(string name="", uvm_component parent);
			super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			$display("this is adder sequencer build phase");

		endfunction

endclass