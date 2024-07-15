`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 18:30:53
// Design Name: 
// Module Name: lab105_Up_counter_defparam
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


module lab105_Up_counter_defparam #(parameter DATA_SIZE = 2, UP=0)
(   
    input clk,
    input reset_n,
    output reg [DATA_SIZE-1:0]data_out
    );
    
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            data_out <= 2'b00;
        else if(UP)
            data_out <= data_out + 1 ;
        else
            data_out <= data_out - 1;       // since up =0 this will be always down counter
    end
endmodule
