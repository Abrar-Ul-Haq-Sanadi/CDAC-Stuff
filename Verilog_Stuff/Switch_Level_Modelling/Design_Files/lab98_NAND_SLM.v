`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 10:48:46
// Design Name: 
// Module Name: lab98_NAND_SLM
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


module lab98_NAND_SLM(
        input a_in, b_in,
        output y_out
    );
    wire x;
    
    supply1 vdd;
    supply0 vss;
    
    pmos p1(y_out, vdd, a_in);
    pmos p2(y_out, vdd, b_in);
    
    nmos n1(y_out, x, a_in);
    nmos n2(x, vss, b_in);

endmodule
