`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 18:20:07
// Design Name: 
// Module Name: lab76_and_ladder
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


module lab76_and_ladder(
                    input a, b, c, d, 
                    output y
    );

assign y = a && b && c && d ;    
   
endmodule
