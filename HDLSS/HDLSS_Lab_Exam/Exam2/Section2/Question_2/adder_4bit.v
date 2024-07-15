`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:38:45
// Design Name: 
// Module Name: adder_4bit
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


module adder_4bit #(parameter DATA_SIZE =4)(
                    input [DATA_SIZE-1:0] a_in,
                    input [DATA_SIZE-1:0] b_in,
                    input  carry_in,
                    output carry_out,
                    output [DATA_SIZE-1:0] result_out
    );
    
    assign {carry_out, result_out} = a_in + b_in + carry_in ;

endmodule