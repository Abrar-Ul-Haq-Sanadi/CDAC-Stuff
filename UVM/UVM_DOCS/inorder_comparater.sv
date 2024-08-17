class comparator_inorder extends uvm_component;
   `uvm_component_utils(comparator_inorder)
   uvm_analysis_export #(alu_txn) before_export;
   uvm_analysis_export #(alu_txn) after_export;
   uvm_tlm_analysis_fifo #(alu_txn) before_fifo,after_fifo;
   int m_matches, m_mismatches;

   function new( string name , uvm_component parent) ;
      super.new( name , parent );
      m_matches = 0;
      m_mismatches = 0;
   endfunction // new
   
   function void build_phase( uvm_phase phase );
      before_fifo = new("before_fifo", this);
      after_fifo = new("after_fifo", this);
      before_export = new("before_export", this);
      after_export = new("after_export", this);
   endfunction // build_phase
   
   function void connect_phase( uvm_phase phase );
      before_export.connect(before_fifo.analysis_export);
      after_export.connect(after_fifo.analysis_export);
   endfunction // connect_phase
   
   task run_phase( uvm_phase phase );
      alu_txn before_txn, after_txn;
      forever 
	begin
	   before_fifo.get(before_txn);
	   after_fifo.get(after_txn);
	   if (!before_txn.compare(after_txn)) begin
	      `uvm_error("Comparator Mismatch",
			 $sformatf("%s does not match %s",before_txn.convert2string(), after_txn.convert2string()))
	      m_mismatches++;
	   end 
	   else 
	     begin
		m_matches++;
	     end
	end
   endtask // run_phase
   
   function void report_phase( uvm_phase phase );
      `uvm_info("Inorder Comparator", $sformatf("Matches: %0d",	m_matches), UVM_LOW)
      `uvm_info("Inorder Comparator", $sformatf("Mismatches: %0d", m_mismatches), UVM_LOW)
   endfunction // report_phase
   
endclass
