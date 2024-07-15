`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 14:46:40
// Design Name: 
// Module Name: lab50_tb_SetupHold
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



module lab50_tb_SetupHold();
                          reg d_in;
                          reg clk, reset_n;
                          wire q_out;
                          
                          
                          
                         
lab50_SetupHold_violation uut(                   
                            .d_in(d_in),
                           .clk(clk), 
                           .reset_n(reset_n),
                           .q_out(q_out)
);

wire d_in1, clk1;
assign d_in1 = d_in;
assign clk1= clk;


initial fork
    
    d_in = 1'b0;
    clk = 1'b1;
    reset_n = 1'b1;
    
    #2 d_in = 1'b1;
    #9.5 d_in = 1'b0;
    #20 d_in = 1'b1;
    #30.5 d_in = 1'b0;
    #39.5 d_in = 1'b1;
    #50 d_in = 1'b0;

join
    
initial begin
    $monitor ("the violation for d_in=%0b is at time t=%0t", d_in, $time);
end

always #5 clk = ~clk;

    specify
    specparam tsu = 1;
    specparam th = 1;
    
            $setuphold (posedge clk1, d_in1, tsu, th);

    endspecify

endmodule