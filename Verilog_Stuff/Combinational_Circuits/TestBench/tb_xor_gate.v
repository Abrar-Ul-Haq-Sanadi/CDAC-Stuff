`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 13:02:14
// Design Name: 
// Module Name: tb_xor_gate
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


module tb_xor_gate( );
reg a_in;
reg b_in;
wire y_out;

xor_gate dut (
                .a_in(a_in),
                .b_in(b_in),
                .y_out(y_out)
                );
initial 
begin
a_in = 1'b0;
b_in = 1'b0;
#100 $finish();
end

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;

endmodule
