// DSCH3
// 11-07-2024 18:55:30
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\nor2_sym.sch

module nor2_sym( in1,in2,out1);
 input in1,in2;
 output out1;
 wire ;
 nor #(16) nor2_1(out1,in1,in2);
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
