DSCH3
VERSION 7/6/2024 12:33:09 PM
BB(56,15,104,40)
SYM  #inv
BB(65,20,100,40)
TITLE 80 30  #~
MODEL 101
PROP                                                                                                                                    
REC(20,15,0,0, )
VIS 0
PIN(65,30,0.000,0.000)in
PIN(100,30,0.030,0.070)out
LIG(65,30,75,30)
LIG(75,20,75,40)
LIG(75,20,90,30)
LIG(75,40,90,30)
LIG(92,30,92,30)
LIG(94,30,100,30)
VLG   not not1(out,in);
FSYM
SYM  #button
BB(56,26,65,34)
TITLE 60 30  #button1
MODEL 59
PROP                                                                                                                                    
REC(57,27,6,6,r)
VIS 1
PIN(65,30,0.000,0.000)in1
LIG(64,30,65,30)
LIG(56,34,56,26)
LIG(64,34,56,34)
LIG(64,26,64,34)
LIG(56,26,64,26)
LIG(57,33,57,27)
LIG(63,33,57,33)
LIG(63,27,63,33)
LIG(57,27,63,27)
FSYM
SYM  #light
BB(98,15,104,29)
TITLE 100 29  #light1
MODEL 49
PROP                                                                                                                                    
REC(99,16,4,4,r)
VIS 1
PIN(100,30,0.000,0.000)out1
LIG(103,21,103,16)
LIG(103,16,102,15)
LIG(99,16,99,21)
LIG(102,26,102,23)
LIG(101,26,104,26)
LIG(101,28,103,26)
LIG(102,28,104,26)
LIG(98,23,104,23)
LIG(100,23,100,30)
LIG(98,21,98,23)
LIG(104,21,98,21)
LIG(104,23,104,21)
LIG(100,15,99,16)
LIG(102,15,100,15)
FSYM
FFIG E:\GLA\gla-2024\CDAC Training\DSCH\practice\inverter.sch
