// top.sv
`include "Interface.sv"
`include "Design_Full_substractor.sv"
`include "transaction.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "agent.sv"
`include "environment.sv"
`include "test.sv"


module top();
    full_subtractor_if fs_if();

    full_subtractor dut (
        .a(fs_if.a),
        .b(fs_if.b),
        .bin(fs_if.bin),
        .diff(fs_if.diff),
        .bout(fs_if.bout)
    );

    initial begin
        uvm_config_db #(virtual full_subtractor_if)::set(null, "uvm_test_top.e.agt*", "fs_if", fs_if);
        run_test("test");
    end
endmodule