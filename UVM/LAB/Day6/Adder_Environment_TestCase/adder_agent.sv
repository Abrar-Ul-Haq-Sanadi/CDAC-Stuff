//Agent class

class adder_agent extends uvm_agent;
		`uvm_component_utils(adder_agent)

	adder_sequencer seqr;
	adder_driver	drv;
	adder_monitor 	mon;

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		seqr = adder_sequencer::type_id::create("seqr", this);
		drv  = adder_driver::type_id::create("drv", this);
		mon  = adder_monitor::type_id::create("mon", this);
		`uvm_info (get_type_name(), $sformatf("This is the Agent class"), UVM_NONE)
	endfunction

	//connect phase
	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		drv.seq_item_port.connect(seqr.seq_item_export); //seq_item_port and seq_item_export are inbuilt ports present in the base class
	endfunction


endclass