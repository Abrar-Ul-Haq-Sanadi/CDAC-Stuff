`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:29:41
// Design Name: 
// Module Name: lab53_tb_period_violation
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


module lab53_tb_period_violation(

    );
    reg d_in;    
    reg  clk ;
    reg reset_n;
    wire q_out;
    
lab53_period_violation dut (
                           .d_in(d_in),
                           .clk(clk),
                           .reset_n(reset_n),
                           .q_out(q_out)
                       );

wire clk1;
assign clk1 = clk;

initial fork
d_in = 1'b1;
clk = 1'b1;
reset_n = 1'b1;
#5 clk = 1'b0;
#10 clk = 1'b1;
#17 clk = 1'b0;
#25 clk = 1'b1;
#27 clk = 1'b0;
#29 clk = 1'b0;
join

specify
    specparam tperiod = 10;
    $period (posedge clk1, tperiod); 
endspecify

initial 
begin
    $monitor ("the value for d_in=%0b, clk = %0b, is at time t=%0t", d_in,clk, $time);
end

initial #100 $finish;

endmodule