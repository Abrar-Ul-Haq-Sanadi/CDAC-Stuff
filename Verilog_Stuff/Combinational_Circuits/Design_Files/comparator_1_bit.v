`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 09:36:00
// Design Name: 
// Module Name: comparator_1_bit
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


module comparator_1_bit(
                            reg a_in,
                            reg b_in,
                            output g_out,
                            output l_out,
                            output eq_out
    );
/*    
    assign g_out = a_in & (~b_in);
    assign l_out = (~a_in) & b_in ;
    assign eq_out = (a_in ~^ b_in );
*/

assign g_out = a_in > b_in;
assign l_out = a_in < b_in;
assign eq_out = (a_in == b_in);

endmodule
