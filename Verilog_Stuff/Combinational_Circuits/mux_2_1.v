`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 13:42:39
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
                reg a_in,
                reg b_in,
                reg sel_in,
                output y_out
    );
    
    //assign y_out = sel_in ? b_in : a_in ;
    // or
    wire y1;
    wire y2;
    wire y3;
    assign y3 = !sel_in;
    assign y1 = a_in & y3;
    assign y2 = b_in & sel_in;
    
    assign y_out = y1 | y2 ;
endmodule
