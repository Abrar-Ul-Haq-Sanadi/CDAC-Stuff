`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:01:16
// Design Name: 
// Module Name: tb_top_module
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


module tb_top_module #(parameter DATA_SIZE  = 4 )(  );

            reg                       clk;
            reg                       reset_n;
            reg  carry_in;
            wire carry_out;
            wire [DATA_SIZE-1:0] result_out;

Top_module dut 
        (
            .clk(clk),
            .reset_n(reset_n),
            .carry_in(carry_in),
            
            .carry_out(carry_out),
            .result_out(result_out)
    );
    
 initial begin
 clk = 1'b1;
 reset_n = 1'b0;
 #5 reset_n = 1'b1;
 carry_in = 1'b0;
 #200 $finish();
 end   
    
    
    always #5 clk = ~ clk;
    always #5 carry_in = $random();

endmodule
