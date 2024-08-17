// sequence.sv
class sequence extends uvm_sequence #(transaction);
    `uvm_object_utils(sequence)

    transaction t;

    function new(input string name = "sequence");
        super.new(name);
    endfunction

    virtual task body();
        t = transaction::type_id::create("t");
        repeat(10) begin
            start_item(t);
            t.randomize();
            `uvm_info("SEQ", $sformatf("Data sent to Driver: a = %0b, b = %0b, bin = %0b", t.a, t.b, t.bin), UVM_NONE);
            finish_item(t);
        end
    endtask
endclass
