`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 14:44:26
// Design Name: 
// Module Name: lab50_SetupHold_violation
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


module lab50_SetupHold_violation(
                          input d_in,
                          input clk, reset_n,
                          output reg q_out
                         
    );
    
    
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 1'b0;
        else
            q_out <= d_in;
    end
    
    specify
    specparam tsu = 1;
    specparam th = 1;
    
    $setuphold (posedge clk, d_in, tsu, th);

    endspecify
    
endmodule
