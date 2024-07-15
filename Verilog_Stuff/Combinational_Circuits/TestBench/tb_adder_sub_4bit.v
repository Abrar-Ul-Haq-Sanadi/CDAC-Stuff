`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 11:23:31
// Design Name: 
// Module Name: tb_adder_sub_4bit
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


module tb_adder_sub_4bit();

reg [3:0] a_in;
reg [3:0] b_in;
reg control_in;
wire [3:0] result_out;
wire carry_out;

adder_sub_4bit dut(
                        .a_in(a_in),
                        .b_in(b_in),
                        .control_in(control_in),
                        .result_out(result_out),
                        .carry_out(carry_out)
    );
    
initial begin
a_in=4'b0000;
b_in=4'b0000;
control_in=1'b0;

#10 
a_in=4'b1010;
b_in=4'b1101;
control_in=1'b0;

#10 
a_in=4'b1010;
b_in=4'b1101;
control_in=1'b1;

end

initial #100 $finish;

endmodule


