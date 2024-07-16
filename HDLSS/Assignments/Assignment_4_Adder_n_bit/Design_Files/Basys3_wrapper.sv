`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 20:53:09
// Design Name: 
// Module Name: Basys3_wrapper
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


// this is the wrapper file in which we are instiating our design

module Basys3_wrapper(
                        input   wire    [8:0]   sw,             //switches of artix 7 board
                        input   wire            clk,            // clk 
                        input   wire            Btn_rst,        //reset button on artix 7
                        output  wire    [4:0]   led             // these are the led pins on the board
                        
                    );
   
    adder_n_bit # ( .DATA_SIZE(4))  
                  wrap(
                        .a_in(sw [3:0]),                        // giving the 4 bits of a_in to 1st 4 switches
                        .b_in(sw [7:4]),                        // giving the 4 bits of b_in to next 4 switches on board
                        .c_in(sw [8]),                          // connecting the c_in to the 9th switch on the board
                        .clk(clk),
                        .reset_n(~Btn_rst),                     // reset_n is giving to btn_r pin of the board 
                        .sum_out(led [3:0]),                    // sum_out is the output connected to 1st 4 Leds to verify the output
                        .carry_out(led [4])                     // carry_out is connected to the 5th led
                        
                     );
           
    
endmodule
