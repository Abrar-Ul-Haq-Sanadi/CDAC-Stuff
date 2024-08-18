// DSCH3
// 14-07-2024 18:23:53
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\SRAM-6T\Sram_6T_sch.sch

module Sram_6T_sch( WL,BL,out1,out2);
 input WL,BL;
 output out1,out2;
 wire w5,;
 pmos #(38) pmos_1(out1,vdd,out2); // 2.0u 0.12u
 nmos #(10) nmos_2(w5,out1,WL); // 1.0u 0.12u
 nmos #(38) nmos_3(out1,vss,out2); // 1.0u 0.12u
 pmos #(38) pmos_4(out2,vdd,out1); // 2.0u 0.12u
 nmos #(38) nmos_5(out2,vss,out1); // 1.0u 0.12u
 nmos #(38) nmos_6(out2,BL,WL); // 1.0u 0.12u
 not #(10) inv_7(w5,BL);
endmodule

// Simulation parameters in Verilog Format
always
#1000 WL=~WL;
#2000 BL=~BL;

// Simulation parameters
// WL CLK 10 10
// BL CLK 20 20
