`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 22:01:26
// Design Name: 
// Module Name: tb_asynch_fifo_60x8bit
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


module tb_asynch_fifo_60x8bit
#(parameter integer DATA_SIZE = 8, DEPTH = 60)(  );
                reg wr_en;
                reg rd_en;
                reg wr_clk;
                reg rd_clk;
                reg reset_n;
                
                wire fifo_full;
                wire fifo_empty;
        
                reg  [DATA_SIZE-1:0]   data_in;
                wire  [DATA_SIZE-1:0]   data_out;
                
                
asynch_fifo_60x8bit uut
            (
                wr_en,
                rd_en,
                wr_clk,
                rd_clk,
                reset_n,
                
                fifo_full,
                fifo_empty,
        
                data_in,
                data_out
                
    );
    
initial fork 
wr_clk = 1'b0;
rd_clk = 1'b0;
wr_en = 1'b1;
rd_en = 1'b0;
reset_n = 1'b0;
#2 reset_n = 1'b1;

data_in = 8'b0;
join    

always #5 wr_clk = ~wr_clk ;
always #12.5 rd_clk = ~rd_clk ;

always #1920 wr_en = ~wr_en;
always #1920 rd_en = ~rd_en;
always #10 data_in = $random;   

initial #10000 $finish();
endmodule
