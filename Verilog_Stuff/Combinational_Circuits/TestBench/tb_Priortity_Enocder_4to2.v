`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 16:46:42
// Design Name: 
// Module Name: tb_Priortity_Enocder_4to2
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


module tb_Priortity_Enocder_4to2(   );
                               
                                reg [3:0] I;
                                wire [1:0] y;
                                wire valid_flag;


Priority_Encoder_4to2 uut(
                                .I(I),
                                .y(y),
                                .valid_flag(valid_flag)
                                
                                    );
                                    
 initial begin
    I = 4'b0;
 end                                   
 
always #10 I = I+1;

initial #100 $finish;                                    
endmodule
