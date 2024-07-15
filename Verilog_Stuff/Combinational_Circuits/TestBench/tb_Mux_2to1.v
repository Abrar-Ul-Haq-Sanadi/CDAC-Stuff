`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 15:11:11
// Design Name: 
// Module Name: tb_Mux_2to1
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


module tb_Mux_2to1(    );
reg a_in;
reg b_in;
reg sel_in;
wire y_out;

mux_2_1_proc dut(
                         .a_in(a_in),
                         .b_in(b_in),
                         .sel_in(sel_in),
                         .y_out(y_out)                
    );

initial begin
a_in = 1'b0;
b_in = 1'b0;
sel_in = 1'b0;
end    
    
always #5 a_in = ~a_in;
always #10 b_in = ~b_in;
always #15 sel_in = ~sel_in;

initial #200 $finish;
  
endmodule


