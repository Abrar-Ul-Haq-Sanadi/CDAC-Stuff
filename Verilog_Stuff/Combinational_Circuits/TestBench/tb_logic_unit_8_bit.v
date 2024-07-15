`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 21:37:19
// Design Name: 
// Module Name: tb_logic_unit_8_bit
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


module tb_logic_unit_8_bit #(parameter DATA_SIZE = 8)();
reg [DATA_SIZE -1:0] a_in;
reg [DATA_SIZE -1:0] b_in;
reg [1:0]opcode;

reg [DATA_SIZE-1:0] result_out;

logic_unit_8_bit  unit(
                            .a_in(a_in),
                            .b_in(b_in),
                            .opcode(opcode),
                            .result_out(result_out)
    );
    
initial begin
a_in = 8'b0;
b_in = 8'b0;
opcode = 2'b0;
end

 always #5 a_in = a_in + 1;
 always #10 b_in = b_in + 1 ;
 always #20 opcode = opcode + 1;

initial #200 $finish;


endmodule
