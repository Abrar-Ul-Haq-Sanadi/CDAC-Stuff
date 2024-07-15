`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 09:05:45
// Design Name: 
// Module Name: lab68_tb_110_gray_mealy
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


module lab68_tb_110_gray_mealy( );
                        reg d_in, clk, reset_n;
                        wire q_out;
                        
lab68_gray_mealy_110 dut(
                        .d_in(d_in),
                        .clk(clk),
                        .reset_n(reset_n),
                        .q_out(q_out)
                        );
initial begin
d_in = 1'b0;
clk = 1'b0;
reset_n = 1'b0;
end

always #5 clk = ~clk;
always #250 reset_n = ~reset_n;
always #10 d_in = $random();

initial #2000 $finish;
endmodule
