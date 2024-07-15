`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 23:21:01
// Design Name: 
// Module Name: lab58_no_1s_func
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

// this is the RTL Design for counting the number of 1's in given 8 bit input using function

module lab58_no_1s_func(
                                input [7:0]d_in,
                                input clk, reset_n,
                                output reg [3:0] q_out
     );  

integer i ;

always @(posedge clk or negedge reset_n)
begin
    if( ~reset_n)
        q_out <= 4'b0;                              // ifreset output is zero
    else
        begin
        q_out <= sum(d_in);                         // function call for adding the number of 1's
        end
end      
       
    function [3:0] sum(input [7:0]d_in);            //function definition and declaration 
     begin                                          // logic for counting the number of 1's
         sum=0;
         for ( i=0 ; i< 8 ; i= i+1) 
         begin
                if( d_in[i] == 1'b1)
                    sum = sum + 1;
              
         end
     end
   endfunction 
endmodule
