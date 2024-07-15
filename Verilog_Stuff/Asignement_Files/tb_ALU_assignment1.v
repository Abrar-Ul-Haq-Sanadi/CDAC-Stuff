`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 13:57:05
// Design Name: 
// Module Name: tb_ALU_assignment1
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


module tb_ALU_assignment1( );
                        reg [15:0]a_in;
                        reg [15:0] b_in;
                        reg [3:0]opcode;
                        reg clk,reset_n;
                        wire [15:0]result_out;
                        wire CF, PF, ZF, SF;
    
    
assignment1_16_bit_Alu uut(
                        .a_in(a_in),
                        .b_in(b_in),
                        .opcode(opcode),
                        .clk(clk), .reset_n(reset_n),
                        .result_out(result_out),
                        .CF(CF), .PF(PF), .ZF(ZF), .SF(SF)
    );
    
initial begin
a_in = 16'b0;
b_in = 16'b0;
opcode = 4'b0;
clk = 1'b0;
reset_n = 1'b1;

opcode = 4'b0000;

#50 opcode = 4'b0110;
#50 opcode = 4'b0111;
#50 opcode = 4'b1000;
#50 opcode = 4'b1001;


end    

always #5 clk= ~clk;
always #20 a_in = a_in + 1 ;
always #10 b_in = b_in + 1 ;
 
initial #500 $finish ;

endmodule
