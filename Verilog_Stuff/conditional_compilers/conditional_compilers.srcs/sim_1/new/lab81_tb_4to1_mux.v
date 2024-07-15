`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 12:36:06
// Design Name: 
// Module Name: lab81_tb_4to1_mux
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


module lab81_tb_4to1_mux();
                reg [3:0] d_in;
                reg [1:0] sel_in;
                wire y_out;


lab81_4to1_Mux dut(
                    .d_in(d_in),
                    .sel_in(sel_in),
                    .y_out(y_out)
                    );
initial begin
d_in = 4'b0;
sel_in = 2'b0;
#1000 $finish;
end

always #10 d_in = d_in+1;
always #10 sel_in = sel_in+1;

endmodule
