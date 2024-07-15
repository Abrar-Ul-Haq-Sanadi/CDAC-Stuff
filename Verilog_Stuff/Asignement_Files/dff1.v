`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 13:19:42
// Design Name: 
// Module Name: dff1
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


module dff1(            input [15:0]a_in,
                        input [15:0]b_in,
                        input [3:0]opcode,
                        input clk,reset_n,
                        output reg [15:0]a_in_Reg,
                        output reg [15:0]b_in_Reg,
                        output reg [15:0]opcode_Reg

                                                );
                        
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        begin
            a_in_Reg <= 16'b0 ; 
            b_in_Reg <= 16'b0 ;
            opcode_Reg <= 4'b0;

         end
    else
        begin
            a_in_Reg <= a_in ; 
            b_in_Reg <= b_in ;
            opcode_Reg <= opcode;;       
        end
end
endmodule

