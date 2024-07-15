`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 16:11:27
// Design Name: 
// Module Name: lab72_tb_fsmd_1010
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


module lab72_tb_fsmd_1010( );
                        reg d_in;
                        reg [15:0]data_in;
                        reg clk; 
                        reg reset_n;
                        wire [15:0]data_out;
lab73_top uut (
                         .d_in(d_in),
                         .data_in(data_in),
                         .clk(clk), 
                         .reset_n(reset_n),
                         .data_out(data_out)
    );

initial begin
clk = 1'b0;
reset_n = 1'b0;
d_in = 1'b0;
data_in = 16'b0;
#15 reset_n = 1'b1;

#2000 $finish;
end

always #5 clk = ~clk;
always #10 d_in = $random();
always #13 data_in = $random();



endmodule
