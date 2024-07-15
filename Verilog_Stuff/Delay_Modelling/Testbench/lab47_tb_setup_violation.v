`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 23:46:38
// Design Name: 
// Module Name: lab47_tb_setup_violation
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


module lab47_tb_setup_violation(    );
                        reg d_in;
                        reg clk, reset_n;
                        wire q_out;
    
lab47_setup_violation_task uut(
                         .d_in(d_in),
                         .clk(clk), .reset_n(reset_n),
                         .q_out(q_out)
    );
    
initial begin
clk = 1'b1;
reset_n = 1'b1;
$monitor ("The value of the time time= %0t, d_in = %0b  ", $time, d_in);

d_in = 1'b1;
#8 d_in = 1'b0;
#4 d_in= 1'b1;
#3 d_in= 1'b0;
#4.5 d_in = 1'b1;
#0.5 d_in = 1'b0;
#3 d_in = 1'b1;
#3 d_in = 1'b0;
#3.5 d_in = 1'b1;
#11.5 d_in = 1'b0;

#100 $finish;

end
always #5 clk = ~clk;

endmodule
