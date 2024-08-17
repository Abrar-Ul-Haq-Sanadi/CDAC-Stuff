class transaction extends uvm_sequence_item;
    rand bit a;
    rand bit b;
    rand bit bin;
    bit diff;
    bit bout;

    `uvm_object_utils_begin(transaction)
        `uvm_field_int(a, UVM_DEFAULT)
        `uvm_field_int(b, UVM_DEFAULT)
        `uvm_field_int(bin, UVM_DEFAULT)
        `uvm_field_int(diff, UVM_DEFAULT)
        `uvm_field_int(bout, UVM_DEFAULT)
    `uvm_object_utils_end

    function new(string name = "transaction");
        super.new(name);
    endfunction

endclass