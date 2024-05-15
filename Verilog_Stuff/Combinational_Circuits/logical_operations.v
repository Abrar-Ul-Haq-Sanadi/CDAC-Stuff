`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 12:20:49
// Design Name: 
// Module Name: logical_operations
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


module logical_operations(
                reg a_in,
                reg b_in,
                output y1_out,
                output y2_out,
                output y3_out  ); 

//functionality of the design
// all three continous assignments will be ecextuded concureently
assign y2_out = a_in  || b_in;
assign y1_out = a_in && b_in;

assign y3_out = !a_in;
   
endmodule
