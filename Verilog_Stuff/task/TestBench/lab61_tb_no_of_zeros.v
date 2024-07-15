`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 15:16:04
// Design Name: 
// Module Name: lab61_tb_no_of_zeros
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


module lab61_tb_no_of_zeros(    );
                        reg [7:0] d_in;
                        reg clk;
                        reg reset_n;
                        wire [3:0] q_out;

lab61_No_0s dut(
                .d_in(d_in),
                .clk(clk),
                .reset_n(reset_n),
                .q_out(q_out)          
               );

initial begin
d_in = 8'b0;
clk = 1'b0;
reset_n = 1'b0;
#10 reset_n = 1'b1;
#200 $finish;
end
always #20 d_in = d_in +1;
always #15 clk = ~clk;

endmodule
