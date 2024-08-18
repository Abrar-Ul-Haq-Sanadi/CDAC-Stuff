// DSCH3
// 13-07-2024 19:51:36
// example

module example( A_in,B_in,C_in,Sum_out,C_out);
 input A_in,B_in,C_in;
 output Sum_out,C_out;
 wire w4,w5,w9;
 xor #(23) xor2_1(w4,A_in,B_in);
 and #(16) and2_2(w5,A_in,B_in);
 xor #(16) xor2_3(Sum_out,w4,C_in);
 or #(16) or2_4(C_out,w9,w5);
 and #(16) and2_5(w9,C_in,w4);
endmodule

// Simulation parameters in Verilog Format
always
#1000 A_in=~A_in;
#2000 B_in=~B_in;
#4000 C_in=~C_in;

// Simulation parameters
// A_in CLK 10 10
// B_in CLK 20 20
// C_in CLK 40 40
