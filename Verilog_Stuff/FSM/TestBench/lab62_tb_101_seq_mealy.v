`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 17:02:05
// Design Name: 
// Module Name: lab62_tb_101_seq_mealy
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


module lab62_tb_101_seq_mealy();
                        reg d_in;
                        reg clk, reset_n;
                        wire q_out;


lab62_101_Seq_mealy uut(
                         .d_in(d_in),
                         .clk(clk), .reset_n(reset_n),
                         .q_out(q_out)
    );

initial begin
clk = 1'b0;
reset_n = 1'b1;
d_in = 1'b0;

#2000 $finish;
end
always #10 d_in = $random();
always #8 clk = ~clk;
endmodule
