`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 16:15:53
// Design Name: 
// Module Name: lab84_Mux_2to1_UDP
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


primitive lab84_Mux_2to1_UDP(
                        output y_out,                        
                        input sel_in_2,
                        input a_in, b_in
                        );
table
// sel_in  a_in b_in : y_out
        0 0 ? : 0 ; 
        0 1 ? : 1 ;
        1 ? 0 : 0 ;
        1 ? 1 : 1 ;

endtable
endprimitive
