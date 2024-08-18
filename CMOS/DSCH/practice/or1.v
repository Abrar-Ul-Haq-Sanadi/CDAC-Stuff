// DSCH3
// 7/6/2024 3:09:03 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\or1.sch

module or1( in1,in2,out2);
 input in1,in2;
 output out2;
 wire w3,w5,;
 nmos #(31) nmos_1(w3,vss,in1); // 1.0u 0.12u
 nmos #(31) nmos_2(w3,vss,in2); // 1.0u 0.12u
 pmos #(10) pmos_3(w5,vdd,in1); // 2.0u 0.12u
 pmos #(31) pmos_4(w3,w5,in2); // 2.0u 0.12u
 nmos #(17) nmos_5(out2,vss,w3); // 1.0u 0.12u
 pmos #(17) pmos_6(out2,vdd,w3); // 2.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
