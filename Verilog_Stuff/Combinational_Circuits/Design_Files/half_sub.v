`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 16:08:32
// Design Name: Half substractor
// Module Name: half_sub
// Project Name: verilog basics
// Target Devices: 
// Tool Versions: 
// Description: we have to write the verilog coder for Half substractor and write the testbench
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_sub(
                    reg a_in,
                    reg b_in,
                    output diff_out,
                    output borr_out                   
    );
    
    assign diff_out = a_in ^ b_in;
    assign borr_out = !(a_in) && b_in;
    
endmodule
