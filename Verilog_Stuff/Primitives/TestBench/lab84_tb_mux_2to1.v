`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 16:26:26
// Design Name: 
// Module Name: lab84_tb_mux_2to1
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


module lab84_tb_mux_2to1();
                         wire y_out;
                         reg a_in, b_in , sel_in;

lab84_Mux_2to1_UDP dut( y_out, sel_in, a_in, b_in);
                           /*.y_out(y_out),
                           .sel_in(sel_in),
                           .a_in(a_in), 
                           .b_in(b_in)
);*/

initial begin
a_in = 1'b0;
b_in = 1'b0;
sel_in = 1'b0;
#500 $finish;
end
always #5 a_in = ~a_in ;
always #10 b_in = ~b_in ;
always #15 sel_in = ~sel_in ;
endmodule
