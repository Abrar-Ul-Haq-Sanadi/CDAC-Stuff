class addr_driver extends uvm_driver#(txn);
		`uvm_component_utils(addr_driver)


		virtual adder_intf intf;

		function new(string name="", uvm_component parent);
			super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			if(uvm_config_db#(virtual adder_intf)::get(this, "", "hi", intf)) begin
				`uvm_info(get_type_name(), "interface data received at Driver", UVM_LOW)
			end else begin
				`uvm_fatal(get_type_name(), "Interface data not found at  driver")
			end
			$display("this is adder driver build phase");
		endfunction

endclass