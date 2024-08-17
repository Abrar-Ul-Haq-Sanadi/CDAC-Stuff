//
// This sequence executes some sub-sequences in a random order
//
class rand_order_seq extends bus_seq_base;
   `uvm_object_utils(rand_order_seq)
   function new(string name = "rand_order_seq");
      super.new(name);
   endfunction
   //
   // The sub-sequences are created and put into an array of
   // the common base type.
   //
   // Then the array order is shuffled before each sequence is
   // randomized and then executed
   //
   task body;
      bus_seq_base seq_array[4];
      seq_array[0] = n_m_rw interleaved_seq::type_id::create("seq_0");
      seq_array[1] = rwr_seq::type_id::create("seq_1");
      seq_array[2] = n_m_rw_seq::type_id::create("seq_2");
      seq_array[3] = fill_memory_seq::type_id::create("seq_3");
      // Shuffle the array contents into a random order:
      seq_array.shuffle();
      // Execute all the array items in turn
      foreach(seq_array[i]) begin
	 if(!seq_array[i].randomize()) begin
	    `uvm_error("body", "randomization failed for req")
	 end
	 seq_array[i].start(m_sequencer);
      end
   endtask: body
endclass: rand_order_seq
