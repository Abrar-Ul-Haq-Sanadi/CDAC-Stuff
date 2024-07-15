`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 20:48:12
// Design Name: 
// Module Name: lab64_tb_101_Non_overlap_Moore
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


module lab64_tb_101_Non_overlap_Moore(      );
reg d_in, clk, reset_n;
wire q_out;

lab64_101_Non_overlap_Moore uut(
            .d_in(d_in), .clk(clk) , .reset_n(reset_n),
            .q_out(q_out)
            );

initial begin
clk = 1'b0;
reset_n = 1'b0;
d_in = 1'b0;
end

always #5 clk = ~clk;
always #250 reset_n = ~reset_n;
always #10 d_in = $random();

initial #2000 $finish;

endmodule
