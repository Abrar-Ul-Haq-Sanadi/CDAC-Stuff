`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 13:25:09
// Design Name: 
// Module Name: lab73_tb_gen_mux_chain
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


module lab73_tb_gen_mux_chain( );
                        reg [7:0] a_in;
                        reg [7:0] b_in;
                        reg sel_in;
                        wire [7:0] y_out;
lab73_gen_mux_chain uut (
                        .a_in(a_in),
                        .b_in(b_in),
                        .sel_in(sel_in),
                        .y_out(y_out)
                        );

initial begin
a_in = 8'b0;
b_in = 8'b0;
sel_in = 1'b0;
end

always #10 a_in = a_in +1 ;
always #15 b_in = b_in +1 ;
always #20 sel_in = ~sel_in;
initial #8000 $finish;

endmodule
