//Driver class

class adder_driver extends uvm_driver #(txn);
	`uvm_component_utils(adder_driver)

	virtual adder_intf intf;
	txn tt;

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info (get_type_name(), $sformatf("This is the Driver class"), UVM_NONE)

		if(	uvm_config_db #(virtual adder_intf)::get(this, "", "Hello_Driver", intf)) begin
				`uvm_info (get_type_name(), $sformatf("Interface data recieved at the DRIVER"), UVM_NONE)
		end	else begin
				`uvm_fatal (get_type_name(), $sformatf("Interface NOT recieved at the DRIVER"))
		end
	endfunction


	//run phase  											
	task run_phase(uvm_phase phase);
		//t = txn ::type_id::create("t");			//creating object of handle t
		forever begin 								// for every posedge clk of interface driver is collecting item from sequencer
			@(posedge intf.i_clk);
			if(intf.i_reset_n)begin

				seq_item_port.get_next_item(tt);
					`uvm_info (get_type_name(), "---------DRIVER---------", UVM_NONE)
					tt.print();
					tt.i_valid = 1'b1;			// as per the designer i_valid should  be 1 when sending to dut
					
					intf.i_valid = tt.i_valid ;
					intf.i_data1 = tt.i_data1 ;
					intf.i_data2 = tt.i_data2 ;
					
					@(posedge  intf.i_clk);
					tt.i_valid = 1'b0;		// as per the designer i_valid shouldnt be 1 when sending to dut
					intf.i_valid = tt.i_valid ;
					
					// repeat(1)
					// @(posedge intf.i_clk);
					// 	tt.o_sum = intf.o_sum ;
				
						rsp_port.write(tt);
				seq_item_port.item_done(tt);				//In driver item done is trigerred when we have the output ready by the dut  
			end 										//t.sum = vif.sum
			else begin
					`uvm_info (get_type_name(), "Reset is asserted so there no transaction", UVM_DEBUG)
			end
		 end 										 
	endtask

endclass