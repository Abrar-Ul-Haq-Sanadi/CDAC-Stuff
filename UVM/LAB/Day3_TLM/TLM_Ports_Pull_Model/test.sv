//TEST CLASS

class test extends uvm_test;
	producer p;
	consumer c;

	`uvm_component_utils(test)

	//default constructor
	function new (string name = "", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build phase
	function void build_phase(uvm_phase phase);
		p = producer::type_id::create("p", this);
		c = consumer::type_id::create("c", this);
	endfunction

	//connect phase
	function void connect_phase(uvm_phase phase);
		c.get_port.connect(p.get_imp);
	endfunction

endclass
