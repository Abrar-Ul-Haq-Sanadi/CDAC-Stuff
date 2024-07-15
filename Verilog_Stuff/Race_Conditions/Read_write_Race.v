`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 18:07:15
// Design Name: 
// Module Name: Read_write_Race
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


module read_write_Race();
    reg clk;
    reg [3:0] a_in , b_in;
    

initial begin
clk = 1'b0;
  #50 $finish();
end

always #5 clk  = ~clk ;


always @(posedge clk)
begin
    a_in <= 4'b1001;
end 

always @(posedge clk)
begin
    b_in <= a_in;
end


endmodule
