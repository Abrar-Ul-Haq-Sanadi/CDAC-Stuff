


// This is the Monitor Class analysis port

class monitor extends uvm_monitor;
	`uvm_component_utils(monitor)

	txn t;
	uvm_analysis_port#(txn)ap_mon;


	//default constructor
	function new(string name="monitor", uvm_component parent);		
		super.new(name, parent); 
		ap_mon=new("ap_mon", this);
	endfunction

	virtual task run_phase(uvm_phase phase); 			//collect packet from lower level
		phase.raise_objection(this);
			repeat(2) begin
				t = txn::type_id::create("t");			//creating the object of handle t 
				assert(t.randomize());
				`uvm_info(get_type_name(), $sformatf("Time: %0t",$time), UVM_LOW);
				`uvm_info(get_type_name(), $sformatf("MOnitor sending the txn"), UVM_LOW);
				t.print();

				#5 ap_mon.write(t);					//write is function of uvm_anysis_port whenever it is called it goes to all subscribers
			end
		phase.drop_objection(this);
	endtask
endclass
