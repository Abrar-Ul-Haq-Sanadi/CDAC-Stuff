`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 20:03:12
// Design Name: 
// Module Name: lab78_tb_full_adder_opt
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


module lab78_tb_full_adder_opt( );
                            reg a_in,b_in,c_in;
                            wire sum_out, carry_out;

lab78_full_adder_opt dut(
                        .a_in(a_in),
                        .b_in(b_in),
                        .c_in(c_in),
                        .sum_out(sum_out),
                        .carry_out(carry_out)
                       );

initial begin
a_in = 1'b0;
b_in = 1'b0;
c_in = 1'b0;
#10000 $finish;
end

always #10 a_in = a_in+1;
always #10 b_in = b_in+1;
always #10 c_in = c_in+1;
endmodule
