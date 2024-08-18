// DSCH3
// 13-07-2024 19:30:05
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Full_Adder\Full_adder_Sym.sch

module Full_adder_Sym( A_in,B_in,C_in,Sum_out,C_out);
 input A_in,B_in,C_in;
 output Sum_out,C_out;
 wire w4,w5,w7,w10,w11,w12,w13,w14;
 wire w15,w16,w17,w18,w19,w20,w21,w22;
 wire w23,w24,w25,w26;
 or #(27) or2_sch_1(C_out,w4,w5);
 pmos #(44) pmos_1_2(w12,w10,w11); //  
 pmos #(12) pmos_2_3(w10,vdd,w4); //  
 nmos #(44) nmos_3_4(w12,vss,w5); //  
 nmos #(44) nmos_4_5(w12,vss,w4); //  
 pmos #(23) pmos_5_6(C_out,vdd,w12); //  
 nmos #(23) nmos_6_7(C_out,vss,w12); //  
 pmos #(22) pmos_1_8(w13,vdd,B_in); //  
 pmos #(64) pmos_2_9(w7,w13,w14); //  
 nmos #(64) nmos_3_10(w7,w15,w14); //  
 pmos #(64) pmos_4_11(w7,w13,w16); //  
 nmos #(64) nmos_5_12(w7,w17,B_in); //  
 nmos #(8) nmos_6_13(w17,vss,A_in); //  
 nmos #(8) nmos_7_14(w15,vss,w16); //  
 pmos #(22) pmos_8_15(w13,vdd,A_in); //  
 nmos #(22) nmos_9_16(w14,vss,B_in); //  
 pmos #(22) pmos_10_17(w14,vdd,B_in); //  
 pmos #(22) pmos_11_18(w16,vdd,A_in); //  
 nmos #(22) nmos_12_19(w16,vss,A_in); //  
 nmos #(8) nmos_13_20(w18,vss,A_in); //  
 pmos #(29) pmos_14_21(w19,vdd,A_in); //  
 pmos #(29) pmos_15_22(w19,vdd,B_in); //  
 nmos #(29) nmos_16_23(w19,w18,B_in); //  
 pmos #(22) pmos_17_24(w4,vdd,w19); //  
 nmos #(22) nmos_18_25(w4,vss,w19); //  
 pmos #(22) pmos_1_26(w20,vdd,C_in); //  
 pmos #(29) pmos_2_27(Sum_out,w20,w21); //  
 nmos #(29) nmos_3_28(Sum_out,w22,w21); //  
 pmos #(29) pmos_4_29(Sum_out,w20,w23); //  
 nmos #(29) nmos_5_30(Sum_out,w24,C_in); //  
 nmos #(8) nmos_6_31(w24,vss,w7); //  
 nmos #(8) nmos_7_32(w22,vss,w23); //  
 pmos #(22) pmos_8_33(w20,vdd,w7); //  
 nmos #(22) nmos_9_34(w21,vss,C_in); //  
 pmos #(22) pmos_10_35(w21,vdd,C_in); //  
 pmos #(22) pmos_11_36(w23,vdd,w7); //  
 nmos #(22) nmos_12_37(w23,vss,w7); //  
 nmos #(8) nmos_13_38(w25,vss,w7); //  
 pmos #(29) pmos_14_39(w26,vdd,w7); //  
 pmos #(29) pmos_15_40(w26,vdd,C_in); //  
 nmos #(29) nmos_16_41(w26,w25,C_in); //  
 pmos #(15) pmos_17_42(w5,vdd,w26); //  
 nmos #(15) nmos_18_43(w5,vss,w26); //  
endmodule

// Simulation parameters in Verilog Format
always
#1000 A_in=~A_in;
#2000 B_in=~B_in;
#4000 C_in=~C_in;

// Simulation parameters
// A_in CLK 10 10
// B_in CLK 20 20
// C_in CLK 40 40
