// DSCH3
// 7/6/2024 5:31:16 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\FA.sch

module FA( A,B,C,S,COUT);
 input A,B,C;
 output S,COUT;
 wire w4,w7,w8,;
 xor xor2_1(w4,A,B);
 xor xor2_2(S,w4,C);
 and and2_3(w7,B,A);
 and and2_4(w8,C,w4);
 or or2_5(COUT,w8,w7);
endmodule
