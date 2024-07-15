`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 15:19:24
// Design Name: 
// Module Name: tb_section1_4bit_up_counter
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


module tb_section1_4bit_up_counter #(parameter DATA_SIZE  = 4 )(  );
            reg                     clk;
            reg                     reset_n;
            wire [DATA_SIZE-1:0]    q_out;
    
    section1_4bit_up_counter uut(
            .clk(clk),
            .reset_n(reset_n),
            .q_out(q_out)
    );
    
    
    initial begin
        clk = 1'b1;
        reset_n = 1'b0;
        #1000 $finish();
    end
    
    always #5 clk = ~clk;
    always #160 reset_n = ~reset_n;
    
endmodule
