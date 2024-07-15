`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 11:04:46
// Design Name: 
// Module Name: reset_tb
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


module reset_tb();
                    reg d_in, clk, reset_n;
                    wire d_out;
synch_reset_d  uut(
                    .d_in(d_in), .clk(clk), .reset_n(reset_n), 
                    .d_out(d_out)
    );
    
    initial begin
    d_in = 1'b0;
    clk = 1'b0;
    reset_n = 1'b0;
    #4 reset_n = 1'b1;
    #26 reset_n = 1'b0;
    #7 reset_n = 1'b1;
    
    
    #200 $finish;
    end
    
    always #25 d_in = d_in + 1;
    always #5 clk = ~clk;
   // always #12 reset_n = ~reset_n;
endmodule
