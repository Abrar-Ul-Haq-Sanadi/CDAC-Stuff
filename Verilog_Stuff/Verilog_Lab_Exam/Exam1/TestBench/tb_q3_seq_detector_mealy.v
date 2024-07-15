`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 09:39:43
// Design Name: 
// Module Name: tb_q3_seq_detector_mealy
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


module tb_q3_seq_detector_mealy(  );
        reg  d_in;
        reg  clk;
        reg  reset_n;
        wire q_out;

q3_seq_detector_mealy dut(
        d_in,
        clk,
        reset_n,
        q_out
        
    );

initial begin
clk = 1'b1;
reset_n = 1'b0;
d_in = 1'b0; 
#15 reset_n = 1'b1;
#1000 $finish();
end

always #5 clk = ~clk;
always #5 d_in = $random();

endmodule
