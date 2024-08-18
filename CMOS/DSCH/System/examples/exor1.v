// DSCH3
// 7/1/2024 3:47:47 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\System\examples\exor1.sch

module exor1( in1,in2,out1);
 input in1,in2;
 output out1;
 wire ;
 xor #(16) xor2_1(out1,in1,in2);
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#2000 in2=~in2;

// Simulation parameters
// in1 CLK 10 10
// in2 CLK 20 20
