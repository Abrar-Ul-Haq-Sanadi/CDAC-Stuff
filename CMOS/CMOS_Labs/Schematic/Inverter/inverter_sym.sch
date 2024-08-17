DSCH3
VERSION 10-07-2024 19:58:59
BB(10,0,69,25)
SYM  #inv
BB(25,5,60,25)
TITLE 40 15  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(25,15,0.000,0.000)in
PIN(60,15,0.030,0.070)out
LIG(25,15,35,15)
LIG(35,5,35,25)
LIG(35,5,50,15)
LIG(35,25,50,15)
LIG(52,15,52,15)
LIG(54,15,60,15)
VLG  not not1(out,in);
FSYM
SYM  #clock
BB(10,12,25,18)
TITLE 15 15  #clock1
MODEL 69
PROP   500.000 500.000                                                                                                                               
REC(12,13,6,4,r)
VIS 1
PIN(25,15,1.500,0.070)clk1
LIG(20,15,25,15)
LIG(15,13,13,13)
LIG(19,13,17,13)
LIG(20,12,20,18)
LIG(10,18,10,12)
LIG(15,17,15,13)
LIG(17,13,17,17)
LIG(17,17,15,17)
LIG(13,17,11,17)
LIG(13,13,13,17)
LIG(20,18,10,18)
LIG(20,12,10,12)
FSYM
SYM  #light
BB(63,0,69,14)
TITLE 65 14  #light1
MODEL 49
PROP                                                                                                                                   
REC(64,1,4,4,r)
VIS 1
PIN(65,15,0.000,0.000)out1
LIG(68,6,68,1)
LIG(68,1,67,0)
LIG(64,1,64,6)
LIG(67,11,67,8)
LIG(66,11,69,11)
LIG(66,13,68,11)
LIG(67,13,69,11)
LIG(63,8,69,8)
LIG(65,8,65,15)
LIG(63,6,63,8)
LIG(69,6,63,6)
LIG(69,8,69,6)
LIG(65,0,64,1)
LIG(67,0,65,0)
FSYM
LIG(60,15,65,15)
LIG(25,15,30,15)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\inverter_sym.sch
