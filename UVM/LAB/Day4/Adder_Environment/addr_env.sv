class addr_env extends uvm_env;
		`uvm_component_utils(addr_env)
// in environemnt we are creating handle of agent and scoreboard
addr_agent agnt;
addr_scb scrbrd;
addr_sub subs;

		function new(string name="", uvm_component parent);
			super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);

			$display("this is adder environment build phase");
			agnt   = addr_agent::type_id::create("agnt",this);
			scrbrd = addr_scb::type_id::create("scrbrd",this);
			subs   = addr_sub::type_id::create("subs",this);
		endfunction

		function void connect_phase(uvm_phase phase);
		 	super.connect_phase(phase);
		 	agnt.mon.item_collected_port.connect(scrbrd.analysis_export);
		 	$display("agent is connected to scoreboard");
		 	agnt.mon.item_collected_port.connect(subs.analysis_export);
		 	$display("agent is connected to subscriber");
		endfunction
endclass