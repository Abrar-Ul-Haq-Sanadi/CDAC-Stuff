`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 08:18:40
// Design Name: 
// Module Name: lab30_DownCount_2bit
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


module lab30_DownCount_2bit(
                            input clk,
                            input reset_in,
                            output reg [1:0] q_out                         
    );
    always @(posedge clk or negedge reset_in)
    begin
            if(!reset_in)
                q_out <= 2'b00;
            else 
                q_out <= q_out - 1;                    
    end
endmodule
