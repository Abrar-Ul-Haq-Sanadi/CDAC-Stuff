`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 12:36:40
// Design Name: 
// Module Name: lab34_tb_downCount
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


module lab34_tb_downCount(
    );
                    reg clk;
                    reg reset_n;
                    wire [3:0] q_out;

lab34_downCount dut(
                    .clk(clk),
                    .reset_n(reset_n),
                    .q_out(q_out)
    );
initial begin
clk = 'b0;
reset_n = 'b0;
 #5  reset_n = 1'b1;
 end
  always #10 clk = ~clk;
  //  always #200 reset_n = ~reset_n;
    
    initial #500 $finish;

endmodule
