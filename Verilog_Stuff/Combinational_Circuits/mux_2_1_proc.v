`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 15:02:47
// Design Name: 
// Module Name: mux_2_1_proc
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


module mux_2_1_proc(
                        reg a_in,
                        reg b_in,
                        reg sel_in,
                        output reg y_out                
    );
reg y1;
reg y2;
/*always @(*)
begin
    y1= a_in & ~(sel_in);
    y2 = b_in & sel_in ;
    y_out = y1 | y2;
end
*/
always @(*)
begin
    if(sel_in == 1)  
        y_out = b_in;
    else
        y_out = a_in;
end
endmodule
