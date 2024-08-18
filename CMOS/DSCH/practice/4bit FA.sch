DSCH3
VERSION 7/6/2024 5:39:56 PM
BB(-74,-25,239,44)
SYM  #FA
BB(150,0,180,40)
TITLE 160 -7  #FA
MODEL 6000
PROP                                                                                                                                   
REC(155,5,20,30,r)
VIS 5
PIN(150,30,0.000,0.000)A
PIN(150,20,0.000,0.000)B
PIN(150,10,0.000,0.000)C
PIN(180,10,0.060,0.070)S
PIN(180,20,0.060,0.070)COUT
LIG(150,30,155,30)
LIG(150,20,155,20)
LIG(150,10,155,10)
LIG(175,10,180,10)
LIG(175,20,180,20)
LIG(155,5,155,35)
LIG(155,5,175,5)
LIG(175,5,175,35)
LIG(175,35,155,35)
VLG  module FA( A,B,C,S,COUT);
VLG   input A,B,C;
VLG   output S,COUT;
VLG   wire w4,w7,w8,;
VLG   xor xor2_1(w4,A,B);
VLG   xor xor2_2(S,w4,C);
VLG   and and2_3(w7,B,A);
VLG   and and2_4(w8,C,w4);
VLG   or or2_5(COUT,w8,w7);
VLG  endmodule
FSYM
SYM  #FA
BB(-50,0,-20,40)
TITLE -40 -7  #FA
MODEL 6000
PROP                                                                                                                                   
REC(-45,5,20,30,r)
VIS 5
PIN(-50,30,0.000,0.000)A
PIN(-50,20,0.000,0.000)B
PIN(-50,10,0.000,0.000)C
PIN(-20,10,0.060,0.070)S
PIN(-20,20,0.060,0.070)COUT
LIG(-50,30,-45,30)
LIG(-50,20,-45,20)
LIG(-50,10,-45,10)
LIG(-25,10,-20,10)
LIG(-25,20,-20,20)
LIG(-45,5,-45,35)
LIG(-45,5,-25,5)
LIG(-25,5,-25,35)
LIG(-25,35,-45,35)
VLG  module FA( A,B,C,S,COUT);
VLG   input A,B,C;
VLG   output S,COUT;
VLG   wire w4,w7,w8,;
VLG   xor xor2_1(w4,A,B);
VLG   xor xor2_2(S,w4,C);
VLG   and and2_3(w7,B,A);
VLG   and and2_4(w8,C,w4);
VLG   or or2_5(COUT,w8,w7);
VLG  endmodule
FSYM
SYM  #FA
BB(20,0,50,40)
TITLE 30 -7  #FA
MODEL 6000
PROP                                                                                                                                   
REC(25,5,20,30,r)
VIS 5
PIN(20,30,0.000,0.000)A
PIN(20,20,0.000,0.000)B
PIN(20,10,0.000,0.000)C
PIN(50,10,0.060,0.070)S
PIN(50,20,0.060,0.070)COUT
LIG(20,30,25,30)
LIG(20,20,25,20)
LIG(20,10,25,10)
LIG(45,10,50,10)
LIG(45,20,50,20)
LIG(25,5,25,35)
LIG(25,5,45,5)
LIG(45,5,45,35)
LIG(45,35,25,35)
VLG  module FA( A,B,C,S,COUT);
VLG   input A,B,C;
VLG   output S,COUT;
VLG   wire w4,w7,w8,;
VLG   xor xor2_1(w4,A,B);
VLG   xor xor2_2(S,w4,C);
VLG   and and2_3(w7,B,A);
VLG   and and2_4(w8,C,w4);
VLG   or or2_5(COUT,w8,w7);
VLG  endmodule
FSYM
SYM  #FA
BB(85,0,115,40)
TITLE 95 -7  #FA
MODEL 6000
PROP                                                                                                                                   
REC(90,5,20,30,r)
VIS 5
PIN(85,30,0.000,0.000)A
PIN(85,20,0.000,0.000)B
PIN(85,10,0.000,0.000)C
PIN(115,10,0.060,0.070)S
PIN(115,20,0.060,0.070)COUT
LIG(85,30,90,30)
LIG(85,20,90,20)
LIG(85,10,90,10)
LIG(110,10,115,10)
LIG(110,20,115,20)
LIG(90,5,90,35)
LIG(90,5,110,5)
LIG(110,5,110,35)
LIG(110,35,90,35)
VLG  module FA( A,B,C,S,COUT);
VLG   input A,B,C;
VLG   output S,COUT;
VLG   wire w4,w7,w8,;
VLG   xor xor2_1(w4,A,B);
VLG   xor xor2_2(S,w4,C);
VLG   and and2_3(w7,B,A);
VLG   and and2_4(w8,C,w4);
VLG   or or2_5(COUT,w8,w7);
VLG  endmodule
FSYM
SYM  #light
BB(213,-5,219,9)
TITLE 215 9  #light3
MODEL 49
PROP                                                                                                                                   
REC(214,-4,4,4,r)
VIS 1
PIN(215,10,0.000,0.000)out3
LIG(218,1,218,-4)
LIG(218,-4,217,-5)
LIG(214,-4,214,1)
LIG(217,6,217,3)
LIG(216,6,219,6)
LIG(216,8,218,6)
LIG(217,8,219,6)
LIG(213,3,219,3)
LIG(215,3,215,10)
LIG(213,1,213,3)
LIG(219,1,213,1)
LIG(219,3,219,1)
LIG(215,-5,214,-4)
LIG(217,-5,215,-5)
FSYM
SYM  #light
BB(233,5,239,19)
TITLE 235 19  #light4
MODEL 49
PROP                                                                                                                                   
REC(234,6,4,4,r)
VIS 1
PIN(235,20,0.000,0.000)out4
LIG(238,11,238,6)
LIG(238,6,237,5)
LIG(234,6,234,11)
LIG(237,16,237,13)
LIG(236,16,239,16)
LIG(236,18,238,16)
LIG(237,18,239,16)
LIG(233,13,239,13)
LIG(235,13,235,20)
LIG(233,11,233,13)
LIG(239,11,233,11)
LIG(239,13,239,11)
LIG(235,5,234,6)
LIG(237,5,235,5)
FSYM
SYM  #button
BB(-74,16,-65,24)
TITLE -70 20  #button4
MODEL 59
PROP                                                                                                                                   
REC(-73,17,6,6,r)
VIS 1
PIN(-65,20,0.000,0.000)in4
LIG(-66,20,-65,20)
LIG(-74,24,-74,16)
LIG(-66,24,-74,24)
LIG(-66,16,-66,24)
LIG(-74,16,-66,16)
LIG(-73,23,-73,17)
LIG(-67,23,-73,23)
LIG(-67,17,-67,23)
LIG(-73,17,-67,17)
FSYM
SYM  #button
BB(-74,26,-65,34)
TITLE -70 30  #button5
MODEL 59
PROP                                                                                                                                   
REC(-73,27,6,6,r)
VIS 1
PIN(-65,30,0.000,0.000)in5
LIG(-66,30,-65,30)
LIG(-74,34,-74,26)
LIG(-66,34,-74,34)
LIG(-66,26,-66,34)
LIG(-74,26,-66,26)
LIG(-73,33,-73,27)
LIG(-67,33,-73,33)
LIG(-67,27,-67,33)
LIG(-73,27,-67,27)
FSYM
SYM  #button
BB(-4,21,5,29)
TITLE 0 25  #button6
MODEL 59
PROP                                                                                                                                   
REC(-3,22,6,6,r)
VIS 1
PIN(5,25,0.000,0.000)in6
LIG(4,25,5,25)
LIG(-4,29,-4,21)
LIG(4,29,-4,29)
LIG(4,21,4,29)
LIG(-4,21,4,21)
LIG(-3,28,-3,22)
LIG(3,28,-3,28)
LIG(3,22,3,28)
LIG(-3,22,3,22)
FSYM
SYM  #button
BB(11,36,20,44)
TITLE 15 40  #button7
MODEL 59
PROP                                                                                                                                   
REC(12,37,6,6,r)
VIS 1
PIN(20,40,0.000,0.000)in7
LIG(19,40,20,40)
LIG(11,44,11,36)
LIG(19,44,11,44)
LIG(19,36,19,44)
LIG(11,36,19,36)
LIG(12,43,12,37)
LIG(18,43,12,43)
LIG(18,37,18,43)
LIG(12,37,18,37)
FSYM
SYM  #button
BB(66,26,75,34)
TITLE 70 30  #button8
MODEL 59
PROP                                                                                                                                   
REC(67,27,6,6,r)
VIS 1
PIN(75,30,0.000,0.000)in8
LIG(74,30,75,30)
LIG(66,34,66,26)
LIG(74,34,66,34)
LIG(74,26,74,34)
LIG(66,26,74,26)
LIG(67,33,67,27)
LIG(73,33,67,33)
LIG(73,27,73,33)
LIG(67,27,73,27)
FSYM
SYM  #button
BB(76,36,85,44)
TITLE 80 40  #button9
MODEL 59
PROP                                                                                                                                   
REC(77,37,6,6,r)
VIS 1
PIN(85,40,0.000,0.000)in9
LIG(84,40,85,40)
LIG(76,44,76,36)
LIG(84,44,76,44)
LIG(84,36,84,44)
LIG(76,36,84,36)
LIG(77,43,77,37)
LIG(83,43,77,43)
LIG(83,37,83,43)
LIG(77,37,83,37)
FSYM
SYM  #button
BB(131,26,140,34)
TITLE 135 30  #button10
MODEL 59
PROP                                                                                                                                   
REC(132,27,6,6,r)
VIS 1
PIN(140,30,0.000,0.000)in10
LIG(139,30,140,30)
LIG(131,34,131,26)
LIG(139,34,131,34)
LIG(139,26,139,34)
LIG(131,26,139,26)
LIG(132,33,132,27)
LIG(138,33,132,33)
LIG(138,27,138,33)
LIG(132,27,138,27)
FSYM
SYM  #button
BB(141,36,150,44)
TITLE 145 40  #button11
MODEL 59
PROP                                                                                                                                   
REC(142,37,6,6,r)
VIS 1
PIN(150,40,0.000,0.000)in11
LIG(149,40,150,40)
LIG(141,44,141,36)
LIG(149,44,141,44)
LIG(149,36,149,44)
LIG(141,36,149,36)
LIG(142,43,142,37)
LIG(148,43,142,43)
LIG(148,37,148,43)
LIG(142,37,148,37)
FSYM
SYM  #button
BB(-69,-19,-60,-11)
TITLE -65 -15  #button12
MODEL 59
PROP                                                                                                                                   
REC(-68,-18,6,6,r)
VIS 1
PIN(-60,-15,0.000,0.000)in12
LIG(-61,-15,-60,-15)
LIG(-69,-11,-69,-19)
LIG(-61,-11,-69,-11)
LIG(-61,-19,-61,-11)
LIG(-69,-19,-61,-19)
LIG(-68,-12,-68,-18)
LIG(-62,-12,-68,-12)
LIG(-62,-18,-62,-12)
LIG(-68,-18,-62,-18)
FSYM
SYM  #light
BB(-12,-25,-6,-11)
TITLE -10 -11  #light5
MODEL 49
PROP                                                                                                                                   
REC(-11,-24,4,4,r)
VIS 1
PIN(-10,-10,0.000,0.000)out5
LIG(-7,-19,-7,-24)
LIG(-7,-24,-8,-25)
LIG(-11,-24,-11,-19)
LIG(-8,-14,-8,-17)
LIG(-9,-14,-6,-14)
LIG(-9,-12,-7,-14)
LIG(-8,-12,-6,-14)
LIG(-12,-17,-6,-17)
LIG(-10,-17,-10,-10)
LIG(-12,-19,-12,-17)
LIG(-6,-19,-12,-19)
LIG(-6,-17,-6,-19)
LIG(-10,-25,-11,-24)
LIG(-8,-25,-10,-25)
FSYM
SYM  #light
BB(58,-25,64,-11)
TITLE 60 -11  #light6
MODEL 49
PROP                                                                                                                                   
REC(59,-24,4,4,r)
VIS 1
PIN(60,-10,0.000,0.000)out6
LIG(63,-19,63,-24)
LIG(63,-24,62,-25)
LIG(59,-24,59,-19)
LIG(62,-14,62,-17)
LIG(61,-14,64,-14)
LIG(61,-12,63,-14)
LIG(62,-12,64,-14)
LIG(58,-17,64,-17)
LIG(60,-17,60,-10)
LIG(58,-19,58,-17)
LIG(64,-19,58,-19)
LIG(64,-17,64,-19)
LIG(60,-25,59,-24)
LIG(62,-25,60,-25)
FSYM
SYM  #light
BB(123,-25,129,-11)
TITLE 125 -11  #light7
MODEL 49
PROP                                                                                                                                   
REC(124,-24,4,4,r)
VIS 1
PIN(125,-10,0.000,0.000)out7
LIG(128,-19,128,-24)
LIG(128,-24,127,-25)
LIG(124,-24,124,-19)
LIG(127,-14,127,-17)
LIG(126,-14,129,-14)
LIG(126,-12,128,-14)
LIG(127,-12,129,-14)
LIG(123,-17,129,-17)
LIG(125,-17,125,-10)
LIG(123,-19,123,-17)
LIG(129,-19,123,-19)
LIG(129,-17,129,-19)
LIG(125,-25,124,-24)
LIG(127,-25,125,-25)
FSYM
LIG(-50,10,-60,10)
LIG(-60,10,-60,-15)
LIG(-20,10,-10,10)
LIG(-10,10,-10,-15)
LIG(50,10,60,10)
LIG(60,10,60,-15)
LIG(115,10,125,10)
LIG(125,10,125,-15)
LIG(180,10,215,10)
LIG(150,30,150,40)
LIG(180,20,235,20)
LIG(-20,20,0,20)
LIG(0,20,0,10)
LIG(0,10,20,10)
LIG(50,20,70,20)
LIG(70,20,70,10)
LIG(70,10,85,10)
LIG(115,20,135,20)
LIG(135,20,135,10)
LIG(135,10,150,10)
LIG(-65,20,-50,20)
LIG(-50,30,-65,30)
LIG(5,20,20,20)
LIG(140,20,140,30)
LIG(5,20,5,25)
LIG(20,30,20,40)
LIG(85,20,75,20)
LIG(75,20,75,30)
LIG(85,30,85,40)
LIG(150,20,140,20)
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\4bit FA.sch
