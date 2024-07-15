`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 08:24:28
// Design Name: 
// Module Name: lab30_tb_Down_count
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


module lab30_tb_Down_count();
                            reg clk;
                            reg reset_in;
                            wire [1:0]q_out;

    
    
lab30_DownCount_2bit uut(
                             .clk(clk),
                             .reset_in(reset_in),
                             .q_out(q_out)                    
    );
    
    initial begin
    $display("----The Simulation log-----");
   // $monitor("The output at time= %0t, reset_in= %0b, q_out= %00b", $time, reset_in, q_out);
   // $monitor("The initialzation of clk, reset_in to zero");
    clk = 1'b0;
    reset_in = 1'b0;
    //$write("The output id time= %0t, reset_in= %0b, q_out= %0b", $time, reset_in, q_out);
   // $write("The initialzation of clk, reset_in to zero");
    #10 reset_in = 1'b1;
    $monitor("The output at time= %0t, reset_in= %0b, q_out= %0h", $time, reset_in, q_out);
    end
    
    always #10 clk =~clk;
    initial #100 $finish;
endmodule
