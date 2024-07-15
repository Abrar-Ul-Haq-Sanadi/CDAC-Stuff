`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 00:19:40
// Design Name: 
// Module Name: lab59_parity
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


module lab59_parity(
                        input [7:0]d_in,
                        output y_out                 
    );
      
  assign y_out = xor_op(d_in);
  
    function xor_op ( input [7:0] d_in);
    begin
        xor_op = ^d_in;
    end
    endfunction

endmodule
