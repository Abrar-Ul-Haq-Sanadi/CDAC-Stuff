`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 19:22:45
// Design Name: 
// Module Name: lab26_tb_DFF_BA
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


module lab26_tb_DFF_BA( );

                    reg d_in;
                    reg clk;
                    reg reset_in;
                    wire q_out;

lab26_DFF_BA dut(
                     .d_in(d_in),
                    .clk(clk),
                    .reset_in(reset_in),
                    .q_out(q_out)
                    );
 
 initial begin
 d_in = 1'b0;
 clk = 1'b0;
 reset_in = 1'b1;
 #50 reset_in = 1'b0;
 #10 reset_in = 1'b1;
 end
 always #7 d_in = ~d_in;
 always #10 clk = ~clk;
endmodule
