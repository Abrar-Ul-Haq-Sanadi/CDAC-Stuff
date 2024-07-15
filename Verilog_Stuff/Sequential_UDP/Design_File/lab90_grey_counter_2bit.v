`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 12:11:51
// Design Name: 
// Module Name: lab90_grey_counter_2bit
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


module lab90_grey_counter_2bit(
                output [1:0]q_out,
                input reset_n ,
                input clk,
                input [1:0]d_in
    );

lab90_sync_flop flop1( q_out[1],
                    reset_n,
                    clk,
                    q_out[0]
                    );

lab90_sync_flop flop0( q_out[0],
                    reset_n,
                    clk,
                    ~q_out[1]
                    );                   

endmodule
