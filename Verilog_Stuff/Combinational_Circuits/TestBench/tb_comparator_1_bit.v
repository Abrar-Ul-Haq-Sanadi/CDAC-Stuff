`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 09:40:56
// Design Name: 
// Module Name: tb_comparator_1_bit
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


module tb_comparator_1_bit(   );
                            reg a_in;
                            reg b_in;
                            wire g_out;
                            wire l_out;
                            wire eq_out;

 comparator_1_bit uut(
                             .a_in(a_in),
                             .b_in(b_in),
                             .g_out(g_out),
                             .l_out(l_out),
                             .eq_out(eq_out)
    );
    
initial begin
a_in = 1'b0;
b_in = 1'b0;
end

always #5 a_in = a_in + 1;
always #10 b_in = b_in + 1;

initial #50 $finish;
endmodule
