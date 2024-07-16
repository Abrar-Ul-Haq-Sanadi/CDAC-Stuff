`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2024 00:18:28
// Design Name: 
// Module Name: tb_generalised_seq_detector
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



module tb_generalised_seq_detector #(parameter integer DATA_SIZE = 4) (   );
                reg [DATA_SIZE-1:0]seq_in; 
                reg clk;
                reg reset_n;
                reg load;
                reg d_in;
                wire[DATA_SIZE-1:0]q_out;
                wire [DATA_SIZE-1:0] reg_loaded;
                wire seq_detected;
                
                
                
                
Generalised_seq_detector uut(
                .seq_in(seq_in), 
                .clk(clk), 
                .reset_n(reset_n),
                .load(load),
                .d_in(d_in),
                .q_out(q_out),
                .reg_loaded(reg_loaded),
                .seq_detected(seq_detected)
    );  
    

initial begin
seq_in = 4'b0;
reset_n = 4'b0;
clk = 1'b1;
load = 1'b0;
d_in = 1'b0;
//#5 reset_n = 1'b1;
#7 reset_n = 4'b1;
load = 1'b1;

seq_in = 4'b1010;


d_in = 1'b1;
#10 d_in = 1'b1;
#10 d_in = 1'b1;
#10 d_in = 1'b0;
#10 d_in = 1'b1;
#10 d_in = 1'b0;
#10 d_in = 1'b1;
#10 d_in = 1'b1;
#10 d_in = 1'b0;
#200 $finish();

end
always #5 clk = ~clk;


endmodule