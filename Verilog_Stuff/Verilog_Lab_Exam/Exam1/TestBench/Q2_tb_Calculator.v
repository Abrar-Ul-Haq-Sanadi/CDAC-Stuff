`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 10:35:51
// Design Name: 
// Module Name: Q2_tb_Calculator
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


module Q2_tb_Calculator();
        reg     [2:0]   in_dt1 ;
        reg     [2:0]   in_dt2 ;
        reg             Clk;
        reg             Rst;
        reg             Opr_sel;
        reg     [1:0]  aritmetic_operation;
        reg     [1:0]  logical_operation;
        wire    [3:0]   Out_a;
        wire            Out_l;


   Q1_calculator uut(
        in_dt1 ,
        in_dt2 ,
        Clk,
        Rst,
        Opr_sel,
        aritmetic_operation,
        logical_operation,
        Out_a,
        Out_l
    ); 
    
    
initial begin
in_dt1 = 3'b0;
in_dt2 = 3'b0;
Clk = 1'b0;
Rst = 1'b0;
Opr_sel = 1'b0;
aritmetic_operation = 2'b00;
logical_operation = 2'b00;

#15 Rst = 1'b1;
#1000 $finish();
end    

always  #5 Clk = ~Clk ;
always  #5 in_dt1 = $random() ;
always  #5 in_dt2 = $random() ;
always  #100 Opr_sel = ~Opr_sel ;
always  #10 aritmetic_operation = aritmetic_operation + 1 ;
always  #10 logical_operation = logical_operation + 1 ;
    
endmodule
