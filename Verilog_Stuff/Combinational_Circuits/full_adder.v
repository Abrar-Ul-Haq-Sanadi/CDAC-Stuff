`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 18:23:21
// Design Name: 
// Module Name: full_adder
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


module full_adder(
                    reg a_in,
                    reg b_in,
                    reg c_in,
                    output sum_out,
                    output carry_out
                   );
wire sum_out1;
wire carry_out1;
wire carry_out2;

half_adder HA1(.a_in(a_in), 
                .b_in(b_in), 
                .sum_out(sum_out1), 
                .carry_out(carry_out1));
                
half_adder HA2(.a_in(sum_out1),
                 .b_in(c_in), 
                 .sum_out(sum_out), 
                 .carry_out(carry_out2));
                 
assign carry_out = carry_out1 | carry_out2;

endmodule

/*
module half_adder(
                    reg a_in,
                    reg b_in,
                    output sum_out,
                    output carry_out
                    );
                  
assign sum_out = a_in ^ b_in;               // this is for calculating sum
assign carry_out = a_in && b_in;            // this is for calculating the carry

endmodule*/
