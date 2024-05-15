`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 10:38:07
// Design Name: 
// Module Name: gray_to_bin
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


module gray_to_bin(
            reg [3:0] g_in ,
            output [3:0] b_out );
    
assign b_out[3] = g_in[3];
assign b_out[2] = b_out[3]^g_in[2];
assign b_out[1] = b_out[2]^g_in[1];
assign b_out[0] = b_out[1]^g_in[0];

endmodule
