`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 18:33:16
// Design Name: 
// Module Name: lab86_4to1_Mux
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


primitive lab86_4to1_Mux(
        output y_out,
        input sel_in_1, sel_in_0,
        input d_in_3, d_in_2 , d_in_1 , d_in_0
        
    );

table
    //sel_in_1    sel_in_0    d_in_3     d_in_2        d_in_1     d_in_0    :    y_out
        0           0           ?           ?           ?           0      :     0  ;
        0           0           ?           ?           ?           1      :     1  ;
        0           1           ?           ?           0           ?      :     0  ;
        0           1           ?           ?           1           ?      :     1  ;
        1           0           ?           0           ?           ?      :     0  ;
        1           0           ?           1           ?           ?      :     1  ;
        1           1           0           ?           ?           ?      :     0  ;
        1           1           1           ?           ?           ?      :     1  ;

endtable
endprimitive
