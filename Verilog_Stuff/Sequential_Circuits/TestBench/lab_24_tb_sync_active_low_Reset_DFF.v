`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 20:14:00
// Design Name: 
// Module Name: lab_24_tb_sync_active_low_Reset_DFF
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


module lab_24_tb_sync_active_low_Reset_DFF(    );
                            reg d_in;
                            reg clk;
                            reg reset_in;
                            wire q_out;
                            
lab_24_active_low_Synch_Reset_DFF uut(
                             .d_in(d_in),
                             .clk(clk),
                             .reset_in(reset_in),
                             .q_out(q_out)                       
    );
 initial begin
        d_in = 1'b0;
        clk = 1'b0;
        reset_in = 1'b1;
        
        #10 d_in = 1'b1;
        #10 reset_in = 1'b0;
        
        #10 d_in = 1'b0;
        #10 reset_in = 1'b1;
        
        #10 d_in = 1'b1;
        #10 reset_in = 1'b1;
 end   
    always #10 clk = ~clk ;
    
endmodule
