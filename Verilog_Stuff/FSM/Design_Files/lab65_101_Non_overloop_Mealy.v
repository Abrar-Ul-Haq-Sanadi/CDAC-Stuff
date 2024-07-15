`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 21:21:40
// Design Name: 
// Module Name: lab65_101_Non_overloop_Mealy
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


module lab65_101_Non_overloop_Mealy(
                                    input d_in, clk, reset_n,
                                    output reg q_out
    );
       
parameter s0 =2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] present_state, next_state;

//memory block with NBA
always@(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state;
end

// Next state logic (combo block so we use Blocking Assignment)
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
            next_state = s0;
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
    s2 : begin
            if(d_in)
                q_out = 1'b1;
            else
                q_out = 1'b0;
          end
    default : q_out = 1'b0;
    endcase
end
endmodule

