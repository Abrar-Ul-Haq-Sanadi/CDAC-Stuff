`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 20:27:33
// Design Name: 
// Module Name: lab79_include_reset
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
 //`define INCLUDE_reset_n

module lab79_include_reset #(parameter N=8)(
            input [N-1:0] data_in,
            input clk,
            `ifdef INCLUDE_reset_n
                input reset_n,
            `endif
            output reg [N-1:0] data_out 
            );
            
            
always @(posedge clk  `ifdef INCLUDE_reset_n , negedge reset_n `endif)
begin
     `ifdef INCLUDE_reset_n
     if(!reset_n)
        data_out <= 8'b0 ;
     else
     `endif    
        data_out <= data_in ;
end    

endmodule
