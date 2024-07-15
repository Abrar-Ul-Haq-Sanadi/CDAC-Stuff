`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 22:53:36
// Design Name: 
// Module Name: lab57_no_of_1s_Func
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


module lab57_no_of_1s_Func(
                                input [7:0]a_in,
                                input [7:0]b_in,
                                output [7:0]q_out 
                                
    );
  
  assign q_out = xor_op (a_in, b_in);           // caling a function
    
  function [7:0] xor_op (input [7:0] a,b);    //defining the function
  begin
    xor_op = a ^ b;
  end
  endfunction  
    
endmodule
