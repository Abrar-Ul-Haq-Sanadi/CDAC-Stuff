`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 12:56:22
// Design Name: 
// Module Name: lab80_8bit_register
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



//rtl code to design 8 bit register in which we are including active low synchronous reset using `define compilation technique.

`define INCLUDE_RESET
module lab80_8bit_register(
                            input [7:0] d_in,
                            input clk,
                            `ifdef INCLUDE_RESET
                            input reset_n,
                            `endif
                            output reg [7:0] data_out
                            );
always@(posedge clk)
    begin
        `ifdef INCLUDE_RESET
            if(!reset_n)
            data_out <= 8'b0;
        `endif
            else
            data_out <= d_in;
    end

endmodule
