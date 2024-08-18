DSCH3
VERSION 7/7/2024 1:52:09 PM
BB(-9,-14,159,50)
SYM  #inv
BB(55,0,90,20)
TITLE 70 10  #inv_1
MODEL 101
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(55,10,0.000,0.000)in
PIN(90,10,0.030,0.140)out
LIG(55,10,65,10)
LIG(65,0,65,20)
LIG(65,0,80,10)
LIG(65,20,80,10)
LIG(82,10,82,10)
LIG(84,10,90,10)
VLG   not not1(out,in);
FSYM
SYM  #inv
BB(55,30,90,50)
TITLE 75 40  #inv_2
MODEL 101
PROP                                                                                                                                    
REC(145,0,0,0, )
VIS 0
PIN(90,40,0.000,0.000)in
PIN(55,40,0.030,0.140)out
LIG(90,40,80,40)
LIG(80,30,80,50)
LIG(80,30,65,40)
LIG(80,50,65,40)
LIG(63,40,63,40)
LIG(61,40,55,40)
VLG   not not1(out,in);
FSYM
SYM  #nmos
BB(115,5,135,25)
TITLE 130 20  #nmos_3
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(115,6,15,19,r)
VIS 2
PIN(115,25,0.000,0.000)s
PIN(125,5,0.000,0.000)g
PIN(135,25,0.030,0.070)d
LIG(125,15,125,5)
LIG(119,15,131,15)
LIG(119,17,131,17)
LIG(131,25,131,17)
LIG(135,25,131,25)
LIG(119,25,119,17)
LIG(115,25,119,25)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(10,5,30,25)
TITLE 25 20  #nmos_4
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(10,6,15,19,r)
VIS 2
PIN(10,25,0.000,0.000)s
PIN(20,5,0.000,0.000)g
PIN(30,25,0.030,0.140)d
LIG(20,15,20,5)
LIG(14,15,26,15)
LIG(14,17,26,17)
LIG(26,25,26,17)
LIG(30,25,26,25)
LIG(14,25,14,17)
LIG(10,25,14,25)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #button
BB(-9,21,0,29)
TITLE -5 25  #button1
MODEL 59
PROP                                                                                                                                    
REC(-8,22,6,6,r)
VIS 1
PIN(0,25,0.000,0.000)in1
LIG(-1,25,0,25)
LIG(-9,29,-9,21)
LIG(-1,29,-9,29)
LIG(-1,21,-1,29)
LIG(-9,21,-1,21)
LIG(-8,28,-8,22)
LIG(-2,28,-8,28)
LIG(-2,22,-2,28)
LIG(-8,22,-2,22)
FSYM
SYM  #button
BB(1,-14,10,-6)
TITLE 5 -10  #button2
MODEL 59
PROP                                                                                                                                    
REC(2,-13,6,6,r)
VIS 1
PIN(10,-10,0.000,0.000)in2
LIG(9,-10,10,-10)
LIG(1,-6,1,-14)
LIG(9,-6,1,-6)
LIG(9,-14,9,-6)
LIG(1,-14,9,-14)
LIG(2,-7,2,-13)
LIG(8,-7,2,-7)
LIG(8,-13,8,-7)
LIG(2,-13,8,-13)
FSYM
SYM  #button
BB(150,21,159,29)
TITLE 155 25  #button3
MODEL 59
PROP                                                                                                                                    
REC(152,22,6,6,r)
VIS 1
PIN(150,25,0.000,0.000)in3
LIG(151,25,150,25)
LIG(159,29,159,21)
LIG(151,29,159,29)
LIG(151,21,151,29)
LIG(159,21,151,21)
LIG(158,28,158,22)
LIG(152,28,158,28)
LIG(152,22,152,28)
LIG(158,22,152,22)
FSYM
CNC(20 -10)
CNC(45 25)
CNC(100 25)
LIG(55,10,45,10)
LIG(45,10,45,25)
LIG(45,40,55,40)
LIG(90,10,100,10)
LIG(100,10,100,25)
LIG(100,40,90,40)
LIG(10,-10,20,-10)
LIG(20,-10,20,5)
LIG(125,-10,20,-10)
LIG(30,25,45,25)
LIG(45,25,45,40)
LIG(100,25,115,25)
LIG(100,25,100,40)
LIG(10,25,0,25)
LIG(135,25,150,25)
LIG(125,5,125,-10)
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\sram.sch
