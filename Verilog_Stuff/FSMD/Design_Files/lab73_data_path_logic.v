`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 12:09:33
// Design Name: 
// Module Name: lab73_data_path_logic
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

//this is the data path logic
module lab73_data_path_logic(
            input [15:0] data_in,
            input clk ,reset_n,
            input enable_in,
            output reg [15:0] data_out
    );

// its a data path logic  if sequence 1010 is detected enable _signal gets high and output is input
// else output is previous data    
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n) 
        data_out <= 16'b0;
    else if (enable_in)
        data_out <= data_in;
    else
        data_out <= data_out;
end
endmodule
