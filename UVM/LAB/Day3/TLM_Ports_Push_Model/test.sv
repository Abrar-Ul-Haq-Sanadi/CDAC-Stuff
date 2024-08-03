class test extends uvm_test;
	producer p;
	consumer c;

	`uvm_component_utils(test)
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
		p=producer::type_id::create("p",this);
		c=consumer::type_id::create("c",this);
	endfunction

	function void connect_phase(uvm_phase phase);
		p.put_port.connect(c.imp_port);
	endfunction

endclass