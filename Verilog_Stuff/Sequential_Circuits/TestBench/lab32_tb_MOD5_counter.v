`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 11:02:54
// Design Name: 
// Module Name: lab32_tb_MOD5_counter
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


module lab32_tb_MOD5_counter( );
                    reg clk;
                    reg reset_n;
                    wire [2:0]q_out; 
    
lab32_Mod5_Counter uut(
                  .clk(clk),
                  .reset_n(reset_n),
                   .q_out(q_out)              
    );
    
    initial begin
    clk = 1'b0;
    reset_n = 1'b0;
   #5  reset_n = 1'b1;  
    end
    
    always #10 clk = ~clk;
  //  always #200 reset_n = ~reset_n;
    
    initial #500 $finish;
endmodule
