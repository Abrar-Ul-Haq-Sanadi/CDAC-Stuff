`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 14:23:33
// Design Name: 
// Module Name: sync_assert_deassert
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


module sync_assert_deassert(
             input clk,
             input reset_in,
             output reg reset_out   );
  
always @(posedge clk)
begin
     reset_out <= reset_in;
end             
             
endmodule


