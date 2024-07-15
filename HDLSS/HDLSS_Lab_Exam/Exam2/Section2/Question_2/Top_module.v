`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:43:27
// Design Name: 
// Module Name: Top_module
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


module Top_module  #(parameter DATA_SIZE  = 4 )
        (
            input   wire                    clk,
            input   wire                    reset_n,
            input  carry_in,
            
            output carry_out,
            output [DATA_SIZE-1:0] result_out
    );
    
    
  wire clk_divide_2;
  wire [DATA_SIZE-1:0]     q_out1;
  wire [DATA_SIZE-1:0]     q_out2;
  
  
   clk_div2 U1(
                .clk(clk),
                .reset_n(reset_n),
                .clk_div2(clk_divide_2)             // gives the divided by 2 clock
    );

   up_counter_4bit u2(                              // gives the up counter with 100 mhz
            .clk(clk),
            .reset_n(reset_n),
            .q_out(q_out1)
    ); 
    
    up_counter_4bit u3(                         // gives the up counter with 50 mhz
            .clk(clk_divide_2),                 // here the frequency is halved
            .reset_n(reset_n),
            .q_out(q_out2)
    );  
    
    
    adder_4bit U4(
                    .a_in(q_out1),
                    .b_in(q_out2),
                    .carry_in(carry_in),
                    .carry_out(carry_out),
                    .result_out(result_out)
    );
    
    
endmodule
