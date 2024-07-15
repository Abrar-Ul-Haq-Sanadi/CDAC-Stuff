`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 19:56:45
// Design Name: 
// Module Name: lab63_tb_101_overlap_moore
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




module lab63_tb_101_overlap_moore();
                        reg d_in;
                        reg clk, reset_n;
                        wire q_out;


lab63_101_overlap_moore uut(
                         .d_in(d_in),
                         .clk(clk), .reset_n(reset_n),
                         .q_out(q_out)
    );

initial begin
clk = 1'b0;
reset_n = 1'b1;
d_in = 1'b0;

#20000 $finish;
end
always #10 d_in = $random();
always #8 clk = ~clk;
endmodule
