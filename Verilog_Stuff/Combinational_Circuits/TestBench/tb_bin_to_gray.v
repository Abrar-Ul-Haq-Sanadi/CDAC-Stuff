`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 10:25:36
// Design Name: 
// Module Name: tb_bin_to_gray
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


module tb_bin_to_gray  (    );
reg [3:0] b_in;
wire [3:0] g_out;

binary_to_gray  uut (
                   .b_in(b_in),
                   .g_out(g_out)
                       );

initial begin
b_in = 4'b0;
end          

always #10 b_in = b_in + 1; 
initial #50 $finish;
endmodule
