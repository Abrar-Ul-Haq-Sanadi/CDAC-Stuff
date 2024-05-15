`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 17:22:24
// Design Name: 
// Module Name: bitwise_operators
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


module bitwise_operators(
                            reg [3:0]a_in,
                            reg [3:0]b_in,
                            output [3:0]y0_out,
                            output [3:0] y1_out,
                            output [3:0] y2_out,
                            output [3:0] y3_out,
                            output [3:0] y4_out,
                            output [3:0] y5_out,
                            output [3:0] y6_out
    );               
    
    assign y0_out = ~a_in;                      //bitwise of not of a_in
    
    assign y1_out = a_in | b_in ;                  // bitwise or of a_in and b_in
    assign y2_out = ~y1_out;
    //assign y2_out = ~(a_in | b_in);                // bitwise nor of a_in and b_in
    
    assign y3_out = a_in & b_in ;                   // bitwise and operator 
    //assign y4_out = ~(a_in & b_in);                 //bitwise nand operator
    assign y4_out = ~ y3_out;
   
    assign y5_out = a_in ^ b_in ;                   // bitwise exor operator
   // assign y6_out = ~(a_in ^ b_in);                 // bitwise exnor operator
    assign y6_out = ~y5_out;    

endmodule
