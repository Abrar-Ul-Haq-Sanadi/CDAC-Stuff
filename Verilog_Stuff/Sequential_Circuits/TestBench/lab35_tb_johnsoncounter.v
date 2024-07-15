`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 14:21:16
// Design Name: 
// Module Name: lab35_tb_johnsoncounter
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

module lab35_tb_johnsoncounter(
    );
                    reg clk;
                    reg reset_n;
                    wire [3:0] q_out;

lab35_johnsoncounter dut(
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

