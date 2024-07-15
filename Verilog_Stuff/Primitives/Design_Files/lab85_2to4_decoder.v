`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 17:06:03
// Design Name: 
// Module Name: lab85_2to4_decoder
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

// This design is for 2 to 4 decoder 
//since vector outputs are not allowed, for 4 outputs we need 4 udp (primitives)

primitive lab85_2to4_deocoder_0_udp(
                    output y_out_0,
                    input EN, 
                    input sel_in_1,
                    input sel_in_0
);

table
//      EN      sel_in_1 sel_in_0  y_out0
        1           0       0   :   1   ;
        1           0       1   :   0   ;           
        1           1       ?   :   0   ;
        0           ?       ?   :   0   ;
        
endtable
endprimitive



primitive lab85_2to4_deocoder_1_udp(
                    output y_out_1,
                    input EN, 
                    input sel_in_1,
                    input sel_in_0
);

table
//      EN      sel_in_1 sel_in_0  y_out1
        1           0       0   :   0   ;
        1           0       1   :   1   ;           
        1           1       ?   :   0   ;
        0           ?       ?   :   0   ;

endtable
endprimitive



primitive lab85_2to4_deocoder_2_udp(
                    output y_out_2,
                    input EN, 
                    input sel_in_1,
                    input sel_in_0
);

table
//      EN      sel_in_1 sel_in_0  y_out2
        1           0       ?   :   0   ;
        1           1       0   :   1   ;
        1           1       1   :   0   ;
        0           ?       ?   :   0   ;

endtable
endprimitive

primitive lab85_2to4_deocoder_3_udp(
                    output y_out_3,
                    input EN, 
                    input sel_in_1,
                    input sel_in_0
);

table
//      EN      sel_in_1 sel_in_0  y_out3
        1           0       ?   :   0   ;
        1           1       0   :   0   ;
        1           1       1   :   1   ;
        0           ?       ?   :   0   ;

endtable
endprimitive