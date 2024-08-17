class env extends uvm_env;
    `uvm_component_utils(env)

    agent agt;
    scoreboard sco;

    function new(input string name = "env", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agt = agent::type_id::create("agt", this);
        sco = scoreboard::type_id::create("sco", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        agt.mon.ap.connect(sco.imp);
    endfunction
endclass