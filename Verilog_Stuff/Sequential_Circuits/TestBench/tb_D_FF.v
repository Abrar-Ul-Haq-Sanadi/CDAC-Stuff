`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 19:49:14
// Design Name: 
// Module Name: tb_D_FF
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


module tb_D_FF( );
                        reg D_in;
                        reg clk;
                        wire q_out;

lab22_D_FF dut(
                        .D_in(D_in),
                        .clk(clk),
                        .q_out(q_out)
                        );

initial begin
D_in = 1'b0;
clk = 1'b0;
//#2 clk = 1'b0;
end

always #10 D_in = ~D_in;
always #5 clk = ~clk;

initial #100 $finish();

endmodule

