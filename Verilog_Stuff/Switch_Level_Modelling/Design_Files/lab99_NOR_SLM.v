`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 10:42:39
// Design Name: 
// Module Name: lab99_NOR_SLM
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


module lab99_NOR_SLM(
  input a_in, b_in,
        output y_out       
    );

    wire x;
    
    supply1 vdd;
    supply0 vss;
    
    pmos p1(x,    vdd, a_in);
    pmos p2(y_out, x,  b_in);
    
    nmos n1(y_out, vss, a_in);
    nmos n2(y_out, vss, b_in);

endmodule
