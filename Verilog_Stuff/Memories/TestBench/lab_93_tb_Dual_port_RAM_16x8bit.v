`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 14:01:35
// Design Name: 
// Module Name: lab_93_tb_Dual_port_RAM_16x8bit
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


module lab_93_tb_Dual_port_RAM_16x8bit
            #(parameter DATA_SIZE = 8 , DEPTH = 16)
            ();
            reg CS_P0;
            reg CS_P1;
            reg wr_en_P0;
            reg wr_en_P1;
            reg out_en_P0;
            reg out_en_P1;
            reg clk;
            reg [$clog2(DEPTH)-1 : 0] addr_P0;
            reg [$clog2(DEPTH)-1 : 0] addr_P1;
            
            wire [DATA_SIZE - 1 : 0 ]  data_P0;
            wire [DATA_SIZE - 1 : 0 ]  data_P1;
      
            reg  [DATA_SIZE - 1 : 0 ] temp_datain_P0;  // input from the user to write
            reg  [DATA_SIZE - 1 : 0 ] temp_datain_P1;  
 
 
 lab93_Dual_Port_RAM_16x8bit uut
                   (
            CS_P0,
            CS_P1,
            wr_en_P0,
            wr_en_P1,
            out_en_P0,
            out_en_P1,
            clk,
            addr_P0,
            addr_P1,
            data_P0,
            data_P1
      
    );         
  
  
  assign data_P0 = (wr_en_P0 && !out_en_P0) ?   temp_datain_P0 : 8'bz ;      
  assign data_P1 = (wr_en_P1 && !out_en_P1) ?   temp_datain_P1 : 8'bz ;      
  
  
  initial begin
  clk = 1'b1 ;
  
  CS_P0 = 1'b1;
  CS_P1 = 1'b1;
  
  wr_en_P0 = 1'b1;
  wr_en_P1 = 1'b0;
  
  out_en_P0 = 1'b0;
  out_en_P1 = 1'b0                     ;
  
  addr_P0 = 4'b0;
  addr_P1 = 4'b0;
  
  temp_datain_P0 = 8'b0;
 // temp_datain_P1 = 8'b0;
  
  #1000 $finish();
  end  
 
 
 always #5 clk = ~clk ;
 always #160 wr_en_P0 = ~wr_en_P0;
 always #160 out_en_P1 = ~out_en_P1;
 always #10 addr_P0 = addr_P0 + 1;
 always #10 addr_P1 = addr_P1 + 1;
 always #10 temp_datain_P0 = $random();
 //always #10 temp_datain_P1 = $random();
 
 endmodule           