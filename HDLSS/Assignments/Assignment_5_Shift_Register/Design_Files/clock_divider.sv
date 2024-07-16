`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:36:11
// Design Name: 
// Module Name: clock_divider
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

// this is a clock divider circuit
module clock_divider(
                    input       wire        clk,
                    input       wire        reset,
                    output      reg  [29:0] clk_div
    );
    
    always @(posedge clk)
    begin
        if(!reset) begin
            clk_div <= 30'b0;
            
        end
       
        else begin
            clk_div <= clk_div + 1;
        end
    end
    
endmodule