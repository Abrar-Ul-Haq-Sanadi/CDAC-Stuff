// DSCH3
// 11-07-2024 16:52:05
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Nand\nand3_sch.sch

module nand3_sch( in1,in2,in3,out2);
 input in1,in2,in3;
 output out2;
 wire w2,w4,w8;
 nmos nmos_1(w4,w2,in2); // 1.0u 0.12u
 nmos nmos_2(out2,w4,in1); // 1.0u 0.12u
 nmos nmos_3(w2,vss,in3); // 1.0u 0.12u
 pmos pmos_4(out2,vdd,in2); // 2.0u 0.12u
 pmos pmos_5(w8,vdd,in1); // 2.0u 0.12u
 pmos pmos_6(w8,vdd,in3); // 2.0u 0.12u
endmodule
