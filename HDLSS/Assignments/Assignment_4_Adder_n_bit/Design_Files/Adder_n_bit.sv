`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2024 17:18:58
// Design Name: 
// Module Name: Adder_n_bit
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

// this is the N- bit sequential Adder design
module adder_n_bit#(
    parameter integer DATA_SIZE = 4
)(
    input  wire [DATA_SIZE-1:0] a_in,
    input  wire [DATA_SIZE-1:0] b_in,
    input  wire                 c_in,
    input  wire                 clk,
    input  wire                 reset_n,
    output reg  [DATA_SIZE-1:0] sum_out,
    output reg                  carry_out
);
 

    reg [DATA_SIZE-1:0] a ;
    reg [DATA_SIZE-1:0] b ;
    reg                 c ;

    always_ff @(posedge clk)
    begin
        if(!reset_n)
            begin
                a <= 'b0;
                b <= 'b0;
                c <= 'b0;
            end
        else
        
        begin
                a <= a_in;
                b <= b_in;
                c <= c_in;
        end
    end
    
    
    always_ff @(posedge clk)
            if(!reset_n)
            begin
                sum_out <= 'b0;
                carry_out <= 'b0;
            end
        
            else
            
            begin
                {carry_out, sum_out} <= a + b + c;
            end

endmodule