// monitor.sv
class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(transaction) ap;
    virtual full_subtractor_if fs_if;
    transaction tr;

    function new(input string name = "monitor", uvm_component parent = null);
        super.new(name, parent);
        ap = new("ap", this);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db #(virtual full_subtractor_if)::get(this, "", "fs_if", fs_if))
            `uvm_error("[MON]", "Error Encoountered while accesing the uvm_config_db");
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            #10;
            tr = transaction::type_id::create("tr");
            tr.a = fs_if.a;
            tr.b = fs_if.b;
            tr.bin = fs_if.bin;
            tr.diff = fs_if.diff;
            tr.bout = fs_if.bout;
            `uvm_info("[MON]", $sformatf("Monitor-->: a = %0b, b = %0b, bin = %0b, diff = %0b, bout = %0b", tr.a, tr.b, tr.bin, tr.diff, tr.bout), UVM_NONE);
            ap.write(tr);
        end
    endtask
endclass