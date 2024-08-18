DSCH3
VERSION 31-07-2024 12:15:39
BB(-119,-55,235,120)
SYM  #pmos
BB(10,-35,30,-15)
TITLE 25 -30  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(11,-30,19,15,r)
VIS 2
PIN(30,-35,0.000,0.000)s
PIN(10,-25,0.000,0.000)g
PIN(30,-15,0.030,0.210)d
LIG(10,-25,16,-25)
LIG(18,-25,18,-25)
LIG(20,-19,20,-31)
LIG(22,-19,22,-31)
LIG(30,-31,22,-31)
LIG(30,-35,30,-31)
LIG(30,-19,22,-19)
LIG(30,-15,30,-19)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(10,0,30,20)
TITLE 25 5  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(11,5,19,15,r)
VIS 2
PIN(30,0,0.000,0.000)s
PIN(10,10,0.000,0.000)g
PIN(30,20,0.030,0.280)d
LIG(10,10,16,10)
LIG(18,10,18,10)
LIG(20,16,20,4)
LIG(22,16,22,4)
LIG(30,4,22,4)
LIG(30,0,30,4)
LIG(30,16,22,16)
LIG(30,20,30,16)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(75,-35,95,-15)
TITLE 80 -30  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(75,-30,19,15,r)
VIS 2
PIN(75,-35,0.000,0.000)s
PIN(95,-25,0.000,0.000)g
PIN(75,-15,0.030,0.210)d
LIG(95,-25,89,-25)
LIG(87,-25,87,-25)
LIG(85,-19,85,-31)
LIG(83,-19,83,-31)
LIG(75,-31,83,-31)
LIG(75,-35,75,-31)
LIG(75,-19,83,-19)
LIG(75,-15,75,-19)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(75,0,95,20)
TITLE 80 5  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(75,5,19,15,r)
VIS 2
PIN(75,0,0.000,0.000)s
PIN(95,10,0.000,0.000)g
PIN(75,20,0.030,0.280)d
LIG(95,10,89,10)
LIG(87,10,87,10)
LIG(85,16,85,4)
LIG(83,16,83,4)
LIG(75,4,83,4)
LIG(75,0,75,4)
LIG(75,16,83,16)
LIG(75,20,75,16)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #light
BB(108,15,114,29)
TITLE 110 29  #Out
MODEL 49
PROP                                                                                                                                   
REC(109,16,4,4,r)
VIS 1
PIN(110,30,0.000,0.000)Out
LIG(113,21,113,16)
LIG(113,16,112,15)
LIG(109,16,109,21)
LIG(112,26,112,23)
LIG(111,26,114,26)
LIG(111,28,113,26)
LIG(112,28,114,26)
LIG(108,23,114,23)
LIG(110,23,110,30)
LIG(108,21,108,23)
LIG(114,21,108,21)
LIG(114,23,114,21)
LIG(110,15,109,16)
LIG(112,15,110,15)
FSYM
SYM  #nmos
BB(75,75,95,95)
TITLE 80 80  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(75,80,19,15,r)
VIS 2
PIN(75,95,0.000,0.000)s
PIN(95,85,0.000,0.000)g
PIN(75,75,0.030,0.070)d
LIG(85,85,95,85)
LIG(85,91,85,79)
LIG(83,91,83,79)
LIG(75,79,83,79)
LIG(75,75,75,79)
LIG(75,91,83,91)
LIG(75,95,75,91)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(50,-55,60,-45)
TITLE 53 -49  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,-5,0,0, )
VIS 0
PIN(55,-45,0.000,0.000)vdd
LIG(55,-45,55,-50)
LIG(55,-50,50,-50)
LIG(50,-50,55,-55)
LIG(55,-55,60,-50)
LIG(60,-50,55,-50)
FSYM
SYM  #vss
BB(50,97,60,105)
TITLE 54 102  #vss
MODEL 0
PROP                                                                                                                                    
REC(50,95,0,0,b)
VIS 0
PIN(55,95,0.000,0.000)vss
LIG(55,95,55,100)
LIG(50,100,60,100)
LIG(50,103,52,100)
LIG(52,103,54,100)
LIG(54,103,56,100)
LIG(56,103,58,100)
FSYM
SYM  #nmos
BB(10,45,30,65)
TITLE 25 50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(11,50,19,15,r)
VIS 2
PIN(30,65,0.000,0.000)s
PIN(10,55,0.000,0.000)g
PIN(30,45,0.030,0.280)d
LIG(20,55,10,55)
LIG(20,61,20,49)
LIG(22,61,22,49)
LIG(30,49,22,49)
LIG(30,45,30,49)
LIG(30,61,22,61)
LIG(30,65,30,61)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(10,75,30,95)
TITLE 25 80  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(11,80,19,15,r)
VIS 2
PIN(30,95,0.000,0.000)s
PIN(10,85,0.000,0.000)g
PIN(30,75,0.030,0.070)d
LIG(20,85,10,85)
LIG(20,91,20,79)
LIG(22,91,22,79)
LIG(30,79,22,79)
LIG(30,75,30,79)
LIG(30,91,22,91)
LIG(30,95,30,91)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(75,45,95,65)
TITLE 80 50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(75,50,19,15,r)
VIS 2
PIN(75,65,0.000,0.000)s
PIN(95,55,0.000,0.000)g
PIN(75,45,0.030,0.280)d
LIG(85,55,95,55)
LIG(85,61,85,49)
LIG(83,61,83,49)
LIG(75,49,83,49)
LIG(75,45,75,49)
LIG(75,61,83,61)
LIG(75,65,75,61)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #button
BB(-119,51,-110,59)
TITLE -115 55  #A
MODEL 59
PROP                                                                                                                                   
REC(-118,52,6,6,r)
VIS 1
PIN(-110,55,0.000,0.000)A
LIG(-111,55,-110,55)
LIG(-119,59,-119,51)
LIG(-111,59,-119,59)
LIG(-111,51,-111,59)
LIG(-119,51,-111,51)
LIG(-118,58,-118,52)
LIG(-112,58,-118,58)
LIG(-112,52,-112,58)
LIG(-118,52,-112,52)
FSYM
SYM  #vss
BB(-75,87,-65,95)
TITLE -71 92  #vss
MODEL 0
PROP                                                                                                                                    
REC(-75,85,0,0,b)
VIS 0
PIN(-70,85,0.000,0.000)vss
LIG(-70,85,-70,90)
LIG(-75,90,-65,90)
LIG(-75,93,-73,90)
LIG(-73,93,-71,90)
LIG(-71,93,-69,90)
LIG(-69,93,-67,90)
FSYM
SYM  #nmos
BB(-90,65,-70,85)
TITLE -75 70  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-89,70,19,15,r)
VIS 2
PIN(-70,85,0.000,0.000)s
PIN(-90,75,0.000,0.000)g
PIN(-70,65,0.030,0.210)d
LIG(-80,75,-90,75)
LIG(-80,81,-80,69)
LIG(-78,81,-78,69)
LIG(-70,69,-78,69)
LIG(-70,65,-70,69)
LIG(-70,81,-78,81)
LIG(-70,85,-70,81)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(175,-15,185,-5)
TITLE 182 -9  #vdd
MODEL 1
PROP                                                                                                                                   
REC(390,25,0,0, )
VIS 0
PIN(180,-5,0.000,0.000)vdd
LIG(180,-5,180,-10)
LIG(180,-10,185,-10)
LIG(185,-10,180,-15)
LIG(180,-15,175,-10)
LIG(175,-10,180,-10)
FSYM
SYM  #pmos
BB(180,-5,200,15)
TITLE 185 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(180,0,19,15,r)
VIS 2
PIN(180,-5,0.000,0.000)s
PIN(200,5,0.000,0.000)g
PIN(180,15,0.030,0.210)d
LIG(200,5,194,5)
LIG(192,5,192,5)
LIG(190,11,190,-1)
LIG(188,11,188,-1)
LIG(180,-1,188,-1)
LIG(180,-5,180,-1)
LIG(180,11,188,11)
LIG(180,15,180,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(180,30,200,50)
TITLE 185 35  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(180,35,19,15,r)
VIS 2
PIN(180,50,0.000,0.000)s
PIN(200,40,0.000,0.000)g
PIN(180,30,0.030,0.210)d
LIG(190,40,200,40)
LIG(190,46,190,34)
LIG(188,46,188,34)
LIG(180,34,188,34)
LIG(180,30,180,34)
LIG(180,46,188,46)
LIG(180,50,180,46)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(175,52,185,60)
TITLE 181 57  #vss
MODEL 0
PROP                                                                                                                                    
REC(185,50,0,0,b)
VIS 0
PIN(180,50,0.000,0.000)vss
LIG(180,50,180,55)
LIG(185,55,175,55)
LIG(185,58,183,55)
LIG(183,58,181,55)
LIG(181,58,179,55)
LIG(179,58,177,55)
FSYM
SYM  #vdd
BB(-75,20,-65,30)
TITLE -72 26  #vdd
MODEL 1
PROP                                                                                                                                   
REC(-280,60,0,0, )
VIS 0
PIN(-70,30,0.000,0.000)vdd
LIG(-70,30,-70,25)
LIG(-70,25,-75,25)
LIG(-75,25,-70,20)
LIG(-70,20,-65,25)
LIG(-65,25,-70,25)
FSYM
SYM  #pmos
BB(-90,30,-70,50)
TITLE -75 35  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-89,35,19,15,r)
VIS 2
PIN(-70,30,0.000,0.000)s
PIN(-90,40,0.000,0.000)g
PIN(-70,50,0.030,0.210)d
LIG(-90,40,-84,40)
LIG(-82,40,-82,40)
LIG(-80,46,-80,34)
LIG(-78,46,-78,34)
LIG(-70,34,-78,34)
LIG(-70,30,-70,34)
LIG(-70,46,-78,46)
LIG(-70,50,-70,46)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(226,16,235,24)
TITLE 230 20  #B
MODEL 59
PROP                                                                                                                                   
REC(227,17,6,6,r)
VIS 1
PIN(235,20,0.000,0.000)B
LIG(234,20,235,20)
LIG(226,24,226,16)
LIG(234,24,226,24)
LIG(234,16,234,24)
LIG(226,16,234,16)
LIG(227,23,227,17)
LIG(233,23,227,23)
LIG(233,17,233,23)
LIG(227,17,233,17)
FSYM
CNC(55 -15)
CNC(55 0)
CNC(55 20)
CNC(55 45)
CNC(-90 55)
CNC(-70 55)
CNC(-25 55)
CNC(55 -35)
CNC(200 20)
CNC(215 20)
CNC(180 20)
CNC(160 20)
CNC(215 20)
CNC(55 30)
CNC(55 30)
LIG(30,-15,55,-15)
LIG(30,-35,55,-35)
LIG(30,0,55,0)
LIG(30,20,55,20)
LIG(55,-15,55,0)
LIG(55,-15,75,-15)
LIG(55,0,75,0)
LIG(55,45,75,45)
LIG(30,45,55,45)
LIG(30,65,30,75)
LIG(75,65,75,75)
LIG(30,95,75,95)
LIG(55,20,75,20)
LIG(55,20,55,30)
LIG(55,-35,75,-35)
LIG(55,-45,55,-35)
LIG(55,30,55,45)
LIG(55,30,115,30)
LIG(-90,10,-90,55)
LIG(-70,50,-70,55)
LIG(-110,55,-90,55)
LIG(-90,55,-90,120)
LIG(-25,-25,10,-25)
LIG(-90,10,10,10)
LIG(-70,55,-25,55)
LIG(-70,55,-70,65)
LIG(-25,55,-25,-25)
LIG(-25,55,10,55)
LIG(200,20,200,40)
LIG(235,20,215,20)
LIG(180,15,180,20)
LIG(200,5,200,20)
LIG(95,-25,215,-25)
LIG(215,-25,215,20)
LIG(215,20,200,20)
LIG(95,10,160,10)
LIG(160,10,160,20)
LIG(160,20,180,20)
LIG(180,20,180,30)
LIG(0,110,215,110)
LIG(-90,120,130,120)
LIG(95,55,130,55)
LIG(130,55,130,120)
LIG(160,20,160,85)
LIG(95,85,160,85)
LIG(215,20,215,110)
LIG(10,85,0,85)
LIG(0,85,0,110)
FFIG example.sch
