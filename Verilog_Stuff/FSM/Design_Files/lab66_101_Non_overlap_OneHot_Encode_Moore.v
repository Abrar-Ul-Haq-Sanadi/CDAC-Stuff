`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 21:51:34
// Design Name: 
// Module Name: lab66_101_Non_overlap_OneHot_Encode_Moore
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

//one -hot encoding

module lab66_101_Non_overlap_OneHot_Encode_Moore(
                                    input d_in, clk, reset_n,
                                    output reg q_out
    );

parameter s0 = 4'b0001, s1=4'b0010, s2=4'b0100, s3=4'b1000;         //one hot encoding
reg [3:0]present_state, next_state;


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

