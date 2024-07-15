`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 09:54:15
// Design Name: 
// Module Name: lab97_tb_buffer
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


module lab97_tb_buffer();
        reg a_in;
        wire y_out;
   
   lab97_tb_buffer uut(
        a_in,
        y_out
    ); 
    
    initial begin
    a_in = 1'b0;
    #100 $finish();
    end
  
    always a_in = ~a_in;
  
endmodule