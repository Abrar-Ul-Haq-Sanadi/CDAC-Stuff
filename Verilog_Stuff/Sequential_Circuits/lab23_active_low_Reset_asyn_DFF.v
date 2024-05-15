`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 19:23:08
// Design Name: 
// Module Name: lab23_active_low_Reset_asyn_DFF
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


module lab23_active_low_Reset_asyn_DFF(
                                        input d_in,
                                        input reset_in,
                                        input clk,
                                        output reg q_out
    );

always @(posedge clk or negedge reset_in)
    begin
        if(!reset_in)
            q_out <= 1'b0;
        else
            q_out <= d_in;   
    end

endmodule
