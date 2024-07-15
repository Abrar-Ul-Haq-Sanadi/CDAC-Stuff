`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 15:08:15
// Design Name: 
// Module Name: lab102_tb_FA_VCD
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


module lab102_tb_FA_VCD(   );
reg a_in;
reg b_in;
reg c_in;
wire sum_out;
wire carry_out;

lab102_FA_VCD uut(
                     .a_in(a_in),
                     .b_in(b_in),
                     .c_in(c_in),
                     .sum_out(sum_out),
                     .carry_out(carry_out)
                   );    
                   
initial begin
$monitor ("The value of time=%0t, a_in=%0b, b_in=%0b, c_in=%0b, sum_out=%0b, carry_out=0%b",
               $time, a_in, b_in, c_in, sum_out, carry_out);
    a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b0;
 
#10 a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b1; 
    
#10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b0; 

#10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b1; 
    
#10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b0; 
    
#10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b1; 

#10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b0; 

#10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b1; 
 
end      

initial  begin
$dumpfile("waveform.vcd");
$dumpvars(0,lab102_tb_FA_VCD);
end
endmodule
