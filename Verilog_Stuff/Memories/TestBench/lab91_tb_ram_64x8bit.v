`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 14:00:44
// Design Name: 
// Module Name: lab91_tb_ram_64x8bit
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


module lab91_tb_ram_64x8bit
                #(parameter DATA_SIZE = 8, DEPTH = 64)();
                 
                reg                               clk;
                reg                               CS;               // this is chip select            
                reg                               wr_en;            //write enable signal
                reg                               out_en;           //read enable signal
                reg       [$clog2(DEPTH)-1:0]     addr;
                reg       [DATA_SIZE-1:0]         data_in;
                wire      [DATA_SIZE-1:0]         data_out;
                       
lab91_RAM_64x8bit uut 
     (

                            clk,
                            CS,               // this is chip select            
                            wr_en,            //write enable signal
                            out_en,       //read enable signal
                            addr,
                            data_in,
                            data_out
                
    );

always #5 clk = ~clk;
always #640     wr_en   = ~wr_en    ;
always #640     out_en  = ~out_en   ;
always #10      addr    = addr + 1;
always #20      data_in = $random();

initial fork
clk     = 1'b1;
CS      = 1'b1 ;
wr_en   = 1'b1;
out_en  = 1'b0;
addr    = 6'b0;
join

initial #2500 $finish();

endmodule
