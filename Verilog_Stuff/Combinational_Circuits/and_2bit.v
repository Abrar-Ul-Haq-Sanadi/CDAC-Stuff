`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 05:42:47
// Design Name: And gate understanding
// Module Name: and_2bit
// Project Name: verilog_basics
// Target Devices: 
// Tool Versions: 
// Description: imolimenting the and gate
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module and_2bit( reg a_in,            //one of reg to and gate
                 reg b_in,            // another  reg of the and gate
                 output y_out );        // output of the and gate
                 
// functionality of the and gate              
assign y_out = a_in & b_in ;

endmodule
