`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 12:49:00
// Design Name: 
// Module Name: lab60_xor_task
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


module lab60_xor_task(
                input [15:0]a_in, b_in,
                output reg [15:0] result_out
    );
    
    always @(*)
    begin
        xor_op(a_in, b_in, result_out);             // calling a task 
    end
    
    task xor_op( input [15:0] a, b, output [15:0]result);           //task declaration
    begin
        result = a ^ b;
    end
    endtask

endmodule

    
