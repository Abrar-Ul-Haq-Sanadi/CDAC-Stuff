`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 19:39:01
// Design Name: 
// Module Name: lab27_tb_NBA_DFF
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


module lab27_tb_DFF_BA( );

                    reg d_in;
                    reg clk;
                    reg reset_in;
                    wire q_out;



lab27_NBA_DFF dut(
                     .d_in(d_in),
                    .clk(clk),
                    .reset_in(reset_in),
                    .q_out(q_out)   
                    );
 
 initial begin
 d_in = 1'b0;
 clk = 1'b0;
 reset_in = 1'b1;
// #50 reset_in = 1'b1;
 //#10 reset_in = 1'b0;
 end
 always #7 d_in = ~d_in;
 always #10 clk = ~clk;
endmodule
