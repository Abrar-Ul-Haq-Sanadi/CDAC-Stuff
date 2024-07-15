`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 16:00:57
// Design Name: 
// Module Name: lab103_priority_encoder_casez
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

                                                                                                                                                                                             
module lab103_priority_encoder_casez(
                                    input [3:0] In,
                                    output reg[1:0] y_out,
                                    output reg valid
                                    );
always@*
begin
    casez(In)
    4'b0000 :
        begin
        y_out = 2'b00;
        valid = 1'b0;
        end
    4'b0001 :
        begin
        y_out = 2'b00;
        valid = 1'b1;
        end
     4'b001z :
        begin
        y_out = 2'b01;
        valid = 1'b1;
        end
     4'b01zz :
        begin
        y_out = 2'b10;
        valid = 1'b1;
        end
     4'b1zzz :
        begin
        y_out = 2'b11;
        valid = 1'b1;
        end
     endcase
end
endmodule
