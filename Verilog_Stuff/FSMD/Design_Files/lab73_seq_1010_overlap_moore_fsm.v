`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 12:10:09
// Design Name: 
// Module Name: lab73_seq_1010_overlap_moore_fsm
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


// this is the fsmd controller for the data path logic , which detects the overlapping 1010 seq
module lab73_seq_1010_overlap_moore_fsm(
                        input d_in, clk,reset_n,
                        output reg q_out                     
        );
parameter s0=3'b000, s1 = 3'b001, s2=3'b011, s3 = 3'b010, s4=3'b110;      // grey coding sequence
reg [2:0] present_state, next_state;

//memory elemnt is created for present state as output
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state;
end
        
// input combo logic (next state)
always @(*)
begin
    case(present_state)
    s0 :    begin
            if(d_in)
                next_state = s1 ;
            else
                next_state = s0;
            end
    s1 :    begin
            if(~d_in)
                next_state = s2 ;
            else
                next_state = s1;
            end
    s2 :    begin
            if(d_in)
                next_state = s3 ;
            else
                next_state = s0;
            end
    s3 :    begin
            if(d_in)
                next_state = s1 ;
            else
                next_state = s4;
            end
    s4 :    
            begin
            if(d_in)
                next_state = s3 ;
            else
                next_state = s0;
            end
    default :    
            next_state = s0;
    endcase
end


// output combo logic
always @(*)
begin
   case(present_state)
   s0: q_out = 1'b0 ;
   s1: q_out = 1'b0 ;
   s2: q_out = 1'b0 ;
   s3: q_out = 1'b0 ;
   s4: q_out = 1'b1 ;
  default : q_out = 1'b0;
   endcase
end

endmodule
