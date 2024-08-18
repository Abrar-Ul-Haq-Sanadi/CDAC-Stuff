DSCH3
VERSION 12-07-2024 15:41:46
BB(26,-10,89,15)
SYM  #button
BB(26,6,35,14)
TITLE 30 10  #button2
MODEL 59
PROP                                                                                                                                    
REC(27,7,6,6,r)
VIS 1
PIN(35,10,0.000,0.000)in2
LIG(34,10,35,10)
LIG(26,14,26,6)
LIG(34,14,26,14)
LIG(34,6,34,14)
LIG(26,6,34,6)
LIG(27,13,27,7)
LIG(33,13,27,13)
LIG(33,7,33,13)
LIG(27,7,33,7)
FSYM
SYM  #xor2
BB(35,-5,70,15)
TITLE 52 5  #^
MODEL 602
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(35,0,0.000,0.000)a
PIN(35,10,0.000,0.000)b
PIN(70,5,0.090,0.070)out
LIG(43,12,39,15)
LIG(47,12,43,15)
LIG(63,5,70,5)
LIG(62,7,59,11)
LIG(63,5,62,7)
LIG(62,3,63,5)
LIG(59,-1,62,3)
LIG(54,-4,59,-1)
LIG(59,11,54,14)
LIG(54,14,43,15)
LIG(43,-5,54,-4)
LIG(49,8,47,12)
LIG(43,-5,47,-2)
LIG(47,-2,49,2)
LIG(49,2,50,5)
LIG(50,5,49,8)
LIG(39,-5,43,-2)
LIG(43,-2,45,2)
LIG(45,2,46,5)
LIG(46,5,45,8)
LIG(45,8,43,12)
LIG(35,0,44,0)
LIG(35,10,44,10)
VLG   xor xor2(out,a,b);
FSYM
SYM  #button
BB(26,-4,35,4)
TITLE 30 0  #button1
MODEL 59
PROP                                                                                                                                    
REC(27,-3,6,6,r)
VIS 1
PIN(35,0,0.000,0.000)in1
LIG(34,0,35,0)
LIG(26,4,26,-4)
LIG(34,4,26,4)
LIG(34,-4,34,4)
LIG(26,-4,34,-4)
LIG(27,3,27,-3)
LIG(33,3,27,3)
LIG(33,-3,33,3)
LIG(27,-3,33,-3)
FSYM
SYM  #light
BB(83,-10,89,4)
TITLE 85 4  #light1
MODEL 49
PROP                                                                                                                                    
REC(84,-9,4,4,r)
VIS 1
PIN(85,5,0.000,0.000)out1
LIG(88,-4,88,-9)
LIG(88,-9,87,-10)
LIG(84,-9,84,-4)
LIG(87,1,87,-2)
LIG(86,1,89,1)
LIG(86,3,88,1)
LIG(87,3,89,1)
LIG(83,-2,89,-2)
LIG(85,-2,85,5)
LIG(83,-4,83,-2)
LIG(89,-4,83,-4)
LIG(89,-2,89,-4)
LIG(85,-10,84,-9)
LIG(87,-10,85,-10)
FSYM
LIG(70,5,85,5)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Exor_gate\exor2_sym.sch
