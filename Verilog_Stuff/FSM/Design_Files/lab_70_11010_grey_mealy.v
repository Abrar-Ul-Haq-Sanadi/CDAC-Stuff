`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 10:31:40
// Design Name: 
// Module Name: lab_70_11010_grey_mealy
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


module lab_70_11010_grey_mealy(
                            input d_in, clk, reset_n,
                            output reg q_out
                            );
                                                
parameter s0=3'b000, s1=3'b001, s2=3'b011, s3=3'b010, s4=3'b110;
reg [2:0] present_state, next_state;
 
 
 always@(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state;
end

// next state
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
            next_state = s3;
        else
            next_state = s2;
            
    s3: if(d_in)
            next_state = s4;
        else
            next_state = s0;
                        
    s4: if(d_in)
            next_state = s2;
        else
            next_state = s0;
    default: 
            next_state = s0;
    endcase
 end
 
 //
 always @*
    begin
        case(present_state)
        s0 : q_out = 1'b0;
        s1 : q_out = 1'b0;
        s2 : q_out = 1'b0;
        s3 : q_out = 1'b0;
        s4 : if(~d_in)
                q_out = 1'b1;
             else
                q_out = 1'b0;
                
        default: q_out = 1'b0;
        endcase
    end
endmodule
