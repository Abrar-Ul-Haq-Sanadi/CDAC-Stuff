`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 12:31:08
// Design Name: 
// Module Name: Assignment4_Top_FSMD
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
module Assignment4_Top_FSMD(

                        input d_in,
                        input [15:0]data_in,
                        input clk, 
                        input reset_n,
                        output [15:0]data_out
    );

wire temp_out;

Assignment4_seq_1010_Moore_Non_overlap f1(
                                .d_in(d_in),
                                .clk(clk),
                                .reset_n(reset_n),
                                .q_out(temp_out)
);

Assignment4_16_bit_Data_path_logic f2 (
                               .data_in(data_in),
                               .clk(clk), 
                               .reset_n(reset_n),
                               .enable_in(temp_out), 
                               .data_out(data_out)
);

endmodule
