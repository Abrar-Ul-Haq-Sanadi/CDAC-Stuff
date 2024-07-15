`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 09:33:30
// Design Name: 
// Module Name: tb_not_gate
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


module tb_not_gate();
  reg a_in;
  wire y_out;
  
  not_gate uut(a_in, y_out);
  
  initial begin
    a_in = 1'b0;
    #100 $finish();
  end
  
  always a_in = ~a_in;
  
endmodule
