`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 09:51:07
// Design Name: 
// Module Name: lab69_tb_one_hot_encoding_mealy
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


module lab69_tb_one_hot_encoding_mealy();
                     reg d_in, clk, reset_n;
                     wire q_out;

lab69_101_0ne_hot_encoding_mealy dut (
                        .d_in(d_in),
                        .clk(clk),
                        .reset_n(reset_n),
                        .q_out(q_out)
                        ); 

initial begin
d_in = 1'b0;
clk = 1'b0;
reset_n = 1'b0;
end

always #5 clk = ~clk;
always #250 reset_n = ~reset_n;
always #10 d_in = $random();

initial #2000 $finish;
                   
endmodule
