`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 15:54:59
// Design Name: 
// Module Name: lab72_top
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


module lab72_top(
                        input d_in,
                        input [15:0]data_in,
                        input clk, 
                        input reset_n,
                        output [15:0]data_out
    );

wire temp_out;

lab72_1010_seq_moore_fsm f1(
                                .d_in(d_in),
                                .clk(clk),
                                .reset_n(reset_n),
                                .q_out(temp_out)
);

lab72_16_Bit_data_path_logic f2 (
                               .data_in(data_in),
                               .clk(clk), 
                               .reset_n(reset_n),
                               .enable_in(temp_out), 
                               .data_out(data_out)
);

endmodule
