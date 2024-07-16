`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 17:13:37
// Design Name: 
// Module Name: tb_async_assert_deassert
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


module tb_async_assert_deassert();

reg reset_in;
wire reset_out;

async_assert_deassert dut (reset_in, reset_out);

always #20 reset_in = ~reset_in;

initial
begin
    reset_in = 'b0;
    
    #500 $finish();
end

endmodule

