class addr_monitor extends uvm_monitor;
		`uvm_component_utils(addr_monitor)

		//definig analysis port
		uvm_analysis_port #(txn) item_collected_port;

		virtual adder_intf intf;

		function new(string name="", uvm_component parent);
			super.new(name, parent);
			item_collected_port = new("item_collected_port", this);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			if(uvm_config_db#(virtual adder_intf)::get(this, "", "HELLO", intf)) begin
				`uvm_info(get_type_name(), "interface received at config db", UVM_LOW)
			end else begin
				`uvm_fatal(get_type_name(), "uvm_config db not found in driver")
			end
			$display("this is adder monitor build phase");

		endfunction

endclass