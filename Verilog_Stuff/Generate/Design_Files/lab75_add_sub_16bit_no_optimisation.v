`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 16:19:29
// Design Name: 
// Module Name: lab75_add_sub_16bit_no_optimisation
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

// this is adder and substractor ithout optimisation

module lab75_add_sub_16bit_no_optimisation #(parameter N = 16)(
                            input [N-1:0] a_in, b_in, 
                            input opcode,
                            output reg [N-1:0]result_out,
                            output reg carry_out
    );
always @(*)
begin
    case(opcode)
    1'b0 : {carry_out, result_out} = a_in + b_in ;
    1'b1 : {carry_out, result_out} = a_in - b_in ;
    endcase
end    

endmodule
