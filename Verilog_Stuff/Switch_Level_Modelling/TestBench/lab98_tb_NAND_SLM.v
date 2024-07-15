`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 10:50:10
// Design Name: 
// Module Name: lab98_tb_NAND_SLM
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


module lab98_tb_NAND_SLM();
            reg a_in;
            reg b_in;
            wire y_out;

    lab98_NAND_SLM  uut(
                    a_in,
                    b_in,
                    y_out
                );
    
        initial begin
            a_in = 1'b0;
            b_in = 1'b0;
            #50 $finish();
        end
  
    always #5 a_in = a_in +1 ;
    always #10 b_in = b_in +1 ;
    
endmodule
