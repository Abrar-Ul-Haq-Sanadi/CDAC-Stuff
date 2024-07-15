`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2024 09:25:27
// Design Name: 
// Module Name: lab38_freq_DIv_3
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

module lab38_freq_DIv_3(
                        input clk,
                        input reset_n,
                        output f0
    );
    
   reg [1:0]q;
 always @(posedge clk or negedge reset_n)
    begin
    if(!reset_n)  
            q[1:0]<= 2'b0;
    else
        begin
            if(q == 2'b10)
                q <= 2'b00;
            else
            begin
                q <= q + 1'b1;   
                
            end                 
        end
     end
 
 assign  f0 = q[1];     
endmodule
