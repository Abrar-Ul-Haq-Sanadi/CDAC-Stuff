`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 10:58:09
// Design Name: 
// Module Name: asunch_reset_d
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


module asynch_reset_d(
                    input d_in, clk, reset_n, 
                    output reg d_out
    );
    always @(posedge clk or negedge reset_n)
    begin
        if(~reset_n)
            d_out <= 1'b0;
        else
            d_out <= d_in;    
    end
endmodule
