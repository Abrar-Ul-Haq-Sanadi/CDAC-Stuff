`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 19:52:16
// Design Name: 
// Module Name: tb_mux_4x1
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


module tb_mux_4x1(   );
reg [1:0]sel_in;
reg  a_in , b_in , c_in , d_in;
wire y_out;

mux_4x1 uut(
                    .sel_in(sel_in),
                    .a_in(a_in) , 
                    .b_in(b_in) , 
                    .c_in(c_in) , 
                    .d_in(d_in),
                    .y_out(y_out)                   
    );

initial 
begin
sel_in = 2'b00;
a_in = 2'b00;
b_in = 2'b00;
c_in = 2'b00;
d_in = 2'b00;
end

always #10 a_in = ~a_in ;
always #20 b_in = ~b_in ;
always #30 c_in = ~c_in ;
always #40 d_in = ~d_in ;

always #5 sel_in  = sel_in + 1;


initial #200 $finish;
endmodule
