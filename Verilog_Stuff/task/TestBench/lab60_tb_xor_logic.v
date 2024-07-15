`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 13:04:19
// Design Name: 
// Module Name: lab60_tb_xor_logic
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


module lab60_tb_xor_logic(    );
                reg [15:0]a_in, b_in;
                wire [15:0] result_out;

lab60_xor_task uut(
                .a_in(a_in), .b_in(b_in),
                .result_out(result_out)
                  );

initial begin
a_in = 16'b0;
b_in = 16'b0;
#1000 $finish;
end

always #5 a_in = $random;
always #10 b_in = $random;

endmodule
