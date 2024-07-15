`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:02:58
// Design Name: 
// Module Name: tb_full_adder_4bit
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


module tb_full_adder_4bit
                    #(parameter DATA_SIZE =4) ( ); 
                    reg [DATA_SIZE-1:0] a_in;
                    reg [DATA_SIZE-1:0] b_in;
                    reg carry_in;
                    wire carry_out;
                    wire [DATA_SIZE-1:0] result_out;

adder_4bit uut 
            (
                    .a_in(a_in),
                    .b_in(b_in),
                    .carry_out(carry_out),
                    .result_out(result_out)
                    );
   initial begin
       a_in = 4'b0;
       b_in = 4'b0;
       carry_in = 1'b0;
      #500 $finish();
   end    
                
  always #10 a_in = $random();                  
  always #10 b_in = $random();                  
  always #10 carry_in = $random();                  
endmodule
