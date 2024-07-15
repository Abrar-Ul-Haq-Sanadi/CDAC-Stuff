`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 13:17:04
// Design Name: 
// Module Name: half_adder
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


module half_adder(
                    reg a_in,
                    reg b_in,
                    output sum_out,
                    output carry_out
                    );
                  
assign sum_out = a_in ^ b_in;               // this is for calculating sum
assign carry_out = a_in && b_in;            // this is for calculating the carry

endmodule
