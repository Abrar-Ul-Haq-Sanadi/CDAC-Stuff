//
// The build method of a test class:
//
// Inheritance:
//
// a_seq <- b_seq <- c_seq
//
function void build_phase( uvm_phase phase );
   m_env = sot_env::type_id::create("m_env", this);
   // Set type override
   b_seq::type_id::set_type_override(c_seq::get_type());
   // Set instance override - Note the "path" argument see the line for s_a creation
   // in the run method
   a_seq::type_id::set_inst_override(c_seq::get_type(), "bob.s_a");
endfunction: build
//
// Run method
//
task run_phase( uvm_phase phase );
   a_seq s_a; // Base type
   b_seq s_b; // b_seq extends a_seq
   c_seq s_c; // c_seq extends b_seq
   phase.raise_objection( this , "start a,b and c sequences" );
   // Instance name is "s_a" - first argument,
   // path name is "bob" but is more usually get_full_name() - third argument
     s_a = a_seq::type_id::create("s_a",,"bob");
   // More usual create call
   s_b = b_seq::type_id::create("s_b");
   s_c = c_seq::type_id::create("s_c");
   s_a.start(m_env.m_a_agent.m_sequencer); // Results in c_seq being   executed
   s_b.start(m_env.m_a_agent.m_sequencer); // Results in c_seq being executed
   s_c.start(m_env.m_a_agent.m_sequencer);
   phase.drop_objection( this , "a,b and c sequences done" );
endtask: run
