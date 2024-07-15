`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 19:36:50
// Design Name: 
// Module Name: tb_D_Latch
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


module tb_D_Latch();
                        reg D_in;
                        reg enable_in;
                        wire q_out;

lab_21_D_latch dut(
                        .D_in(D_in),
                        .enable_in(enable_in),
                        .q_out(q_out)
                        );

initial begin
D_in = 1'b0;
enable_in = 1'b1;
#2 enable_in = 1'b0;
end

always #10 D_in = ~D_in;
always #20 enable_in = ~enable_in;

initial #100 $finish;
endmodule
