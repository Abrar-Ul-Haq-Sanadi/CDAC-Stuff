`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 19:27:55
// Design Name: 
// Module Name: lab77_full_adder_cond_compilers
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

//`define INCLUDE_C               // this is the macro
module lab77_full_adder_cond_compilers(
                    input a_in , b_in , 
                    `ifdef INCLUDE_C                    // if this macro is defined
                        input c_in ,                    // only then this c_in is considered as input
                    `endif                              // else it will come out of the 'ifdef
                    output carry_out, sum_out);
   
//wire temp;

//`ifdef INCLUDE_C
//    assign temp = c_in;
//`endif  
   
assign { carry_out, sum_out } = a_in + b_in + c_in ;

endmodule
