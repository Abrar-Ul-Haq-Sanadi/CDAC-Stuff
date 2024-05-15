`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 19:46:06
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
                    reg [1:0]sel_in,
                    reg a_in , b_in , c_in , d_in,
                    output reg y_out                   
    );                    
    
//    always @(*)
//    begin
//        if (sel_in == 2'b00)
//            y_out = a_in;
            
//        else if(sel_in == 2'b01)
//            y_out = b_in;
            
//        else if(sel_in == 2'b10)
//            y_out = c_in;
            
//       else
//            y_out = d_in;
//    end   

always @(*)
begin
    case(sel_in)
        2'b00 : y_out = a_in;
        2'b01 : y_out = b_in;
        2'b10 : y_out = c_in;
        2'b11 : y_out = d_in;
endcase
end
endmodule
