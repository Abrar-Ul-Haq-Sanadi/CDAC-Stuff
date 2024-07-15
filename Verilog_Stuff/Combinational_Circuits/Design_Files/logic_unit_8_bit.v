`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 21:15:39
// Design Name: 
// Module Name: logic_unit_8_bit
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


module logic_unit_8_bit #(parameter DATA_SIZE = 8)(
                            reg [DATA_SIZE-1:0]a_in,
                            reg [DATA_SIZE-1:0] b_in,
                            reg [1:0] opcode,
                            output reg [DATA_SIZE-1:0] result_out
    );


always @(*)
begin
        case(opcode)
            2'b00 : result_out = a_in | b_in ;
            2'b01 : result_out = a_in ^ b_in ;
            2'b10 : result_out = a_in & b_in ;
            2'b11 : result_out = ~a_in;
        endcase
end
endmodule
