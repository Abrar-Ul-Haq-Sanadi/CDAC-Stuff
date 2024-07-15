`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 00:33:25
// Design Name: 
// Module Name: lab59_tb_parity
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


module lab59_tb_parity(  );
            reg  [7:0]d_in;
            wire y_out;

lab59_parity uut(
                        .d_in(d_in),
                        .y_out(y_out)                 
    );
    initial begin
        d_in = 8'b0;
        #100 $finish;
    end

always #10 d_in =  d_in + 1;

endmodule
