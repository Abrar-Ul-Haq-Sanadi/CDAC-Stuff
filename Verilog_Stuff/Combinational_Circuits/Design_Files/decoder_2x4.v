`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 12:14:53
// Design Name: 
// Module Name: decoder_2x4
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

// RTL Design for 2:4 decoder using active low o/ps, 
// consider enable_in as active high, with the test bench

module decoder_2x4(
                    input [1:0] sel_in,
                    input enable_in,
                    output reg [3:0] y_out
                    );
                    

always @(*)
    begin
        if(enable_in)
            begin
            case(sel_in)
                2'b00 : y_out = 4'b1110;
                2'b01 : y_out = 4'b1101;
                2'b10 : y_out = 4'b1011;
                2'b11 : y_out = 4'b0111;
                default : y_out = 4'b1111;
             endcase
             end
         else
                y_out = 4'b1111;                
     end

endmodule
