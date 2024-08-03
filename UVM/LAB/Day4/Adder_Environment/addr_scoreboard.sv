class addr_scb extends uvm_scoreboard;
		`uvm_component_utils(addr_scb)

		uvm_analysis_imp #(txn, addr_scb) analysis_export;


		function new(string name="", uvm_component parent);
			super.new(name, parent);
			analysis_export = new("analysis_export", this);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			$display("this is adder scoreboard build phase");

		endfunction

		function void write(txn t);
			`uvm_info(get_type_name(), "scoreboard received txn", UVM_LOW)
			t.print();
		endfunction

endclass