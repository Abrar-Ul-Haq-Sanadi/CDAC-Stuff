DSCH3
VERSION 7/6/2024 3:42:32 PM
BB(116,-80,474,100)
SYM  #nmos
BB(270,50,290,70)
TITLE 275 55  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(270,55,19,15,r)
VIS 2
PIN(270,70,0.000,0.000)s
PIN(290,60,0.000,0.000)g
PIN(270,50,0.030,0.070)d
LIG(280,60,290,60)
LIG(280,66,280,54)
LIG(278,66,278,54)
LIG(270,54,278,54)
LIG(270,50,270,54)
LIG(270,66,278,66)
LIG(270,70,270,66)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(270,20,290,40)
TITLE 275 25  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(270,25,19,15,r)
VIS 2
PIN(270,40,0.000,0.000)s
PIN(290,30,0.000,0.000)g
PIN(270,20,0.030,0.280)d
LIG(280,30,290,30)
LIG(280,36,280,24)
LIG(278,36,278,24)
LIG(270,24,278,24)
LIG(270,20,270,24)
LIG(270,36,278,36)
LIG(270,40,270,36)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(210,50,230,70)
TITLE 225 55  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(211,55,19,15,r)
VIS 2
PIN(230,70,0.000,0.000)s
PIN(210,60,0.000,0.000)g
PIN(230,50,0.030,0.070)d
LIG(220,60,210,60)
LIG(220,66,220,54)
LIG(222,66,222,54)
LIG(230,54,222,54)
LIG(230,50,230,54)
LIG(230,66,222,66)
LIG(230,70,230,66)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(210,20,230,40)
TITLE 225 25  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(211,25,19,15,r)
VIS 2
PIN(230,40,0.000,0.000)s
PIN(210,30,0.000,0.000)g
PIN(230,20,0.030,0.280)d
LIG(220,30,210,30)
LIG(220,36,220,24)
LIG(222,36,222,24)
LIG(230,24,222,24)
LIG(230,20,230,24)
LIG(230,36,222,36)
LIG(230,40,230,36)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(210,-60,230,-40)
TITLE 225 -55  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(211,-55,19,15,r)
VIS 2
PIN(230,-60,0.000,0.000)s
PIN(210,-50,0.000,0.000)g
PIN(230,-40,0.030,0.210)d
LIG(210,-50,216,-50)
LIG(218,-50,218,-50)
LIG(220,-44,220,-56)
LIG(222,-44,222,-56)
LIG(230,-56,222,-56)
LIG(230,-60,230,-56)
LIG(230,-44,222,-44)
LIG(230,-40,230,-44)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #inv
BB(305,-60,340,-40)
TITLE 325 -50  #~
MODEL 101
PROP                                                                                                                                   
REC(655,0,0,0, )
VIS 0
PIN(340,-50,0.000,0.000)in
PIN(305,-50,0.030,0.140)out
LIG(340,-50,330,-50)
LIG(330,-60,330,-40)
LIG(330,-60,315,-50)
LIG(330,-40,315,-50)
LIG(313,-50,313,-50)
LIG(311,-50,305,-50)
VLG  not not1(out,in);
FSYM
SYM  #pmos
BB(270,-60,290,-40)
TITLE 275 -55  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(270,-55,19,15,r)
VIS 2
PIN(270,-60,0.000,0.000)s
PIN(290,-50,0.000,0.000)g
PIN(270,-40,0.030,0.210)d
LIG(290,-50,284,-50)
LIG(282,-50,282,-50)
LIG(280,-44,280,-56)
LIG(278,-44,278,-56)
LIG(270,-56,278,-56)
LIG(270,-60,270,-56)
LIG(270,-44,278,-44)
LIG(270,-40,270,-44)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #inv
BB(155,20,190,40)
TITLE 170 30  #~
MODEL 101
PROP                                                                                                                                   
REC(-15,0,0,0, )
VIS 0
PIN(155,30,0.000,0.000)in
PIN(190,30,0.030,0.140)out
LIG(155,30,165,30)
LIG(165,20,165,40)
LIG(165,20,180,30)
LIG(165,40,180,30)
LIG(182,30,182,30)
LIG(184,30,190,30)
VLG  not not1(out,in);
FSYM
SYM  #pmos
BB(210,-20,230,0)
TITLE 225 -15  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(211,-15,19,15,r)
VIS 2
PIN(230,-20,0.000,0.000)s
PIN(210,-10,0.000,0.000)g
PIN(230,0,0.030,0.280)d
LIG(210,-10,216,-10)
LIG(218,-10,218,-10)
LIG(220,-4,220,-16)
LIG(222,-4,222,-16)
LIG(230,-16,222,-16)
LIG(230,-20,230,-16)
LIG(230,-4,222,-4)
LIG(230,0,230,-4)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(270,-20,290,0)
TITLE 275 -15  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(270,-15,19,15,r)
VIS 2
PIN(270,-20,0.000,0.000)s
PIN(290,-10,0.000,0.000)g
PIN(270,0,0.030,0.280)d
LIG(290,-10,284,-10)
LIG(282,-10,282,-10)
LIG(280,-4,280,-16)
LIG(278,-4,278,-16)
LIG(270,-16,278,-16)
LIG(270,-20,270,-16)
LIG(270,-4,278,-4)
LIG(270,0,270,-4)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(380,-54,389,-46)
TITLE 385 -50  #B
MODEL 59
PROP                                                                                                                                   
REC(382,-53,6,6,r)
VIS 1
PIN(380,-50,0.000,0.000)B
LIG(381,-50,380,-50)
LIG(389,-46,389,-54)
LIG(381,-46,389,-46)
LIG(381,-54,381,-46)
LIG(389,-54,381,-54)
LIG(388,-47,388,-53)
LIG(382,-47,388,-47)
LIG(382,-53,382,-47)
LIG(388,-53,382,-53)
FSYM
SYM  #vss
BB(245,82,255,90)
TITLE 249 87  #vss
MODEL 0
PROP                                                                                                                                    
REC(245,80,0,0,b)
VIS 0
PIN(250,80,0.000,0.000)vss
LIG(250,80,250,85)
LIG(245,85,255,85)
LIG(245,88,247,85)
LIG(247,88,249,85)
LIG(249,88,251,85)
LIG(251,88,253,85)
FSYM
SYM  #button
BB(116,26,125,34)
TITLE 120 30  #A
MODEL 59
PROP                                                                                                                                   
REC(117,27,6,6,r)
VIS 1
PIN(125,30,0.000,0.000)A
LIG(124,30,125,30)
LIG(116,34,116,26)
LIG(124,34,116,34)
LIG(124,26,124,34)
LIG(116,26,124,26)
LIG(117,33,117,27)
LIG(123,33,117,33)
LIG(123,27,123,33)
LIG(117,27,123,27)
FSYM
SYM  #vdd
BB(245,-80,255,-70)
TITLE 248 -74  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(250,-70,0.000,0.000)vdd
LIG(250,-70,250,-75)
LIG(250,-75,245,-75)
LIG(245,-75,250,-80)
LIG(250,-80,255,-75)
LIG(255,-75,250,-75)
FSYM
SYM  #light
BB(468,-5,474,9)
TITLE 470 9  #light2
MODEL 49
PROP                                                                                                                                   
REC(469,-4,4,4,r)
VIS 1
PIN(470,10,0.000,0.000)out2
LIG(473,1,473,-4)
LIG(473,-4,472,-5)
LIG(469,-4,469,1)
LIG(472,6,472,3)
LIG(471,6,474,6)
LIG(471,8,473,6)
LIG(472,8,474,6)
LIG(468,3,474,3)
LIG(470,3,470,10)
LIG(468,1,468,3)
LIG(474,1,468,1)
LIG(474,3,474,1)
LIG(470,-5,469,-4)
LIG(472,-5,470,-5)
FSYM
SYM  #nmos
BB(430,35,450,55)
TITLE 445 40  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(431,40,19,15,r)
VIS 2
PIN(450,55,0.000,0.000)s
PIN(430,45,0.000,0.000)g
PIN(450,35,0.030,0.070)d
LIG(440,45,430,45)
LIG(440,51,440,39)
LIG(442,51,442,39)
LIG(450,39,442,39)
LIG(450,35,450,39)
LIG(450,51,442,51)
LIG(450,55,450,51)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(430,-35,450,-15)
TITLE 445 -30  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(431,-30,19,15,r)
VIS 2
PIN(450,-35,0.000,0.000)s
PIN(430,-25,0.000,0.000)g
PIN(450,-15,0.030,0.070)d
LIG(430,-25,436,-25)
LIG(438,-25,438,-25)
LIG(440,-19,440,-31)
LIG(442,-19,442,-31)
LIG(450,-31,442,-31)
LIG(450,-35,450,-31)
LIG(450,-19,442,-19)
LIG(450,-15,450,-19)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #vss
BB(445,72,455,80)
TITLE 449 77  #vss
MODEL 0
PROP                                                                                                                                    
REC(445,70,0,0,b)
VIS 0
PIN(450,70,0.000,0.000)vss
LIG(450,70,450,75)
LIG(445,75,455,75)
LIG(445,78,447,75)
LIG(447,78,449,75)
LIG(449,78,451,75)
LIG(451,78,453,75)
FSYM
SYM  #vdd
BB(445,-65,455,-55)
TITLE 448 -59  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(450,-55,0.000,0.000)vdd
LIG(450,-55,450,-60)
LIG(450,-60,445,-60)
LIG(445,-60,450,-65)
LIG(450,-65,455,-60)
LIG(455,-60,450,-60)
FSYM
CNC(250 -35)
CNC(250 -25)
CNC(250 5)
CNC(250 15)
CNC(250 10)
CNC(155 30)
CNC(360 -50)
CNC(300 -50)
CNC(250 75)
CNC(360 -10)
CNC(195 30)
CNC(250 -65)
CNC(250 10)
CNC(450 10)
CNC(420 10)
LIG(230,-60,230,-65)
LIG(230,-65,250,-65)
LIG(270,-65,270,-60)
LIG(230,-40,230,-35)
LIG(230,-35,250,-35)
LIG(270,-35,270,-40)
LIG(230,-20,230,-25)
LIG(230,-25,250,-25)
LIG(270,-25,270,-20)
LIG(250,-35,250,-25)
LIG(250,-35,270,-35)
LIG(250,-25,270,-25)
LIG(230,0,230,5)
LIG(230,5,250,5)
LIG(270,5,270,0)
LIG(230,20,230,15)
LIG(230,15,250,15)
LIG(270,15,270,20)
LIG(250,5,250,10)
LIG(250,5,270,5)
LIG(250,15,270,15)
LIG(230,40,230,50)
LIG(270,40,270,50)
LIG(230,70,230,75)
LIG(250,75,270,75)
LIG(270,75,270,70)
LIG(250,10,420,10)
LIG(250,10,250,15)
LIG(250,-65,270,-65)
LIG(210,-50,155,-50)
LIG(155,-50,155,30)
LIG(250,75,250,80)
LIG(200,60,200,100)
LIG(290,60,360,60)
LIG(300,100,200,100)
LIG(290,-50,300,-50)
LIG(340,-50,360,-50)
LIG(360,-50,380,-50)
LIG(360,60,360,-10)
LIG(200,60,210,60)
LIG(300,-50,300,100)
LIG(300,-50,305,-50)
LIG(230,75,250,75)
LIG(200,-10,200,30)
LIG(210,-10,200,-10)
LIG(190,30,195,30)
LIG(125,30,155,30)
LIG(155,30,155,55)
LIG(155,55,205,55)
LIG(205,30,210,30)
LIG(205,30,205,55)
LIG(250,-65,250,-70)
LIG(290,-10,360,-10)
LIG(360,-10,360,-50)
LIG(290,30,290,45)
LIG(290,45,195,45)
LIG(195,45,195,30)
LIG(195,30,200,30)
LIG(430,-25,420,-25)
LIG(420,-25,420,10)
LIG(420,45,430,45)
LIG(450,-15,450,10)
LIG(450,10,470,10)
LIG(450,10,450,35)
LIG(450,-35,450,-55)
LIG(450,55,450,70)
LIG(420,10,420,45)
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\xor1.sch
