`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 10:40:18
// Design Name: 
// Module Name: adder_sub_4bit
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


module adder_sub_4bit(
                        reg [3:0]a_in,
                        reg [3:0]b_in,
                        reg control_in,
                        output [3:0]result_out,
                        output carry_out
    );

wire co0, co1, co2;

adder_xor f0(
                        .a_in(a_in[0]),             //part select
                        .b_in(b_in[0]), 
                        .c_in(control_in),
                        .control_in(control_in),
                        .result_out(result_out[0]),
                        .carry_out(co0)
    );
    
adder_xor f1(
                        .a_in(a_in[1]),             //part select
                        .b_in(b_in[1]), 
                        .c_in(co0),
                        .control_in(control_in),
                        .result_out(result_out[1]),
                        .carry_out(co1)
    );
    
adder_xor f2(
                        .a_in(a_in[2]),             //part select
                        .b_in(b_in[2]), 
                        .c_in(co1),
                        .control_in(control_in),
                        .result_out(result_out[2]),
                        .carry_out(co2)
    );
    
adder_xor f3(
                        .a_in(a_in[3]),             //part select
                        .b_in(b_in[3]), 
                        .c_in(co2),
                        .control_in(control_in),
                        .result_out(result_out[3]),
                        .carry_out(carry_out)
    );
    
endmodule




