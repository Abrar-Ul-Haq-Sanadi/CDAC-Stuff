`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 19:34:37
// Design Name: 
// Module Name: lab87_8bit_Dlatch
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
// level sensitive sequential UDP of 8bit negative level sensitive d latch.

primitive lab87_8bit_Dlatch(
                output reg q_out,
                input EN, 
                input d_in
    );
    
table
    // en d_in : q_out : q_out+
    0   0  :  ?   : 0;
    0   1  :  ?   : 1; 
    1   ?  :  ?   : -; 
endtable
endprimitive
