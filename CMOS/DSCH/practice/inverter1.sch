DSCH3
VERSION 7/6/2024 12:38:57 PM
BB(36,-20,129,60)
SYM  #nmos
BB(85,30,105,50)
TITLE 100 35  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(86,35,19,15,r)
VIS 2
PIN(105,50,0.000,0.000)s
PIN(85,40,0.000,0.000)g
PIN(105,30,0.030,0.140)d
LIG(95,40,85,40)
LIG(95,46,95,34)
LIG(97,46,97,34)
LIG(105,34,97,34)
LIG(105,30,105,34)
LIG(105,46,97,46)
LIG(105,50,105,46)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(85,-5,105,15)
TITLE 100 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(86,0,19,15,r)
VIS 2
PIN(105,-5,0.000,0.000)s
PIN(85,5,0.000,0.000)g
PIN(105,15,0.030,0.140)d
LIG(85,5,91,5)
LIG(93,5,93,5)
LIG(95,11,95,-1)
LIG(97,11,97,-1)
LIG(105,-1,97,-1)
LIG(105,-5,105,-1)
LIG(105,11,97,11)
LIG(105,15,105,11)
VLG    pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(36,21,45,29)
TITLE 40 25  #button1
MODEL 59
PROP                                                                                                                                    
REC(37,22,6,6,r)
VIS 1
PIN(45,25,0.000,0.000)in1
LIG(44,25,45,25)
LIG(36,29,36,21)
LIG(44,29,36,29)
LIG(44,21,44,29)
LIG(36,21,44,21)
LIG(37,28,37,22)
LIG(43,28,37,28)
LIG(43,22,43,28)
LIG(37,22,43,22)
FSYM
SYM  #light
BB(123,5,129,19)
TITLE 125 19  #light1
MODEL 49
PROP                                                                                                                                    
REC(124,6,4,4,r)
VIS 1
PIN(125,20,0.000,0.000)out1
LIG(128,11,128,6)
LIG(128,6,127,5)
LIG(124,6,124,11)
LIG(127,16,127,13)
LIG(126,16,129,16)
LIG(126,18,128,16)
LIG(127,18,129,16)
LIG(123,13,129,13)
LIG(125,13,125,20)
LIG(123,11,123,13)
LIG(129,11,123,11)
LIG(129,13,129,11)
LIG(125,5,124,6)
LIG(127,5,125,5)
FSYM
SYM  #vdd
BB(100,-20,110,-10)
TITLE 103 -14  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(105,-10,0.000,0.000)vdd
LIG(105,-10,105,-15)
LIG(105,-15,100,-15)
LIG(100,-15,105,-20)
LIG(105,-20,110,-15)
LIG(110,-15,105,-15)
FSYM
SYM  #vss
BB(100,52,110,60)
TITLE 104 57  #vss
MODEL 0
PROP                                                                                                                                    
REC(100,50,0,0,b)
VIS 0
PIN(105,50,0.000,0.000)vss
LIG(105,50,105,55)
LIG(100,55,110,55)
LIG(100,58,102,55)
LIG(102,58,104,55)
LIG(104,58,106,55)
LIG(106,58,108,55)
FSYM
CNC(105 20)
CNC(70 25)
LIG(105,30,105,20)
LIG(85,5,70,5)
LIG(70,5,70,25)
LIG(70,40,85,40)
LIG(105,20,125,20)
LIG(105,20,105,15)
LIG(70,25,45,25)
LIG(70,25,70,40)
LIG(105,-5,105,-10)
LIG(105,50,105,55)
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\inverter1.sch
