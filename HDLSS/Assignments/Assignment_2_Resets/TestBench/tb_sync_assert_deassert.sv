`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 16:55:34
// Design Name: 
// Module Name: tb_sync_assert_deassert
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_sync_assert_deassert();

reg clk, reset_in;
wire reset_out;

sync_assert_deassert dut (clk, reset_in, reset_out);

always #5 clk = ~clk;
//always #10 d_in = $random();
always #100 reset_in = ~reset_in;

initial
begin
//    d_in = 'b0;
    clk = 'b0;
    reset_in = 'b0;
    
    #500 $finish();
end
endmodule

