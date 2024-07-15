`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 18:44:24
// Design Name: 
// Module Name: lab76_tb_and_ladder_optimsed
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


module lab76_tb_and_ladder_optimsed();
                                reg a, b, c, d;
                                wire y; 

lab76_generate_opt uut(
                     .a(a), .b(b), .c(c), .d(d), 
                     .y(y)
    );
initial begin
a= 1'b0;
b=1'b0;
c= 1'b0;
d= 1'b0;
end

always #5 a = ~a;
always #10 b = ~b;
always #15 c = ~c;
always #20 d = ~d;

initial #2000 $finish;
endmodule
