


class test extends uvm_test;
	`uvm_component_utils(test)
	monitor m;
	scoreboard s;
	coverage c;

	//Default constructor
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build -- we are allocating the memory
	function void build_phase (uvm_phase phase);
		m=monitor::type_id::create("m",this);
		s=scoreboard::type_id::create("s",this);
		c=coverage::type_id::create("c",this);
	endfunction

	//connect phase
	function void connect_phase(uvm_phase phase);
		m.ap_mon.connect(s.ap_imp_scb);
		m.ap_mon.connect(c.ap_imp_cov);
	endfunction

endclass