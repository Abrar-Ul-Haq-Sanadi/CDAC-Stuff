//Scoreboard class


//if we have multiple incoming alaysis port we have to declare them outside the class
// as in the case of scoreboard there are two incoming analysis port one from driver and one from monitor so we havve to declare
// the ports outsise the scoreboard class
// And then use it inside the class to declare the ports

//------------------------------------------------------------------------------------------------------------
// these declarations are been included in the package

// `uvm_analysis_imp_decl(_drv_analysis_export);					//analysis export of the driver 
// `uvm_analysis_imp_decl(_mon_analysis_export);					//analysis export of the monitor
//------------------------------------------------------------------------------------------------------------

class adder_scoreboard extends uvm_scoreboard;
		`uvm_component_utils(adder_scoreboard)
																		// Monitor ^----------->|_| scoreboard
//		uvm_analysis_imp #(txn, adder_scoreboard) analysis_export;		// for monitor to scoreboard connection via the _imp it has 2 arguements
		uvm_analysis_imp_drv_analysis_export #(txn, adder_scoreboard) drv_ana_export ;
		uvm_analysis_imp_mon_analysis_export #(txn, adder_scoreboard) mon_ana_export ;

	//	uvm_event mon_event;												// this is the inbuilt uvm_event and creating handle of it

	//default constructor
	function new(string name = "", uvm_component parent );
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	//	analysis_export = new("analysis_export", this);						//allocating the memory for the anlysis_export
		drv_ana_export = new("drv_ana_export", this);		
		mon_ana_export = new("mon_ana_export", this);
	//	mon_event	   = new("mon_event");									//creating the object for the mon_event handle
		`uvm_info (get_type_name(), $sformatf("This is the Scoreboard class"), UVM_NONE)
	endfunction

	//write function
	
	// function void write(txn t);
	// 		`uvm_info (get_type_name(), $sformatf("This is the Write method of Scoreboard class"), UVM_NONE)
	// 		t.print();
	// endfunction

	txn drv_txn[$];			//these is the Queue which stores the transaction from the driver 
	txn mon_txn[$]; 		// these is the Queue which stores the transaction from the monitor

//-------------------------------------------------------------------------------------------------------------
	event mon_event;

	function void write_drv_analysis_export(txn t);
			`uvm_info (get_type_name(), $sformatf("This is the Write method from Driver to Scoreboard class"), UVM_NONE)
			drv_txn.push_back(t);			//every transaction from driver is pushed into the Queue
	endfunction 

	function void write_mon_analysis_export(txn t);
			`uvm_info (get_type_name(), $sformatf("This is the Write method from Monitor to Scoreboard class"), UVM_NONE)
			t.print();
			mon_txn.push_back(t); 			//every transaction from Monitor is pushed into the Queue
			-> mon_event;					//Events are triggered using -> operator or ->> operator
		//	mon_event.trigger();
	endfunction 


	task run_phase(uvm_phase phase);
		txn drv_data, mon_data;
		forever begin
		@(mon_event);								//wait for an event to be triggered using @ operator or wait() construct
	//	mon_event.wait_trigger();
			if(drv_txn.size()!=0 && mon_txn.size()!=0) begin
				drv_data = drv_txn.pop_front();
				mon_data = mon_txn.pop_front();

				if(drv_data.i_data1 + drv_data.i_data2 == mon_data.o_sum)
				`uvm_info(get_full_name(), $sformatf("DATA IS MATCHING--> data1=%0d and data1=%0d is sum= %0d",drv_data.i_data1, drv_data.i_data2 , mon_data.o_sum),UVM_LOW)
				else
				`uvm_error(get_full_name(), $sformatf("DATA IS NOT MATCHING!!!!!--> data1=%0d and data1=%0d is sum= %0d",drv_data.i_data1, drv_data.i_data2 , mon_data.o_sum))
			end
		end
	endtask


endclass