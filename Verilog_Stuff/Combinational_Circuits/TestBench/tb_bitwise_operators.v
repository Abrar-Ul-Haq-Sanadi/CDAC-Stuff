`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 17:31:18
// Design Name: 
// Module Name: tb_bitwise_operators
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


module tb_bitwise_operators(  );

reg [3:0]a_in;
reg [3:0]b_in;
wire [3:0]y0_out;
wire [3:0] y1_out;
wire [3:0] y2_out;
wire [3:0] y3_out;
wire [3:0] y4_out;
wire [3:0] y5_out;
wire [3:0] y6_out;

bitwise_operators dut(
                             .a_in(a_in),
                             .b_in(b_in),
                             .y0_out(y0_out),
                             .y1_out(y1_out),
                             .y2_out(y2_out),
                             .y3_out(y3_out),
                             .y4_out(y4_out),
                             .y5_out(y5_out),
                             .y6_out(y6_out)
                          );  
    
initial begin
a_in[3:0] = 4'b0101;
b_in[3:0] = 4'b1011;

end

initial #20 $finish;

endmodule
