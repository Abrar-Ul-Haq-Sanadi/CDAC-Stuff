`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 11:32:15
// Design Name: 
// Module Name: tb_Q1
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


module tb_Q1#(parameter DATA=16,DEPTH=16)();
reg wr_en;
reg out_en;
reg clk;
reg reset_n;
reg [$clog2(DEPTH)-1 : 0] wr_addr;
reg[$clog2(DEPTH)-1 : 0] rd_addr;
reg [DATA - 1 : 0 ]  wr_data;
reg [DATA - 1 : 0 ]  rd_data;
wire [DATA-1  : 0 ] q_out;

Q_1 dut(wr_en,out_en,clk,reset_n,wr_addr,rd_addr,wr_data,rd_data,q_out);

always #5 clk=~clk;
always #160 out_en=$random();
always #160 wr_en=$random();
always #5 wr_addr=$random();
always #5 rd_addr=$random();
always #5 wr_data=$random();
always #5 wr_data=$random();





initial
begin

out_en='b0;
wr_en='b0;
wr_addr='b0;
rd_addr='b0;
wr_data='b0;
wr_data='b0;



#10000
$finish();
end






endmodule
