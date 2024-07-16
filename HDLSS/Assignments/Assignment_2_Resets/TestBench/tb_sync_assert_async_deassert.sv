`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 16:47:27
// Design Name: 
// Module Name: tb_sync_assert_async_deassert
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


module tb_sync_assert_async_deassert();


reg clk, reset_in;
wire reset_out;

sync_assert_async_deassert dut (clk, reset_in, reset_out);

always #5 clk = ~clk;
always #50 reset_in = ~reset_in;

initial
begin
    clk = 'b0;
    reset_in = 'b0;
    
    #500 $finish();
end

endmodule
