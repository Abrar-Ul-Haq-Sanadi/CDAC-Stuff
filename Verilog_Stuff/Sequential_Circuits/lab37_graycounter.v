`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 16:40:15
// Design Name: 
// Module Name: lab37_graycounter
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


module lab37_graycounter(
                        input clk,
                        input reset_n,
                        output reg [1:0] q_out
                        );
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        q_out <= 2'b00;
    else
    begin
        //q_out[0] <= q_out[0];
        //q_out[1] <= ~q_out[1];
       q_out <= {q_out[0], ~q_out[1]};
    end
end
endmodule
