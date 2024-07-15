`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 12:31:10
// Design Name: 
// Module Name: lab34_downCount
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

//counting the sequence -- 8-4-2-1-8-4-2-1- (ring counter)
module lab34_downCount(
                            input clk, reset_n,
                            output reg [3:0]q_out
    );
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 4'b1000;
        else
//            begin
//                if(q_out == 4'b0001)
//                    q_out <= 4'b1000;
//                else
//                   q_out <= q_out >> 1 ;
  
//            end

         q_out <= {q_out[0], q_out[3:1]};
    
    end
endmodule
