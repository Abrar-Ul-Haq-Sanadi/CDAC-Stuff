`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 15:56:31
// Design Name: 
// Module Name: lab83_Full_Adder_UDP
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


module lab83_Full_Adder_UDP(
                output sum_out, carry_out,
                input a_in, b_in , c_in 
    );
    
lab83_Sum_out_UDP uut1 (
                        .sum_out(sum_out),
                        .a_in(a_in), .b_in(b_in_), .c_in(c_in) 
                        );
    
lab83_Carry_out_UDP uut2(
                        .carry_out(carry_out),
                        .a_in(a_in), .b_in(b_in_), .c_in(c_in) 
                        );   
    
    
endmodule
