`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 15:50:05
// Design Name: 
// Module Name: lab83_Sum_out_UDP
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


primitive lab83_Sum_out_UDP(
                        output sum_out,
                        input a_in, b_in, c_in

    );
table
// a_in  b_in c_in : Sum_out
    0 0 0 : 0 ;
    0 0 1 : 1 ;
    0 1 0 : 1 ;
    0 1 1 : 0 ;
    1 0 0 : 1 ;
    1 0 1 : 0 ;
    1 1 0 : 0 ;
    1 1 1 : 1 ;

endtable
endprimitive
