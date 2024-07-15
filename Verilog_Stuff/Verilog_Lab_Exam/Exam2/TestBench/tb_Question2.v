`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 11:57:26
// Design Name: 
// Module Name: tb_Question2
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


module tb_Question2();

reg d_in_tb;
reg clk_tb;
reg reset_n_tb;
wire q_out_tb;

Q_2 DUt(d_in_tb,clk_tb,reset_n_tb,q_out_tb);

//clock signal
initial
begin
forever #5 clk_tb=~clk_tb;
end

initial
begin
d_in_tb='b0;
reset_n_tb='b0;
clk_tb='b0;

//reset is kept at constatnt 1
#5
reset_n_tb='b1;

//sequence check 1
#10 d_in_tb='b1;
#10 d_in_tb='b1;
#10 d_in_tb='b0;
#10 d_in_tb='b1;
#10 d_in_tb='b0;
#10 d_in_tb='b1;

// break
#10 d_in_tb =0;

//sequence check 2
#10 d_in_tb='b1;
#10 d_in_tb='b1;
#10 d_in_tb='b0;
#10 d_in_tb='b1;
#10 d_in_tb='b0;
#10 d_in_tb='b1;

#250
$finish();

end

endmodule
