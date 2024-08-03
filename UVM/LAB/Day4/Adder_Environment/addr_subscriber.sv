class addr_sub extends uvm_subscriber#(txn);
		`uvm_component_utils(addr_sub)

//		uvm_analysis_imp #(txn, addr_sub) analysis_export;

		function new(string name="", uvm_component parent);
			super.new(name, parent);
	//		analysis_export = new("analysis_export", this);

		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			$display("this is adder subscriber build phase");

		endfunction
		function void write(txn t);
			`uvm_info(get_type_name(), "subscriber received txn", UVM_LOW)
			t.print();
		endfunction

endclass