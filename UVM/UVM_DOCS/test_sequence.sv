//
// This sequence shows how data members can be set to rand values
// to allow the sequence to either be randomized or set to a directed
// set of values in the controlling thread
//
// The sequence reads one block of memory (src_addr) into a buffer and
// then writes the buffer into another block of memory (dst_addr). The size
// of the buffer is determined by the transfer size
//
class mem_trans_seq extends bus_seq_base;
   `uvm_object_utils(mem_trans_seq)
   // Randomised variables
   rand logic[31:0] src_addr;
   rand logic [31:0] dst_addr;
   rand int	     transfer_size;
   // Internal buffer
   logic [31:0]	     buffer[];
   // Legal limit on the page size is 1023 transfers
   //
   // No point in doing a transfer of 0 transfers
   //
   constraint page_size {
      transfer_size inside {[1:1024]};
   }
   // Addresses need to be aligned to 32 bit transfers
   constraint address_alignment {
      src_addr[1:0] == 0;
      dst_addr[1:0] == 0;
   }
   
   // Constructor
   function new(string name = "mem_trans_seq");
      super.new(name);
   endfunction

   task body;
      bus_seq_item req = bus_seq_item::type_id::create("req");
      logic[31:0] dst_start_addr = dst_addr; buffer = new[transfer_size];
      `uvm_info("run:", $sformatf("Transfer block of %0d words from %0h-%0h to %0h-%0h",
				  transfer_size, src_addr, src_addr+((transfer_size-1)*4), dst_addr,
				  dst_addr+((transfer_size-1)*4)), UVM_LOW)
      // Fill the buffer
      for(int i = 0; i < transfer_size-1; i++) begin
	 start_item(req);
	 if(!req.randomize() with {addr == src_addr; read_not_write == 1; delay < 3;}) begin
	    `uvm_error("body", "randomization failed for req")
	 end
	 finish_item(req); buffer[i] = req.read_data;
	 src_addr = src_addr + 4; // Increment to the next location
      end
      // Empty the buffer
      for(int i = 0; i < transfer_size-1; i++) begin
	 start_item(req);
	 if(!req.randomize() with {
	    addr == dst_addr; 
	    read_not_write == 0; 
	    write_data == buffer[i];
	    delay < 3;}) 
	   begin
	      `uvm_error("body", "randomization failed for req")
	   end
	 finish_item(req);
	 dst_addr = dst_addr + 4; // Increment to the next location
      end
      dst_addr = dst_start_addr;
      // Check the buffer transfer
      for(int i = 0; i < transfer_size-1; i++) begin
	 start_item(req);
	 if(!req.randomize() with {
	    addr == dst_addr; 
	    read_not_write == 1; 
	    write_data == buffer[i];
	    delay < 3;}) 
	   begin
	      `uvm_error("body", "randomization failed for req")
	   end
	 finish_item(req);
	 if(buffer[i] != req.read_data) begin
	    `uvm_error("run:", $sformatf("Error in transfer @%0h : Expected  %0h, Actual %0h", dst_addr, buffer[i], req.read_data))
	 end
	 dst_addr = dst_addr + 4; // Increment to the next location
      end
      `uvm_info("run:", $sformatf("Finished transfer end addresses SRC: %0h DST:%0h",
				  src_addr, dst_addr), UVM_LOW)
   endtask: body
endclass: mem_trans_seq

//
// This test shows how to randomize the memory_trans_seq
// to set it up for a block transfer
//
class seq_rand_test extends bus_test_base;
   `uvm_component_utils(seq_rand_test)
   function new(string name = "seq_rand_test", uvm_component parent =
		null);
      super.new(name);
   endfunction
   task run_phase( uvm_phase phase ); 
      phase.raise_objection( this , "start mem_trans_seq" );
      mem_trans_seq seq = mem_trans_seq::type_id::create("seq");
      // Using randomization and constraints to set the initial values
      //
      // This could also be done directly
      //
      assert(seq.randomize() with {
	 src_addr == 32'h0100_0800;
	 dst_addr inside {[32'h0101_0000:32'h0103_0000]};
	 transfer_size == 128;
      });
      seq.start(m_agent.m_sequencer);
      phase.drop_objection( this , "finished mem_trans_seq" );
   endtask// run
endclass: seq_rand_test
