DSCH3
VERSION 11-07-2024 19:12:56
BB(6,-45,179,55)
SYM  #vdd
BB(75,-45,85,-35)
TITLE 78 -39  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,5,0,0, )
VIS 0
PIN(80,-35,0.000,0.000)vdd
LIG(80,-35,80,-40)
LIG(80,-40,75,-40)
LIG(75,-40,80,-45)
LIG(80,-45,85,-40)
LIG(85,-40,80,-40)
FSYM
SYM  #button
BB(150,6,159,14)
TITLE 155 10  #button2
MODEL 59
PROP                                                                                                                                   
REC(152,7,6,6,r)
VIS 1
PIN(150,10,0.000,0.000)in2
LIG(151,10,150,10)
LIG(159,14,159,6)
LIG(151,14,159,14)
LIG(151,6,151,14)
LIG(159,6,151,6)
LIG(158,13,158,7)
LIG(152,13,158,13)
LIG(152,7,152,13)
LIG(158,7,152,7)
FSYM
SYM  #light
BB(173,5,179,19)
TITLE 175 19  #light2
MODEL 49
PROP                                                                                                                                   
REC(174,6,4,4,r)
VIS 1
PIN(175,20,0.000,0.000)out2
LIG(178,11,178,6)
LIG(178,6,177,5)
LIG(174,6,174,11)
LIG(177,16,177,13)
LIG(176,16,179,16)
LIG(176,18,178,16)
LIG(177,18,179,16)
LIG(173,13,179,13)
LIG(175,13,175,20)
LIG(173,11,173,13)
LIG(179,11,173,11)
LIG(179,13,179,11)
LIG(175,5,174,6)
LIG(177,5,175,5)
FSYM
SYM  #pmos
BB(60,-35,80,-15)
TITLE 75 -30  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(61,-30,19,15,r)
VIS 2
PIN(80,-35,0.000,0.000)s
PIN(60,-25,0.000,0.000)g
PIN(80,-15,0.030,0.070)d
LIG(60,-25,66,-25)
LIG(68,-25,68,-25)
LIG(70,-19,70,-31)
LIG(72,-19,72,-31)
LIG(80,-31,72,-31)
LIG(80,-35,80,-31)
LIG(80,-19,72,-19)
LIG(80,-15,80,-19)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(80,-5,100,15)
TITLE 85 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(80,0,19,15,r)
VIS 2
PIN(80,-5,0.000,0.000)s
PIN(100,5,0.000,0.000)g
PIN(80,15,0.030,0.070)d
LIG(100,5,94,5)
LIG(92,5,92,5)
LIG(90,11,90,-1)
LIG(88,11,88,-1)
LIG(80,-1,88,-1)
LIG(80,-5,80,-1)
LIG(80,11,88,11)
LIG(80,15,80,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(6,-9,15,-1)
TITLE 10 -5  #button1
MODEL 59
PROP                                                                                                                                   
REC(7,-8,6,6,r)
VIS 1
PIN(15,-5,0.000,0.000)in1
LIG(14,-5,15,-5)
LIG(6,-1,6,-9)
LIG(14,-1,6,-1)
LIG(14,-9,14,-1)
LIG(6,-9,14,-9)
LIG(7,-2,7,-8)
LIG(13,-2,7,-2)
LIG(13,-8,13,-2)
LIG(7,-8,13,-8)
FSYM
SYM  #nmos
BB(45,25,65,45)
TITLE 60 30  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(46,30,19,15,r)
VIS 2
PIN(65,45,0.000,0.000)s
PIN(45,35,0.000,0.000)g
PIN(65,25,0.030,0.070)d
LIG(55,35,45,35)
LIG(55,41,55,29)
LIG(57,41,57,29)
LIG(65,29,57,29)
LIG(65,25,65,29)
LIG(65,41,57,41)
LIG(65,45,65,41)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(100,25,120,45)
TITLE 105 30  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(100,30,19,15,r)
VIS 2
PIN(100,45,0.000,0.000)s
PIN(120,35,0.000,0.000)g
PIN(100,25,0.030,0.070)d
LIG(110,35,120,35)
LIG(110,41,110,29)
LIG(108,41,108,29)
LIG(100,29,108,29)
LIG(100,25,100,29)
LIG(100,41,108,41)
LIG(100,45,100,41)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(75,47,85,55)
TITLE 79 52  #vss
MODEL 0
PROP                                                                                                                                    
REC(75,45,0,0,b)
VIS 0
PIN(80,45,0.000,0.000)vss
LIG(80,45,80,50)
LIG(75,50,85,50)
LIG(75,53,77,50)
LIG(77,53,79,50)
LIG(79,53,81,50)
LIG(81,53,83,50)
FSYM
CNC(80 20)
CNC(80 20)
LIG(80,-15,80,-5)
LIG(80,15,80,20)
LIG(15,-5,35,-5)
LIG(65,25,100,25)
LIG(65,45,100,45)
LIG(30,-5,30,35)
LIG(30,35,45,35)
LIG(35,-5,35,-25)
LIG(35,-25,60,-25)
LIG(125,10,150,10)
LIG(125,10,125,5)
LIG(125,5,100,5)
LIG(80,20,175,20)
LIG(80,20,80,25)
LIG(135,35,120,35)
LIG(135,10,135,35)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Nor\nor2_sch.sch
