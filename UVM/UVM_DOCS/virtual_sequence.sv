//Virtual Sequence controlling everything
class test1_seq extends uvm_sequence #(uvm_sequence_item);
   `uvm_object_utils(test1_seq)
   const string report_id = "test1_seq";
   // These handles will be assigned by an init method in the test
   uvm_sequencer_base spi_seqr;
   uvm_sequencer_base modA_seqr;
   uvm_sequencer_base modB_seqr;
   moduleA_init_seq modA_init;
   moduleB_init_seq modB_init;
   moduleA_rand_data_seq modA_rand_data;
   moduleB_rand_data_seq modB_rand_data;
   spi_read_seq spi_read;
   bit [15:0]	read_data;
   task body();
      modA_init = moduleA_init_seq::type_id::create("modA_init"); 
      modB_init = moduleB_init_seq::type_id::create("modB_init");
      modA_rand_data = moduleA_rand_data_seq::type_id::create("modA_rand_data");
      modB_rand_data = moduleB_rand_data_seq::type_id::create("modB_rand_data");
      spi_read = spi_read_seq::type_id::create("spi_read");
      //Do Initial Config
      fork
	 modA_init.start(spi_seqr, this);
	 modB_init.start(spi_seqr, this);
      join
      //Now start random data (These would probably be started on different sequencers for a real design) 
      fork
	 modA_rand_data.start(modA_seqr, this);
	 modB_rand_data.start(modB_seqr, this);
      join
      //Do a single read to check completion
      spi_read.read(8'h7C, read_data, spi_seqr, this);
      if (read_data != 16'hffff)
	`uvm_error(report_id, "Test Failed!")
   endtask : body
endclass : test1_seq
// -----------------------------------------------------------------------------------------------------------------
