`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 20:55:21
// Design Name: 
// Module Name: lab25_frequency_div_2
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


module lab25_frequency_div_2(
                            input clk,
                            input reset_in,
                            output reg freq2 ,  
                            output reg freq4                                              
    );

always @(posedge clk or negedge reset_in)
begin
    if(!reset_in)
        freq2 <= 1'b0;
    else
        freq2 <= ~freq2 ;
      
end   

always @(posedge freq2 or negedge reset_in)
begin
    if(!reset_in)
        freq4 <= 1'b0;
    else
        freq4 <= ~freq4 ; 
end   

endmodule
