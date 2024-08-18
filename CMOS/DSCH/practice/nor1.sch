DSCH3
VERSION 7/6/2024 3:05:01 PM
BB(171,-65,324,75)
SYM  #nmos
BB(200,30,220,50)
TITLE 215 35  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(201,35,19,15,r)
VIS 2
PIN(220,50,0.000,0.000)s
PIN(200,40,0.000,0.000)g
PIN(220,30,0.030,0.070)d
LIG(210,40,200,40)
LIG(210,46,210,34)
LIG(212,46,212,34)
LIG(220,34,212,34)
LIG(220,30,220,34)
LIG(220,46,212,46)
LIG(220,50,220,46)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(265,30,285,50)
TITLE 270 35  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(265,35,19,15,r)
VIS 2
PIN(265,50,0.000,0.000)s
PIN(285,40,0.000,0.000)g
PIN(265,30,0.030,0.070)d
LIG(275,40,285,40)
LIG(275,46,275,34)
LIG(273,46,273,34)
LIG(265,34,273,34)
LIG(265,30,265,34)
LIG(265,46,273,46)
LIG(265,50,265,46)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(230,-50,250,-30)
TITLE 245 -45  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(231,-45,19,15,r)
VIS 2
PIN(250,-50,0.000,0.000)s
PIN(230,-40,0.000,0.000)g
PIN(250,-30,0.030,0.070)d
LIG(230,-40,236,-40)
LIG(238,-40,238,-40)
LIG(240,-34,240,-46)
LIG(242,-34,242,-46)
LIG(250,-46,242,-46)
LIG(250,-50,250,-46)
LIG(250,-34,242,-34)
LIG(250,-30,250,-34)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(250,-20,270,0)
TITLE 255 -15  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(250,-15,19,15,r)
VIS 2
PIN(250,-20,0.000,0.000)s
PIN(270,-10,0.000,0.000)g
PIN(250,0,0.030,0.070)d
LIG(270,-10,264,-10)
LIG(262,-10,262,-10)
LIG(260,-4,260,-16)
LIG(258,-4,258,-16)
LIG(250,-16,258,-16)
LIG(250,-20,250,-16)
LIG(250,-4,258,-4)
LIG(250,0,250,-4)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(171,36,180,44)
TITLE 175 40  #button1
MODEL 59
PROP                                                                                                                                   
REC(172,37,6,6,r)
VIS 1
PIN(180,40,0.000,0.000)in1
LIG(179,40,180,40)
LIG(171,44,171,36)
LIG(179,44,171,44)
LIG(179,36,179,44)
LIG(171,36,179,36)
LIG(172,43,172,37)
LIG(178,43,172,43)
LIG(178,37,178,43)
LIG(172,37,178,37)
FSYM
SYM  #button
BB(305,36,314,44)
TITLE 310 40  #button2
MODEL 59
PROP                                                                                                                                   
REC(307,37,6,6,r)
VIS 1
PIN(305,40,0.000,0.000)in2
LIG(306,40,305,40)
LIG(314,44,314,36)
LIG(306,44,314,44)
LIG(306,36,306,44)
LIG(314,36,306,36)
LIG(313,43,313,37)
LIG(307,43,313,43)
LIG(307,37,307,43)
LIG(313,37,307,37)
FSYM
SYM  #light
BB(318,-5,324,9)
TITLE 320 9  #light1
MODEL 49
PROP                                                                                                                                   
REC(319,-4,4,4,r)
VIS 1
PIN(320,10,0.000,0.000)out1
LIG(323,1,323,-4)
LIG(323,-4,322,-5)
LIG(319,-4,319,1)
LIG(322,6,322,3)
LIG(321,6,324,6)
LIG(321,8,323,6)
LIG(322,8,324,6)
LIG(318,3,324,3)
LIG(320,3,320,10)
LIG(318,1,318,3)
LIG(324,1,318,1)
LIG(324,3,324,1)
LIG(320,-5,319,-4)
LIG(322,-5,320,-5)
FSYM
SYM  #vdd
BB(245,-65,255,-55)
TITLE 248 -59  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(250,-55,0.000,0.000)vdd
LIG(250,-55,250,-60)
LIG(250,-60,245,-60)
LIG(245,-60,250,-65)
LIG(250,-65,255,-60)
LIG(255,-60,250,-60)
FSYM
SYM  #vss
BB(240,67,250,75)
TITLE 244 72  #vss
MODEL 0
PROP                                                                                                                                    
REC(240,65,0,0,b)
VIS 0
PIN(245,65,0.000,0.000)vss
LIG(245,65,245,70)
LIG(240,70,250,70)
LIG(240,73,242,70)
LIG(242,73,244,70)
LIG(244,73,246,70)
LIG(246,73,248,70)
FSYM
CNC(250 25)
CNC(195 40)
CNC(295 40)
CNC(250 10)
CNC(245 60)
LIG(250,-30,250,-20)
LIG(220,30,220,25)
LIG(220,25,250,25)
LIG(265,25,265,30)
LIG(220,50,220,60)
LIG(220,60,245,60)
LIG(265,60,265,50)
LIG(250,0,250,10)
LIG(250,25,265,25)
LIG(200,40,195,40)
LIG(230,-40,195,-40)
LIG(195,-40,195,40)
LIG(195,40,180,40)
LIG(270,-10,295,-10)
LIG(295,-10,295,40)
LIG(285,40,295,40)
LIG(295,40,305,40)
LIG(250,10,320,10)
LIG(250,10,250,25)
LIG(250,-50,250,-55)
LIG(245,60,245,65)
LIG(245,60,265,60)
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\nor1.sch
