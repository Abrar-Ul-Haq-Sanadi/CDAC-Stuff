`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 15:50:19
// Design Name: 
// Module Name: lab52_nochange_violation
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


module lab52_nochange_violation(
                          input d_in,
                          input clk, reset_n,
                          output reg q_out
                         
    );

always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 1'b0;
        else
            q_out <= d_in;
    end
endmodule

