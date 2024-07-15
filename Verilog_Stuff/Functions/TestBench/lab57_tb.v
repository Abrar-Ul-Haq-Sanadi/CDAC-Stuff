`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 23:13:04
// Design Name: 
// Module Name: lab57_tb
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


module lab57_tb(    );
                                reg [7:0]a_in;
                                reg [7:0]b_in;
                                wire [7:0]q_out;
    
    lab57_no_of_1s_Func uut(
                                .a_in(a_in),
                                .b_in(b_in),
                                .q_out(q_out) 
                                );
initial begin
    a_in = 8'b0;
    b_in = 8'b0;
    #100 $finish;
end                                
always #5 a_in = a_in + 1;                    
always #10 b_in = b_in + 1; 

                   
endmodule
