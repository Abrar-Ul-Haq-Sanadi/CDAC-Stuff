//Monitor class

class adder_monitor extends uvm_monitor;
		`uvm_component_utils(adder_monitor)

		txn t;
		virtual adder_intf intf_mon;
		
		uvm_analysis_port #(txn) ap;				// TLM analysis port for monitor
		
	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		ap =new("analysis_port", this);					//creating the object for the ap analysis port 
		`uvm_info (get_type_name(), $sformatf("This is the Monitor class"), UVM_NONE)

		if(uvm_config_db #(virtual adder_intf)::get(this,"","Hello_Monitor",intf_mon)) begin
			`uvm_info (get_type_name(), $sformatf("Interface data recieved at the Monitor"), UVM_NONE)
		end
		else begin
			`uvm_info (get_type_name(), $sformatf("Interface data NOT recieved at the Monitor"), UVM_NONE)
		end
	endfunction

	//run task
	task run_phase(uvm_phase phase);

		forever begin
			if(intf_mon.i_reset_n) begin
				t = txn::type_id::create("t");

				//repeat(2) @(negedge intf_mon.i_clk)
				@(negedge intf_mon.i_valid);
				@(posedge intf_mon.i_clk);
				t.i_data1 = intf_mon.i_data1;
				t.i_data2 = intf_mon.i_data2;
				t.o_sum   = intf_mon.o_sum;
				ap.write(t);										// driver write to monitor
				t.print();
			end
			else 
				@(posedge intf_mon.i_clk);
		end

	endtask




endclass