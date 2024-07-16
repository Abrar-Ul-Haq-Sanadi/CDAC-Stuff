`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2024 17:33:09
// Design Name: 
// Module Name: tb_Adder_n_bit
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


module tb_Adder_n_bit #(parameter DATA_SIZE = 4)( );

reg [DATA_SIZE-1:0]     a_in;
reg [DATA_SIZE-1:0]     b_in;
reg                     c_in;
reg                     clk;
reg                     reset_n;
wire [DATA_SIZE-1:0]    sum_out;
wire carry_out;


adder_n_bit dut(
                .a_in(a_in),
                .b_in(b_in),
                .c_in(c_in),
                .clk(clk) , 
                .reset_n(reset_n) , 
                .carry_out(carry_out),
                .sum_out(sum_out)
                );

initial begin
a_in = 'b0;
b_in = 'b0;
c_in = 'b0;
clk = 1'b1;
reset_n= 1'b0;
#115 reset_n= 1'b1;
#1000 $finish;
end

always #10 a_in = $random;
always #20 b_in = $random;
always #30 c_in = $random;

always #5 clk = ~clk;

endmodule
