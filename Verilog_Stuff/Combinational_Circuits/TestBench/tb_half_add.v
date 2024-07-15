`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 16:11:16
// Design Name: tet bench for Half_substractor
// Module Name: tb_half_add
// Project Name: verrilog lab basics
// Target Devices: 
// Tool Versions: 
// Description: we are writing the testbench to test the half adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_half_add();
reg a_in;
reg b_in;
wire diff_out;
wire borr_out;

half_sub dut(
                     .a_in(a_in),
                     .b_in(b_in),
                     .diff_out(diff_out),
                     .borr_out(borr_out)                       
    );
    
initial begin
a_in = 1'b0;
b_in = 1'b0;

#10 a_in = 1'b0;
    b_in = 1'b1;

#10 a_in = 1'b1;
    b_in = 1'b0;

#10 a_in = 1'b1;
    b_in = 1'b1;

end
initial # 100 $finish;

endmodule
