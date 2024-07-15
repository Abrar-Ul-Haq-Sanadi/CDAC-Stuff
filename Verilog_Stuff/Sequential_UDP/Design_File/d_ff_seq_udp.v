`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 21:02:35
// Design Name: 
// Module Name: d_ff_seq_udp
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


primitive d_ff_seq_udp(
                        output reg q_out,
                        input clk, d_in
    );

table
//      clk     d_in    :     q_out(PS)     q_out+(NS)
        (01)     0     :       ?       :       0   ;
        (01)     1     :       ?       :       1   ;
        (0?)     0     :       0       :       0   ;    
        (0?)     1     :       1       :       1   ;
        
        //negative edge
        (?0)     ?      :        ?       :      -   ;
         
         //any changes in level
         ?       *     :        ?       :      -   ;             


endtable    
endprimitive
