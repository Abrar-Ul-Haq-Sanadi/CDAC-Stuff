`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 21:51:16
// Design Name: 
// Module Name: lab29_tb_counter_2bit
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


module lab29_tb_counter_2bit();
                            reg clk;
                            reg reset_in;
                            wire [1:0]q_out;
    
lab29_counter_2bit uut(
                           .clk(clk), 
                           .reset_in(reset_in),
                           .q_out(q_out)
    );
   initial begin
        clk = 1'b0;
        reset_in = 1'b0;
       #100 reset_in = 1'b1;
       
   end   
always #10 clk = ~clk;
initial #500 $finish;

endmodule
