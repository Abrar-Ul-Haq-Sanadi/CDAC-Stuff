DSCH3
VERSION 31-07-2024 09:30:28
BB(1,-15,224,55)
SYM  #button
BB(1,-4,10,4)
TITLE 5 0  #A_in
MODEL 59
PROP                                                                                                                                    
REC(2,-3,6,6,r)
VIS 1
PIN(10,0,0.000,0.000)A_in
LIG(9,0,10,0)
LIG(1,4,1,-4)
LIG(9,4,1,4)
LIG(9,-4,9,4)
LIG(1,-4,9,-4)
LIG(2,3,2,-3)
LIG(8,3,2,3)
LIG(8,-3,8,3)
LIG(2,-3,8,-3)
FSYM
SYM  #button
BB(1,6,10,14)
TITLE 5 10  #B_in
MODEL 59
PROP                                                                                                                                    
REC(2,7,6,6,r)
VIS 1
PIN(10,10,0.000,0.000)B_in
LIG(9,10,10,10)
LIG(1,14,1,6)
LIG(9,14,1,14)
LIG(9,6,9,14)
LIG(1,6,9,6)
LIG(2,13,2,7)
LIG(8,13,2,13)
LIG(8,7,8,13)
LIG(2,7,8,7)
FSYM
SYM  #or2_sch
BB(145,25,185,55)
TITLE 155 18  #or2_sch_1
MODEL 6000
PROP                                                                                                                                    
REC(150,30,30,20,r)
VIS 5
PIN(145,45,0.000,0.000)A_in
PIN(145,35,0.000,0.000)B_in
PIN(185,35,0.060,0.210)Y_out
LIG(145,45,150,45)
LIG(145,35,150,35)
LIG(180,35,185,35)
LIG(150,30,150,50)
LIG(150,30,180,30)
LIG(180,30,180,50)
LIG(180,50,150,50)
VLG   module or2_sch( A_in,B_in,Y_out);
VLG    input A_in,B_in;
VLG    output Y_out;
VLG    wire w3,w4,w5,;
VLG    pmos #(31) pmos_1(w5,w3,w4); // 2.0u 0.12u
VLG    pmos #(10) pmos_2(w3,vdd,A_in); // 2.0u 0.12u
VLG    nmos #(31) nmos_3(w5,vss,B_in); // 1.0u 0.12u
VLG    nmos #(31) nmos_4(w5,vss,A_in); // 1.0u 0.12u
VLG    pmos #(17) pmos_5(Y_out,vdd,w5); // 2.0u 0.12u
VLG    nmos #(17) nmos_6(Y_out,vss,w5); // 1.0u 0.12u
VLG   endmodule
FSYM
SYM  #Full_adder
BB(25,-10,65,20)
TITLE 35 -17  #Half_adder
MODEL 6000
PROP                                                                                                                                    
REC(30,-5,30,20,r)
VIS 5
PIN(25,10,0.000,0.000)A
PIN(25,0,0.000,0.000)B
PIN(65,0,0.060,0.700)Sum_Out
PIN(65,10,0.060,0.280)Carry_out
LIG(25,10,30,10)
LIG(25,0,30,0)
LIG(60,0,65,0)
LIG(60,10,65,10)
LIG(30,-5,30,15)
LIG(30,-5,60,-5)
LIG(60,-5,60,15)
LIG(60,15,30,15)
VLG   module Full_adder( A,B,Sum_Out,Carry_out);
VLG    input A,B;
VLG    output Sum_Out,Carry_out;
VLG    wire w3,w4,w6,w7,w8,w10,w11,;
VLG    pmos #(1) pmos_1(w3,vdd,A); // 2.0u 0.12u
VLG    pmos #(1) pmos_2(Sum_Out,w3,w4); // 2.0u 0.12u
VLG    nmos #(1) nmos_3(Sum_Out,w6,w4); // 1.0u 0.12u
VLG    pmos #(1) pmos_4(Sum_Out,w3,w7); // 2.0u 0.12u
VLG    nmos #(1) nmos_5(Sum_Out,w8,A); // 1.0u 0.12u
VLG    nmos #(1) nmos_6(w8,vss,B); // 1.0u 0.12u
VLG    nmos #(1) nmos_7(w6,vss,w7); // 1.0u 0.12u
VLG    pmos #(1) pmos_8(w3,vdd,B); // 2.0u 0.12u
VLG    nmos #(1) nmos_9(w4,vss,A); // 1.0u 0.12u
VLG    pmos #(1) pmos_10(w4,vdd,A); // 2.0u 0.12u
VLG    pmos #(1) pmos_11(w7,vdd,B); // 2.0u 0.12u
VLG    nmos #(1) nmos_12(w7,vss,B); // 1.0u 0.12u
VLG    nmos #(1) nmos_13(w10,vss,B); // 1.0u 0.12u
VLG    pmos #(1) pmos_14(w11,vdd,B); // 2.0u 0.12u
VLG    pmos #(1) pmos_15(w11,vdd,A); // 2.0u 0.12u
VLG    nmos #(1) nmos_16(w11,w10,A); // 1.0u 0.12u
VLG    pmos #(1) pmos_17(Carry_out,vdd,w11); // 2.0u 0.12u
VLG    nmos #(1) nmos_18(Carry_out,vss,w11); // 1.0u 0.12u
VLG   endmodule
FSYM
SYM  #Full_adder
BB(90,-10,130,20)
TITLE 100 -17  #Half_adder
MODEL 6000
PROP                                                                                                                                    
REC(95,-5,30,20,r)
VIS 5
PIN(90,10,0.000,0.000)A
PIN(90,0,0.000,0.000)B
PIN(130,0,0.060,0.350)Sum_Out
PIN(130,10,0.060,0.210)Carry_out
LIG(90,10,95,10)
LIG(90,0,95,0)
LIG(125,0,130,0)
LIG(125,10,130,10)
LIG(95,-5,95,15)
LIG(95,-5,125,-5)
LIG(125,-5,125,15)
LIG(125,15,95,15)
VLG   module Full_adder( A,B,Sum_Out,Carry_out);
VLG    input A,B;
VLG    output Sum_Out,Carry_out;
VLG    wire w3,w4,w6,w7,w8,w10,w11,;
VLG    pmos #(1) pmos_1(w3,vdd,A); // 2.0u 0.12u
VLG    pmos #(1) pmos_2(Sum_Out,w3,w4); // 2.0u 0.12u
VLG    nmos #(1) nmos_3(Sum_Out,w6,w4); // 1.0u 0.12u
VLG    pmos #(1) pmos_4(Sum_Out,w3,w7); // 2.0u 0.12u
VLG    nmos #(1) nmos_5(Sum_Out,w8,A); // 1.0u 0.12u
VLG    nmos #(1) nmos_6(w8,vss,B); // 1.0u 0.12u
VLG    nmos #(1) nmos_7(w6,vss,w7); // 1.0u 0.12u
VLG    pmos #(1) pmos_8(w3,vdd,B); // 2.0u 0.12u
VLG    nmos #(1) nmos_9(w4,vss,A); // 1.0u 0.12u
VLG    pmos #(1) pmos_10(w4,vdd,A); // 2.0u 0.12u
VLG    pmos #(1) pmos_11(w7,vdd,B); // 2.0u 0.12u
VLG    nmos #(1) nmos_12(w7,vss,B); // 1.0u 0.12u
VLG    nmos #(1) nmos_13(w10,vss,B); // 1.0u 0.12u
VLG    pmos #(1) pmos_14(w11,vdd,B); // 2.0u 0.12u
VLG    pmos #(1) pmos_15(w11,vdd,A); // 2.0u 0.12u
VLG    nmos #(1) nmos_16(w11,w10,A); // 1.0u 0.12u
VLG    pmos #(1) pmos_17(Carry_out,vdd,w11); // 2.0u 0.12u
VLG    nmos #(1) nmos_18(Carry_out,vss,w11); // 1.0u 0.12u
VLG   endmodule
FSYM
SYM  #light
BB(218,-15,224,-1)
TITLE 220 -1  #Sum_out
MODEL 49
PROP                                                                                                                                    
REC(219,-14,4,4,r)
VIS 1
PIN(220,0,0.000,0.000)Sum_out
LIG(223,-9,223,-14)
LIG(223,-14,222,-15)
LIG(219,-14,219,-9)
LIG(222,-4,222,-7)
LIG(221,-4,224,-4)
LIG(221,-2,223,-4)
LIG(222,-2,224,-4)
LIG(218,-7,224,-7)
LIG(220,-7,220,0)
LIG(218,-9,218,-7)
LIG(224,-9,218,-9)
LIG(224,-7,224,-9)
LIG(220,-15,219,-14)
LIG(222,-15,220,-15)
FSYM
SYM  #light
BB(218,20,224,34)
TITLE 220 34  #C_out
MODEL 49
PROP                                                                                                                                    
REC(219,21,4,4,r)
VIS 1
PIN(220,35,0.000,0.000)C_out
LIG(223,26,223,21)
LIG(223,21,222,20)
LIG(219,21,219,26)
LIG(222,31,222,28)
LIG(221,31,224,31)
LIG(221,33,223,31)
LIG(222,33,224,31)
LIG(218,28,224,28)
LIG(220,28,220,35)
LIG(218,26,218,28)
LIG(224,26,218,26)
LIG(224,28,224,26)
LIG(220,20,219,21)
LIG(222,20,220,20)
FSYM
SYM  #button
BB(1,21,10,29)
TITLE 5 25  #C_in
MODEL 59
PROP                                                                                                                                    
REC(2,22,6,6,r)
VIS 1
PIN(10,25,0.000,0.000)C_in
LIG(9,25,10,25)
LIG(1,29,1,21)
LIG(9,29,1,29)
LIG(9,21,9,29)
LIG(1,21,9,21)
LIG(2,28,2,22)
LIG(8,28,2,28)
LIG(8,22,8,28)
LIG(2,22,8,22)
FSYM
LIG(10,0,25,0)
LIG(10,10,25,10)
LIG(65,0,90,0)
LIG(65,10,65,45)
LIG(65,45,145,45)
LIG(10,25,80,25)
LIG(80,25,80,10)
LIG(80,10,90,10)
LIG(185,35,220,35)
LIG(130,0,220,0)
LIG(130,35,145,35)
LIG(130,10,130,35)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Full_Adder\Full_adder_Sym.sch
