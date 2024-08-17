
// Declare the suffixes that will be appended to the imps and functions
`uvm_analysis_imp_decl(_BEFORE)
`uvm_analysis_imp_decl(_AFTER)

class delay_analyzer extends uvm_component;
   `uvm_component_utils(delay_analyzer)
   // Declare the imps using the suffixes declared above.
   // The first parameter is the transaction type.
   // The second parameter is the type of component that implements the interface
   // Usually, the second parameter is the same as the containing component type
   uvm_analysis_imp_BEFORE #(alu_txn, delay_analyzer) before_export;
   uvm_analysis_imp_AFTER #(alu_txn, delay_analyzer) after_export;
   real m_before[$];
   real	m_after[$]; 
   real	last_b_time,last_a_time;
   real	longest_b_delay, longest_a_delay;
   
   function new( string name , uvm_component parent) ;
      super.new( name , parent ); last_b_time = 0.0;
      last_a_time = 0.0;
   endfunction
   
   // Implement the interface function by appending the function name with
   // the suffix declared in the macro above.
   function void write_BEFORE(alu_txn t);
      real delay;
      delay = $realtime - last_b_time; last_b_time = $realtime; 
      m_before.push_back(delay);
   endfunction

   // Implement the interface function by appending the function name with
   // the suffix declared in the macro above.
   function void write_AFTER(alu_txn t);
      real delay;
      delay = $realtime - last_a_time; last_a_time = $realtime; m_after.push_back(delay);
   endfunction // write_AFTER
   
   function void build_phase( uvm_phase phase );
      // The second argument to the imp constructor is a handle to the object
      // that implements the interface functions. It should be of the type
      // specified in the declaration of the imp. Usually, it is "this".
      before_export = new("before_export", this); 
      after_export = new("after_export", this);
   endfunction
   
   function void extract_phase( uvm_phase phase );
      foreach (m_before[i])
	if (m_before[i] > longest_b_delay) 
	  longest_b_delay = m_before[i];
      foreach (m_after[i])
	if (m_after[i] > longest_a_delay) 
	  longest_a_delay = m_after[i];
   endfunction
   
   function void check_phase( uvm_phase phase );
      if (longest_a_delay > 100.0) begin
	 `uvm_warning("Delay Analyzer", $sformatf("Transaction delay too long: %5.2f",longest_a_delay))
      end
      if (longest_b_delay > 100.0) begin
	 `uvm_warning("Delay Analyzer", $sformatf("Transaction delay too long: %5.2f",longest_a_delay))
      end
   endfunction
   
   function void report_phase( uvm_phase phase );
      `uvm_info("Delay Analyzer", $sformatf("Longest BEFORE delay:%5.2f", longest_b_delay), UVM_LOW)
      `uvm_info("Delay Analyzer", $sformatf("Longest AFTER delay:%5.2f", longest_a_delay), UVM_LOW)
   endfunction
endclass
