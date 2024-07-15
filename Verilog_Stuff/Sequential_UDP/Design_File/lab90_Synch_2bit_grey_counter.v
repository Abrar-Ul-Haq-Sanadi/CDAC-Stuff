`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 10:33:07
// Design Name: 
// Module Name: lab90_Synch_2bit_grey_counter
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


primitive lab90_sync_flop(
            output reg q_out,
            input reset_n,
            input clk
    );


table
//      reset_n     clk          q_out(PS) q_out+(NS)
            1       (01)         :     ?   :    0      ;           // condition for the rising edge
            1       (01)         :     ?   :    1      ;           // condition for the rising edge
            1       (0?)         :     0   :    0      ;           
            1       (0?)         :     1   :    1      ;
         //Negative Edge
            1       (?0)         :     ?   :    -      ;    
         //any change on level
            1        ?           :     ?   :    -      ;           // if din changes(?? -> * ) during the same level output is no change(-)
      
         //if reset activated (reset is sampled at clk edge)
            0       (01)         :     ?   :    0      ;           //reset is activated for rising edge
            0       (?0)         :     ?   :    -      ;           // 1->0 and 0->0 (falling edge) then output is no changed(holded)previous value
            0        ?           :     ?   :    -      ;           //
endtable

endprimitive