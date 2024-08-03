//Class Test

class test extends uvm_test;
	`uvm_component_utils(test)

	producer p;
	consumer c;

	uvm_tlm_fifo #(txn)fifo;			//This class provides storage of transactions between two independently running processes

	//default constructor
	function new (string name="", uvm_component parent);
		super.new(name, parent);
	endfunction

	//build -- we are allocating the memory
	function void build_phase (uvm_phase phase);
		p=producer::type_id::create("p",this);
		c=consumer::type_id::create("c",this);
		fifo = new("fifo", this,8);				//8-> is the depth of the FIFO
	
	endfunction

	//connect phase
	function void connect_phase(uvm_phase phase);
		p.put_port.connect(fifo.put_export);	//Transactions are put into the FIFO via the put_export method
		c.get_port.connect(fifo.get_export);	//Transactions are fetched from the FIFO via the get_peek_export method
	endfunction


endclass