`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 12:40:48
// Design Name: 
// Module Name: tb_decoder_2x4
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


module tb_decoder_2x4(    );
                    reg [1:0] sel_in;
                    reg enable_in;
                    wire [3:0] y_out;
                    
decoder_2x4 uut (
                    .sel_in(sel_in),
                    .enable_in(enable_in),
                    .y_out(y_out)
                    );
initial begin
sel_in = 2'b0;
enable_in = 1'b0;
#10 enable_in = 1'b1;
end

always #10 sel_in = sel_in + 1 ;

always #100 $finish;
              
endmodule
