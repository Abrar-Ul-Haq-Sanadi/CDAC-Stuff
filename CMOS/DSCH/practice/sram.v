// DSCH3
// 7/7/2024 12:56:40 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\sram.sch

module sram( in1,in2,in3);
 input in1,in2,in3;
 wire w2,w3,;
 not #(17) inv_1(w3,w2);
 not #(17) inv_2(w2,w3);
 nmos #(10) nmos_3(in3,w3,in2); // 1.0u 0.12u
 nmos #(17) nmos_4(w2,in1,in2); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;
#4000 in3=~in3;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
// in3 CLK 40 40
