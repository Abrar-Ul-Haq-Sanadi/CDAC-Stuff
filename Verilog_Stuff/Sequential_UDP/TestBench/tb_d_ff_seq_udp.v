`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 21:12:35
// Design Name: 
// Module Name: tb_d_ff_seq_udp
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


module tb_d_ff_seq_udp(    );
                        wire q_out;
                        reg clk, d_in;

d_ff_seq_udp uut(
                        q_out,
                        clk, 
                        d_in
    );

initial begin
clk = 1'b0;
d_in = 1'b0;
#500 $finish();
end     

always #10 clk = ~clk;
always #17 d_in = ~d_in;
  
endmodule
