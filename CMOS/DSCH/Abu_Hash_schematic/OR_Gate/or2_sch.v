// DSCH3
// 13-07-2024 18:54:34
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\OR_Gate\or2_sch.sch

module or2_sch( A_in,B_in,Y_out);
 input A_in,B_in;
 output Y_out;
 wire w3,w4,w5,;
 pmos #(31) pmos_1(w5,w3,w4); // 2.0u 0.12u
 pmos #(10) pmos_2(w3,vdd,A_in); // 2.0u 0.12u
 nmos #(31) nmos_3(w5,vss,B_in); // 1.0u 0.12u
 nmos #(31) nmos_4(w5,vss,A_in); // 1.0u 0.12u
 pmos #(17) pmos_5(Y_out,vdd,w5); // 2.0u 0.12u
 nmos #(17) nmos_6(Y_out,vss,w5); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#1000 A_in=~A_in;
#2000 B_in=~B_in;

// Simulation parameters
// A_in CLK 10 10
// B_in CLK 20 20
