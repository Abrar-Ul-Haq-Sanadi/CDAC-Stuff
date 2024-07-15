`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 23:39:36
// Design Name: 
// Module Name: lab58_tb
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


module lab58_tb(   );
                                 reg [7:0]d_in;
                                 reg clk, reset_n;
                                 wire [4:0] q_out;
lab58_no_1s_func uut(
                                 .d_in(d_in),
                                 .clk(clk), .reset_n(reset_n),
                                  .q_out(q_out)
     );  


initial begin
    d_in = 8'b0;
    clk = 1'b0;
    reset_n = 1'b1;
    
#200 $finish;
end

always #10 d_in = d_in + 1 ;
always #5 clk = ~clk;

endmodule
