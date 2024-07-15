`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 08:35:07
// Design Name: 
// Module Name: lab68_gray_mealy_110
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


module lab68_gray_mealy_110(
                            input d_in, clk, reset_n,
                            output reg q_out
                            );
 
 parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b11;
 reg [1:0] present_state, next_state;
 
 //memory element
 always @(posedge clk or negedge reset_n)
 begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state;
 end
 
 
 //combo logic
 always @(*)
 begin
    case(present_state)
    s0: if(d_in)
            next_state = s1;
        else
            next_state = s0;
            
    s1: if(d_in)
            next_state = s2;
        else
            next_state = s0;
   
    s2: if(~d_in)
            next_state = s0;
        else
            next_state = s2;
    default: 
            next_state = s0;
    endcase
 end
 
 //o/p combo logic
 always @*
    begin
        case(present_state)
        s0 : q_out = 1'b0;
        s1 : q_out = 1'b0;
        s2 : if(~d_in)
                q_out = 1'b1;
             else
                q_out = 1'b0;
        default: q_out = 1'b0;
        endcase
    end
 
endmodule
