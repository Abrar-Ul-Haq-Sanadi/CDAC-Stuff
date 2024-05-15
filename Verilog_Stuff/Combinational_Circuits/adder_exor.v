`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 10:41:59
// Design Name: 
// Module Name: adder_exor
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


module adder_xor(
                        reg  a_in,
                        reg  b_in,
                        reg  c_in, 
                        reg control_in,
                        output result_out,
                        output carry_out
    );

wire s;
assign s = b_in ^ control_in;

full_adder f(
                     .a_in(a_in),
                     .b_in(s),
                     .c_in(c_in),
                     .sum_out(result_out),
                     .carry_out(carry_out)
                   );    


endmodule
