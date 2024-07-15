`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:08:40
// Design Name: 
// Module Name: tb_clk_div2
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


module tb_clk_div2(   );
                reg clk;
                reg reset_n;
                wire clk_div2;
   
    clk_div2 uut(
                .clk(clk),
                .reset_n(reset_n),
                .clk_div2(clk_div2)
    );
    
    initial begin
    clk = 1'b0;
    reset_n = 1'b0;
    #5 reset_n = 1'b1;
    end
    
    always #10 clk = ~clk;
endmodule
