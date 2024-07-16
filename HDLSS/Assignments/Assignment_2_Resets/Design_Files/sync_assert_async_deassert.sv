`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 16:36:00
// Design Name: 
// Module Name: sync_assert_async_deassert
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


module sync_assert_async_deassert(
             input clk,
             input reset_in,
             output reg reset_out   );
reg y;

always_ff @(posedge clk)
begin
    y <= reset_in;

end

always @*
begin
    if(!reset_in)
     reset_out = y;
    else
     reset_out = reset_in;
end



endmodule   
