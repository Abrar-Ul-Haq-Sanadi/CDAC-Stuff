`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 16:20:08
// Design Name: 
// Module Name: lab75_add_sub_16bit_optimised
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


module lab75_add_sub_16bit_optimised #(parameter N = 16)(
                            input [N-1:0] a_in, b_in, 
                            input opcode,
                            output reg [N-1:0]result_out,
                            output reg carry_out
    );
reg [15:0]b_input;    
always @(*)
begin
    if(opcode)
       begin
            b_input = ~b_in ;
       end
    else
        begin
            b_input = b_in ;
        end
        
        
{carry_out, result_out} = a_in + b_input + opcode ;
end 
    
endmodule
