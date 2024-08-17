//TEST CLASS

class test extends uvm_test;
	Producer p;
	Consumer c;

	`uvm_component_utils(test)

	//default constructor
	function new (string name = "", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build phase
	function void build_phase(uvm_phase phase);
		p = Producer::type_id::create("p", this);
		c = Consumer::type_id::create("c", this);
	endfunction

	//connect phase
	function void connect_phase(uvm_phase phase);
		c.get_port.connect(p.get_imp);
	endfunction

endclass
