`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 21:46:23
// Design Name: 
// Module Name: lab29_counter_2bit
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


module lab29_counter_2bit(
                            input clk, reset_in,
                            output reg [1:0]q_out
    );
    
    always @(posedge clk or negedge reset_in)
    begin
        if(!reset_in)
            q_out <= 2'b0;
        else
            q_out <= q_out + 'b1;     
    end
endmodule
