// DSCH3
// 7/6/2024 5:42:10 PM
// E:\GLA\gla-2024\CDAC Training\DSCH\practice\4bit FA.sch

module 4bitFA( in4,in5,in6,in7,in8,in9,in10,in11,
 in12,out3,out4,out5,out6,out7);
 input in4,in5,in6,in7,in8,in9,in10,in11;
 input in12;
 output out3,out4,out5,out6,out7;
 wire w4,w11,w15,w19,w20,w21,w22,w23;
 wire w24,w25,w26,w27,w28,w29,w30;
 xor xor2_1_1(w19,in11,in10);
 xor xor2_2_2(out3,w19,w4);
 and and2_3_3(w20,in10,in11);
 and and2_4_4(w21,w4,w19);
 or or2_5_5(out4,w21,w20);
 xor xor2_1_6(w22,in5,in4);
 xor xor2_2_7(out5,w22,in12);
 and and2_3_8(w23,in4,in5);
 and and2_4_9(w24,in12,w22);
 or or2_5_10(w11,w24,w23);
 xor xor2_1_11(w25,in7,in6);
 xor xor2_2_12(out6,w25,w11);
 and and2_3_13(w26,in6,in7);
 and and2_4_14(w27,w11,w25);
 or or2_5_15(w15,w27,w26);
 xor xor2_1_16(w28,in9,in8);
 xor xor2_2_17(out7,w28,w15);
 and and2_3_18(w29,in8,in9);
 and and2_4_19(w30,w15,w28);
 or or2_5_20(w4,w30,w29);
endmodule
