//Worker sequence for doing initial configuration for Module A
class moduleA_init_seq extends uvm_sequence #(spi_item);
   `uvm_object_utils(moduleA_init_seq)
   const string report_id = "moduleA_init_seq";
   spi_read_seq read;
   spi_write_seq write;
   task body();
      read = spi_read_seq::type_id::create("read");
      write = spi_write_seq::type_id::create("write");
      //Configure registers in Module
      //Calling start
      write.addr = 8'h20;
      write.wdata = 16'h00ff;
      write.start(m_sequencer, this);
      //Using the write task
      write.write(8'h22, 16'h0100, m_sequencer, this);
      //Other register writes
      //Check that Module A is ready
      read.addr = 8'h2c;
      read.start(m_sequencer, this);
      if (read.rdata != 16'h0001)
	`uvm_fatal(report_id, "Module A is not ready")
   endtask : body
endclass : moduleA_init_seq
