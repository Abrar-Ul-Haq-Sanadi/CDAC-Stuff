
// scoreboard.sv
class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    uvm_analysis_imp #(transaction, scoreboard) imp;

    function new(input string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
        imp = new("imp", this);
    endfunction

    virtual function void write(input transaction t);
        `uvm_info("SCO", $sformatf("Received from Monitor: a = %0b, b = %0b, bin = %0b, diff = %0b, bout = %0b", t.a, t.b, t.bin, t.diff, t.bout), UVM_NONE);
        if ((t.diff == (t.a ^ t.b ^ t.bin)) && (t.bout == (~t.a & (t.b ^ t.bin)) | (t.b & t.bin)))
            `uvm_info("SCO", "PASS", UVM_NONE)
        else
            `uvm_info("SCO", "FAILED", UVM_NONE);
    endfunction
endclass