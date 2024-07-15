`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 19:25:27
// Design Name: 
// Module Name: lab77_half_adder
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


module lab77_half_adder(
                input a_in , b_in, 
                output sum_out, carry_out
    );
    
   assign { carry_out, sum_out } = a_in + b_in ;
    
endmodule
