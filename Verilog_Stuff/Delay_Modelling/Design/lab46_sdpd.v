`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 21:38:58
// Design Name: 
// Module Name: lab46_sdpd
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


module lab46_sdpd(
                    input a_in, b_in, c_in, d_in,
                    output q_out
    );
    
wire y1, y2;
assign y1 = a_in & b_in;
assign y2 = c_in & d_in;
assign q_out = y1 | y2 ;

specify
    if(a_in)
        (a_in => q_out) = 7;
    if(~a_in)
        (a_in => q_out) = 6;
    
    if({c_in , d_in} == 2'b11)
        (c_in, d_in *>q_out) = 8;
    
    if({c_in , d_in} != 2'b11)
        (c_in, d_in *>q_out) = 9;
endspecify

endmodule
