`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 21:47:23
// Design Name: 
// Module Name: lab46_tb
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


module lab46_tb();

                    reg a_in, b_in, c_in, d_in;
                    wire q_out; 
lab46_sdpd uut(
                     .a_in(a_in), .b_in(b_in), .c_in(c_in), .d_in(d_in),
                     .q_out(q_out)
    );

initial begin
a_in = 1'b0;
b_in = 1'b0;
c_in = 1'b0;
d_in = 1'b0;

#10 a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b1;
    d_in = 1'b0;
    
 #10 a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b1;
    d_in = 1'b1;
    
    #10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b0;
    d_in = 1'b0;
    
    #10 a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b0;
    d_in = 1'b1;
    
    #10 a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b0;
    d_in = 1'b1;
    
    #10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b0;
    d_in = 1'b1;
    
    #10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b1;
    d_in = 1'b0;
    
    #10 a_in = 1'b0;
    b_in = 1'b1;
    c_in = 1'b1;
    d_in = 1'b1;
    
        #10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b0;
    d_in = 1'b0;
    
        #10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b0;
    d_in = 1'b1;
    
        #10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b1;
    d_in = 1'b0;
    
        #10 a_in = 1'b1;
    b_in = 1'b0;
    c_in = 1'b1;
    d_in = 1'b1;
    
 #10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b0;
    d_in = 1'b0;
    
 #10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b0;
    d_in = 1'b1;
    
 #10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b1;
    d_in = 1'b0;
    
 #10 a_in = 1'b1;
    b_in = 1'b1;
    c_in = 1'b1;
    d_in = 1'b1;
    
   
    
end



always #10 a_in = ~a_in;
always #20 b_in = ~b_in;
always #30 c_in = ~c_in;
always #40 d_in = ~d_in;

initial #800 $finish;

endmodule
