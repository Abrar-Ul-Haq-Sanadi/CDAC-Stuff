`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 09:24:56
// Design Name: 
// Module Name: lab31_tb_updown_count
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


module lab31_tb_updown_count();
                                    reg clk;
                                    reg reset_in; 
                                    reg up_down;
                                    wire [1:0]q_out;
    
lab31_updown_count_2bit uut(
                                     .clk(clk),
                                     .reset_in(reset_in), 
                                     .up_down(up_down),
                                     .q_out(q_out)
    );
    initial begin
    clk = 1'b0;
    reset_in = 1'b0;
    up_down = 1'b0;
    
    end
    
    
    always #10 clk = ~clk;
    always #100 up_down = ~up_down;
    always #50 reset_in = ~reset_in ;
    
    initial #500 $finish;
    endmodule
