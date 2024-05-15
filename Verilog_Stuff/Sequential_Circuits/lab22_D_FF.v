`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 19:32:48
// Design Name: 
// Module Name: lab22_D_FF
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


module lab22_D_FF(
                    input D_in,
                    input clk,
                    output reg q_out
                    );
always @(posedge clk)
begin
q_out <= D_in;
end

endmodule
