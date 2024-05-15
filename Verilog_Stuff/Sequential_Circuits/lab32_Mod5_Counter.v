`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 10:50:34
// Design Name: 
// Module Name: lab32_Mod5_Counter
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


module lab32_Mod5_Counter(
                    input clk,
                    input reset_n,
                    output reg [2:0]q_out                 
    );
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 3'b000;
        else
            begin
                if(q_out == 3'b100)
                    q_out <= 3'b000;
                else
                    q_out <= q_out + 1;
            end
     end
endmodule
