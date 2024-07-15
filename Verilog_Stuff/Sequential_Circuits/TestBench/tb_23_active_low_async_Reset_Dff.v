`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 19:27:20
// Design Name: 
// Module Name: tb_23_active_low_async_Reset_Dff
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


module tb_23_active_low_async_Reset_Dff(    );
                                        reg d_in;
                                        reg reset_in;
                                        reg clk;
                                        wire q_out;
    
lab23_active_low_Reset_asyn_DFF uut(
                                         .d_in(d_in),
                                         .reset_in(reset_in),
                                         .clk(clk),
                                         .q_out(q_out)
    );
    
    initial begin
        d_in = 1'b0;
        reset_in = 1'b1;
        clk = 1'b0;
        
        #10 d_in = 1'b1;
        #10 reset_in = 1'b0;
        #10 reset_in = 1'b1;
        
        #10 d_in = 1'b0;
        #10 d_in = 1'b1;
        
    end
    
    
    always #5 clk = ~clk;
  
 initial #100 $finish;   
endmodule
