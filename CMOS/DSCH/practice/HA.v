// DSCH3
// 7/6/2024 5:09:28 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\HA.sch

module HA( B,A,S,C);
 input B,A;
 output S,C;
 wire ;
 xor #(16) xor2_1(S,A,B);
 and #(16) and2_2(C,B,A);
endmodule

// Simulation parameters in Verilog Format
always
#2000 B=~B;
#1000 A=~A;

// Simulation parameters
// B CLK 20.000 20.000
// A CLK 10.000 10.000
