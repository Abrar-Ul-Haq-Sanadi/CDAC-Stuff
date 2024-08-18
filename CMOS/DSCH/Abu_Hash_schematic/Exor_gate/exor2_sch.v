// DSCH3
// 12-07-2024 15:41:54
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Exor_gate\exor2_sch.sch

module exor2_sch( in1,in2,out1);
 input in1,in2;
 output out1;
 wire w3,w4,w6,w7,w8,;
 pmos #(24) pmos_1(w3,vdd,in1); // 2.0u 0.12u
 pmos #(31) pmos_2(out1,w3,w4); // 2.0u 0.12u
 nmos #(31) nmos_3(out1,w6,w4); // 1.0u 0.12u
 pmos #(31) pmos_4(out1,w3,w7); // 2.0u 0.12u
 nmos #(31) nmos_5(out1,w8,in1); // 1.0u 0.12u
 nmos #(10) nmos_6(w8,vss,in2); // 1.0u 0.12u
 nmos #(10) nmos_7(w6,vss,w7); // 1.0u 0.12u
 pmos #(24) pmos_8(w3,vdd,in2); // 2.0u 0.12u
 nmos #(24) nmos_9(w4,vss,in1); // 1.0u 0.12u
 pmos #(24) pmos_10(w4,vdd,in1); // 2.0u 0.12u
 pmos #(24) pmos_11(w7,vdd,in2); // 2.0u 0.12u
 nmos #(24) nmos_12(w7,vss,in2); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
