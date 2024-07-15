`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 20:33:23
// Design Name: 
// Module Name: lab55_tb_skew_violation
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


module lab55_tb_skew_violation(    );
                reg d_in1, d_in2;
                reg clk1, clk2;
                reg reset_n;
                wire q_out1, q_out2;
                 


wire clk_1, clk_2;
assign clk_1 = clk1;
assign clk_2 = clk2;

lab55_skew_violation uut(
                .d_in1(d_in1), 
                .d_in2(d_in2),
                .clk1(clk1),
                .clk2(clk2),
                .reset_n(reset_n),
                .q_out1(q_out1) , 
                .q_out2(q_out2) 
    );

initial fork
d_in1= 1'b1;
d_in2= 1'b1;

clk1 = 1'b1;
clk2= 1'b1;


reset_n=1'b1;
#500 $finish;
join 
    
specify
    specparam tskew = 5;
    $skew(clk_1, clk_2, tskew);
endspecify
    
always #5 clk1 = ~clk1;
always #6 clk2 = ~clk2;

initial begin
$monitor("The value of clk1=%0b and clk2=%0b at time t=%0t", clk1, clk2, $time);
end


endmodule