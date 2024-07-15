`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 17:38:41
// Design Name: 
// Module Name: tb_add_sub_4bit
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


module tb_add_sub_4bit #(parameter DATA_SIZE=4)(   );

reg [DATA_SIZE-1:0] a_in;
reg [DATA_SIZE-1:0] b_in;
reg control_in;
wire [DATA_SIZE-1:0] result_out;
wire carry_out;

add_sub_4bit uut (
                              .a_in(a_in),
                              .b_in(b_in),
                              .control_in(control_in),
                              .result_out(result_out),
                              .carry_out(carry_out)                                              
                 );
                 
initial begin
a_in = 4'b0;
b_in = 4'b0;
control_in = 1'b0;
end

always #10 a_in = a_in+1;
always #20 b_in = b_in+1;
always #30 control_in = ~control_in;

initial #500 $finish;

endmodule
