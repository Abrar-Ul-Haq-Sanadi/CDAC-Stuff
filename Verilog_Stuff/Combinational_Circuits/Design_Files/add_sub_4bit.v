`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 17:27:13
// Design Name: 
// Module Name: add_sub_4bit
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


module add_sub_4bit #(parameter DATA_SIZE=4)(
                              reg [DATA_SIZE-1:0] a_in,
                              reg [DATA_SIZE-1:0] b_in,
                              reg control_in,
                              output reg [DATA_SIZE-1:0] result_out,
                              output reg carry_out
                                       );

     always @(*)
     begin
        if(control_in==0)
            begin
                {carry_out, result_out} = a_in + b_in ;
             end
        else
            begin
                {carry_out, result_out} = a_in - b_in ;
            end  
            
     end
         
endmodule
