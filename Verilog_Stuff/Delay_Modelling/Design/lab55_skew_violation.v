`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 20:29:48
// Design Name: 
// Module Name: lab55_skew_violation
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


module lab55_skew_violation(
                input d_in1, d_in2,
                input clk1, clk2,
                input reset_n,
                output reg q_out1, q_out2
                 
    );

always @(posedge clk1 or negedge reset_n)
begin
    if(!reset_n)
        q_out1 <= 1'b0;
    else 
        q_out1 <= d_in1;

end

always @(posedge clk2 or negedge reset_n)
begin
    if(!reset_n)
        q_out2 <= 1'b0;
    else 
        q_out2 <= d_in2;

end
    
endmodule
