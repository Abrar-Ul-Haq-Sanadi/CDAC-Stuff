// DSCH3
// 7/6/2024 4:41:16 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\xor1.sch

module xor1( B,A,out2);
 input B,A;
 output out2;
 wire w3,w4,w5,w6,w7,w9,;
 nmos #(10) nmos_1(w3,vss,B); // 1.0u 0.12u
 nmos #(38) nmos_2(w5,w3,w4); // 1.0u 0.12u
 nmos #(10) nmos_3(w7,vss,w6); // 1.0u 0.12u
 nmos #(38) nmos_4(w5,w7,A); // 1.0u 0.12u
 pmos #(24) pmos_5(w9,vdd,A); // 2.0u 0.12u
 not #(17) inv_6(w6,B);
 pmos #(24) pmos_7(w9,vdd,w6); // 2.0u 0.12u
 not #(17) inv_8(w4,A);
 pmos #(38) pmos_9(w5,w9,w4); // 2.0u 0.12u
 pmos #(38) pmos_10(w5,w9,B); // 2.0u 0.12u
 nmos #(17) nmos_11(out2,vss,w5); // 1.0u 0.12u
 pmos #(17) pmos_12(out2,vdd,w5); // 2.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 B=~B;
#2000 A=~A;

// Simulation parameters
// B CLK 10 10
// A CLK 20 20
