// DSCH3
// 08-08-2014 11:06:58 AM
// D:\installed program\DSCH\examples\Add4.sch

module Add4( b1,b2,b3,b4,a1,a2,a3,a4,
 sum4,sum5,sum6,sum7,sum8,sum4,sum5,sum6,
 sum7,sum8,out2);
 input b1,b2,b3,b4,a1,a2,a3,a4;
 output sum4,sum5,sum6,sum7,sum8,sum4,sum5,sum6;
 output sum7,sum8,out2;
 wire w10,w19,w20,w24,w25,w26;
 xor #(20) xor2_1(sum8,b1,a1);
 and #(22) and2_2(w10,a1,b1);
 xor #(15) xor2_3(w24,b3,a3);
 assign w20=(b3&a3)|(w19&(b3|a3))
 xor #(22) xor2_4(sum6,w24,w19);
 xor #(15) xor2_5(w25,b2,a2);
 assign w19=(b2&a2)|(w10&(b2|a2))
 xor #(22) xor2_6(sum7,w25,w10);
 xor #(15) xor2_7(w26,b4,a4);
 assign out2=(b4&a4)|(w20&(b4|a4))
 xor #(22) xor2_8(sum5,w26,w20);
endmodule

// Simulation parameters in Verilog Format

// Simulation parameters
// b1 CLK 10 10
// b2 CLK 20 20
// b3 GND
// b4 GND
// a1 CLK 40 40
// a2 CLK 80 80
// a3 GND
// a4 GND
