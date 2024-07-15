`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 15:52:03
// Design Name: 
// Module Name: lab52_tb_nochange_violation
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


module lab52_tb_nochange_violation();
                          reg d_in;
                          reg clk, reset_n;
                          wire q_out;
                                                       
lab52_nochange_violation uut(                   
                            .d_in(d_in),
                           .clk(clk), 
                           .reset_n(reset_n),
                           .q_out(q_out)
);

wire d_in1, clk1;
assign d_in1 = d_in;
assign clk1 = clk;

initial fork
    
    d_in = 1'b1;
    clk = 1'b1;
    reset_n = 1'b1;
    
    #7 d_in = 1'b0;
    
    #9.5 d_in = 1'b1;
    #10.5 d_in = 1'b0;
    
    #15 d_in = 1'b1;
    #17 d_in = 1'b0;
    
    #19 d_in = 1'b1;
    
    #20.5 d_in = 1'b0;
    
    #22 d_in = 1'b1;
    #22.5 d_in = 1'b0;
    #27 d_in = 1'b1; 
join
    
initial begin
    $monitor ("the violation for d_in=%0b is at time t=%0t", d_in, $time);
end

always #5 clk = ~clk;

specify
    specparam SEO = -1;
    specparam EEO = 1;
       $nochange (posedge clk1, d_in1, SEO, EEO);
endspecify

endmodule
    

