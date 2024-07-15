`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 18:04:44
// Design Name: 
// Module Name: lab54_recovery_violation
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


module lab54_recovery_violation(
                    input [7:0]data_in,
                    input enable,
                    output [7:0] data_out
    );

assign data_out = enable ? data_in : 8'bz;


endmodule
