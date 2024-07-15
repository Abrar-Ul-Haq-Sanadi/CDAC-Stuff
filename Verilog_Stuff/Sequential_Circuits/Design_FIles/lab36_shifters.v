`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 15:02:43
// Design Name: 
// Module Name: lab36_shifters
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

// in this we are doing PIPO , SIS0(right shifter, lefte shifter) ans compliment of input
module lab36_shifters(
                        input [3:0]D_in,
                        input clk,
                        input reset_n,
                        input [1:0]control_in,
                        output reg [3:0] q_out
    );
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
    begin
        q_out <= 4'b0000;
    end
    else
    begin
        case(control_in)
        2'b00 : q_out <= D_in;   // PIPO
        2'b01 : q_out <= {1'b0,D_in[3:1]}; // Right shift
        2'b10 : q_out <= {D_in[2:0],1'b0}; // Left Shift
        2'b11 : q_out <= ~D_in;
        endcase
    end
end    
    
endmodule
