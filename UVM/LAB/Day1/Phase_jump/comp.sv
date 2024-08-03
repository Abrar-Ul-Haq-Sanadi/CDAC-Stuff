
class component extends uvm_component;

		`uvm_component_utils(component)

			component comp;

		function new(string name, uvm_component parent);
			super.new(name, parent);	
		endfunction 

		//Build phase
		function build_pahse (uvm_phase phase);
			super.build_pahse(phase);
			`uvm_info(get_type_name(), $sformatf("This is the Build Phase Component"), UVM_MEDIUM);			
		endfunction

		function create_phase (uvm_phase phase);
			super.create_phase(phase);
			`uvm_info(get_type_name(), $sformatf("This is the create Phase Component"), UVM_MEDIUM);			
		endfunction

		function end_of_elaboration (uvm_phase phase);
			super.end_of_elaboration(phase);
		//	phase.jump(uvm_end_of_elaboration::get());

			`uvm_info(get_type_name(), $sformatf("This is the End Of Elaboration Phase Component"), UVM_MEDIUM);			
		endfunction


		function start_of_simulation (uvm_phase phase);
			super.start_of_simulation(phase);
			`uvm_info(get_type_name(), $sformatf("This is the start_of_simulation Phase Component"), UVM_MEDIUM);			
		endfunction

		task run (uvm_phase phase);
			super.run(phase);
			`uvm_info(get_type_name(), $sformatf("This is the Run Phase Component"), UVM_MEDIUM);			
		endtask

		function report (uvm_phase phase);
			super.report(phase);
			
			comp.jump(this.end_of_elaboration(/*uvm_phase phase*/));
			`uvm_info(get_type_name(), $sformatf("This is the report Phase Component"), UVM_MEDIUM);		

		endfunction


endclass