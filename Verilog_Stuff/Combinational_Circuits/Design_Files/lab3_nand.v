`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 13:28:46
// Design Name: 
// Module Name: lab3_nand
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


module lab3_nand(
                    reg a_in,
                    reg b_in,
                    output y_out
    );
wire temp;
assign temp = a_in & b_in;
assign y_out = !temp;    

//assign y_out = !(a_in & b_in) ;


 
endmodule
