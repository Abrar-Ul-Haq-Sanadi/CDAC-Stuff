`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 03:05:06
// Design Name: 
// Module Name: lab48_tb_hold_violation_task
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

module lab48_tb_hold_violation_task(    );
                        reg d_in;
                        reg clk, reset_n;
                        wire q_out;
    
lab48_hold_violation_task uut(
                         .d_in(d_in),
                         .clk(clk), .reset_n(reset_n),
                         .q_out(q_out)
    );
    
initial fork
clk = 1'b1;
reset_n = 1'b1;

d_in = 1'b1;
#0.5 d_in = 1'b0;
#4 d_in= 1'b1;
#8 d_in= 1'b0;
#12 d_in = 1'b1;
#15 d_in = 1'b0;
#18 d_in = 1'b1;
#20 d_in = 1'b0;
#23 d_in = 1'b1;
#26 d_in = 1'b0;
#28 d_in = 1'b0;
#30.5 d_in = 1'b0;
#33 d_in = 1'b0;
#40 d_in = 1'b0;


#100 $finish;

join

initial begin
$monitor ("The value of the time time= %0t, d_in = %0b  ", $time, d_in);
end

always #5 clk = ~clk;

endmodule
