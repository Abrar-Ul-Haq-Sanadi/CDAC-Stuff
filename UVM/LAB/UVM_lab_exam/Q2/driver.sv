// driver.sv
class driver extends uvm_driver #(transaction);
    `uvm_component_utils(driver)

    virtual full_subtractor_if fs_if;
    transaction tr;

    function new(input string name = "driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db #(virtual full_subtractor_if)::get(this, "", "fs_if", fs_if))
            `uvm_error("DRV", "Error encountered to acces the uvm_config_db");
    endfunction



    virtual task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(tr);
            fs_if.a <= tr.a;
            fs_if.b <= tr.b;
            fs_if.bin <= tr.bin;
            `uvm_info("[DRV]", $sformatf("Driving DUT: a = %0b, b = %0b, bin = %0b", tr.a, tr.b, tr.bin), UVM_NONE);
            seq_item_port.item_done();
            #10;
        end
    endtask
endclass