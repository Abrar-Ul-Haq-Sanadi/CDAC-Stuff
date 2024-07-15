`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 15:28:08
// Design Name: 
// Module Name: tb_adder_8bit
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


module tb_adder_8bit(    );
reg [7:0]a_in;
reg [7:0]b_in;
wire [7:0]sum_out;
wire carry_out;

adder_8bit uut(
                         .a_in(a_in),
                         .b_in(b_in),
                         .sum_out(sum_out),
                         .carry_out(carry_out)
    );
    
initial begin
a_in = 8'b0;
b_in = 8'b0;
end

always #5  a_in = a_in+1;
always #10 b_in = b_in+1;

initial #1000 $finish;
endmodule
