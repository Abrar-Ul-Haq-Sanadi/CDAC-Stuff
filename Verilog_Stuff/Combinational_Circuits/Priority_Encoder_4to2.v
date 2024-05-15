`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 16:28:13
// Design Name: 
// Module Name: Priority_Encoder_4to2
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
// Design a 4:2 Priority Encoder 

module Priority_Encoder_4to2(
                                input [3:0] I,
                                output reg [1:0] y,
                                output reg valid_flag
                                    );
/*
assign y[1] = (I[2] | I[3]) ;
assign y[0] = I[3] | (~I[2])&(I[1]) ;
assign valid_flag = (I[0] | I[1] | I[2] | I[3]) ;  
*/

always @(*)
begin   
        if( I[3])
        begin
            y = 2'b11;
            valid_flag = 1'b1;
        end 

        else if( I[2])
        begin
            y = 2'b10;
            valid_flag = 1'b1;
        end 
        
        else if( I[1])
        begin
            y = 2'b01;
            valid_flag = 1'b1;
        end  
              
        else if( I[0])
        begin
            y = 2'b00;
            valid_flag = 1'b1;
        end        
           
        else
        begin
            y = 2'b00;
            valid_flag = 1'b0;
        end
end                        
                                    
endmodule
