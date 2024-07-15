`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 14:59:29
// Design Name: 
// Module Name: lab82_tb_and_UDP
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

// In this test bench we are instatiating the And and Xor gate modules done using
// primitives
// for building the Half Adder Circuit

module lab82_tb_Half_adder_UDP(    );
                wire sum_out, carry_out;
                reg a_in;
                reg b_in;

 and_UDP dut(
                .and_out(carry_out),
                .a_in(a_in),
                .b_in(b_in)
                );
                
 lab82_xor_UDP dut2(
                .xor_out(sum_out),
                .a_in(a_in),
                .b_in(b_in)
                );

initial begin
a_in = 1'b0;
b_in = 1'b0;
#500 $finish;
end

always #10 a_in = a_in +1;
always #20 b_in = b_in +1;

           
endmodule