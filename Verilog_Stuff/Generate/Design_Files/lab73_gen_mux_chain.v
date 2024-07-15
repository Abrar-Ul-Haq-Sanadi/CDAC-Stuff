`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 13:01:20
// Design Name: 
// Module Name: lab73_gen_mux_chain
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


module lab73_gen_mux_chain #(parameter n=8)(
                            input [n-1:0]a_in , b_in ,
                            input sel_in ,
                            output [n-1:0]y_out
    );
    
genvar i;
    generate
        begin
        for( i = 0 ; i < n ; i=i+1)
            begin
             mux_2to1 uut( .a_in(a_in[i]),
                            .b_in(b_in[i]),
                            .sel_in(sel_in),
                            .y_out(y_out[i]) );
            end
        
        end
    endgenerate
endmodule
