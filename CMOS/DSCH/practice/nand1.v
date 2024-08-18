// DSCH3
// 7/6/2024 12:51:51 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\nand1.sch

module nand1( in1,in2,out1);
 input in1,in2;
 output out1;
 wire w2,;
 nmos #(24) nmos_1(out1,w2,in1); // 1.0u 0.12u
 nmos #(10) nmos_2(w2,vss,in2); // 1.0u 0.12u
 pmos #(24) pmos_3(out1,vdd,in1); // 2.0u 0.12u
 pmos #(24) pmos_4(out1,vdd,in2); // 2.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
