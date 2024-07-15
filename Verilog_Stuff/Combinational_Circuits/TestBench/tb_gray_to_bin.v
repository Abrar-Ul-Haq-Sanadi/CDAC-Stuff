`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 11:10:21
// Design Name: 
// Module Name: tb_gray_to_bin
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


module tb_gray_to_bin(   );
reg [3:0] g_in;
wire [3:0] b_out;

gray_to_bin  uut (
                   .g_in(g_in),
                   .b_out(b_out)
                       );

initial begin
g_in = 4'b0;
end          

always #10 g_in = g_in + 1; 
initial #50 $finish;

endmodule

