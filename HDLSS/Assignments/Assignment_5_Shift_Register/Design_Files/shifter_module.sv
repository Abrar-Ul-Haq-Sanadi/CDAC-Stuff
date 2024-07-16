`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:34:22
// Design Name: 
// Module Name: shifter_module
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


// This is a shifter module, in which the input is getting left shifted on the 7 segment display
// the input is 4 bit binary number and we want to left shift the preivious input and load the 
// new input on every load signal
// if all 4 registers are full, full signal on led is high

module shifter_module#(
    parameter integer DEPTH = 4,                    //depth of the register = 4
    parameter integer WIDTH = 4                     // width of the register = 3 bit wide register 
)(                                                 // this is a packed array in (System verilog)  
                                                   // depth of shifter is 4 and width is 3 bit   
    output reg [DEPTH-1:0][WIDTH-1:0] shr,         // output is 3 bit wide with depth 4
    output reg                        empty,        
    output reg                        full,
    
    input wire [WIDTH-1:0]            data_in,     // data_in is 3 bit 
    input wire                        load,
    input wire                        clk,
    input wire                        rst
);

    reg [$clog2(DEPTH)-1:0] cntr;                   // counter signal
    reg full_set;
    
    
    assign full     = full_set;                       // if counter is 11 all reg are full
    assign empty    = ~full;                          // if counter is 00 it empty
    
    always_ff @(posedge clk) begin                     
        if (~rst) begin                                 // if reset is activated
            cntr        <= 'h0;                         //  counter is 0
            full_set    <= 1'b0;                        // full is low empty is high
            for(int i=0; i < DEPTH; i++) begin          
                shr[i]  <= 'h0;                         // making all shift registers to 
            end
        end 
        
        else begin
            if (load & ~full) begin                     // and it wont enter this block             
                cntr        <= cntr + 1;
                full_set    <= &cntr;                   // once counter is 3 then all reg are full 
                shr[0]      <= data_in;                 // and it wont enter this block
                for(int i=1; i < DEPTH + 1; i++) begin
                    shr[i] <= shr[i-1];                 // shifting logic
                end
            end
        end
    end

endmodule