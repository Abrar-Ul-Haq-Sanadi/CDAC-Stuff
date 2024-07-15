`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 18:02:11
// Design Name: 
// Module Name: tb_sync_fifo_16x8bit
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


module tb_sync_fifo_16x8bit
                #(parameter integer DATA_SIZE = 8, DEPTH = 16)();
                reg [DATA_SIZE-1:0]       data_in;
                reg                       wr_en;
                reg                       rd_en;
                reg                       clk;
                reg                       reset_n;
                wire                      fifo_full;
                wire                      fifo_empty;
                wire [DATA_SIZE-1:0]      data_out;
    
    synch_fifo_16x8bit dut        
            (   data_in,
                wr_en,
                rd_en,
                clk,
                reset_n,
                fifo_full,
                fifo_empty,
                data_out     
    );
    
initial begin
    clk  = 1'b1;
    wr_en= 1'b1;
    rd_en = 1'b0;
    data_in = 8'b0;
   reset_n = 1'b0;  
   #2000 $finish();
end    

always #5 clk = ~clk;
always #400 reset_n = ~reset_n;
always #200 wr_en = ~wr_en;
always #200 rd_en = ~rd_en;
always #10 data_in = $random();

endmodule
