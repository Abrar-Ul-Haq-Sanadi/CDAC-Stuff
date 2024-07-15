`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 14:13:41
// Design Name: 
// Module Name: lab49_setup_hold_violation
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


module lab49_setup_hold_violation(
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
    
    $setup(d_in, posedge clk, tsu);
    
    $hold(posedge clk, d_in, th);

    endspecify
    
endmodule
