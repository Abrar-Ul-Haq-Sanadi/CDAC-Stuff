`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 20:47:41
// Design Name: 
// Module Name: lab45_tb
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


module lab45_tb(
    );
    
                        reg [7:0]d_in;
                        reg clk;
                        reg reset_n;
                        wire [7:0]q_out;
lab_45_specify uut(
                        .d_in(d_in),
                         .clk(clk),
                         .reset_n(reset_n),
                         .q_out(q_out)
    );
    
    initial begin
    d_in = 8'b0;
    clk = 1'b0;
    reset_n = 1'b0;
    
    
    end
    
    always #5 clk = ~clk;
    always #10 d_in = d_in + 1 ;
    always #100 reset_n = ~reset_n;
    
    initial #500 $finish;
endmodule
