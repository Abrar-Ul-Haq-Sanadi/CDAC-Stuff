`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 11:54:42
// Design Name: 
// Module Name: lab33_upcount
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


module lab33_upcount(
                    input clk, reset_n,
                    output reg [3:0]q_out
    );
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
        begin
            q_out <= 4'b0001;
        end
        else 
        begin
                if(q_out == 4'b1000)
                    q_out <= 4'b0001;
                else
                   // q_out <= q_out * 4'b0010;
                    q_out <= q_out << 1;
        end 
    end
endmodule
