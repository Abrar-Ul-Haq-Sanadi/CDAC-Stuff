// DSCH3
// 14-07-2024 17:38:37
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Full_Adder\Fulll_adder_4bit.sch

module Fulll_adder_4bit( A[0],B[0],Cin,B[1],A[1],B[2],A[2],B[3],
 A[3],S[0],S[1],S[2],S[3],Cout);
 input A[0],B[0],Cin,B[1],A[1],B[2],A[2],B[3];
 input A[3];
 output S[0],S[1],S[2],S[3],Cout;
 wire w6,w10,w14,w19,w20,w21,w22,w23;
 wire w24,w25,w26,w27,w28,w29,w30;
 xor xor2_1_1(w19,A[0],B[0]);
 and and2_2_2(w20,A[0],B[0]);
 xor xor2_3_3(S[0],w19,Cin);
 or or2_4_4(w6,w21,w20);
 and and2_5_5(w21,Cin,w19);
 xor xor2_1_6(w22,A[1],B[1]);
 and and2_2_7(w23,A[1],B[1]);
 xor xor2_3_8(S[1],w22,w6);
 or or2_4_9(w10,w24,w23);
 and and2_5_10(w24,w6,w22);
 xor xor2_1_11(w25,A[2],B[2]);
 and and2_2_12(w26,A[2],B[2]);
 xor xor2_3_13(S[2],w25,w10);
 or or2_4_14(w14,w27,w26);
 and and2_5_15(w27,w10,w25);
 xor xor2_1_16(w28,A[3],B[3]);
 and and2_2_17(w29,A[3],B[3]);
 xor xor2_3_18(S[3],w28,w14);
 or or2_4_19(Cout,w30,w29);
 and and2_5_20(w30,w14,w28);
endmodule
