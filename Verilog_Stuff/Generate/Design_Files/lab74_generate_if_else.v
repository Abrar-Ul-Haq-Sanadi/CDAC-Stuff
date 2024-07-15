`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 15:14:44
// Design Name: 
// Module Name: lab74_generate_if_else
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
//this program uses conditional generate to generate 4to1
// mux using if else or 4to1 mux using case statement.
`define PRIORITY 0
module lab74_generate_if_else(
                        input [3:0] d_in,
                        input [1:0] sel_in,
                        output  y_out
                        );
generate
begin 
    if(`PRIORITY)
        begin
            mux_4to1_if_else dut1(
                            .d_in(d_in),
                            .sel_in(sel_in),
                            .y_out(y_out)
                            );
       end
    else
        begin
            mux_4to1_case dut2(
                            .d_in(d_in),
                           .sel_in(sel_in),
                            .y_out(y_out)
                            );
        end
end
endgenerate
endmodule
