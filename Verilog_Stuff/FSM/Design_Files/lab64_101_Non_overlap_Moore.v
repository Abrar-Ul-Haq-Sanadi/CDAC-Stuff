`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 20:47:03
// Design Name: 
// Module Name: lab64_101_Non_overlap_Moore
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


module lab64_101_Non_overlap_Moore(
                                    input d_in, clk, reset_n,
                                    output reg q_out
                                    );

parameter s0 =2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] present_state, next_state;
always@(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state;
end

always@*
begin
    case(present_state)
    s0 : begin
            if(d_in)
            next_state = s1;
            else
            next_state = s0;
        end
    s1 : begin
            if(~d_in)
            next_state = s2;
            else
            next_state = s1;
         end
    s2 : begin
            if(d_in)
            next_state = s3;
            else
            next_state = s0;
         end
    s3 : begin
           if(d_in)
           next_state = s1;
           else
           next_state = s0;
         end
    default :
            next_state = s0;
     endcase
 end
 
 // o/p combo logic
 
 always@*
 begin
    case(present_state)
    s0 : q_out = 1'b0;
    s1 : q_out = 1'b0;
    s2 : q_out = 1'b0;
    s3 : q_out = 1'b1;
    default : q_out = 1'b0;
    endcase
end
endmodule

