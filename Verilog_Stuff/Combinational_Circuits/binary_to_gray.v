`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 09:59:32
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray #(parameter DATA_SIZE = 4)(
                    reg [DATA_SIZE-1:0] b_in,
                    output [DATA_SIZE-1:0] g_out
                       );
 
 assign g_out [DATA_SIZE-1] = b_in [DATA_SIZE-1];
 assign g_out [DATA_SIZE-2] = b_in [DATA_SIZE-1]^b_in[DATA_SIZE-2];
 assign g_out [DATA_SIZE-3] = b_in [DATA_SIZE-2]^b_in[DATA_SIZE-3];
 assign g_out [DATA_SIZE-4] = b_in [DATA_SIZE-3]^b_in[DATA_SIZE-4];
endmodule
