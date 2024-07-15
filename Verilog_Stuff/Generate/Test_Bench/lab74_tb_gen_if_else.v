`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 15:39:24
// Design Name: 
// Module Name: lab74_tb_gen_if_else
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


module lab74_tb_gen_if_else();
                        reg [3:0] d_in;
                        reg [1:0] sel_in;
                        wire  y_out;
lab74_generate_if_else dut(
                            .d_in(d_in),
                            .sel_in(sel_in),
                            .y_out(y_out)
                            );

initial begin
d_in = 4'b0;
sel_in = 2'b0;
#4000 $finish;
end

always #10 d_in = d_in+1;
always #20 sel_in = sel_in+1;
endmodule
