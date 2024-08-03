class adder_sequence extends uvm_sequence#(txn);
    `uvm_object_utils(adder_sequence)

    function new(string name = "");
        super.new(name);
    endfunction

    // function void build_phase(uvm_phase phase);
    // 	super.build_phase(phase);
    // 	`uvm_info(get_full_name(), "\n Adder sequence - build phase \n", UVM_NONE)
    // endfunction

    task body;
    	//`uvm_info(get_full_name(), "\n Adder sequence - task body \n", UVM_NONE)
    	txn t =txn::type_id::create("t");
    	repeat(5) begin
    		start_item(t);
    		assert(t.randomize());
    		finish_item(t);
    	end
    endtask
endclass