`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 13:46:40
// Design Name: 
// Module Name: lab82_and_UDP
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

// this is the and gate logic  using primitives
primitive and_UDP(                      
                output and_out,
                input a_in,
                input b_in
                );
table
// a_in b_in : and_out
        0 0 : 0 ;
        0 1 : 0 ;
        1 0 : 0 ;
        1 1 : 1 ;
endtable
endprimitive
