`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:31:36
// Design Name: 
// Module Name: clk_div2
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


module clk_div2(
                input clk,
                input reset_n,
                output reg clk_div2
    );
    
    always @(posedge clk , negedge reset_n)
    begin
        if(!reset_n) begin
            clk_div2 <= 1'b0;
        end
        else begin
            clk_div2 <= ~clk_div2;
        end      
    end
    
endmodule
