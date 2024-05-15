`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 20:08:49
// Design Name: 
// Module Name: lab_24_active_low_Synch_Reset_DFF
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


module lab_24_active_low_Synch_Reset_DFF(
                            input d_in,
                            input clk,
                            input reset_in,
                            output reg q_out                       
    );
    
    always @(posedge clk)
    begin
            if(!reset_in)
                q_out <= 1'b0;
            else
                q_out <= d_in;
    end
endmodule
