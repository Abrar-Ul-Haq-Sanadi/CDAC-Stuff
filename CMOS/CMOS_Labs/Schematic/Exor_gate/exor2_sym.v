// DSCH3
// 12-07-2024 14:59:42
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Exor_gate\exor2_sym.sch

module exor2_sym( in2,in1,out1);
 input in2,in1;
 output out1;
 wire ;
 xor #(16) xor2_1(out1,in1,in2);
endmodule

// Simulation parameters in Verilog Format
always
#1000 in2=~in2;
#2000 in1=~in1;

// Simulation parameters
// in2 CLK 10 10
// in1 CLK 20 20
