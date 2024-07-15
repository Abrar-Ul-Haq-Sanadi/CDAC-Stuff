`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 15:22:31
// Design Name: 
// Module Name: lab82_xor_UDP
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

// this is the Xor gate logic using primitives
primitive lab82_xor_UDP(
                        output xor_out,
                        input a_in, b_in

    );
table
// a_in  b_in : xor_out
0 0 : 0 ;
0 1 : 1 ;
1 0 : 1 ;
1 1 : 0 ;
endtable
endprimitive
