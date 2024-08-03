class addr_test extends uvm_component;
		`uvm_component_utils(addr_test)
// in test we need to call env and create its handle
addr_env env;
		function new(string name="", uvm_component parent);
			super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			env= addr_env::type_id::create("env", this);
			$display("this is adder Test build phase");

		endfunction
endclass
