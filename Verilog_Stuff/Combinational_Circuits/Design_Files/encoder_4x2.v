`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 14:35:38
// Design Name: 
// Module Name: encoder_4x2
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

// Design 4:2 Encoder circuit and sketch the digital circuit

module encoder_4x2(
                    input [3:0] I_in,
                    output reg [1:0] y_out,
                    output reg valid_flag 
                    );
/*                    
assign y_out[0] = I_in[3] | I_in[1] ;
assign y_out[1] = I_in[3] | I_in[2] ;
assign valid_flag = I_in[3] | I_in[2] | I_in[1] | I_in[0] ;


*/               
always @(*)
begin
  
        case (I_in) 
            4'b0001 : begin 
                        y_out = 2'b00;
                        valid_flag = 1'b1;
                      end  
            4'b0010 :begin
                        y_out = 2'b01;
                        valid_flag = 1'b1;
                      end
            4'b0100 :begin
                        y_out = 2'b10;
                        valid_flag = 1'b1;
                      end
             4'b1000 :begin
                        y_out = 2'b11;
                        valid_flag = 1'b1;
                      end
                      
            default
            begin
                y_out = 2'b00;
                valid_flag = 1'b0;
            end
       endcase  

end

endmodule
