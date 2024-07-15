`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 15:11:20
// Design Name: 
// Module Name: lab36_tb_shifters
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


module lab36_tb_shifter(
    );
                    reg [3:0]D_in;
                    reg clk;
                    reg reset_n;
                    reg [1:0]control_in;
                    wire [3:0] q_out;

lab36_shifters dut(
                    .D_in(D_in),
                    .clk(clk),
                    .reset_n(reset_n),
                    .control_in(control_in),
                    .q_out(q_out)
    );
initial begin
D_in = 4'b0;
clk = 'b0;
control_in= 2'b0;
reset_n = 'b0;
 #5  reset_n = 1'b1;

 end
 
  always #20 D_in = D_in + 1;
  always #10 clk = ~clk;
  always #40 control_in =  control_in + 1;
  //  always #200 reset_n = ~reset_n;
    
    initial #500 $finish;

endmodule

