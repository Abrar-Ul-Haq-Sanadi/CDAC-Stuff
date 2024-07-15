`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 17:04:49
// Design Name: 
// Module Name: lab75_tb_generate_case_add_sub
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


module lab75_tb_generate_case_add_sub #(parameter N = 16)();
                            reg [N-1:0] a_in, b_in;
                            reg opcode;
                            wire [N-1:0]result_out;
                            wire carry_out;

lab75_Generate_case_add_sub  dut (
                            .a_in(a_in), .b_in(b_in), 
                            .opcode(opcode),
                            .result_out(result_out),
                            .carry_out(carry_out)
);



initial begin
a_in = 16'b0;
b_in = 16'b0;
opcode = 1'b0;
end


always #5 a_in = a_in + 1;
always #8 b_in = b_in + 1;
always #100 opcode  = ~opcode;

initial #1000000000 $finish;
endmodule
