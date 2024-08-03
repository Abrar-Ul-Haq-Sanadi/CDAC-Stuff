//trying to copyt the 

class adder_sequence extends uvm_sequence;
	`uvm_object_utils(adder_sequence)

	txn_item item1, item2;

	function new (string name="");
		super.new(name);	
	endfunction

	
	//This is the user-defined task where the main sequence code resides
	// here we are randomizing the sequence items and sending to Sequencer
	task body;
		super.body();
		`uvm_info(get_full_name(),$sformatf("This is my Adder Body Sequence"),UVM_LOW);		// just a display stmt

		item1 = txn_item::type_id::create("item1");
		item2 = txn_item::type_id::create("item2");

		assert(item1.randomize())
		else 
			`uvm_error(get_full_name(), "assertion failed!!!")
		item1.print();	
		item2.print();		// print to check the default values befor copying from item1 to item2 

		item2.copy(item1);	
		item2.print();		// print to check the default values After copying from item1 to item2 

	endtask
endclass

