`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 23:44:14
// Design Name: 
// Module Name: lab47_setup_violation_task
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


module lab47_setup_violation_task(
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
    $setup(d_in, posedge clk , tsu);
endspecify
    
   endmodule 
  

