// DSCH3
// 7/6/2024 3:14:15 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\and1.sch

module and1( in1,in2,out2);
 input in1,in2;
 output out2;
 wire w2,w4,;
 nmos #(31) nmos_1(w4,w2,in1); // 1.0u 0.12u
 nmos #(10) nmos_2(w2,vss,in2); // 1.0u 0.12u
 pmos #(31) pmos_3(w4,vdd,in1); // 2.0u 0.12u
 pmos #(31) pmos_4(w4,vdd,in2); // 2.0u 0.12u
 nmos #(17) nmos_5(out2,vss,w4); // 1.0u 0.12u
 pmos #(17) pmos_6(out2,vdd,w4); // 2.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
