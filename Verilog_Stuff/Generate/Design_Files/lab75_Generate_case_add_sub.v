`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 16:20:36
// Design Name: 
// Module Name: lab75_Generate_case_add_sub
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

`define optimise 0
module lab75_Generate_case_add_sub #(parameter N = 16)(
                            input [N-1:0] a_in, b_in, 
                            input opcode,
                            output [N-1:0]result_out,
                            output carry_out
);


generate 
begin
    case(`optimise)
            1'b0:    lab75_add_sub_16bit_no_optimisation dut1   (
                             .a_in(a_in), .b_in(b_in), 
                            .opcode(opcode),
                            .result_out(result_out),
                            .carry_out(carry_out)
                        );
                            
              1'b1 : lab75_add_sub_16bit_optimised dut2 (
                            .a_in(a_in), .b_in(b_in), 
                            .opcode(opcode),
                            .result_out(result_out),
                            .carry_out(carry_out)
                        );
                        
      endcase
end
endgenerate


endmodule
