// DSCH3
// 31-07-2024 11:38:32
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Cmos_lab_exam\Exor_symbol_using_nor.sch

module Exor_symbol_using_nor( A,B,out1);
 input A,B;
 output out1;
 wire w4,w5,w6,;
 nor #(23) nor2_1(w4,A,B);
 nor #(16) nor2_2(w5,A,w4);
 nor #(16) nor2_3(w6,w4,B);
 nor #(16) nor2_4(out1,w5,w6);
endmodule

// Simulation parameters in Verilog Format
always
#1000 A=~A;
#2000 B=~B;

// Simulation parameters
// A CLK 10 10
// B CLK 20 20
