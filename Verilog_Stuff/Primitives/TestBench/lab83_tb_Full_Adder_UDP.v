`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 15:56:00
// Design Name: 
// Module Name: lab83_tb_Full_Adder_UDP
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


module lab83_tb_Full_Adder_UDP();
                wire sum_out, carry_out;
                reg a_in, b_in , c_in;
                
lab83_Sum_out_UDP uut1(
                .sum_out(sum_out), 
                .a_in(a_in), 
                .b_in(b_in) , 
                .c_in(c_in)
    );                    

lab83_Carry_out_UDP uut2(
                .carry_out(carry_out),
                .a_in(a_in), 
                .b_in(b_in) , 
                .c_in(c_in)
    );   


initial begin
a_in = 1'b0;
b_in = 1'b0;
c_in = 1'b0;
#500 $finish;
end

always #5 a_in = ~a_in ;
always #10 b_in = ~b_in ;
always #20 c_in = ~c_in ;

    
endmodule
