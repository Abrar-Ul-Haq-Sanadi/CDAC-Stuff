`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 09:32:48
// Design Name: 
// Module Name: not_gate
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


module not_gate(
                    input a_in, 
                    output y_out);
  
  supply1 vdd;
  supply0 vss;
  
  pmos u1(y_out, vdd, a_in);
  nmos u2(y_out, vss, a_in);
  
  endmodule

