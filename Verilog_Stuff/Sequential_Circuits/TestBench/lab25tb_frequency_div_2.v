`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 21:02:46
// Design Name: 
// Module Name: lab25tb_frequency_div_2
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


module lab25tb_frequency_div_2(   );
                            reg clk;
                            reg reset_in;
                            wire freq2 ;
                            wire freq4 ;
    lab25_frequency_div_2 uut(
                             .clk(clk),
                             .reset_in(reset_in),                           
                             .freq2(freq2),
                             .freq4(freq4)                                             
    );
    
    initial begin
    clk = 1'b0;
    reset_in = 1'b1;
    #5 reset_in = 1'b0;
    #10 reset_in = 1'b1;
    end
    
    always #5 clk = ~clk;
    always #200 $finish;
endmodule
