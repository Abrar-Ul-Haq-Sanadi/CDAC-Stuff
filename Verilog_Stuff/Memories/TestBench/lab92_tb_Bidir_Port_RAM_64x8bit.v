`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 16:20:14
// Design Name: 
// Module Name: lab92_tb_Bidir_Port_RAM_64x8bit
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


module lab92_tb_Bidir_Port_RAM_64x8bit #(parameter DEPTH = 64, DATA_SIZE = 8) ();
                        reg                          clk   ;
                        reg                          CS    ;
                        reg                          wr_en ;
                        reg                         out_en;
                        reg     [$clog2(DEPTH)-1:0] addr_in;
                        wire    [DATA_SIZE-1:0]     data_in_out;
                      
                        reg     [DATA_SIZE-1:0]     temp_data;       //temp_data is input to data_in_out during write
                                      

lab92_Bidir_Port_RAM_64x8bit uut (
                                               clk, 
                                               CS,
                                               wr_en,
                                               out_en,
                                               addr_in,
                                               data_in_out                  
                            );    

assign data_in_out = (wr_en && !out_en) ? temp_data : 8'bz;     // this data_in_out is input to memory for writing into memorty


always #5       clk         = ~clk;
always #640     wr_en       = ~wr_en    ;
always #640     out_en      = ~out_en   ;
always #10      addr_in     = addr_in + 1;
always #10      temp_data   = $random();

initial begin
clk     = 1'b0;
CS      = 1'b1 ;
wr_en   = 1'b1;
out_en  = 1'b0;
addr_in = 6'b0;
temp_data = 8'b0;


 #2500 $finish();
end 
endmodule
