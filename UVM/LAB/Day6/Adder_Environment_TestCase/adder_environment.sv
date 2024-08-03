//Environment class

class adder_environment extends uvm_env;
	`uvm_component_utils(adder_environment)

	adder_agent agnt;
	adder_scoreboard scb;
	adder_subscriber sbr;
	adder_virtual_sequencer vseqr;

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction


	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		scb  = adder_scoreboard ::type_id::create("scb",this);
		agnt = adder_agent::type_id::create("agnt",this);
		sbr  = adder_subscriber::type_id::create("sbr", this);
		vseqr = adder_virtual_sequencer :: type_id::create("vseqr", this);
		`uvm_info (get_type_name(), $sformatf("This is the Environment class"), UVM_NONE)
	endfunction


	//connect phase in the environment to connect monitor to other componenents like
	// monitor ---------> scoreboard
	// monitor ---------> subscriber

	//connect phase
	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
	//	agnt.mon.ap.connect(scb.analysis_export);				// to connect from the monitor to scoreboard in the envirnoment
		agnt.mon.ap.connect(scb.mon_ana_export);
		agnt.drv.rsp_port.connect(scb.drv_ana_export);

		vseqr.addr_seqr = agnt.seqr ;							// the handle of adder_sequencer (seqr) declared in virtual_adder_sequencer is being 
																//connected to  seqr via the agent

	//	$cast (vseqr.addr_seqr = agnt.seqr);					//we are allcating the same memory to both vseq and seqr


// connection from the monitor and driver to the subscriber
	
//		agnt.mon.ap.connect(sbr.analysis_export_sbr);
		agnt.mon.ap.connect(sbr.mon_ana_export_sbr);
		agnt.drv.rsp_port.connect(sbr.drv_ana_export_sbr);

	endfunction


endclass