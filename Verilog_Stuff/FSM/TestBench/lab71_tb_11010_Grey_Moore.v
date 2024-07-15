`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 11:45:12
// Design Name: 
// Module Name: lab71_tb_11010_Grey_Moore
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


module lab71_tb_11010_Grey_Moore(    );
    
                       reg d_in, clk, reset_n;
                     wire q_out;

lab71_11010_grey_moore dut (
                        .d_in(d_in),
                        .clk(clk),
                        .reset_n(reset_n),
                        .q_out(q_out)
                        ); 

initial begin
d_in = 1'b0;
clk = 1'b0;
reset_n = 1'b0;

#20 reset_n = 1'b1;

#20 reset_n = 1'b0;
#20 reset_n = 1'b1;
#12 d_in = 1'b1;
#12 d_in = 1'b0;
#12 d_in = 1'b1;
#12 d_in = 1'b1;
#12 d_in = 1'b0;
#12 d_in = 1'b1;
#8 d_in = 1'b0;
#12 d_in = 1'b1;
#12 d_in = 1'b1;

#12 d_in = 1'b0;
#12 d_in = 1'b1;
#12 d_in = 1'b0;
#12 d_in = 1'b1;
#12 d_in = 1'b0;
#12 d_in = 1'b1;
#8 d_in = 1'b0;
#12 d_in = 1'b1;
#12 d_in = 1'b1;
end

always #5 clk = ~clk;
//always #250 reset_n = ~reset_n;
// always #10 d_in = $random();

initial #50000 $finish;
                   
endmodule

