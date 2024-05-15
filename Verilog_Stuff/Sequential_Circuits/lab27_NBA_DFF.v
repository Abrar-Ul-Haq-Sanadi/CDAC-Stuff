`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 19:36:00
// Design Name: 
// Module Name: lab27_NBA_DFF
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


module lab27_NBA_DFF(
                    input d_in,
                    input clk,
                    input reset_in,
                    output reg q_out
                    );

reg y1, y2;

always @(posedge clk or negedge reset_in)
begin
    if(!reset_in)
    begin
        y1 <= 1'b0;
        y2 <= 1'b0;
        q_out <= 1'b0;
    end
    else
    begin
        y1 <= d_in;
        y2 <= y1;
        q_out <= y2;
    end
end

endmodule
