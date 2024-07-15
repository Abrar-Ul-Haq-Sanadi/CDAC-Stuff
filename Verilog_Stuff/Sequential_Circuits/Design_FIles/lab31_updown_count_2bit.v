`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 09:18:52
// Design Name: 
// Module Name: lab31_updown_count_2bit
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


module lab31_updown_count_2bit(
                                    input clk,
                                    input reset_in, 
                                    input up_down,
                                    output reg [1:0]q_out
    );
always @(posedge clk or negedge reset_in)    
begin
        if(!reset_in)
            begin
                q_out <= 2'b00;
            end
         else
         case(up_down)
         
         1'b0 : q_out <= q_out + 1;
         1'b1 : q_out <= q_out - 1;        
         
         endcase


end   
endmodule
