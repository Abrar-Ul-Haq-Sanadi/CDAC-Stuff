DSCH3
VERSION 11-07-2024 19:30:42
BB(31,0,79,25)
SYM  #or2
BB(40,5,75,25)
TITLE 60 15  #|
MODEL 502
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(40,10,0.000,0.000)a
PIN(40,20,0.000,0.000)b
PIN(75,15,0.090,0.070)s
LIG(40,20,53,20)
LIG(52,22,48,25)
LIG(68,15,75,15)
LIG(67,17,64,21)
LIG(68,15,67,17)
LIG(67,13,68,15)
LIG(64,9,67,13)
LIG(59,6,64,9)
LIG(64,21,59,24)
LIG(59,24,48,25)
LIG(48,5,59,6)
LIG(54,18,52,22)
LIG(48,5,52,8)
LIG(52,8,54,12)
LIG(54,12,55,15)
LIG(55,15,54,18)
LIG(40,10,53,10)
VLG  or or2(s,a,b);
FSYM
SYM  #button
BB(31,6,40,14)
TITLE 35 10  #button1
MODEL 59
PROP                                                                                                                                   
REC(32,7,6,6,r)
VIS 1
PIN(40,10,0.000,0.000)in1
LIG(39,10,40,10)
LIG(31,14,31,6)
LIG(39,14,31,14)
LIG(39,6,39,14)
LIG(31,6,39,6)
LIG(32,13,32,7)
LIG(38,13,32,13)
LIG(38,7,38,13)
LIG(32,7,38,7)
FSYM
SYM  #button
BB(31,16,40,24)
TITLE 35 20  #button2
MODEL 59
PROP                                                                                                                                   
REC(32,17,6,6,r)
VIS 1
PIN(40,20,0.000,0.000)in2
LIG(39,20,40,20)
LIG(31,24,31,16)
LIG(39,24,31,24)
LIG(39,16,39,24)
LIG(31,16,39,16)
LIG(32,23,32,17)
LIG(38,23,32,23)
LIG(38,17,38,23)
LIG(32,17,38,17)
FSYM
SYM  #light
BB(73,0,79,14)
TITLE 75 14  #light1
MODEL 49
PROP                                                                                                                                   
REC(74,1,4,4,r)
VIS 1
PIN(75,15,0.000,0.000)out1
LIG(78,6,78,1)
LIG(78,1,77,0)
LIG(74,1,74,6)
LIG(77,11,77,8)
LIG(76,11,79,11)
LIG(76,13,78,11)
LIG(77,13,79,11)
LIG(73,8,79,8)
LIG(75,8,75,15)
LIG(73,6,73,8)
LIG(79,6,73,6)
LIG(79,8,79,6)
LIG(75,0,74,1)
LIG(77,0,75,0)
FSYM
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\OR_Gate\or2_sym.sch
