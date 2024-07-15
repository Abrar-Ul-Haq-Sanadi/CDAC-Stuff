`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 13:16:26
// Design Name: 
// Module Name: lab_80_tb_synch_reset
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


module lab_80_tb_synch_reset( );
                            input [7:0] d_in,
                            input clk,
                            `ifdef INCLUDE_RESET
                            input reset_n,
                            `endif
                            output reg [7:0] data_out
                            
  lab80_8bit_register uut(
                            input [7:0] d_in,
                            input clk,
                            `ifdef INCLUDE_RESET
                            input reset_n,
                            `endif
                            output reg [7:0] data_out
                            );


endmodule
