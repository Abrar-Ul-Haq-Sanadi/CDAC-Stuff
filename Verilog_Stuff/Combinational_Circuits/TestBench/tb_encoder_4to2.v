`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 15:26:27
// Design Name: 
// Module Name: tb_encoder_4to2
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


module tb_encoder_4to2(  );
                    reg [3:0] I_in;
                    wire [1:0] y_out;
                    wire valid_flag;
  
    
encoder_4x2 uut(
                    .I_in(I_in),
                    .y_out(y_out),
                    .valid_flag(valid_flag)
                    );
 initial begin
        I_in = 4'b0;
 end
 
 always #10 I_in = I_in + 1 ;
 initial #100 $finish;             
                    
endmodule
