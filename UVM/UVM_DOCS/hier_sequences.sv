//API Sequence for doing a Read
class spi_read_seq extends uvm_sequence #(spi_item);
   `uvm_object_utils(spi_read_seq)
   const string report_id = "spi_read_seq";
   rand bit [7:0] addr;
   bit [15:0]	  rdata;
   task body();
      req = spi_item::type_id::create("spi_request"); 
      start_item(req);
      if ( !(req.randomize() with { req.addr == local::addr;} )) 
	`uvm_error(report_id, "Randomize Failed!") 
      finish_item(req);
      rdata = req.data;
   endtask : body
   task read(input bit [7:0] addr, output bit [15:0] read_data,
	     input uvm_sequencer_base seqr, input uvm_sequence_base parent = null);
      this.addr = addr; this.start(seqr,parent); 
      read_data = req.data;
   endtask : read
endclass : spi_read_seq

//API Sequence for doing a Write
class spi_write_seq extends uvm_sequence #(spi_item);
   `uvm_object_utils(spi_write_seq)
   const string	   report_id = "spi_write_seq";
   rand bit [7:0]  addr;
   rand bit [15:0] wdata;
   task body();
      req = spi_item::type_id::create("spi_request"); 
      start_item(req);
      if ( !(req.randomize() with {req.addr == local::addr;
	 req.data == local::wdata; } )) 
	`uvm_error(report_id, "Randomize Failed!") finish_item(req);
   endtask : body
   task write(bit [7:0] addr, bit [15:0] write_data,
	      uvm_sequencer_base seqr, uvm_sequence_base parent = null); this.addr = addr;
      this.wdata = write_data;
      this.start(seqr, parent);
   endtask : write
endclass : spi_write_seq


   
