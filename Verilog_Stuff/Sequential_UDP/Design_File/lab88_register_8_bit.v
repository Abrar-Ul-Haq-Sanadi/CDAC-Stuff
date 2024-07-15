`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 08:26:47
// Design Name: 
// Module Name: lab88_register_8_bit
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

// This design is of 8 bit register 

//WE have made RTL Design for the 1-bit flip flop using Truth table(sequential UDP)
//This design is for the active low asynchronous reset
//Then in the teset bench we have instaitiaied the flop 8 times to make it as a 8-bit register

primitive lab88_register_1_bit(
                    output reg q_out,       //in UDP , port list starts with the output port first
                    input reset_n,          //active low reset
                    input clk,
                    input d_in
                    
    );
table
//      reset_n     clk     d_in      q_out(PS) q_out+(NS)
            1       (01)    0     :     ?   :    0      ;           // condition for the rising edge
            1       (01)    1     :     ?   :    1      ;           // condition for the rising edge
            1       (0?)    0     :     0   :    0      ;           
            1       (0?)    1     :     1   :    1      ;
         //Negative Edge
            1       (?0)    ?     :     ?   :    -      ;    
         //any change on level
            1        ?      *     :     ?   :    -      ;           // if din changes(?? -> * ) during the same level output is no change(-)
         //if reset activated 
            0        ?      ?     :     ?   :    0      ;           // if reset is activated

endtable
endprimitive
