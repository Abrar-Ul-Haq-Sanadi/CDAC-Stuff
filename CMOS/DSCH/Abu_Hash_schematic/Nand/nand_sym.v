// DSCH3
// 11-07-2024 15:41:17
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Nand\nand_sym.sch

module nand_sym( in1,in2,out1);
 input in1,in2;
 output out1;
 wire ;
 nand #(13) nand2_1(out1,in2,in1);
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
