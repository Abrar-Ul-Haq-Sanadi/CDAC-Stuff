`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 09:42:31
// Design Name: 
// Module Name: lab97_buffer
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


module lab97_buffer(
            input a_in,
            output y_out
    );
    wire y_out0;
    
    supply1 vdd;
    supply0 vss;
    
    pmos u1(y_out0, vdd, a_in);
    nmos u2(y_out0, vss, a_in);
    
    pmos u3(y_out, vdd, y_out0);
    nmos u4(y_out, vss, y_out0);
   // buf buf1(y_out, a_in);
    
endmodule
