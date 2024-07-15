`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 16:52:42
// Design Name: 
// Module Name: lab37_tb_graycounter
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


module lab37_tb_graycounter(

    );
                        reg clk;
                        reg reset_n;
                        wire[1:0] q_out;
lab37_graycounter DUT (
                        .clk(clk),
                        .reset_n(reset_n),
                        .q_out(q_out)
);

initial begin
clk = 1'b0;
reset_n = 1'b0;
#5 reset_n = 1'b1;

end
always #5 clk = ~clk;
initial #200 $finish; 

endmodule
