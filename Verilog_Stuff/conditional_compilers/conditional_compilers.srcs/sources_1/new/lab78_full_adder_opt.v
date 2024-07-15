`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 19:46:56
// Design Name: 
// Module Name: lab78_full_adder_opt
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

`define INCLUDE_C

module lab78_full_adder_opt(
                input a_in , b_in , 
                `ifdef  INCLUDE_C
                input c_in ,                
                `endif
                output carry_out, sum_out
                 );

`ifdef INCLUDE_C

    assign { carry_out, sum_out } = a_in + b_in + c_in ;
`else 

    assign { carry_out, sum_out } = a_in + b_in;
    
`endif

endmodule