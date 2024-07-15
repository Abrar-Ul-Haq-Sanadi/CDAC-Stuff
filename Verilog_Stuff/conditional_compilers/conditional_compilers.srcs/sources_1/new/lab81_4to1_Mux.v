`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 12:26:42
// Design Name: 
// Module Name: lab81_4to1_Mux
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

//`define PRIORITY_LOGIC

module lab81_4to1_Mux(
            input [3:0]d_in, 
            input [1:0]sel_in,
            output reg y_out
    );

`ifndef PRIORITY_LOGIC              // if prioirty logic is not present this block will be executed
    always@(*)
        begin
            if(sel_in==2'b00)
                y_out = d_in[0];
                
            else if(sel_in==2'b01)
                y_out = d_in[1];
                
            else if(sel_in==2'b10)
                y_out = d_in[2];
                
            else
                y_out = d_in[3];
        end

`else                               // if priorirty logic is included (present) 
    always@(*)                      //this block (41Mux) will be executed
    begin
        case(sel_in)
            2'b00: y_out = d_in[0];
            2'b01: y_out = d_in[1];
            2'b10: y_out = d_in[2];
            2'b11: y_out = d_in[3];
        endcase
    end
`endif  
    
endmodule
