// test.sv
`include "uvm_macros.svh"
import uvm_pkg::*;


class test extends uvm_test;
    `uvm_component_utils(test)

    generator gen;
    env e;

    function new(input string name = "test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        gen = generator::type_id::create("gen");
        e = env::type_id::create("e", this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        gen.start(e.agt.seqr);
        #50;
        phase.drop_objection(this);
    endtask
endclass