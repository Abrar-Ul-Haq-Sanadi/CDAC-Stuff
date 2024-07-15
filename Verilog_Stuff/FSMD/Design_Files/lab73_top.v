`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 12:09:06
// Design Name: 
// Module Name: lab73_top
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


// this is the top level design to bind the FSMD controller logic and the Data path logic
module lab73_top(

                        input d_in,
                        input [15:0]data_in,
                        input clk, 
                        input reset_n,
                        output [15:0]data_out
    );

wire temp_out;

lab73_seq_1010_overlap_moore_fsm f1(
                                .d_in(d_in),
                                .clk(clk),
                                .reset_n(reset_n),
                                .q_out(temp_out)
);

lab73_data_path_logic f2 (
                               .data_in(data_in),
                               .clk(clk), 
                               .reset_n(reset_n),
                               .enable_in(temp_out), 
                               .data_out(data_out)
);

endmodule
