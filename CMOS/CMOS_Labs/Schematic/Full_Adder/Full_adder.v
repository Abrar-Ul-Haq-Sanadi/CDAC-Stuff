// DSCH3
// 13-07-2024 19:22:50
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Full_Adder\Full_adder.sch

module Full_adder( A,B,Sum_Out,Carry_out);
 input A,B;
 output Sum_Out,Carry_out;
 wire w3,w4,w6,w7,w8,w10,w11,;
 pmos #(1) pmos_1(w3,vdd,A); // 2.0u 0.12u
 pmos #(1) pmos_2(Sum_Out,w3,w4); // 2.0u 0.12u
 nmos #(1) nmos_3(Sum_Out,w6,w4); // 1.0u 0.12u
 pmos #(1) pmos_4(Sum_Out,w3,w7); // 2.0u 0.12u
 nmos #(1) nmos_5(Sum_Out,w8,A); // 1.0u 0.12u
 nmos #(1) nmos_6(w8,vss,B); // 1.0u 0.12u
 nmos #(1) nmos_7(w6,vss,w7); // 1.0u 0.12u
 pmos #(1) pmos_8(w3,vdd,B); // 2.0u 0.12u
 nmos #(1) nmos_9(w4,vss,A); // 1.0u 0.12u
 pmos #(1) pmos_10(w4,vdd,A); // 2.0u 0.12u
 pmos #(1) pmos_11(w7,vdd,B); // 2.0u 0.12u
 nmos #(1) nmos_12(w7,vss,B); // 1.0u 0.12u
 nmos #(1) nmos_13(w10,vss,B); // 1.0u 0.12u
 pmos #(1) pmos_14(w11,vdd,B); // 2.0u 0.12u
 pmos #(1) pmos_15(w11,vdd,A); // 2.0u 0.12u
 nmos #(1) nmos_16(w11,w10,A); // 1.0u 0.12u
 pmos #(1) pmos_17(Carry_out,vdd,w11); // 2.0u 0.12u
 nmos #(1) nmos_18(Carry_out,vss,w11); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#10 A=~A;
#20 B=~B;

// Simulation parameters
// A CLK 10 10
// B CLK 20 20
