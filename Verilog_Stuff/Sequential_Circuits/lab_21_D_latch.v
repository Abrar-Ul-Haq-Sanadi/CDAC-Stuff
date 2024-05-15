`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 19:29:12
// Design Name: 
// Module Name: lab_21_D_latch
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


module lab_21_D_latch(
                        input D_in,
                        input enable_in,
                        output reg q_out
                        );

always @*
begin
    if(enable_in)
    q_out <= D_in;

end

endmodule
