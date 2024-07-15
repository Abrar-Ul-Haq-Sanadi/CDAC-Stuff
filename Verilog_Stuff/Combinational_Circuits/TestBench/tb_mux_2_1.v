`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 15:33:48
// Design Name: 
// Module Name: tb_mux_2_1
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


module tb_mux_2_1();
reg a_in;
reg b_in;
reg sel_in;
wire y_out;

// instance the value of modulesa
mux_2_1 dut(
                 .a_in(a_in),
                 .b_in(b_in),
                 .sel_in(sel_in),
                 .y_out(y_out)
    );
    
initial 
begin
    a_in = 1'b0;
    b_in = 1'b0;
    sel_in = 1'b0;
      
#10 a_in = 1'b1;
    b_in = 1'b0;
    sel_in = 1'b0;
    
#10 a_in = 1'b0;
    b_in = 1'b1;
    sel_in = 1'b1;
    
#10 a_in = 1'b1;
    b_in = 1'b1;
    sel_in = 1'b1;   
       
end

initial #40 $finish ;
   
endmodule
