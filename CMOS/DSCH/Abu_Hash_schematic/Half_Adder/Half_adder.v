// DSCH3
// 13-07-2024 19:15:15
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Half_Adder\Half_adder.sch

module Half_adder( A_in,B_in,Sum_Out,C_out);
 input A_in,B_in;
 output Sum_Out,C_out;
 wire w2,w3,w4,w6,w7,w8,w11,w12;
 wire ;
 pmos #(24) pmos_1(w3,vdd,w2); // 2.0u 0.12u
 pmos #(31) pmos_2(Sum_Out,w3,w4); // 2.0u 0.12u
 nmos #(31) nmos_3(Sum_Out,w6,w4); // 1.0u 0.12u
 pmos #(31) pmos_4(Sum_Out,w3,w7); // 2.0u 0.12u
 nmos #(31) nmos_5(Sum_Out,w8,w2); // 1.0u 0.12u
 nmos #(10) nmos_6(w8,vss,B_in); // 1.0u 0.12u
 nmos #(10) nmos_7(w6,vss,w7); // 1.0u 0.12u
 pmos #(24) pmos_8(w3,vdd,B_in); // 2.0u 0.12u
 nmos #(24) nmos_9(w4,vss,w2); // 1.0u 0.12u
 pmos #(24) pmos_10(w4,vdd,w2); // 2.0u 0.12u
 pmos #(24) pmos_11(w7,vdd,B_in); // 2.0u 0.12u
 nmos #(24) nmos_12(w7,vss,B_in); // 1.0u 0.12u
 nmos #(10) nmos_13(w11,vss,B_in); // 1.0u 0.12u
 pmos #(31) pmos_14(w12,vdd,B_in); // 2.0u 0.12u
 pmos #(31) pmos_15(w12,vdd,w2); // 2.0u 0.12u
 nmos #(31) nmos_16(w12,w11,w2); // 1.0u 0.12u
 pmos #(17) pmos_17(C_out,vdd,w12); // 2.0u 0.12u
 nmos #(17) nmos_18(C_out,vss,w12); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 A_in=~A_in;
#2000 B_in=~B_in;

// Simulation parameters
// A_in CLK 10 10
// B_in CLK 20 20
