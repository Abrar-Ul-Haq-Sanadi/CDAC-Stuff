`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 12:32:35
// Design Name: 
// Module Name: Assignment4_16_bit_Data_path_logic
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


module Assignment4_16_bit_Data_path_logic(
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