`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 19:27:10
// Design Name: 
// Module Name: d_latch_seq_udp
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


primitive d_latch_seq_udp(
                output reg q_out,
                input En, 
                input d_in
    );
table
//      En      d_in  :  q_out(PS)  :    q_out+(NS)
        1        0    :      ?    :       0 ;       //when  d_in=0, PS can be anything, NS will be same as d_in
        1        1    :      ?    :       1 ;       //when  d_in=1, PS can be anything, NS will be same as d_in
        0        ?    :      ?    :       - ;       //when  EN=0, d_in can be anything
                                                    // PS can be anything, NS will be same as No-change('-')
endtable 
endprimitive