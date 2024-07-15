`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 11:31:00
// Design Name: 
// Module Name: Q_2
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


module Q_2(
            input d_in,
            input clk,
            input reset_n,
            output reg q_out
            );

reg [3:0] present_state;
reg [3:0] next_state;


parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;


//register logic
always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
        present_state<=3'b000;
    else
        present_state<=next_state;
end

//next state logic
always@*
begin
    case(present_state)
        s0:
            if(d_in)
                next_state<=s1;
             else
                next_state<=s0;
    
        s1:
            if(d_in)
                next_state<=s2;
             else
                next_state<=s1;
        s2:
            if(d_in)
                next_state<=s1;
             else
                next_state<=s3;
        s3:
            if(d_in)
                next_state<=s4;
             else
                next_state<=s0;
        s4:
            if(d_in)
                next_state<=s1;
             else
                next_state<=s5;
        s5:
            if(d_in)
                next_state<=s6;
             else
                next_state<=s0;  
        s6:
            if(d_in)
                next_state<=s1;
             else
                next_state<=s0;                                                                               
    endcase
end

//output logic
always@*
begin
    case(present_state)
        s0:q_out<=0;
        s1:q_out<=0;
        s2:q_out<=0;
        s3:q_out<=0;
        s4:q_out<=0;
        s5:q_out<=0;
        s6:q_out<=1;
        default:q_out<=0;
        
      endcase
end
endmodule
