`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2024 09:51:29
// Design Name: 
// Module Name: lab38_tb_Freq_div_3
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


module lab38_tb_Freq_div_3();
            reg clk;
            reg reset_n;
            wire f0;
            
lab38_freq_DIv_3 uut(
                         .clk(clk),
                         .reset_n(reset_n),
                         .f0(f0)
    );
    
    initial begin
        clk = 1'b0;
        reset_n = 1'b0;
        #5 reset_n = 1'b1;    
    end
    
    always #5 clk = ~clk;
    initial #100 $finish;
endmodule
